Return-Path: <mark.rutland@arm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 141069A9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 10:47:21 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.101.70])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 05F19135
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 10:47:19 +0000 (UTC)
Date: Mon, 1 Aug 2016 11:47:11 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Kees Cook <keescook@chromium.org>
Message-ID: <20160801104711.GB11119@leverpostej>
References: <CALCETrXtfzi=G4H+Zttv3kWcCo32V6cO9OBfdyuYT4DHvJTJLg@mail.gmail.com>
	<CAGXu5j+M06pdOB7Phqg==xg4p7=9ggmZciQuGZaNTXaW=-BCbg@mail.gmail.com>
	<3aa8df3e-3705-9fd5-640c-37c0be2af561@imgtec.com>
	<CAGXu5jKZb60=3H8faOG53Aq7H3MeST7_syionmFCE2HQFOG8SA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAGXu5jKZb60=3H8faOG53Aq7H3MeST7_syionmFCE2HQFOG8SA@mail.gmail.com>
Cc: Jann Horn <jann@thejh.net>, "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TOPIC] kernel hardening / self-protection /
 whatever
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, Jul 31, 2016 at 03:04:58PM -0700, Kees Cook wrote:
> On Sun, Jul 31, 2016 at 2:55 AM, Paul Burton <paul.burton@imgtec.com> wrote:
> > It would be very interesting to discuss what's needed from arch code for
> > various hardening features, both those currently in mainline & those in
> > development.
> 
> Yeah, there are a number of arch-specific things on my radar:
> 
> - Standardizing copy_*_user() infrastructure. Each architecture does
> their usercopy work in slightly different ways, and hooking it for
> things like KASan and hardened usercopy can be weird and error-prone.
> What's landing in arm64 is, I think, likely the start of what things
> should look like for other architectures: there is a low-level
> function (__arch_copy_*_user) that does the actual work of the copy.
> Above that needs to be the place to hook KASan and hardened usercopy,
> but still within the __copy* and copy* functions. (And x86 has a
> single-underscore _copy* set of functions too!) Deciding the ordering
> of KASan/hardened-usercopy vs access_ok checks may be worth discussing
> too. For example, it's silly to check hardened-usercopy first if
> access_ok is going to reject it.

I think that's basically implied by the copy_* and __copy_* variants,
per the asm-generic version the former simply add an access_ok check
prior to calling the latter.

Modulo figuring out the specifics for x86, perhaps this is just a matter
of proposing patches?

Given arm64 looks to be roughly the right shape already, I'd be happy to
see how much of the arm64 code we can shift out to
<asm-generic/uaccess.h> or <linux/uaccess.h>.

> - Cleaning up CONFIG_DEBUG_RODATA. This config should not be called
> "debug", and, frankly, it should be mandatory for all architectures.

Likewise for DEBUG_SET_MODULE_RONX (which is currently independent of
DEBUG_RODATA). I think we should do the same thing there, and perhaps
fold the options together, or remove the config symbols entirely.

We don't currently have a boot-time option to disable
DEBUG_SET_MODULE_RONX for testing, as we do for DEBUG_RODATA. Perhaps
adding one is the first step to making that default y for all
architectures?

[...]

> - Significant reduction in kernel memory attack surface by marking
> rarely-changed function pointers as read-only. We need architectures
> to have a way to make (uncommonly changed) function pointers
> temporarily writable so that they are read-only (see
> CONFIG_DEBUG_RODATA above) during most of their lifetime, thus
> removing them as viable attack targets. There is nothing implemented
> for this in the kernel yet.

For reference, do you have any specific examples of such pointers? Most
things I can think of are perhaps more suitable for ro_after_init (e.g.
handle_arch_irq), or are embedded in structures with RW fields like
refcounts.

I'll also read "temporarily writeable" as "modifiable through some alias
somehow". For arm/arm64 it's easier/faster/safer to set up a temporary
R/W alias for modification than to modify the active kernel image
mapping.

> - Stacks without thread_info and with guard pages. Each architecture
> needs to keep sensitive values off the kernel stack so that they can't
> be targeted via stack-based attacks (e.g. via offsets or exhaustion),
> and that faulting pages should live at either end to catch exhaustion
> or large writes/reads trying to reach into other stacks. x86 is
> starting to work on this now.

I've also begun looking at this for arm64. It should be possible, though
so far I've found a couple of things that mean we can't do a trivial
port of the x86 approach:

- Unlike x86, we don't have a double-fault vector which can move to a
  new stack. We do have separate "thread" and "handler" stacks, but the
  hardware always moves to the handler stack when an exception is taken.
  So far, ideas of what we can do include:

  * do some early entry work on the handler stack, then migrate to the
    thread stack. This probably involves a memcpy of stashed context, so
    the trivial version is likely to be measurably slower than what we
    do now.

  * always use the handler stack, but detect overflow before stacking
    any context.

    For this, it looks like we need at least a register's worth of
    scratch space, so it's not clear how to do this. We could perhaps
    have per-cpu vectors so as to give us pc-relative addressable
    scratch space.

    I'd initially hoped we could over-align the stack and use TBNZ to
    detect the overflow, but it looks like that accepts the zero
    register rather than the SP.

- Our per-cpu primitives depend on preempt_{disable,enable}(), which
  depend on modifying preempt_count in our thread_info. This means that
  we can't use a per-cpu thread_info pointer like x86 now does.
  
  We might be able to safely access a per-cpu thread_info pointer in our
  entry code to initialise a cached value in sp_el0, though, given we
  don't expect to take any exceptions there (and thus aren't
  preemptible).
  
  I've also been looking at per-cpu primitives that don't need the
  preempt_{disable,enable}() dance, but the approach I've come up with
  so far (reserving a general purpose register) is rather invasive and
  scary.
  
[...]

> For the things that are implemented in the kernel, making sure each
> architecture fully supports them would be a good first step. I'd like
> to make a little chart of feature vs architecture, but it's a little
> hard to compile, since it tends to have a third dimension: chipset.
> For example, the PAN/SMAP protection (emulated or in hardware) looks
> like this:
> http://kernsec.org/wiki/index.php/Exploit_Methods/Userspace_data_usage#Mitigations
> so it can be a bit of an eye-chart. :P

Somewhat an aside, a while back I wanted to clean-up:
http://kernsec.org/wiki/index.php/Feature_List

To be a feature x arch chart, with version+fixups notes in each cell, as
that would help to highlight what was implemented/missing per-arch.

I couldn't see how to register for the wiki to do so. If the above
sounds useful, is there any way I can get an account?

One final thing that I didn't spot on the list was testing. For example,
recent patches to LKDTM were somewhat hindered by the OBJCOPYFLAGS mess.
Having tests work across architectures (and having tests at all!) is
really important to for both development and ongoing regression testing
of features.

As a cross-track thing, it would be great if we could have test projects
like kernelci run security regression tests. We should see if there's
anything we need to do cross-arch to make that happen.

Thanks,
Mark.
