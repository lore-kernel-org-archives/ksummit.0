Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 966B2273
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Aug 2015 07:42:56 +0000 (UTC)
Received: from mail-oi0-f48.google.com (mail-oi0-f48.google.com
	[209.85.218.48])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4379389
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Aug 2015 07:42:56 +0000 (UTC)
Received: by oigu133 with SMTP id u133so23247211oig.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 03 Aug 2015 00:42:55 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAL_JsqJ0j2wPwVYj3PX0UYiAXeZ-vm8KGX-W_-Dk3Gu1PVQrQw@mail.gmail.com>
References: <20150723105726.GC30929@amd>
	<CACRpkdbCbhgJHZifouDVUvaxyT5YWWdQz7Nt3AKoLvuEn4z7mQ@mail.gmail.com>
	<20150723121441.GB29747@amd>
	<20150723084251.54da2be0@gandalf.local.home>
	<20150723154014.GD11162@sirena.org.uk>
	<55B7FD82.8010806@sonymobile.com>
	<20150728230743.GO4753@usrtlx11787.corpusers.net>
	<CAL_JsqJ0j2wPwVYj3PX0UYiAXeZ-vm8KGX-W_-Dk3Gu1PVQrQw@mail.gmail.com>
Date: Mon, 3 Aug 2015 09:42:55 +0200
Message-ID: <CACRpkda0u4tWKfXTa0OEV7nFuXWjpDBt222iTBbEhnqLZptJXw@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
To: Rob Herring <robherring2@gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: Bjorn Andersson <bjorn.andersson@sonymobile.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"riverful.kim@samsung.com" <riverful.kim@samsung.com>,
	"kyungmin.park@samsung.com" <kyungmin.park@samsung.com>,
	John Stultz <john.stultz@linaro.org>, Pavel Machek <pavel@ucw.cz>,
	Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Mainline kernel on a cellphone
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 31, 2015 at 6:18 PM, Rob Herring <robherring2@gmail.com> wrote:

> The WiFi side is actually in better shape than BT. With BT, we have
> Bluedroid vs. BlueZ, no real DT bindings to describe BT chips (plenty
> of examples of how not to do it[1]), and chip specific userspace
> initialization (firmware loading, baudrate setup, power mgt).

I was looking at it at one point and couldn't wrap my head around how
the BT support was devised from a kernel point of view.

It seems BT chips more often than not sit on a UART connection
(often very high speed) and since there is no "uart bus" or "serial bus"
akin to what we have for I2C or SPI, it is actually impossible to
instantiate them properly in the driver model. Instead BT drivers
are poked and peeked from userspace using the line discipline as
if they were some kind of modem, just in-kernel.

The stuff going on up there may seem simple and intuitive for the
BT people but for a random kernel engineer like me it seems like
magic. This makes them hard to review and upstream for what I
can see.

Yours,
Linus Walleij
