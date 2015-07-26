Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AB499268
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 26 Jul 2015 23:35:42 +0000 (UTC)
Received: from mail-la0-f43.google.com (mail-la0-f43.google.com
	[209.85.215.43])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B10A8EE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 26 Jul 2015 23:35:41 +0000 (UTC)
Received: by lagw2 with SMTP id w2so39232332lag.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 26 Jul 2015 16:35:40 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CACRpkdYeud0s6ZyvW8n+0oPQ+S7uP1CTv22wQhvtwfD7iHKL2A@mail.gmail.com>
References: <20150723105711.GB30929@amd>
	<CACRpkdYeud0s6ZyvW8n+0oPQ+S7uP1CTv22wQhvtwfD7iHKL2A@mail.gmail.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Sun, 26 Jul 2015 16:35:20 -0700
Message-ID: <CALCETrW07yfLW3Gv3Z0W6SoiSnsUVYf1=RnEHBvimO0c9ovVDg@mail.gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>,
	"casper@lists.berkeley.edu" <casper@lists.berkeley.edu>
Content-Type: text/plain; charset=UTF-8
Cc: Alan Tull <atull@altera.com>, "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, Pavel Machek <pavel@ucw.cz>
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

[cc: CASPER]

On Thu, Jul 23, 2015 at 4:26 AM, Linus Walleij <linus.walleij@linaro.org> wrote:
> On Thu, Jul 23, 2015 at 12:57 PM, Pavel Machek <pavel@ucw.cz> wrote:
>
>
>> FPGAs are common in embedded systems, where they can provide missing
>> hardware interfaces, directly implement functionality, or provide
>> custom hardware modules. These days they become available for servers,
>> too, where they can act as high-performance co-processors (which are
>> tricky to program).
>>
>> People that might be interested:
>
> Alan Tull <atull@altera.com>
> Is sending patchsets for this, and would be the primary person to
> invite for this topic:
> http://marc.info/?l=linux-kernel&m=143714949226387&w=2

I'm adding the CASPER list to see if anyone is interested.  CASPER is
a big Berkeley-based project that, among other things, designs
powerful programmable boards with PowerPC CPUs running Linux and giant
FPGAs for signal processing and I/O.

https://casper.berkeley.edu/wiki/ROACH2

I haven't used ROACH2, but I've used ROACH a bunch, and it would be
really nice if there was a standard Linux API for dealing with FPGAs.

--Andy
