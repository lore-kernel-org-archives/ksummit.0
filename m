Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9ACDB40C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 23 Jul 2015 13:00:58 +0000 (UTC)
Received: from mail-ob0-f174.google.com (mail-ob0-f174.google.com
	[209.85.214.174])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DAA8A79
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 23 Jul 2015 13:00:57 +0000 (UTC)
Received: by obre1 with SMTP id e1so153529082obr.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 23 Jul 2015 06:00:57 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150723121025.GA29747@amd>
References: <20150723105711.GB30929@amd>
	<CACRpkdYeud0s6ZyvW8n+0oPQ+S7uP1CTv22wQhvtwfD7iHKL2A@mail.gmail.com>
	<20150723121025.GA29747@amd>
Date: Thu, 23 Jul 2015 15:00:57 +0200
Message-ID: <CACRpkdaDOUAm_VOd+3H2khDYUsLgNcXKbYMypUTeNL6JbnqCAA@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
To: Pavel Machek <pavel@denx.de>
Content-Type: text/plain; charset=UTF-8
Cc: Alan Tull <atull@altera.com>, "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] FPGAs and how to program them
	from kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Jul 23, 2015 at 2:10 PM, Pavel Machek <pavel@denx.de> wrote:
> On Thu 2015-07-23 13:26:32, Linus Walleij wrote:
>> On Thu, Jul 23, 2015 at 12:57 PM, Pavel Machek <pavel@ucw.cz> wrote:
>>
>>
>> > FPGAs are common in embedded systems, where they can provide missing
>> > hardware interfaces, directly implement functionality, or provide
>> > custom hardware modules. These days they become available for servers,
>> > too, where they can act as high-performance co-processors (which are
>> > tricky to program).
>> >
>> > People that might be interested:
>>
>> Alan Tull <atull@altera.com>
>> Is sending patchsets for this, and would be the primary person to
>> invite for this topic:
>> http://marc.info/?l=linux-kernel&m=143714949226387&w=2
>
> Actually, I had him in my original email, but without full name.
>                                                                         Pavel

Do you mean this:

On Thu, Jul 23, 2015 at 12:57 PM, Pavel Machek <pavel@ucw.cz> wrote:

> Alan Cox

;)

(Happens easily, Linus Torvalds asked me to change my name
to avoid confusion...)

Yours,
Linus Walleij
