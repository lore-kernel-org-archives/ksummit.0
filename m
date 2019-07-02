Return-Path: <tglx@linutronix.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C817EE57
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Jul 2019 22:48:06 +0000 (UTC)
Received: from Galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9887670D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Jul 2019 22:48:05 +0000 (UTC)
Date: Wed, 3 Jul 2019 00:48:01 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
In-Reply-To: <1562106408.29304.11.camel@HansenPartnership.com>
Message-ID: <alpine.DEB.2.21.1907030032140.1802@nanos.tec.linutronix.de>
References: <20263.1561993564@warthog.procyon.org.uk>
	<alpine.DEB.2.21.1907011735341.1802@nanos.tec.linutronix.de>
	<1561996215.3551.49.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907011945530.1802@nanos.tec.linutronix.de>
	<1562077203.3321.2.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907021644420.1802@nanos.tec.linutronix.de>
	<1562080257.3321.19.camel@HansenPartnership.com>
	<1562080696.3321.21.camel@HansenPartnership.com>
	<37eb32f3-f341-b1d8-293b-c119ae278b4f@linuxfoundation.org>
	<1562082713.3321.38.camel@HansenPartnership.com>
	<201907020926.FB19EDEBCC@keescook>
	<1562103238.3321.66.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907030000050.1802@nanos.tec.linutronix.de>
	<1562106408.29304.11.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Patch version changes in
 commit logs?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 2 Jul 2019, James Bottomley wrote:
> On Wed, 2019-07-03 at 00:07 +0200, Thomas Gleixner wrote:
> > On Tue, 2 Jul 2019, James Bottomley wrote:
> 
> git is our upstream for version control and our upstream has already
> had this as a feature since 2014.  Trying to go to upstream  5 years
> later and ask them to change it is likely going to be a singularly
> unsuccessful exercise, plus even in the unlikely event we can work out
> how to do it compatibly and without causing confusion and upstream said
> yes it would take another few years to propagate.

The point is that 10+ years ago we had:

 LKML-Reference: <message.id>

That upset Linus and he asked explicitely for a proper link. We changed it
to Link: ....  That's why lkml.kernel.org/r/ exists in the first
place. That happened in 2011 (I'm just too tired to find that old mail
thread now) The author of this Message-ID change was well aware of that in
2014...

So now you want to go back to that old scheme which we replaced 8+ years
ago?

> > We really don't want yet another version of tag for that purpose. The
> > 'Link:' tag is documented and proven to be useful.
> 
> You were the one pushing this, do you really want to hold it up because
> what's available isn't exactly what you want?
> 
> What's wrong with Kees' suggestion that we add a new config option to
> determine how we display the tag?  The information is basically there
> so a Message-Id: tag can be converted to any type of Link: tag you
> like.

And that new config option just works and does not require any changes to
git? If so, problem solved. If not, you still have to talk to the git
folks.
 
> I'm going to be a lot more successful going to the git upstream and
> saying we've already been using a Link tag for a while, so we'd like
> your message-id to appear as a Link: for compatibility than I am going
> to be to try to get them to add a Link: tag ...

I did not say that we have to make them add a shiny new Link tag.

Of course if there is already a Message-ID magic, then building upon it
by making it customizable is the obvious solution.

Thanks,

	tglx
