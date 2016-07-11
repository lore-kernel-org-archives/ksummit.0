Return-Path: <keescook@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B74BA305
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 11 Jul 2016 17:57:07 +0000 (UTC)
Received: from mail-wm0-f49.google.com (mail-wm0-f49.google.com [74.125.82.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E6DB9284
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 11 Jul 2016 17:57:06 +0000 (UTC)
Received: by mail-wm0-f49.google.com with SMTP id f126so100197865wma.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 11 Jul 2016 10:57:06 -0700 (PDT)
MIME-Version: 1.0
Sender: keescook@google.com
In-Reply-To: <87lh18i1d6.fsf@x220.int.ebiederm.org>
References: <CALCETrXtfzi=G4H+Zttv3kWcCo32V6cO9OBfdyuYT4DHvJTJLg@mail.gmail.com>
	<87lh18i1d6.fsf@x220.int.ebiederm.org>
From: Kees Cook <keescook@chromium.org>
Date: Mon, 11 Jul 2016 13:57:04 -0400
Message-ID: <CAGXu5jL=Vj4tY1k7zYp6B1FcvKm7dSYnKFgN7C8Dp1hOztbjwg@mail.gmail.com>
To: "Eric W. Biederman" <ebiederm@xmission.com>
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

On Mon, Jul 11, 2016 at 12:30 PM, Eric W. Biederman
<ebiederm@xmission.com> wrote:
> Andy Lutomirski <luto@amacapital.net> writes:
>
>> Are there useful things to discuss in person about hardening?  (I
>> don't want to bikeshed about the name at the kernel summit if we can
>> possibly avoid it.)
>>
>> Plausible sub-topics include:
>>
>>  - "USERCOPY" hardening
>>
>>  - Virtually mapped stacks (I'm hoping to have that in for x86 before
>> kernel summit...)
>>
>>  - Refcount
>>
>> I don't how much of this really needs an in-person meeting, but maybe
>> some if it would benefit.
>
> Given the history of the previous work on which much of this kernel
> hardening work is inspired, I think it makes some sense to discuss what
> is needed to get various features ready for mainline.

This is a much larger topic, I think. The work being done already by
the Kernel Self Protection Project is highlighting what's needed to
bring various features into mainline. Generally they require a lot of
chopping up into distinct pieces, expanding their portability to other
architectures, more testing, etc.

> Many kernel hardening features are perceived as having downsides affect
> performance or code maintainability.  Which quite frankly is a security
> issue of another flavor because if something does not work well, and or

Sure, but I think this will be done on a case-by-case basis, as each
thing has wildly different aspects. :)

> is not maintainable after a while it won't get used.  Rarely are we in
> the situation where defense against attack is the most important thing
> that people who are deploying linux are worried about.

Yup, of course. This is why I'm trying to make sure that things have
either near-zero impact or are easily configurable.

-Kees


-- 
Kees Cook
Chrome OS & Brillo Security
