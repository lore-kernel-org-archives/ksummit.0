Return-Path: <ebiederm@xmission.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6AC031119
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 31 Aug 2015 21:05:31 +0000 (UTC)
Received: from out01.mta.xmission.com (out01.mta.xmission.com [166.70.13.231])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B3BAD129
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 31 Aug 2015 21:05:30 +0000 (UTC)
From: ebiederm@xmission.com (Eric W. Biederman)
To: Kees Cook <keescook@chromium.org>
References: <alpine.LRH.2.20.1508241335370.1294@namei.org>
	<CACRpkdbJ15sA0xXz1XN8Z-636-tijT1UNDgf1J+sM9Zm1anSkA@mail.gmail.com>
	<CAGXu5j+XR7TJSgbTNYhCP0YhvvNwA5HtEL=xKCR9GUttzb06Uw@mail.gmail.com>
	<1440446941.2201.32.camel@HansenPartnership.com>
	<CAGXu5j+JNkdMHQJL=2AGQhB+dR9sZPJDG=NPafbdODMs6EexzQ@mail.gmail.com>
Date: Mon, 31 Aug 2015 15:58:22 -0500
In-Reply-To: <CAGXu5j+JNkdMHQJL=2AGQhB+dR9sZPJDG=NPafbdODMs6EexzQ@mail.gmail.com>
	(Kees Cook's message of "Mon, 24 Aug 2015 15:55:01 -0700")
Message-ID: <87h9nf9nv5.fsf@x220.int.ebiederm.org>
MIME-Version: 1.0
Content-Type: text/plain
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Emily Ratliff <eratliff@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Kernel Hardening
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Kees Cook <keescook@chromium.org> writes:

> We are finding the bugs, and we can do better, but that's not what I
> think needs the most attention right now. We need to kill classes of
> bugs and classes of exploits. To kill a bug class, we must remove the
> possibility that it can ever go wrong in the first place. Many people
> stop here when thinking about hardening, but we must move on to
> killing classes of exploit. I'll continue to use my W^X kernel code
> example, since it was not, from an operational stance, a flaw that
> kernel code was writable. But it's a exploitation weakness. If an
> attacker just needs to directly target a kernel memory location with
> their memory-write primitive, all their work is done, that user loses
> control of their kernel, game over.
>
> We need to add the safety nets under the acrobats, since they can fall
> at any time.

I think it makes sense to close the classes of vulnerabilities that we
can.

At the same time I think we to serious consider tossing attempts that
fails to close a class of exploits.

The kernel address space randomization on x86_64 I find disturbing.  We
have a 2GB address space for kernel code.  We have pages that are 2MB in
that address space.  So we only have 10 bits that can change.  Only 9
bits that can change if the kernel needs more than one 2MB page.  Which
means that at most we need to brute force 1024 things to exploit any
weakness.

I don't see that attempt at kernel self protection actually
accomplishing anything in the way of protection, and I do see it costing
us debuggability which impacts kernel maintenance.  That is enabling
this protection seems to increase the effort to fix kernel bugs and as
such increases the number of bugs overall.

Is it reasonable to suggest when we have kernel security features that
only make people feel good, but don't actually protect them that we toss
the feature?

>> Yes, I like this one a lot.  Adding mechanisms that don't increase
>> complexity like this are good active means.  However, I become less
>> enamoured of things like selinux and grsecurity which add complexity in
>> the name of active attack surface reduction.  That's not to say never do
>> it, it's just to say that attack surface is directly related to
>> complexity.>

> FWIW, really only reduces userspace attack surface (all syscalls are
> still available to a confined process). seccomp reduces attack
> surface. grsecurity has an MAC component, but grsecurity (with PaX) is
> much larger. Regardless, some of these nets will increase complexity.
> It's the same for anti-lock brakes and airbags[1]. We have to take on
> this burden to protect our users from our mistakes.

Except given your reference[1] what we need to do is protect our users
from their own mistakes.  Which means we need to do more than just tell
our users no it is not ok to do that thing you want to do (they will do
it anyway).  We need to figure out safe ways to allow our users to do
the things they want or need to do.

This means things like not hiding new features behind CAP_SYS_ADMIN so
that we don't have to bother with securing kernel code.

This means things like figuring out how to make it possible for users to
mount that usb key they found in the parking lot and not have their
computer get owned.

All of which says that we need to increase the amount of the kernel
code that we are willing to defend from attacks, and figure out how to
defend that code.

Allowing our users to reduce the kernel attack surface is valid, but I
don't think for us as kernel developers it is valid to rely on users
reducing the kernel attack surface.

> -Kees
>
> [1] Borrowing mricon's great analogy as presented at the Security
> Summit this year:
> http://kernsec.org/files/lss2015/giant-bags-of-mostly-water.pdf
