Return-Path: <sergey.senozhatsky.work@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F188571F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Jun 2017 05:20:52 +0000 (UTC)
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 669F61FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Jun 2017 05:20:52 +0000 (UTC)
Received: by mail-pg0-f66.google.com with SMTP id j186so4975270pge.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 Jun 2017 22:20:52 -0700 (PDT)
Date: Fri, 23 Jun 2017 14:20:58 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20170623052058.GA844@jagdpanzerIV.localdomain>
References: <20170619052146.GA2889@jagdpanzerIV.localdomain>
	<ef18231f-c69b-5d88-0410-485cfcf4143b@suse.com>
	<20170619103912.2edbf88a@gandalf.local.home>
	<CAKMK7uEnsezRz=0-A2oAtSOTxNDR9LOCd8XOaG=tkC8+Xf_puQ@mail.gmail.com>
	<20170621101418.GA455@jagdpanzerIV.localdomain>
	<CAKMK7uGR_Zn1eW9znd_HNF1VS5ELmrrZwXBwmkpaAzB=F_qG3A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKMK7uGR_Zn1eW9znd_HNF1VS5ELmrrZwXBwmkpaAzB=F_qG3A@mail.gmail.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] printk redesign
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On (06/22/17 15:42), Daniel Vetter wrote:
[..]
> >> Fixing console_lock is much less likely to happen, I (and better
> >> hackers like Alan Cox) tried, and ran away in tears.
> >
> > well, I don't even pretend to be a kernel hacker, but what were
> > the major obstacles?
> 
> The framebuffer notifier gets called from multiple places, with
> multiple different execution contexts and locking contexts, for at
> least 3 different things:
> - Allowing fbdev console support to be built modular, and loaded in
> any order wrt fbdev drivers and still end up with an fbcon console.
> This results in a fbdev driver 2 fbcon call in
> (un)register_framebuffer.
> - Backlight handling. This means fbcon needs to call into the fb
> notifier, giving you a locking inversion.
> - Bunch of other things just for fun.
> 
> This means all the locking for all of the above things are entangled
> through the modifiers mutex, with the result that defacto console_lock
> protects everything, and that anything in fbdev that might call into
> one of these notifier use-cases must use console_lock as the
> outermost.
> 
> To make matters worse, drm kernel modesetting drivers then get called
> in an fbdev->fbcon->fbdev->drm fbdev emulation->kms driver chain from
> within register_framebuffer to do the initial modeset, and ofc that's
> all under the console_lock.
> 
> Tears pretty much guaranteed, and after a few hacks from Alan&me I
> concluded that the only way to fix this is to at least partially
> rewrite fbdev (a dead subsystem, so no one's volunteering), with the
> risk that you get to revert it all because someone is indeed relying
> on that super-flexible module loading order sequence. The simplest fix
> would probably be to make the entire fbdev->fbcon setup depency a
> hard-coded function call, or maybe at most a one-shot symbol_get
> attempt.

many thanks.

I played with the RW console_sem last night... and, yes, I was pretty sad.

just in case, if we ever will return back, I improved "the patch"
a bit, there are still several broken places (console_may_schedule()
on !PREEMPT systems for instance), and so on. uploaded here:
https://github.com/sergey-senozhatsky/linux-next-ss/commits/console_RW_sem
so at least we won't lose the patch, may be.

but, like you said, we've got a much a bigger problems.


> > the thing is,
> > I want to convert console_sem into RW lock. I briefly mentioned it last
> > year in Santa Fe, NM... and in fact I wrote *some sort* of a patch back
> > (well, mostly to see if it can fly at all). the patch has never been
> > finalized, polished, carefully written or properly tested (!).
> 
> RW won't help, the problem is the locking inversion design disaster in
> fbdev/fbcon resulting in console_lock being an outermost lock procting
> almost the entire fbdev world.

yes. console_sem is a *Big Konsole Lock* (German spelling, I believe) as
of now. it's way too important and in most of the cases it must be acquired
in exclusive (write) mode. So we are losing the whole point of convertion.
we can, of course, switch printk to rwsem and keep console_lock() as a
wrapper around console_write_lock(), but the benefit of such excerise is
questionable. I was hoping to see more places where we can be in read lock
mode.

	-ss
