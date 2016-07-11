Return-Path: <ebiederm@xmission.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 40B748D7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 11 Jul 2016 16:42:42 +0000 (UTC)
Received: from out03.mta.xmission.com (out03.mta.xmission.com [166.70.13.233])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D2023173
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 11 Jul 2016 16:42:41 +0000 (UTC)
From: ebiederm@xmission.com (Eric W. Biederman)
To: Andy Lutomirski <luto@amacapital.net>
References: <CALCETrXtfzi=G4H+Zttv3kWcCo32V6cO9OBfdyuYT4DHvJTJLg@mail.gmail.com>
Date: Mon, 11 Jul 2016 11:30:13 -0500
In-Reply-To: <CALCETrXtfzi=G4H+Zttv3kWcCo32V6cO9OBfdyuYT4DHvJTJLg@mail.gmail.com>
	(Andy Lutomirski's message of "Sun, 10 Jul 2016 21:28:53 -0700")
Message-ID: <87lh18i1d6.fsf@x220.int.ebiederm.org>
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

Andy Lutomirski <luto@amacapital.net> writes:

> Are there useful things to discuss in person about hardening?  (I
> don't want to bikeshed about the name at the kernel summit if we can
> possibly avoid it.)
>
> Plausible sub-topics include:
>
>  - "USERCOPY" hardening
>
>  - Virtually mapped stacks (I'm hoping to have that in for x86 before
> kernel summit...)
>
>  - Refcount
>
> I don't how much of this really needs an in-person meeting, but maybe
> some if it would benefit.

Given the history of the previous work on which much of this kernel
hardening work is inspired, I think it makes some sense to discuss what
is needed to get various features ready for mainline.

Many kernel hardening features are perceived as having downsides affect
performance or code maintainability.  Which quite frankly is a security
issue of another flavor because if something does not work well, and or
is not maintainable after a while it won't get used.  Rarely are we in
the situation where defense against attack is the most important thing
that people who are deploying linux are worried about.

Eric
