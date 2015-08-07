Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C9A547E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Aug 2015 12:40:55 +0000 (UTC)
Received: from mail-oi0-f44.google.com (mail-oi0-f44.google.com
	[209.85.218.44])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9FEBE143
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Aug 2015 12:40:54 +0000 (UTC)
Received: by oio137 with SMTP id 137so52233109oio.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 07 Aug 2015 05:40:54 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <BA8B014B-CBDD-4A9B-A9E2-A95BEA539ECF@holtmann.org>
References: <20150723105726.GC30929@amd>
	<CACRpkdbCbhgJHZifouDVUvaxyT5YWWdQz7Nt3AKoLvuEn4z7mQ@mail.gmail.com>
	<20150723121441.GB29747@amd>
	<20150723084251.54da2be0@gandalf.local.home>
	<20150723154014.GD11162@sirena.org.uk>
	<55B7FD82.8010806@sonymobile.com>
	<20150728230743.GO4753@usrtlx11787.corpusers.net>
	<CAL_JsqJ0j2wPwVYj3PX0UYiAXeZ-vm8KGX-W_-Dk3Gu1PVQrQw@mail.gmail.com>
	<CACRpkda0u4tWKfXTa0OEV7nFuXWjpDBt222iTBbEhnqLZptJXw@mail.gmail.com>
	<CAL_JsqLBPdiCgcE0CDesZXWQtthPJbZ8ryvcPmr6CaxWjMPFyA@mail.gmail.com>
	<F3A6AFDE-1DFA-4DC7-AD26-DC02260C0979@holtmann.org>
	<55C2337A.9010500@gmail.com>
	<BA8B014B-CBDD-4A9B-A9E2-A95BEA539ECF@holtmann.org>
Date: Fri, 7 Aug 2015 14:40:53 +0200
Message-ID: <CACRpkdbrBXZm9U=-B=mXmSBvU3XOUikv9MBYHz31e36AxMdjOA@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
To: Marcel Holtmann <marcel@holtmann.org>, Ulf Hansson <ulf.hansson@linaro.org>
Content-Type: text/plain; charset=UTF-8
Cc: Bjorn Andersson <bjorn.andersson@sonymobile.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	"kyungmin.park@samsung.com" <kyungmin.park@samsung.com>,
	John Stultz <john.stultz@linaro.org>, Pavel Machek <pavel@ucw.cz>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Mainline kernel on a cellphone
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Aug 5, 2015 at 7:00 PM, Marcel Holtmann <marcel@holtmann.org> wrote:

>>> Current Bluetooth/WiFi chips usually come in these flavors. WiFi on
>>> PCIe + Bluetooth on USB, WiFi + Bluetooth on USB, WiFi + Bluetooth on
>>> SDIO and WiFi on SDIO + Bluetooth on UART. Now if you are building a
>>> mobile phone, you can choose the low power version you like. And this
>>> often turns into SDIO for WiFi and UART for Bluetooth.
>>
>> SDIO is such a pain. The hosts and devices have so many quirks as there
>> is no interoperability testing.
>
> What I have found is that the quirks are in the host controller for SDIO.
> Once that is working, the drivers have less quirks to handle

Yeah and SDIO is more common for WLAN than for BT indeed.
What we've seen (paging Ulf Hannson) is that SDIO has had a number
of quirks because of two things:

- Devices that are not cards require a non-power of two byte
  transfer, and often hardware quirks to even write say 1, 2 or
  3 bytes in the 32bit out FIFO registers.

- Power sequencing WRT the device on the outer side, which
  has been addressed in drivers/mmc/core/pwrseq.c

First is just basic driver features not uniformly implemented,
the second I think is addressed now, just tricksy to use.

Linus Walleij
