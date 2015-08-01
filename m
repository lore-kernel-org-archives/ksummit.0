Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AC63C409
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Aug 2015 11:03:44 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 57C13184
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Aug 2015 11:03:44 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Christoph Hellwig <hch@infradead.org>
Date: Sat, 01 Aug 2015 14:04:24 +0300
Message-ID: <1624703.qdGzscHWSc@avalon>
In-Reply-To: <20150731165346.GA18984@infradead.org>
References: <2111196.TG1k3f53YQ@avalon>
	<alpine.DEB.2.10.1507311833280.2499@hadrien>
	<20150731165346.GA18984@infradead.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: Tejun Heo <tj@kernel.org>, Russell King <linux@arm.linux.org.uk>,
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

On Friday 31 July 2015 09:53:46 Christoph Hellwig wrote:
> On Fri, Jul 31, 2015 at 06:34:21PM +0200, Julia Lawall wrote:
> > How is this different from the free happening explicitly in the remove
> > function?
> 
> It's not.  The real problem is that people don't understand life time
> rules and expect magic interfaces to fix it for them.

Exactly. I see two solutions for that, either making people understand life 
time rules, or creating interfaces that really fix it for them. devm_kzalloc() 
isn't such an interface (and I'm fine if we believe it shouldn't be), but it 
unfortunately gives driver developers the impression that it is supposed to 
fix the problem. If we conclude that the problem is between the chair and the 
keyboard of driver developers then we'll need to start being more vocal about 
it.

-- 
Regards,

Laurent Pinchart
