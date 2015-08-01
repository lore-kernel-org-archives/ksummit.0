Return-Path: <htejun@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 65F099B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Aug 2015 15:18:50 +0000 (UTC)
Received: from mail-qg0-f42.google.com (mail-qg0-f42.google.com
	[209.85.192.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2D08E16B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Aug 2015 15:18:49 +0000 (UTC)
Received: by qgeu79 with SMTP id u79so64389723qge.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 01 Aug 2015 08:18:48 -0700 (PDT)
Sender: Tejun Heo <htejun@gmail.com>
Date: Sat, 1 Aug 2015 11:18:39 -0400
From: Tejun Heo <tj@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20150801151839.GA9480@mtj.duckdns.org>
References: <2111196.TG1k3f53YQ@avalon> <1832413.9MBGoll9RW@avalon>
	<alpine.DEB.2.02.1508011255010.2071@localhost6.localdomain6>
	<8475257.M7ZLAf3KQe@avalon>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8475257.M7ZLAf3KQe@avalon>
Cc: Russell King <linux@arm.linux.org.uk>,
	ksummit-discuss@lists.linuxfoundation.org,
	Shuah Khan <shuah.kh@samsung.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Fix devm_kzalloc, its users,
 or both
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hello,

On Sat, Aug 01, 2015 at 02:01:02PM +0300, Laurent Pinchart wrote:
> > Would it be possible to call the devres cleanup at this point, rather than
> > on the remove function?
> 
> As devres cleanup will also take care of interrupts and ioremap'ed regions I 
> don't think that would be an option. Otherwise we would have trouble when the 
> device is reprobed as resources would be busy.
> 
> We could possibly create an API to allow drivers to keep references to some 
> devres-allocate objects, but that's arguably a hack.

Another factor to consider is that even if the driver separately
allocates e.g. memory which may be accessed after removal, it's mighty
difficult to verify that file operations which take place post removal
don't have any dependency on things which are released on removal.  I
mean, we've always had a lot of drivers which are fairly confused
about lifetime rules.

devm allocated memory *might* make certain failures more obvious as
the memory itself gets freed right away but I'd be very surprised if
there aren't already a bunch of drivers which fail to fully isolate
post-removal file operations regardless of devm.

So, all in all, if we actually want to fix this issue, well at least
most of it, I think the only viable way would be implementing revoke
semantics and drain and sever all operations on removal.  Maybe it'll
end up another devm interface.

Thanks.

-- 
tejun
