Return-Path: <julia.lawall@lip6.fr>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5C13140D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Aug 2015 11:21:13 +0000 (UTC)
Received: from mail2-relais-roc.national.inria.fr
	(mail2-relais-roc.national.inria.fr [192.134.164.83])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 96019175
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  1 Aug 2015 11:21:12 +0000 (UTC)
Date: Sat, 1 Aug 2015 13:21:09 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
In-Reply-To: <1624703.qdGzscHWSc@avalon>
Message-ID: <alpine.DEB.2.02.1508011319140.2071@localhost6.localdomain6>
References: <2111196.TG1k3f53YQ@avalon>
	<alpine.DEB.2.10.1507311833280.2499@hadrien>
	<20150731165346.GA18984@infradead.org> <1624703.qdGzscHWSc@avalon>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: Christoph Hellwig <hch@infradead.org>, Tejun Heo <tj@kernel.org>,
	Russell King <linux@arm.linux.org.uk>,
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

On Sat, 1 Aug 2015, Laurent Pinchart wrote:

> On Friday 31 July 2015 09:53:46 Christoph Hellwig wrote:
> > On Fri, Jul 31, 2015 at 06:34:21PM +0200, Julia Lawall wrote:
> > > How is this different from the free happening explicitly in the remove
> > > function?
> > 
> > It's not.  The real problem is that people don't understand life time
> > rules and expect magic interfaces to fix it for them.
> 
> Exactly. I see two solutions for that, either making people understand life 
> time rules, or creating interfaces that really fix it for them. devm_kzalloc() 
> isn't such an interface (and I'm fine if we believe it shouldn't be), but it 
> unfortunately gives driver developers the impression that it is supposed to 
> fix the problem. If we conclude that the problem is between the chair and the 
> keyboard of driver developers then we'll need to start being more vocal about 
> it.

Currently, is there any documentation about when these functions can be
used?  All I remember seeing is a discussion of what the functions do and
what functions are available.  But nothing about when they should and
should not be used.

julia
