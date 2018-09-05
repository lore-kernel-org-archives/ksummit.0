Return-Path: <shuahkhan@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5EA12D05
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 14:59:53 +0000 (UTC)
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
	[209.85.221.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8C4EE7AF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 14:59:52 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id n2-v6so8031874wrw.7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 05 Sep 2018 07:59:52 -0700 (PDT)
MIME-Version: 1.0
References: <s5hbm9ccbie.wl-tiwai@suse.de>
	<20180905135528.ase6evcv7rlwufyr@mwanda>
	<s5h4lf4ca7t.wl-tiwai@suse.de> <20180905142046.GA8396@kroah.com>
	<s5hzhwwatwn.wl-tiwai@suse.de>
In-Reply-To: <s5hzhwwatwn.wl-tiwai@suse.de>
From: Shuah Khan <shuahkhan@gmail.com>
Date: Wed, 5 Sep 2018 08:59:40 -0600
Message-ID: <CAKocOON-Kp1ps6GJhk9GruPkXTM7UpJ66o_=LQQLObM4-uowoQ@mail.gmail.com>
To: tiwai@suse.de
Content-Type: text/plain; charset="UTF-8"
Cc: shuah@kernel.org, dan.carpenter@oracle.com,
	ksummit-discuss@lists.linuxfoundation.org
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

On Wed, Sep 5, 2018 at 8:41 AM Takashi Iwai <tiwai@suse.de> wrote:
>
> On Wed, 05 Sep 2018 16:20:46 +0200,
> Greg KH wrote:
> >
> > On Wed, Sep 05, 2018 at 04:03:50PM +0200, Takashi Iwai wrote:
> > > On Wed, 05 Sep 2018 15:55:28 +0200,
> > > Dan Carpenter wrote:
> > > >
> > > > On Wed, Sep 05, 2018 at 03:35:53PM +0200, Takashi Iwai wrote:
> > > > > The staging driver is a wonderful process to promote the downstream
> > > > > code to the upstream, but I have doubt whether it's working really as
> > > > > expected for now.
> > > > >
> > > > > - Often the drivers live forever in staging although they should have
> > > > >   been moved to the upper, properly maintained, subsystems.
> > > >
> > > > The only one that comes to mind is comedi.  I think those guys know that
> > > > everyone is fine with them moving the code.
> > > >
> > > > Do you have another example?
> > >
> > > Well, not forever, but many codes remain there for many cycles, I
> > > thought.  But I haven't counted and no statistics, so it might be my
> > > false impression.
> >
> > I do drop things every few kernel releases.  Sometimes people do not
> > notice.  I need to do a sweep and see what I can delete again, I'll try
> > to do that later this release cycle.
> >
> > And yes, comedi does need to move out, as does a few other (speakup is
> > one example).  I always take patches to do this, as my cycles are less
> > these days due to the security crap this year :(
> >
> > Also, some subsystems have moved out, on their own, to the real part of
> > the kernel.  Look at the -rc1 merge requests for those examples, I think
> > we have had that happen every kernel release for the past year or so.
>
> OK, so it can be my false impression that things are sticking too
> long.
>
>
> > > > > - Code changes in staging are mostly only scratching surfaces, minor
> > > > >   code style cleanups, etc, what checkpatch suggests.
> > > >
> > > > That's probably true for the wireless drivers because converting them
> > > > to use mac80211 is complicated.  The other drivers seem to be doing
> > > > better.
> > >
> > > So which drivers were the good examples?  Maybe we can learn from
> > > them.
> >
> > Look at what moved out this, and the past, kernel releases for examples
> > (I can't remember the names at the moment, sorry).  Another driver just
> > got moved last week into the networking tree, so that's another success
> > story.
> >
> > Again, it happens all the time, I don't think people are paying
> > attention because it's for hardware they don't care about :)
> >
> > > > > - There are little communications with the corresponding subsystem;
> > > > >   already a few times I was surprised by casually finding a staging
> > > > >   driver code by grepping for preparing API changes.
> > > >
> > > > Which ones are you interested in?
> > >
> > > My primary interest is the sound stuff.
> >
> > Do we have sound drivers in staging other than the most and bcm2835
> > driver?
>
> Yeah, that's an example I stumbled on in this week, so I raised the
> topic :)
>
> > That's all I notice and both of those drivers have active
> > maintainers/developers who are working to get the code cleaned up and
> > pushed to the "real" part of the kernel.  most has stalled a bit these
> > past few months, but the developers are active and trying.  They can
> > always use the help.
>
> I don't blame you guys and developers, but still I think it would have
> been great if the existence of the driver code was informed
> beforehand.
>
> > > > I'd always prefer to hand off staging
> > > > drivers to an existing subsystem but it's not always clear who that
> > > > should be.
> > >
> > > IMO, *that* is the problem -- no proper taker in the subsystem.
> >
> > I don't understand what you mean here.  I always push code to the
> > subsystem-specific maintainers when they are to "graduate", I never
> > merge things behind maintainers backs.  If subsystems don't have
> > maintainers, well, I have to use my own judgement and then the
> > developers become the subsystem maintainers on their own.
> >
> > So what do you mean by "no proper taker"?
>
> Well, it's what Dan mentioned -- "not always clear who to hand off".
>
> If the staging driver is worked out from both the driver devs and the
> subsystem devs, that's fine.  But, again, I believe this would have
> been great if this stuff is informed and discussed together.
>
> The cleanup and polishing the driver code is easy.  The hardest part
> is the major surgery of the driver code structure and the proper API
> usages.  This needs the help from the subsystem people, and it's
> easier if the coordination is taken earlier, IMO.
>

Looking at the MAINTAINERS file for staging entries, it appears some
staging drivers
are missing sub-system mailing list. Foe example this one:

FBTFT Framebuffer drivers
M:      Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
S:      Maintained
F:      drivers/staging/fbtft/

No L: for this driver

I found a few others.

Maybe the first step is to add sub-system and/or linux-kernel@vger.kernel.org
At least sub-system maintainers will be aware of the drivers when
minor cleanups happen.

thanks,
-- Shuah

> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
