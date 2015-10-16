Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B111B898
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Oct 2015 09:21:49 +0000 (UTC)
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 205778C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Oct 2015 09:21:49 +0000 (UTC)
Received: by obbda8 with SMTP id da8so86185829obb.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Oct 2015 02:21:48 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <8E20B896-416E-4C76-877B-26B558D44422@holtmann.org>
References: <20151012190137.GA1992@thunk.org>
	<CAL_JsqLxYRBhnLj0SyEtgwWaCPM+UcPindxZ2NswB3WKopCyPw@mail.gmail.com>
	<1444978357.2370.8.camel@sipsolutions.net>
	<8179129.ZdLT4uWW88@wuerfel>
	<8E20B896-416E-4C76-877B-26B558D44422@holtmann.org>
Date: Fri, 16 Oct 2015 11:21:48 +0200
Message-ID: <CACRpkdbDZryMwC6r4P3idP1ACp9A2f6JFNbPnvy0doArDYdoHw@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
To: Marcel Holtmann <marcel@holtmann.org>
Content-Type: text/plain; charset=UTF-8
Cc: Jakub Kicinski <kubakici@wp.pl>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Draft agenda for the kernel summit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Oct 16, 2015 at 10:00 AM, Marcel Holtmann <marcel@holtmann.org> wrote:
> Arnd:

>> My understanding is that MediaTek has improved much recently and their
>> mt76 wireless driver source is available and getting upstreamed (...)

> are sure that Mediatek got better? I am not convinced by that.
>
> I think there is also a large difference in their MiniPCI cards compared to
> their connectivity hub in their SoC. The Bluetooth side for example is
> largely copying existing drivers, hacking their vendor specific behavior
> in and then throwing it over the wall.

When discussing the sadly unsupported MT7630E MiniPCI card
which has both WiFi and Bluetooth Jakub Kicinski elaborated a bit
on the story there:
http://marc.info/?l=linux-wireless&m=143815707108278&w=2

It seems Mediatek got a bit of internal struggle, the kernel doing
three different drivers sharing aspects of the same chip(s)
and general mishmash due to a cocktail of factors: organizational,
company consolidation etc, but also due to a few chips,
especially MT7630E, ending up in a technical middle-ground
between two families of chips.

The person writing the MT7630E driver was obviously intending
to upstream it, I can see the beginnings of an upstream attempt
in the source code, but was apparently removed from that task
before s/he could complete it.

Sadly there is a bunch of users stuck with this card. They
(including my daughter) survive by using a forwardport of the
code drop from Mediatek, but who knows how long that thing
will even compile.

Linus Walleij
