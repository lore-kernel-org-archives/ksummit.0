Return-Path: <robherring2@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9979D279
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Aug 2015 16:02:05 +0000 (UTC)
Received: from mail-ob0-f174.google.com (mail-ob0-f174.google.com
	[209.85.214.174])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8D50214C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Aug 2015 16:02:04 +0000 (UTC)
Received: by obdeg2 with SMTP id eg2so35019612obd.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 05 Aug 2015 09:02:04 -0700 (PDT)
Message-ID: <55C2337A.9010500@gmail.com>
Date: Wed, 05 Aug 2015 11:02:02 -0500
From: Rob Herring <robherring2@gmail.com>
MIME-Version: 1.0
To: Marcel Holtmann <marcel@holtmann.org>
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
In-Reply-To: <F3A6AFDE-1DFA-4DC7-AD26-DC02260C0979@holtmann.org>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
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

On 08/03/2015 05:36 PM, Marcel Holtmann wrote:
> Hi Rob,
> 
>>>> The WiFi side is actually in better shape than BT. With BT, we
>>>> have Bluedroid vs. BlueZ, no real DT bindings to describe BT
>>>> chips (plenty of examples of how not to do it[1]), and chip
>>>> specific userspace initialization (firmware loading, baudrate
>>>> setup, power mgt).
>>> 
>>> I was looking at it at one point and couldn't wrap my head around
>>> how the BT support was devised from a kernel point of view.
>>> 
>>> It seems BT chips more often than not sit on a UART connection 
>>> (often very high speed) and since there is no "uart bus" or
>>> "serial bus" akin to what we have for I2C or SPI, it is actually
>>> impossible to instantiate them properly in the driver model.
>>> Instead BT drivers are poked and peeked from userspace using the
>>> line discipline as if they were some kind of modem, just
>>> in-kernel.
>> 
>> Yes, but then there's always some side band signals for regulator 
>> control, reset, clocks, wake-up, rf-kill, etc. that needs a glue 
>> driver. There's been some work by Neil Brown to create a UART
>> slave bus[1] and I've gotten several other UART device bindings
>> recently, but they all suffer from being one off device bindings
>> done in different ways and I want to see something common here.
>> 
>> It also seems the BT folks are working on moving more of the setup 
>> into the kernel and creating a proper subsystem. I'm not sure
>> about the details on that.
> 
> we are indeed moving a lot of the initialization and handling of the
> Bluetooth controller into the kernel. So that this can also be shared
> between USB and UART based controllers.
> 
> The work on UART slaves (or whatever it will be called eventually) is
> important for Bluetooth and most likely GPS and NFC in the future. It
> then allows to define all the nasty behind the curtain details of
> that UART via DT or ACPI in vendor drivers.
> 
> The Bluetooth driver in theory should not care at all and generally
> speaking it doesn't since the Bluetooth SIG has defined a Host
> Controller Interface (HCI) that is standard. Meaning all operation
> are well defined. Just the transport over UART has many vendor
> specific tweaks. The two most obvious ones are deep sleep modes and
> running the UART at high speeds.
> 
> In a perfect world I would prefer we are not using the Bluetooth HCI
> line discipline at all. The problem right now is that everybody wants
> to enable the UART as /dev/ttyFOO and then move on. However in
> reality they are not general purpose TTY devices. The only thing you
> can ever do with them is tell the Bluetooth subsystem that there is a
> TTY device and attach its line discipline to it.
> 
> The majority of these high speed UARTs in phones, tablets and also
> laptops with Bluetooth chips attached to it should just expose a
> special bus that we can then enumerate. Pretending to a general
> purpose UART is actually cumbersome and you will just see more and
> more of these.

Hardware-wise, the UARTs on SOCs I've seen are no different whether used
for console or BT device. Of course, running UARTs at 3-4Mbps means
things like hooking up external DMA controllers which are kind of
pointless for normal tty use.

Perhaps BT and other UART devices could interface directly to the
serial_core/uart_port layer rather than the tty layer? I've got no idea
if that would buy us anything though. I'm guessing part of the problem
here is the requirements for a character based interface are different
from a more packet based interface (HCI) even if the h/w is the same.


> While Bluetooth supports USB and SDIO as well, the most common other
> low power interface is the UART (using H:4 or 3-Wire Bluetooth
> transports). The usage of PCI or SPI or I2C as interface to Bluetooth
> never really happened.
> 
> Current Bluetooth/WiFi chips usually come in these flavors. WiFi on
> PCIe + Bluetooth on USB, WiFi + Bluetooth on USB, WiFi + Bluetooth on
> SDIO and WiFi on SDIO + Bluetooth on UART. Now if you are building a
> mobile phone, you can choose the low power version you like. And this
> often turns into SDIO for WiFi and UART for Bluetooth.

SDIO is such a pain. The hosts and devices have so many quirks as there
is no interoperability testing.

Do you ever see interdependencies between the BT and WiFi portions of
the combo chips which have different host interfaces? They seem to be
fairly well separated AFAICT. Some things like shared irq, clocks or
regulators can be dealt with easily, but if you had things like the WiFi
firmware has to be loaded and running before BT can work or vice-versa
that would be a pain to deal with. That would impact how we do DT
bindings as well.

> Or and did I mention that some manufactures actually put FM radio and
> GPS controls behind the Bluetooth chip. So access to these slave
> devices goes via the Bluetooth HCI. This means that you have this fun
> dependency:
> 
> FM radio -> Bluetooth HCI -> UART -> UART slave
> 
> Some nasty solution here are to double stack the line disciplines and
> have some sort of shared transport driver in between. I am trying to
> actually fix that so that Bluetooth drivers can expose proper
> platform buses with correctly assigned resources that the FM radio
> driver would just enumerate on. So that part is in the works as
> well.
> 
> We can also talk about A4WP and the corner cases where your battery
> is so drained that the Bluetooth Low Energy portion of your hardware
> is the only one that gets powered first before you get your device
> back to life. In case this is not obvious, the A4WP wireless charging
> technology using Bluetooth Low Energy for its communication.

Always something fun and new to deal with. :)

Rob
