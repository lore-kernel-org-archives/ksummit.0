Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6481889B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  8 Sep 2018 15:32:39 +0000 (UTC)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D3E2D5E2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  8 Sep 2018 15:32:38 +0000 (UTC)
Date: Sat, 8 Sep 2018 17:32:35 +0200
From: Greg KH <greg@kroah.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20180908153235.GB11120@kroah.com>
References: <nycvar.YFH.7.76.1809062054450.15880@cbobk.fhfr.pm>
	<CALCETrWsWGbo0B7=_AAOinJVCLrZbhJ75W2eUPxLCyo2BspBxA@mail.gmail.com>
	<alpine.DEB.2.21.1809081037440.1402@nanos.tec.linutronix.de>
	<20180908082141.15d72684@coco.lan>
	<20180908113411.GA3111@kroah.com>
	<1536418829.22308.1.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1536418829.22308.1.camel@HansenPartnership.com>
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org
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

On Sat, Sep 08, 2018 at 08:00:29AM -0700, James Bottomley wrote:
> On Sat, 2018-09-08 at 13:34 +0200, Greg KH wrote:
> > On Sat, Sep 08, 2018 at 08:21:41AM -0300, Mauro Carvalho Chehab
> > wrote:
> > > IMHO, the best would be to have a formal/legal way to handle it.
> > 
> > No, sorry, some of us are not allowed legally to sign NDAs for stuff
> > like this.
> 
> As a blanket statement this simply isn't true.

Um, I said "some of us".  Some of us can, some of us can not.  That's
a blanket statement that has to be true :)

> It is certainly
> possible for a specific NDA to conflict with other agreed obligations
> an individual has in which case that specific NDA can't be signed. 
> However, knowing the obligations, it's also possible to craft a
> different version of the NDA that can be signed.
> 
> There's also significant problems with badly worded NDAs and Open
> Source: given you're going to produce a thing which everyone can see,
> disclosure ipso facto eventually occurs so the NDA has to take this
> correctly into account but again, this can be done.
> 
> I can respect the moral position that NDAs are incompatible with the
> values of open source but it's an individual choice and conscience
> issue not a legal one.

I never brought up moral positions, you did.  I do not have a moral
position on this, sorry.

> >   So keeping legal out of is it the best solution and we have
> > done that pretty well so far.
> 
> I think we might benefit from a discussion of whether we could have
> handled Meltdown/Spectre better in an NDA framework ... I'm not saying
> it would have been any better, just that we might consider if some
> driving need for secrecy caused us to be left out of the loop and
> whether a small cabal in the know with an NDA might have steered us
> better.

This is what happened for L1TF, and yes, it was steered better and
worked amazingly well for the conditions under which we were forced to
work.

So things are getting better, Meltdown/Spectre showed some people that
that was _not_ the way to handle it, with hard proof.  So they changed,
and we will continue to revise and work through these issues.

thanks,

greg k-h
