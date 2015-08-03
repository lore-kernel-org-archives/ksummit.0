Return-Path: <robherring2@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AF1E78C7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Aug 2015 21:35:09 +0000 (UTC)
Received: from mail-yk0-f180.google.com (mail-yk0-f180.google.com
	[209.85.160.180])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 81240147
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Aug 2015 21:35:08 +0000 (UTC)
Received: by ykdu72 with SMTP id u72so122095028ykd.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 03 Aug 2015 14:35:07 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CACRpkda0u4tWKfXTa0OEV7nFuXWjpDBt222iTBbEhnqLZptJXw@mail.gmail.com>
References: <20150723105726.GC30929@amd>
	<CACRpkdbCbhgJHZifouDVUvaxyT5YWWdQz7Nt3AKoLvuEn4z7mQ@mail.gmail.com>
	<20150723121441.GB29747@amd>
	<20150723084251.54da2be0@gandalf.local.home>
	<20150723154014.GD11162@sirena.org.uk>
	<55B7FD82.8010806@sonymobile.com>
	<20150728230743.GO4753@usrtlx11787.corpusers.net>
	<CAL_JsqJ0j2wPwVYj3PX0UYiAXeZ-vm8KGX-W_-Dk3Gu1PVQrQw@mail.gmail.com>
	<CACRpkda0u4tWKfXTa0OEV7nFuXWjpDBt222iTBbEhnqLZptJXw@mail.gmail.com>
From: Rob Herring <robherring2@gmail.com>
Date: Mon, 3 Aug 2015 16:34:48 -0500
Message-ID: <CAL_JsqLBPdiCgcE0CDesZXWQtthPJbZ8ryvcPmr6CaxWjMPFyA@mail.gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>
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

On Mon, Aug 3, 2015 at 2:42 AM, Linus Walleij <linus.walleij@linaro.org> wrote:
> On Fri, Jul 31, 2015 at 6:18 PM, Rob Herring <robherring2@gmail.com> wrote:
>
>> The WiFi side is actually in better shape than BT. With BT, we have
>> Bluedroid vs. BlueZ, no real DT bindings to describe BT chips (plenty
>> of examples of how not to do it[1]), and chip specific userspace
>> initialization (firmware loading, baudrate setup, power mgt).
>
> I was looking at it at one point and couldn't wrap my head around how
> the BT support was devised from a kernel point of view.
>
> It seems BT chips more often than not sit on a UART connection
> (often very high speed) and since there is no "uart bus" or "serial bus"
> akin to what we have for I2C or SPI, it is actually impossible to
> instantiate them properly in the driver model. Instead BT drivers
> are poked and peeked from userspace using the line discipline as
> if they were some kind of modem, just in-kernel.

Yes, but then there's always some side band signals for regulator
control, reset, clocks, wake-up, rf-kill, etc. that needs a glue
driver. There's been some work by Neil Brown to create a UART slave
bus[1] and I've gotten several other UART device bindings recently,
but they all suffer from being one off device bindings done in
different ways and I want to see something common here.

It also seems the BT folks are working on moving more of the setup
into the kernel and creating a proper subsystem. I'm not sure about
the details on that.

Rob

[1] https://lwn.net/Articles/643878/
