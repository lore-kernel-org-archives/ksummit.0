Return-Path: <pmladek@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F0C3D491
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 Jun 2017 09:29:03 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 65C901DF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 Jun 2017 09:29:03 +0000 (UTC)
Date: Wed, 21 Jun 2017 11:29:00 +0200
From: Petr Mladek <pmladek@suse.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20170621092900.GB1538@pathway.suse.cz>
References: <20170619052146.GA2889@jagdpanzerIV.localdomain>
	<ef18231f-c69b-5d88-0410-485cfcf4143b@suse.com>
	<20170619103912.2edbf88a@gandalf.local.home>
	<CAKMK7uEnsezRz=0-A2oAtSOTxNDR9LOCd8XOaG=tkC8+Xf_puQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKMK7uEnsezRz=0-A2oAtSOTxNDR9LOCd8XOaG=tkC8+Xf_puQ@mail.gmail.com>
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

On Tue 2017-06-20 20:45:27, Daniel Vetter wrote:
> My own pet peeve with printk from the drm side:
> 
> Untangling printk form the console_lock horror show, if at all
> possible. One problem is that heavy printk usage makes the
> console_lock massively contended (we delay restoring the the kernel
> console on resume in kms drivers to a worker because of that).

We really need an offload mechanism. The patches are circulating
for years. The last version uses a kthread. It allows to release
console_lock even when some messages are pending. It should be
perfectly fine when the system works normally and the kthread
will get scheduled eventually.

There is a problem to detect situations where the system is
in a bad state, the offload might not work and we should switch
to the sync mode. But we make some progress on this as well.

IMHO, the best solution would be to avoid sleeping with
console_lock. Then it will be guaranteed that either someone
is actively flushing the messages or that anyone else is
free to do so.

But this would require to untangle all the other uses of
console_lock where the sleeping is necessary these days.

Also others might think different.

Anyway, the discussion about the current patchset is at
https://lkml.kernel.org/r/20170509082859.854-3-sergey.senozhatsky@gmail.com

Sergey already have another RFC using another idea but I did
not have to review this yet. See
https://lkml.kernel.org/r/20170602090345.624-1-sergey.senozhatsky@gmail.com



> The worse problem is that console_lock locking is horribly monolithic and
> defacto requires that large chunks of your gfx driver init code needs
> to run while holding it. Which means no printk output, neither for
> your gfx driver nor anything else while your cpu goes through
> something like a few 100k lines of code (for big drivers).

To be honest, I still do not know all the dark sides of the console
handling and this seems to be one of them. I wonder why
the console_lock is needed in this code. It does not make
much sense to me. It must be a synchronization task of
console_lock that I not aware of.


> We have a few pages of kerneldoc explaining how to debug this and what
> happens, and gross debug hacks to just not take console_lock on driver
> (and pray it won't race), but it's a constant trap for new gfx
> hackers.

Good to know.

> Fixing console_lock is much less likely to happen, I (and better
> hackers like Alan Cox) tried, and ran away in tears.

This looks like a real challenge. I feel less shame that it take
us too long.

Best Regards,
Petr
