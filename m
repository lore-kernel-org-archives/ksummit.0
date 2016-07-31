Return-Path: <Paul.Burton@imgtec.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9D8F98A6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 31 Jul 2016 09:55:43 +0000 (UTC)
Received: from mailapp01.imgtec.com (mailapp01.imgtec.com [195.59.15.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id EE7E413B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 31 Jul 2016 09:55:42 +0000 (UTC)
To: Kees Cook <keescook@chromium.org>, Andy Lutomirski <luto@amacapital.net>
References: <CALCETrXtfzi=G4H+Zttv3kWcCo32V6cO9OBfdyuYT4DHvJTJLg@mail.gmail.com>
	<CAGXu5j+M06pdOB7Phqg==xg4p7=9ggmZciQuGZaNTXaW=-BCbg@mail.gmail.com>
From: Paul Burton <paul.burton@imgtec.com>
Message-ID: <3aa8df3e-3705-9fd5-640c-37c0be2af561@imgtec.com>
Date: Sun, 31 Jul 2016 10:55:29 +0100
MIME-Version: 1.0
In-Reply-To: <CAGXu5j+M06pdOB7Phqg==xg4p7=9ggmZciQuGZaNTXaW=-BCbg@mail.gmail.com>
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit
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

On 11/07/16 18:53, Kees Cook wrote:
> On Mon, Jul 11, 2016 at 12:28 AM, Andy Lutomirski <luto@amacapital.net> wrote:
>> Are there useful things to discuss in person about hardening?  (I
>> don't want to bikeshed about the name at the kernel summit if we can
>> possibly avoid it.)
>>
>> Plausible sub-topics include:
>>
>>  - "USERCOPY" hardening
>
> The whitelisting stuff might be interesting, but I think it's mostly
> about standardizing how architectures define their *copy_*_user()
> implementations so that things like KASan and now the hardening
> infrastructure can hook it reliably.
>
>>  - Virtually mapped stacks (I'm hoping to have that in for x86 before
>> kernel summit...)
>
> Yeah, this should just go in. :) Perhaps a discussion for other
> architectures, and the specific requirements (which are mostly well
> documented, excepting some notes on stuff like the guard page at
> either end, etc).

It would be very interesting to discuss what's needed from arch code for 
various hardening features, both those currently in mainline & those in 
development.

For example MIPS systems are currently showing the "This architecture 
does not have kernel memory protection." message since d2aa1acad22f 
(which to a user sounds pretty dire as though user code can freely 
access kernel data) and which I'd like for MIPS to implement the 
security to avoid. However because TLB refills are performed by software 
it's non-trivial, since we generally rely upon the kernel being placed 
in an unmapped region of the virtual address space & being unmapped 
there is no TLB entry to mark read-only.

Usercopy sounds like an interesting one for us too, with the MIPS 
copy_*_user implementations ripe for some cleanup.

It would be interesting to hear from people focused on security what 
their requirements, current & coming soon, from arch code are.

Thanks,
     Paul
