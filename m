Return-Path: <marcel@holtmann.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 22EFE7AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Aug 2015 17:20:03 +0000 (UTC)
Received: from mail.holtmann.org (senator.holtmann.net [87.106.208.187])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id F008111E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Aug 2015 17:20:01 +0000 (UTC)
Content-Type: text/plain; charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2102\))
From: Marcel Holtmann <marcel@holtmann.org>
In-Reply-To: <CACRpkda=Pr3+2kGfH0Kc4eNw5yMOFHbbeyEJbeLApa-YzCsxsw@mail.gmail.com>
Date: Wed, 5 Aug 2015 10:19:56 -0700
Content-Transfer-Encoding: quoted-printable
Message-Id: <8DD2E411-D4F7-45C0-8BBA-9E418E9EB084@holtmann.org>
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
	<CACRpkda=Pr3+2kGfH0Kc4eNw5yMOFHbbeyEJbeLApa-YzCsxsw@mail.gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>
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

Hi Linus,

>>> There's been some work by Neil Brown to create a UART slave
>>> bus[1] (...)
>=20
>> The work on UART slaves (or whatever it will be called eventually) is =
important
>> for Bluetooth and most likely GPS and NFC in the future. It then =
allows to define
>> all the nasty behind the curtain details of that UART via DT or ACPI =
in vendor drivers.
>=20
> I agree 100%, and I think I have a simple enough in-kernel usecase so =
I can
> get testing these series.
>=20
> It seems GPS and NFC and other code is being kept out of the kernel
> because of the absense of a UART slave bus and all the hazzle of =
handling
> this.

we have NFC subsystem in the kernel with wide vendor support. We can =
discuss why Android is insisting on doing NFC in userspace, but that is =
a complete different off-topic ;)

GPS is a bit of a funky one. Historically the NMEA protocol is pretty =
much bound to an UART running at 4800 baud. So I can see a bit of =
reasoning behind it. These days NMEA is not the only protocol and a some =
GPS chip companies have developed their own ones.

Also GPS is found as Serial Port over Bluetooth, as USB-Serial, as =
actually serial port and so on. Then you have the really funky ones =
where it is hooked over a Bluetooth HCI interface, or as part a magic AT =
command port of a GSM modem. And if you want to get really funky then =
you have NMEA over Qualcomm QMI protocol.

These days LTE modems normally include the GPS and GLONASS chip. So you =
have to go through the LTE modem to access it.

With the oFono telephony stack, we actually added a location provider =
API for getting access to GPS. So you can request GPS access via D-Bus =
and it will then return you an fd. That fd might map to a physical TTY, =
or a virtual port on the GSM 07.11 multiplexer or via QMI.

And there are more odd ones out there.

>> In a perfect world I would prefer we are not using the Bluetooth HCI =
line discipline
>> at all. The problem right now is that everybody wants to enable the =
UART as
>> /dev/ttyFOO and then move on. However in reality they are not general =
purpose
>> TTY devices. The only thing you can ever do with them is tell the =
Bluetooth
>> subsystem that there is a TTY device and attach its line discipline =
to it.
>=20
> This is done from userspace right? I never managed to wrap my head =
around
> this because it seemed so odd and plainly hackish.
>=20
> In this ST-Ericsson driver for CG2900:
> http://marc.info/?l=3Dlinux-kernel&m=3D134873373526049&w=3D2
> the HCI link is used to tunnel things that are not Bluetooth, also
> GPS and FM radio is controlled over HCI. Yeah sorry, I didn't invent
> it... the HCI is then run over a UART.

Yes, pretty much. TI calls this shared transport aka TI-ST which is also =
pretty messy. It hacks around setup problems that should be solved a =
clean way.

For example one cumbersome details back in the days was that the =
Bluetooth chip comes without a persistent address in these embedded =
devices. So the address is stored in the host filesystem or in a =
dedicated one-time flash section.

Of course to program and address, you need HCI commands. For starting =
the Bluetooth stack, you need a valid address. We added support for =
handling this chicken and egg problem cleanly by abstracting the bringup =
into a setup stage. So you can start the HCI transport without starting =
the Bluetooth stack.

This in the end also resulted in the support of what is called HCI User =
Channel. Meaning you can drive a Bluetooth stack from userspace if you =
wanted to, but you would use the Bluetooth subsystem still for the =
transport abstraction to the hardware and the initial setup like =
firmware loading and address programming. This lead to the nice feature =
that we can run Android's Bluedroid stack on top of the Linux Bluetooth =
subsystem and avoid having to enable hardware for different stacks over =
and over again.

Regards

Marcel
