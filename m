Return-Path: <ebiederm@xmission.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A81CC9E7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 12 Jul 2016 16:53:14 +0000 (UTC)
Received: from out02.mta.xmission.com (out02.mta.xmission.com [166.70.13.232])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 39D0326C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 12 Jul 2016 16:53:14 +0000 (UTC)
From: ebiederm@xmission.com (Eric W. Biederman)
To: Kees Cook <keescook@chromium.org>
References: <CALCETrXtfzi=G4H+Zttv3kWcCo32V6cO9OBfdyuYT4DHvJTJLg@mail.gmail.com>
	<87lh18i1d6.fsf@x220.int.ebiederm.org>
	<CAGXu5jL=Vj4tY1k7zYp6B1FcvKm7dSYnKFgN7C8Dp1hOztbjwg@mail.gmail.com>
Date: Tue, 12 Jul 2016 11:40:45 -0500
In-Reply-To: <CAGXu5jL=Vj4tY1k7zYp6B1FcvKm7dSYnKFgN7C8Dp1hOztbjwg@mail.gmail.com>
	(Kees Cook's message of "Mon, 11 Jul 2016 13:57:04 -0400")
Message-ID: <87vb0a24j6.fsf@x220.int.ebiederm.org>
MIME-Version: 1.0
Content-Type: text/plain
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

Kees Cook <keescook@chromium.org> writes:

> On Mon, Jul 11, 2016 at 12:30 PM, Eric W. Biederman
> <ebiederm@xmission.com> wrote:
>> Andy Lutomirski <luto@amacapital.net> writes:
>>
>>> Are there useful things to discuss in person about hardening?  (I
>>> don't want to bikeshed about the name at the kernel summit if we can
>>> possibly avoid it.)
>>>
>>> Plausible sub-topics include:
>>>
>>>  - "USERCOPY" hardening
>>>
>>>  - Virtually mapped stacks (I'm hoping to have that in for x86 before
>>> kernel summit...)
>>>
>>>  - Refcount
>>>
>>> I don't how much of this really needs an in-person meeting, but maybe
>>> some if it would benefit.
>>
>> Given the history of the previous work on which much of this kernel
>> hardening work is inspired, I think it makes some sense to discuss what
>> is needed to get various features ready for mainline.
>
> This is a much larger topic, I think. The work being done already by
> the Kernel Self Protection Project is highlighting what's needed to
> bring various features into mainline. Generally they require a lot of
> chopping up into distinct pieces, expanding their portability to other
> architectures, more testing, etc.
>
>> Many kernel hardening features are perceived as having downsides affect
>> performance or code maintainability.  Which quite frankly is a security
>> issue of another flavor because if something does not work well, and or
>
> Sure, but I think this will be done on a case-by-case basis, as each
> thing has wildly different aspects. :)
>
>> is not maintainable after a while it won't get used.  Rarely are we in
>> the situation where defense against attack is the most important thing
>> that people who are deploying linux are worried about.
>
> Yup, of course. This is why I'm trying to make sure that things have
> either near-zero impact or are easily configurable.

Please make certain to leave a big fat comment explaining the security
that is added and why.

I have two brand new patchs that I received today or yesterday sitting
in my inbox to remove security features in the kernel.

A patch to remove the limit on /proc/self/exec only being able to be
changed once.

A patch to muck with kexec_file_load, and get it to accept a new flavor
of unsigned data.  At least I think that is what the patch is.

Eric
