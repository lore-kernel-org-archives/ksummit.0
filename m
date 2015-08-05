Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 06173323
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Aug 2015 08:40:13 +0000 (UTC)
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 388777D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Aug 2015 08:40:12 +0000 (UTC)
Received: by obdeg2 with SMTP id eg2so26529097obd.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 05 Aug 2015 01:40:11 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <F3A6AFDE-1DFA-4DC7-AD26-DC02260C0979@holtmann.org>
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
Date: Wed, 5 Aug 2015 10:40:11 +0200
Message-ID: <CACRpkda=Pr3+2kGfH0Kc4eNw5yMOFHbbeyEJbeLApa-YzCsxsw@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
To: Marcel Holtmann <marcel@holtmann.org>
Content-Type: text/plain; charset=UTF-8
Cc: Pavel Machek <pavel@ucw.cz>, "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"riverful.kim@samsung.com" <riverful.kim@samsung.com>,
	"kyungmin.park@samsung.com" <kyungmin.park@samsung.com>,
	John Stultz <john.stultz@linaro.org>,
	Bjorn Andersson <bjorn.andersson@sonymobile.com>,
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

On Tue, Aug 4, 2015 at 12:36 AM, Marcel Holtmann <marcel@holtmann.org> wrote:
> Hi Rob,

>> There's been some work by Neil Brown to create a UART slave
>> bus[1] (...)

> The work on UART slaves (or whatever it will be called eventually) is important
> for Bluetooth and most likely GPS and NFC in the future. It then allows to define
> all the nasty behind the curtain details of that UART via DT or ACPI in vendor drivers.

I agree 100%, and I think I have a simple enough in-kernel usecase so I can
get testing these series.

It seems GPS and NFC and other code is being kept out of the kernel
because of the absense of a UART slave bus and all the hazzle of handling
this.

> In a perfect world I would prefer we are not using the Bluetooth HCI line discipline
> at all. The problem right now is that everybody wants to enable the UART as
> /dev/ttyFOO and then move on. However in reality they are not general purpose
> TTY devices. The only thing you can ever do with them is tell the Bluetooth
> subsystem that there is a TTY device and attach its line discipline to it.

This is done from userspace right? I never managed to wrap my head around
this because it seemed so odd and plainly hackish.

In this ST-Ericsson driver for CG2900:
http://marc.info/?l=linux-kernel&m=134873373526049&w=2
the HCI link is used to tunnel things that are not Bluetooth, also
GPS and FM radio is controlled over HCI. Yeah sorry, I didn't invent
it... the HCI is then run over a UART.

Yours,
Linus Walleij
