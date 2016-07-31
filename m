Return-Path: <keescook@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4563D71
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 31 Jul 2016 22:05:02 +0000 (UTC)
Received: from mail-wm0-f41.google.com (mail-wm0-f41.google.com [74.125.82.41])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F389622D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 31 Jul 2016 22:05:00 +0000 (UTC)
Received: by mail-wm0-f41.google.com with SMTP id q128so348784807wma.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 31 Jul 2016 15:05:00 -0700 (PDT)
MIME-Version: 1.0
Sender: keescook@google.com
In-Reply-To: <3aa8df3e-3705-9fd5-640c-37c0be2af561@imgtec.com>
References: <CALCETrXtfzi=G4H+Zttv3kWcCo32V6cO9OBfdyuYT4DHvJTJLg@mail.gmail.com>
	<CAGXu5j+M06pdOB7Phqg==xg4p7=9ggmZciQuGZaNTXaW=-BCbg@mail.gmail.com>
	<3aa8df3e-3705-9fd5-640c-37c0be2af561@imgtec.com>
From: Kees Cook <keescook@chromium.org>
Date: Sun, 31 Jul 2016 15:04:58 -0700
Message-ID: <CAGXu5jKZb60=3H8faOG53Aq7H3MeST7_syionmFCE2HQFOG8SA@mail.gmail.com>
To: Paul Burton <paul.burton@imgtec.com>
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

On Sun, Jul 31, 2016 at 2:55 AM, Paul Burton <paul.burton@imgtec.com> wrote:
> On 11/07/16 18:53, Kees Cook wrote:
>>
>> On Mon, Jul 11, 2016 at 12:28 AM, Andy Lutomirski <luto@amacapital.net>
>> wrote:
>>>
>>> Are there useful things to discuss in person about hardening?  (I
>>> don't want to bikeshed about the name at the kernel summit if we can
>>> possibly avoid it.)
>>>
>>> Plausible sub-topics include:
>>>
>>>  - "USERCOPY" hardening
>>
>>
>> The whitelisting stuff might be interesting, but I think it's mostly
>> about standardizing how architectures define their *copy_*_user()
>> implementations so that things like KASan and now the hardening
>> infrastructure can hook it reliably.
>>
>>>  - Virtually mapped stacks (I'm hoping to have that in for x86 before
>>> kernel summit...)
>>
>>
>> Yeah, this should just go in. :) Perhaps a discussion for other
>> architectures, and the specific requirements (which are mostly well
>> documented, excepting some notes on stuff like the guard page at
>> either end, etc).
>
>
> It would be very interesting to discuss what's needed from arch code for
> various hardening features, both those currently in mainline & those in
> development.

Yeah, there are a number of arch-specific things on my radar:

- Standardizing copy_*_user() infrastructure. Each architecture does
their usercopy work in slightly different ways, and hooking it for
things like KASan and hardened usercopy can be weird and error-prone.
What's landing in arm64 is, I think, likely the start of what things
should look like for other architectures: there is a low-level
function (__arch_copy_*_user) that does the actual work of the copy.
Above that needs to be the place to hook KASan and hardened usercopy,
but still within the __copy* and copy* functions. (And x86 has a
single-underscore _copy* set of functions too!) Deciding the ordering
of KASan/hardened-usercopy vs access_ok checks may be worth discussing
too. For example, it's silly to check hardened-usercopy first if
access_ok is going to reject it.

- Cleaning up CONFIG_DEBUG_RODATA. This config should not be called
"debug", and, frankly, it should be mandatory for all architectures.
But (as you mention below) we need to sort out each architecture's
various capabilities in this regard. Some use delayed RO-marking (e.g.
x86, arm), some do it at load time (e.g. s390). As part of this clean
up, making sure the __ro_after_init section is being handled correctly
is needed too (and more people need to start using it). But we've got
to have correct memory protections in kernel memory; this is a
fundamental protection.

- Supporting gcc plugins. Validating each architecture correctly
supports the gcc plugin infrastructure is important since a number of
features may start landing there (already we'll have a latent entropy
plugin that can help especially embedded devices).

- Handling userspace/kernelspace memory segregation. (This is the SMAP
of x86, PAN of ARM, and just native on s390.) For architectures (or
chipsets within an architecture) that don't support unprivileged
memory access restrictions in hardware, we must find a way to emulate
it. (e.g. 32-bit ARM uses Domains, and 64-bit x86 could use PCIDs,
etc.) Keeping these regions separate is extremely important in
stopping exploitation.

- Significant reduction in kernel memory attack surface by marking
rarely-changed function pointers as read-only. We need architectures
to have a way to make (uncommonly changed) function pointers
temporarily writable so that they are read-only (see
CONFIG_DEBUG_RODATA above) during most of their lifetime, thus
removing them as viable attack targets. There is nothing implemented
for this in the kernel yet.

- Stacks without thread_info and with guard pages. Each architecture
needs to keep sensitive values off the kernel stack so that they can't
be targeted via stack-based attacks (e.g. via offsets or exhaustion),
and that faulting pages should live at either end to catch exhaustion
or large writes/reads trying to reach into other stacks. x86 is
starting to work on this now.

- Atomic overflow handling. Each architecture needs to provide a way
to catch atomic_t when it wraps around. This isn't implemented
anywhere in the kernel yet, but it'll need per-architecture support.
Some background on the rationale and the work involved (from the
perspective of this protection in PaX/Grsecurity, which has support
for x86, arm, mips, powerpc, and sparc) can be read here:
https://forums.grsecurity.net/viewtopic.php?f=7&t=4173

- Kernel ASLR: each architecture should (especially 64-bit ones)
separately randomize the base address of the kernel text, kernel
modules, and any large memory areas. Already x86, arm64, and MIPS are
doing base text address and module ASLR, with x86 now landing memory
ASLR too. Getting more architectures doing this would be a nice
addition. (And this will raise the need to provide better kernel
memory address exposure handling, since there are still so many ways
to leak the KASLR offsets. But breaking this catch-22 is important:
we'll never fix exposures if they're not important to fix, and we'll
never implement KASLR if there are so many exposures.)

> For example MIPS systems are currently showing the "This architecture does
> not have kernel memory protection." message since d2aa1acad22f (which to a
> user sounds pretty dire as though user code can freely access kernel data)
> and which I'd like for MIPS to implement the security to avoid. However
> because TLB refills are performed by software it's non-trivial, since we
> generally rely upon the kernel being placed in an unmapped region of the
> virtual address space & being unmapped there is no TLB entry to mark
> read-only.

This is actually from the perspective of the kernel, so when the
kernel code is running, it's mapped, and those entries should all be
marked read-only. As I mentioned above, we need to consider W^X memory
permissions a fundamental security protection, and architectures
should make sure this is completely fixed. (And that is stays that
way: x86 actually scans kernel memory permissions at boot now to make
sure no writable and executable regions have appeared.)

> Usercopy sounds like an interesting one for us too, with the MIPS
> copy_*_user implementations ripe for some cleanup.

Yeah, I'd love to get MIPS added to the hardened usercopy series: I
just hadn't had time to dig in. It _should_ be pretty straight
forward. If following the arm64 example is desired, the changes are
pretty clear in the arm64 patch:
http://git.kernel.org/cgit/linux/kernel/git/kees/linux.git/commit/?h=for-linus/usercopy&id=faf5b63e294151d6ac24ca6906d6f221bd3496cd
If you have time to look it over and send a patch, I'd love to land it. :)

> It would be interesting to hear from people focused on security what their
> requirements, current & coming soon, from arch code are.

I did a bit of a brain-dump into here already:
https://www.kernel.org/doc/Documentation/security/self-protection.txt

For the things that are implemented in the kernel, making sure each
architecture fully supports them would be a good first step. I'd like
to make a little chart of feature vs architecture, but it's a little
hard to compile, since it tends to have a third dimension: chipset.
For example, the PAN/SMAP protection (emulated or in hardware) looks
like this:
http://kernsec.org/wiki/index.php/Exploit_Methods/Userspace_data_usage#Mitigations
so it can be a bit of an eye-chart. :P

There is, of course, more than everything above, but I think these
things will keep us busy for a while. :)

-Kees

-- 
Kees Cook
Chrome OS & Brillo Security
