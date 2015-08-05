Return-Path: <marcel@holtmann.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 68DD697
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Aug 2015 17:00:29 +0000 (UTC)
Received: from mail.holtmann.org (senator.holtmann.net [87.106.208.187])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 63C9610E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Aug 2015 17:00:28 +0000 (UTC)
Content-Type: text/plain; charset=windows-1252
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2102\))
From: Marcel Holtmann <marcel@holtmann.org>
In-Reply-To: <55C2337A.9010500@gmail.com>
Date: Wed, 5 Aug 2015 10:00:22 -0700
Content-Transfer-Encoding: quoted-printable
Message-Id: <BA8B014B-CBDD-4A9B-A9E2-A95BEA539ECF@holtmann.org>
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
To: Rob Herring <robherring2@gmail.com>
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

Hi Rob,

>>>>> The WiFi side is actually in better shape than BT. With BT, we
>>>>> have Bluedroid vs. BlueZ, no real DT bindings to describe BT
>>>>> chips (plenty of examples of how not to do it[1]), and chip
>>>>> specific userspace initialization (firmware loading, baudrate
>>>>> setup, power mgt).
>>>>=20
>>>> I was looking at it at one point and couldn't wrap my head around
>>>> how the BT support was devised from a kernel point of view.
>>>>=20
>>>> It seems BT chips more often than not sit on a UART connection=20
>>>> (often very high speed) and since there is no "uart bus" or
>>>> "serial bus" akin to what we have for I2C or SPI, it is actually
>>>> impossible to instantiate them properly in the driver model.
>>>> Instead BT drivers are poked and peeked from userspace using the
>>>> line discipline as if they were some kind of modem, just
>>>> in-kernel.
>>>=20
>>> Yes, but then there's always some side band signals for regulator=20
>>> control, reset, clocks, wake-up, rf-kill, etc. that needs a glue=20
>>> driver. There's been some work by Neil Brown to create a UART
>>> slave bus[1] and I've gotten several other UART device bindings
>>> recently, but they all suffer from being one off device bindings
>>> done in different ways and I want to see something common here.
>>>=20
>>> It also seems the BT folks are working on moving more of the setup=20=

>>> into the kernel and creating a proper subsystem. I'm not sure
>>> about the details on that.
>>=20
>> we are indeed moving a lot of the initialization and handling of the
>> Bluetooth controller into the kernel. So that this can also be shared
>> between USB and UART based controllers.
>>=20
>> The work on UART slaves (or whatever it will be called eventually) is
>> important for Bluetooth and most likely GPS and NFC in the future. It
>> then allows to define all the nasty behind the curtain details of
>> that UART via DT or ACPI in vendor drivers.
>>=20
>> The Bluetooth driver in theory should not care at all and generally
>> speaking it doesn't since the Bluetooth SIG has defined a Host
>> Controller Interface (HCI) that is standard. Meaning all operation
>> are well defined. Just the transport over UART has many vendor
>> specific tweaks. The two most obvious ones are deep sleep modes and
>> running the UART at high speeds.
>>=20
>> In a perfect world I would prefer we are not using the Bluetooth HCI
>> line discipline at all. The problem right now is that everybody wants
>> to enable the UART as /dev/ttyFOO and then move on. However in
>> reality they are not general purpose TTY devices. The only thing you
>> can ever do with them is tell the Bluetooth subsystem that there is a
>> TTY device and attach its line discipline to it.
>>=20
>> The majority of these high speed UARTs in phones, tablets and also
>> laptops with Bluetooth chips attached to it should just expose a
>> special bus that we can then enumerate. Pretending to a general
>> purpose UART is actually cumbersome and you will just see more and
>> more of these.
>=20
> Hardware-wise, the UARTs on SOCs I've seen are no different whether =
used
> for console or BT device. Of course, running UARTs at 3-4Mbps means
> things like hooking up external DMA controllers which are kind of
> pointless for normal tty use.
>=20
> Perhaps BT and other UART devices could interface directly to the
> serial_core/uart_port layer rather than the tty layer? I've got no =
idea
> if that would buy us anything though. I'm guessing part of the problem
> here is the requirements for a character based interface are different
> from a more packet based interface (HCI) even if the h/w is the same.

interfacing directly with the serial / UART layer would be beneficial. =
For example ACPI already describes if the UART is used for Bluetooth =
operation and what settings it expects. That means that there is really =
no point in hooking it up as /dev/ttyFOO and then expect userspace to =
discover it again and attach a line discipline to it.

However for this to work, the UART layer would have to have some smarts =
to turn the extra ACPI provided information into a decision between =
/dev/ttyFOO and the creation of platform device. If such a platform =
device is present, we can then easily enumerate from a simple Bluetooth =
H:4 or 3-Wire driver. It just bind it it similar to what USB and SDIO is =
doing.

And of course exposing the same via DT instead of ACPI should be =
possible as well. I just know that ACPI has this since on Intel =
platforms it has been exposed like this for a while now. The main =
problem is that non of this is available easily to userspace to make the =
same smart decision on what TTY device node is for Bluetooth and what is =
the actual vendor of the Bluetooth chip. We need that as well to drive =
different firmware loading strategies.

Instead of a platform device, the TTY / UART layer could also turn into =
its own bus for these kind of things. I just don't know if bus vs =
platform device is the right solution here.

>> While Bluetooth supports USB and SDIO as well, the most common other
>> low power interface is the UART (using H:4 or 3-Wire Bluetooth
>> transports). The usage of PCI or SPI or I2C as interface to Bluetooth
>> never really happened.
>>=20
>> Current Bluetooth/WiFi chips usually come in these flavors. WiFi on
>> PCIe + Bluetooth on USB, WiFi + Bluetooth on USB, WiFi + Bluetooth on
>> SDIO and WiFi on SDIO + Bluetooth on UART. Now if you are building a
>> mobile phone, you can choose the low power version you like. And this
>> often turns into SDIO for WiFi and UART for Bluetooth.
>=20
> SDIO is such a pain. The hosts and devices have so many quirks as =
there
> is no interoperability testing.

What I have found is that the quirks are in the host controller for =
SDIO. Once that is working, the drivers have less quirks to handle. Then =
again, the number of Bluetooth based SDIO devices is limited. The =
majority of them are UART based in embedded devices.

> Do you ever see interdependencies between the BT and WiFi portions of
> the combo chips which have different host interfaces? They seem to be
> fairly well separated AFAICT. Some things like shared irq, clocks or
> regulators can be dealt with easily, but if you had things like the =
WiFi
> firmware has to be loaded and running before BT can work or vice-versa
> that would be a pain to deal with. That would impact how we do DT
> bindings as well.

In the combo chips the vendor normally has figured this out. So I have =
not heard about large. I can speak about some funky stuff from the past =
that never made it to the market, but lets not go there.

Regards

Marcel
