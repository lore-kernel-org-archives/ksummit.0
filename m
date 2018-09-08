Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 33B57D4D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  8 Sep 2018 15:00:34 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CB07C5D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  8 Sep 2018 15:00:33 +0000 (UTC)
Message-ID: <1536418829.22308.1.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Greg KH <greg@kroah.com>, Mauro Carvalho Chehab
	<mchehab+samsung@kernel.org>
Date: Sat, 08 Sep 2018 08:00:29 -0700
In-Reply-To: <20180908113411.GA3111@kroah.com>
References: <nycvar.YFH.7.76.1809062054450.15880@cbobk.fhfr.pm>
	<CALCETrWsWGbo0B7=_AAOinJVCLrZbhJ75W2eUPxLCyo2BspBxA@mail.gmail.com>
	<alpine.DEB.2.21.1809081037440.1402@nanos.tec.linutronix.de>
	<20180908082141.15d72684@coco.lan> <20180908113411.GA3111@kroah.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Handling of embargoed
 security issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, 2018-09-08 at 13:34 +0200, Greg KH wrote:
> On Sat, Sep 08, 2018 at 08:21:41AM -0300, Mauro Carvalho Chehab
> wrote:
> > IMHO, the best would be to have a formal/legal way to handle it.
> 
> No, sorry, some of us are not allowed legally to sign NDAs for stuff
> like this.

As a blanket statement this simply isn't true.  It is certainly
possible for a specific NDA to conflict with other agreed obligations
an individual has in which case that specific NDA can't be signed. 
However, knowing the obligations, it's also possible to craft a
different version of the NDA that can be signed.

There's also significant problems with badly worded NDAs and Open
Source: given you're going to produce a thing which everyone can see,
disclosure ipso facto eventually occurs so the NDA has to take this
correctly into account but again, this can be done.

I can respect the moral position that NDAs are incompatible with the
values of open source but it's an individual choice and conscience
issue not a legal one.

>   So keeping legal out of is it the best solution and we have
> done that pretty well so far.

I think we might benefit from a discussion of whether we could have
handled Meltdown/Spectre better in an NDA framework ... I'm not saying
it would have been any better, just that we might consider if some
driving need for secrecy caused us to be left out of the loop and
whether a small cabal in the know with an NDA might have steered us
better.

James
