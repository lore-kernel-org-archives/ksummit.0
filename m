Return-Path: <pmladek@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A23A393D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 11:59:51 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 35A1DAF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 11:59:51 +0000 (UTC)
Date: Tue, 2 Aug 2016 13:59:48 +0200
From: Petr Mladek <pmladek@suse.com>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <20160802115948.GB4779@pathway.suse.cz>
References: <20160719034717.GA24189@swordfish>
	<535ebaec-1653-3077-d17b-feb847fd51d2@suse.com>
	<578EF192.3050808@huawei.com>
	<CALCETrUbuQjEAettvDStqEophng+1TNGDpueWDJ4QWLqiyaQ2w@mail.gmail.com>
	<028967b8-6107-9d9c-453a-a7f25e967f70@suse.com>
	<1469097065.120686.124.camel@infradead.org>
	<20160721111917.GA20006@x>
	<1469102358.120686.142.camel@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1469102358.120686.142.camel@infradead.org>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] asynchronous printk
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu 2016-07-21 12:59:18, David Woodhouse wrote:
> On Thu, 2016-07-21 at 04:19 -0700, Josh Triplett wrote:
> > 
> > I've run into various cases where "console=ttyS0,115200" didn't produce
> > any serial output at all, but "earlyprintk=ttyS0,115200,keep" did.
> 
> Note that those are very different things. Because 'ttyS0' for
> earlyprintk really means '16x50 UART at 0x3f8'. While the later one
> actually depends on it being discovered by the various options we have
> for finding them, some of which are only available quite late.
> 
> > Perhaps "earlyprintk" expects less from the serial port than "console"
> > does, but that suggests that the differences involve more than just how
> > early the driver can work.
> 
> There *are* differences, yes. But they are almost entirely gratuitous.
> Fundamentally, the only interesting thing is how early the driver can
> shovel bits out the port, and thus how early it can be registered.

Also earlyprintk allows to flush the characters directly to the serial
port without any locking. It is racy and hacky but it makes it work
even on very borked system when the normal printk would get blocked.

Best Regards,
Petr
