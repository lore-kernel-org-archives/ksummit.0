Return-Path: <keescook@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4F8C59B9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 19:42:58 +0000 (UTC)
Received: from mail-wm0-f53.google.com (mail-wm0-f53.google.com [74.125.82.53])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0D18D236
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 19:42:55 +0000 (UTC)
Received: by mail-wm0-f53.google.com with SMTP id f65so382667952wmi.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 01 Aug 2016 12:42:55 -0700 (PDT)
MIME-Version: 1.0
Sender: keescook@google.com
In-Reply-To: <20160801104711.GB11119@leverpostej>
References: <CALCETrXtfzi=G4H+Zttv3kWcCo32V6cO9OBfdyuYT4DHvJTJLg@mail.gmail.com>
	<CAGXu5j+M06pdOB7Phqg==xg4p7=9ggmZciQuGZaNTXaW=-BCbg@mail.gmail.com>
	<3aa8df3e-3705-9fd5-640c-37c0be2af561@imgtec.com>
	<CAGXu5jKZb60=3H8faOG53Aq7H3MeST7_syionmFCE2HQFOG8SA@mail.gmail.com>
	<20160801104711.GB11119@leverpostej>
From: Kees Cook <keescook@chromium.org>
Date: Mon, 1 Aug 2016 12:42:53 -0700
Message-ID: <CAGXu5jLwwRjqM6j6WuJx9-JfnYbOuLoCWFFu+kLBtOcjLt6HWA@mail.gmail.com>
To: Mark Rutland <mark.rutland@arm.com>
Content-Type: text/plain; charset=UTF-8
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

On Mon, Aug 1, 2016 at 3:47 AM, Mark Rutland <mark.rutland@arm.com> wrote:
> On Sun, Jul 31, 2016 at 03:04:58PM -0700, Kees Cook wrote:
>> On Sun, Jul 31, 2016 at 2:55 AM, Paul Burton <paul.burton@imgtec.com> wrote:
>> > It would be very interesting to discuss what's needed from arch code for
>> > various hardening features, both those currently in mainline & those in
>> > development.
>>
>> Yeah, there are a number of arch-specific things on my radar:
>>
>> - Standardizing copy_*_user() infrastructure. Each architecture does
>> their usercopy work in slightly different ways, and hooking it for
>> things like KASan and hardened usercopy can be weird and error-prone.
>> What's landing in arm64 is, I think, likely the start of what things
>> should look like for other architectures: there is a low-level
>> function (__arch_copy_*_user) that does the actual work of the copy.
>> Above that needs to be the place to hook KASan and hardened usercopy,
>> but still within the __copy* and copy* functions. (And x86 has a
>> single-underscore _copy* set of functions too!) Deciding the ordering
>> of KASan/hardened-usercopy vs access_ok checks may be worth discussing
>> too. For example, it's silly to check hardened-usercopy first if
>> access_ok is going to reject it.
>
> I think that's basically implied by the copy_* and __copy_* variants,
> per the asm-generic version the former simply add an access_ok check
> prior to calling the latter.

Well, it's certainly the intended design, but some architectures use
inlines, some use a common function for the copy (with in/out as a
parameter), and x86 uses different paths for __copy* than copy*

> Modulo figuring out the specifics for x86, perhaps this is just a matter
> of proposing patches?

Totally agreed: though there is enough arch-specific nuance in here
that I'd love to see arch maintainers helping (and I only have so much
time...)

> Given arm64 looks to be roughly the right shape already, I'd be happy to
> see how much of the arm64 code we can shift out to
> <asm-generic/uaccess.h> or <linux/uaccess.h>.

Right, I think that'd be the first step.

>> - Cleaning up CONFIG_DEBUG_RODATA. This config should not be called
>> "debug", and, frankly, it should be mandatory for all architectures.
>
> Likewise for DEBUG_SET_MODULE_RONX (which is currently independent of
> DEBUG_RODATA). I think we should do the same thing there, and perhaps
> fold the options together, or remove the config symbols entirely.

Yes, totally agreed.

> We don't currently have a boot-time option to disable
> DEBUG_SET_MODULE_RONX for testing, as we do for DEBUG_RODATA. Perhaps
> adding one is the first step to making that default y for all
> architectures?

Or tie it to the existing rodata flag, then drop the MODULE_RONX
config? In the back of my mind there's some reason that these are
separate configs, but I can't remember now. Maybe Laura remembers?

>> - Significant reduction in kernel memory attack surface by marking
>> rarely-changed function pointers as read-only. We need architectures
>> to have a way to make (uncommonly changed) function pointers
>> temporarily writable so that they are read-only (see
>> CONFIG_DEBUG_RODATA above) during most of their lifetime, thus
>> removing them as viable attack targets. There is nothing implemented
>> for this in the kernel yet.
>
> For reference, do you have any specific examples of such pointers? Most
> things I can think of are perhaps more suitable for ro_after_init (e.g.
> handle_arch_irq), or are embedded in structures with RW fields like
> refcounts.

So, a lot of things that look like they're good for ro_after_init
aren't exactly, like x86 smp_ops, which gets written to during suspend
(or resume?). Or vector, interrupt, and exception tables which need to
be able to change under rare situations. There are also structures
like page tables, etc. And there are function tables that get set up
outside of __init that could be read-only. Doing a quick grep through
the Grsecurity patchset shows pax_open_kernel() calls on things like
struct cdrom_device_ops. (Which could be const, except for the
rewriting of the generic_packet callback.)

Basically, doing an analysis of all things that could be const (which
the (currently out-of-tree) constify plugin does quite a bit of), and
dealing with the weird cases.

> I'll also read "temporarily writeable" as "modifiable through some alias
> somehow". For arm/arm64 it's easier/faster/safer to set up a temporary
> R/W alias for modification than to modify the active kernel image
> mapping.

Sure, though whatever the mechanism, it should be ROP-safe, i.e.
keeping it inline around the write, otherwise it may come to haunt us
as a new exploit path. :)

>> - Stacks without thread_info and with guard pages. Each architecture
>> needs to keep sensitive values off the kernel stack so that they can't
>> be targeted via stack-based attacks (e.g. via offsets or exhaustion),
>> and that faulting pages should live at either end to catch exhaustion
>> or large writes/reads trying to reach into other stacks. x86 is
>> starting to work on this now.
>
> I've also begun looking at this for arm64. It should be possible, though
> so far I've found a couple of things that mean we can't do a trivial
> port of the x86 approach:
>
> - Unlike x86, we don't have a double-fault vector which can move to a
>   new stack. We do have separate "thread" and "handler" stacks, but the
>   hardware always moves to the handler stack when an exception is taken.
>   So far, ideas of what we can do include:
>
>   * do some early entry work on the handler stack, then migrate to the
>     thread stack. This probably involves a memcpy of stashed context, so
>     the trivial version is likely to be measurably slower than what we
>     do now.
>
>   * always use the handler stack, but detect overflow before stacking
>     any context.
>
>     For this, it looks like we need at least a register's worth of
>     scratch space, so it's not clear how to do this. We could perhaps
>     have per-cpu vectors so as to give us pc-relative addressable
>     scratch space.
>
>     I'd initially hoped we could over-align the stack and use TBNZ to
>     detect the overflow, but it looks like that accepts the zero
>     register rather than the SP.
>
> - Our per-cpu primitives depend on preempt_{disable,enable}(), which
>   depend on modifying preempt_count in our thread_info. This means that
>   we can't use a per-cpu thread_info pointer like x86 now does.
>
>   We might be able to safely access a per-cpu thread_info pointer in our
>   entry code to initialise a cached value in sp_el0, though, given we
>   don't expect to take any exceptions there (and thus aren't
>   preemptible).
>
>   I've also been looking at per-cpu primitives that don't need the
>   preempt_{disable,enable}() dance, but the approach I've come up with
>   so far (reserving a general purpose register) is rather invasive and
>   scary.

Heh, yeah, a lot of the hardening changes end up with some really
tight design restrictions, but just getting people thinking about them
at all is a great first step. At the very least, it can help guide
architectures away from digging deeper holes when other things get
designed.

>> For the things that are implemented in the kernel, making sure each
>> architecture fully supports them would be a good first step. I'd like
>> to make a little chart of feature vs architecture, but it's a little
>> hard to compile, since it tends to have a third dimension: chipset.
>> For example, the PAN/SMAP protection (emulated or in hardware) looks
>> like this:
>> http://kernsec.org/wiki/index.php/Exploit_Methods/Userspace_data_usage#Mitigations
>> so it can be a bit of an eye-chart. :P
>
> Somewhat an aside, a while back I wanted to clean-up:
> http://kernsec.org/wiki/index.php/Feature_List
>
> To be a feature x arch chart, with version+fixups notes in each cell, as
> that would help to highlight what was implemented/missing per-arch.
>
> I couldn't see how to register for the wiki to do so. If the above
> sounds useful, is there any way I can get an account?

Yeah, that'd be great. James Morris should be able to set you up an account.

> One final thing that I didn't spot on the list was testing. For example,
> recent patches to LKDTM were somewhat hindered by the OBJCOPYFLAGS mess.
> Having tests work across architectures (and having tests at all!) is
> really important to for both development and ongoing regression testing
> of features.

I thought briefly about including that on my "radar" list above, but
decided my email had gotten long enough already. ;) But yes, testing
is absolutely central to these protections. If we can't test it, we
have no idea if even works in the first place, and that it doesn't
regress later. I've been trying to keep LKDTM up to date with as many
tests for things as possible. (In fact, LKDTM actually has some tests
for things that aren't even in the kernel yet (e.g. the atomic wrap
test and the usercopy whitelisting).) But things slip by once in a
while, but I try to keep them on the KSPP TODO list (e.g. the eBPF JIT
constant blinding test).

Trying to write the tests so they are strictly architecture agnostic
is also important, since I want to test a protection, not an
architecture. :) This is why I went through so many weird hoops to get
the rodata-isn't-executable test done with objcopy: no arch-specific
code.

> As a cross-track thing, it would be great if we could have test projects
> like kernelci run security regression tests. We should see if there's
> anything we need to do cross-arch to make that happen.

I talked with the kernelci folks last year, and they were interested
in using the lkdtm stuff, but it was a bit sideway to how they expect
tests to operate. For lkdtm, testing is inverted: if we Oops, it's
working. And in some tests, the entire system is taken down (e.g.
stack buffer overflow detection), so catching that the device under
test has _correctly_ crashed needs a non-trivial amount of test
framework infrastructure to handle. I'd love it if someone could step
up to take the time to get what's needed into kernelci.

-Kees

-- 
Kees Cook
Chrome OS & Brillo Security
