Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 449D810FE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 14:20:50 +0000 (UTC)
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com
	[64.147.123.25])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D2F032D5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 14:20:49 +0000 (UTC)
Date: Wed, 5 Sep 2018 16:20:46 +0200
From: Greg KH <greg@kroah.com>
To: Takashi Iwai <tiwai@suse.de>
Message-ID: <20180905142046.GA8396@kroah.com>
References: <s5hbm9ccbie.wl-tiwai@suse.de>
	<20180905135528.ase6evcv7rlwufyr@mwanda>
	<s5h4lf4ca7t.wl-tiwai@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <s5h4lf4ca7t.wl-tiwai@suse.de>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] How can we treat staging
 drivers better?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Sep 05, 2018 at 04:03:50PM +0200, Takashi Iwai wrote:
> On Wed, 05 Sep 2018 15:55:28 +0200,
> Dan Carpenter wrote:
> > 
> > On Wed, Sep 05, 2018 at 03:35:53PM +0200, Takashi Iwai wrote:
> > > The staging driver is a wonderful process to promote the downstream
> > > code to the upstream, but I have doubt whether it's working really as
> > > expected for now.
> > > 
> > > - Often the drivers live forever in staging although they should have
> > >   been moved to the upper, properly maintained, subsystems.
> > 
> > The only one that comes to mind is comedi.  I think those guys know that
> > everyone is fine with them moving the code.
> > 
> > Do you have another example?
> 
> Well, not forever, but many codes remain there for many cycles, I
> thought.  But I haven't counted and no statistics, so it might be my
> false impression.

I do drop things every few kernel releases.  Sometimes people do not
notice.  I need to do a sweep and see what I can delete again, I'll try
to do that later this release cycle.

And yes, comedi does need to move out, as does a few other (speakup is
one example).  I always take patches to do this, as my cycles are less
these days due to the security crap this year :(

Also, some subsystems have moved out, on their own, to the real part of
the kernel.  Look at the -rc1 merge requests for those examples, I think
we have had that happen every kernel release for the past year or so.

> > > - Code changes in staging are mostly only scratching surfaces, minor
> > >   code style cleanups, etc, what checkpatch suggests.
> > 
> > That's probably true for the wireless drivers because converting them
> > to use mac80211 is complicated.  The other drivers seem to be doing
> > better.
> 
> So which drivers were the good examples?  Maybe we can learn from
> them.

Look at what moved out this, and the past, kernel releases for examples
(I can't remember the names at the moment, sorry).  Another driver just
got moved last week into the networking tree, so that's another success
story.

Again, it happens all the time, I don't think people are paying
attention because it's for hardware they don't care about :)

> > > - There are little communications with the corresponding subsystem;
> > >   already a few times I was surprised by casually finding a staging
> > >   driver code by grepping for preparing API changes.
> > 
> > Which ones are you interested in?
> 
> My primary interest is the sound stuff.

Do we have sound drivers in staging other than the most and bcm2835
driver?  That's all I notice and both of those drivers have active
maintainers/developers who are working to get the code cleaned up and
pushed to the "real" part of the kernel.  most has stalled a bit these
past few months, but the developers are active and trying.  They can
always use the help.

> > I'd always prefer to hand off staging
> > drivers to an existing subsystem but it's not always clear who that
> > should be.
> 
> IMO, *that* is the problem -- no proper taker in the subsystem.

I don't understand what you mean here.  I always push code to the
subsystem-specific maintainers when they are to "graduate", I never
merge things behind maintainers backs.  If subsystems don't have
maintainers, well, I have to use my own judgement and then the
developers become the subsystem maintainers on their own.

So what do you mean by "no proper taker"?

thanks,

greg k-h
