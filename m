Return-Path: <keescook@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 27903F1B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  1 Sep 2015 16:50:08 +0000 (UTC)
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6EF4626A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  1 Sep 2015 16:50:07 +0000 (UTC)
Received: by igbkq10 with SMTP id kq10so5615497igb.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 01 Sep 2015 09:50:06 -0700 (PDT)
MIME-Version: 1.0
Sender: keescook@google.com
In-Reply-To: <87h9nf9nv5.fsf@x220.int.ebiederm.org>
References: <alpine.LRH.2.20.1508241335370.1294@namei.org>
	<CACRpkdbJ15sA0xXz1XN8Z-636-tijT1UNDgf1J+sM9Zm1anSkA@mail.gmail.com>
	<CAGXu5j+XR7TJSgbTNYhCP0YhvvNwA5HtEL=xKCR9GUttzb06Uw@mail.gmail.com>
	<1440446941.2201.32.camel@HansenPartnership.com>
	<CAGXu5j+JNkdMHQJL=2AGQhB+dR9sZPJDG=NPafbdODMs6EexzQ@mail.gmail.com>
	<87h9nf9nv5.fsf@x220.int.ebiederm.org>
Date: Tue, 1 Sep 2015 09:50:06 -0700
Message-ID: <CAGXu5jJuE8yGx5eCRdPRpP4aes6-KneMXE2coPfQVL=qgFAR=w@mail.gmail.com>
From: Kees Cook <keescook@chromium.org>
To: "Eric W. Biederman" <ebiederm@xmission.com>
Content-Type: text/plain; charset=UTF-8
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

On Mon, Aug 31, 2015 at 1:58 PM, Eric W. Biederman
<ebiederm@xmission.com> wrote:
> Kees Cook <keescook@chromium.org> writes:
>
>> We are finding the bugs, and we can do better, but that's not what I
>> think needs the most attention right now. We need to kill classes of
>> bugs and classes of exploits. To kill a bug class, we must remove the
>> possibility that it can ever go wrong in the first place. Many people
>> stop here when thinking about hardening, but we must move on to
>> killing classes of exploit. I'll continue to use my W^X kernel code
>> example, since it was not, from an operational stance, a flaw that
>> kernel code was writable. But it's a exploitation weakness. If an
>> attacker just needs to directly target a kernel memory location with
>> their memory-write primitive, all their work is done, that user loses
>> control of their kernel, game over.
>>
>> We need to add the safety nets under the acrobats, since they can fall
>> at any time.
>
> I think it makes sense to close the classes of vulnerabilities that we
> can.

Absolutely, though I'm also suggesting we add proactive defenses. A
net isn't fixing a class of vulnerabilities in my bad analogy. A net
is proactive defense. Making the trapeze cables out of steel is a
vuln-fix.

> At the same time I think we to serious consider tossing attempts that
> fails to close a class of exploits.

I would agree if no one wanted them.

> The kernel address space randomization on x86_64 I find disturbing.  We
> have a 2GB address space for kernel code.  We have pages that are 2MB in
> that address space.  So we only have 10 bits that can change.  Only 9
> bits that can change if the kernel needs more than one 2MB page.  Which
> means that at most we need to brute force 1024 things to exploit any
> weakness.
>
> I don't see that attempt at kernel self protection actually
> accomplishing anything in the way of protection, and I do see it costing
> us debuggability which impacts kernel maintenance.  That is enabling
> this protection seems to increase the effort to fix kernel bugs and as
> such increases the number of bugs overall.

We'll have to agree to disagree. The kernel knows where its symbols
are, relocations are exported in crash dumps, etc. Everything needed
to debug a randomized base offset kernel is already there. For system
owners that run tight containers or remote services, kASLR provides a
real (if statistical) defense.

> Is it reasonable to suggest when we have kernel security features that
> only make people feel good, but don't actually protect them that we toss
> the feature?

I'm sure such a situation would be met with debate, like all kernel topics. :)

>>> Yes, I like this one a lot.  Adding mechanisms that don't increase
>>> complexity like this are good active means.  However, I become less
>>> enamoured of things like selinux and grsecurity which add complexity in
>>> the name of active attack surface reduction.  That's not to say never do
>>> it, it's just to say that attack surface is directly related to
>>> complexity.>
>
>> FWIW, really only reduces userspace attack surface (all syscalls are
>> still available to a confined process). seccomp reduces attack
>> surface. grsecurity has an MAC component, but grsecurity (with PaX) is
>> much larger. Regardless, some of these nets will increase complexity.
>> It's the same for anti-lock brakes and airbags[1]. We have to take on
>> this burden to protect our users from our mistakes.
>
> Except given your reference[1] what we need to do is protect our users
> from their own mistakes.  Which means we need to do more than just tell
> our users no it is not ok to do that thing you want to do (they will do
> it anyway).  We need to figure out safe ways to allow our users to do
> the things they want or need to do.
>
> This means things like not hiding new features behind CAP_SYS_ADMIN so
> that we don't have to bother with securing kernel code.

The kernel cannot be one-size-fits all. But we all have to play in the
same codebase, which means sometimes a feature is inherently opposed
to another. See all the interfaces that equate root with kernel access
(e.g. x86 msr module). These things are useful to those that need it
and a disaster to those that don't. We're always going to have the
play a balancing game and deal with these kinds of things on a
case-by-case basis. All that said, I agree: I don't like hiding stuff
behind CAP_SYS_ADMIN either.

> This means things like figuring out how to make it possible for users to
> mount that usb key they found in the parking lot and not have their
> computer get owned.

Well, that use-case is a whole different story. But it's a great
example of need to close bug classes, program defensively, add
self-protection features, etc.

> All of which says that we need to increase the amount of the kernel
> code that we are willing to defend from attacks, and figure out how to
> defend that code.

Sure, I totally agree. But in parallel to that is creating systems in
the kernel that stop exploitation methods (that exist regardless of
the flaw used as the primitive). There is a difference between killing
bug classes and killing exploitation methods. Our kernel has way too
few of the latter.

> Allowing our users to reduce the kernel attack surface is valid, but I
> don't think for us as kernel developers it is valid to rely on users
> reducing the kernel attack surface.

Totally agreed. Distro kernels are a good example, since they DO need
a one-size-fits-all config. :(

-Kees

-- 
Kees Cook
Chrome OS Security
