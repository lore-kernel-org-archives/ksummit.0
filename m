Return-Path: <Bart.VanAssche@wdc.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4FC90516
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 05:54:12 +0000 (UTC)
Received: from esa6.hgst.iphmx.com (esa6.hgst.iphmx.com [216.71.154.45])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A7DB7180
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 05:54:11 +0000 (UTC)
From: Bart Van Assche <Bart.VanAssche@wdc.com>
To: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"hare@suse.com" <hare@suse.com>
Date: Mon, 26 Jun 2017 05:44:42 +0000
Message-ID: <1498455881.2849.2.camel@wdc.com>
References: <c0ebdd10-5c7c-dfb1-9bc8-c6c632ac1396@suse.com>
In-Reply-To: <c0ebdd10-5c7c-dfb1-9bc8-c6c632ac1396@suse.com>
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <D565E895F5CFE34E88411683B67765AE@namprd04.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] (PCI) driver rebinding
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, 2017-06-25 at 17:39 +0200, Hannes Reinecke wrote:
> How should we handle devices with _several_ possible drivers?
>=20
> Case in point are some HBAs, for which the plan is to have distinct
> drivers for either target or initiator mode.
>=20
> There are several options how this could be handled:
> - Have a default driver, and manually rebind the 'real' driver once the
> configuration could be read and acted upon.
> That would have the drawback that we do an initialisation in the 'wrong'
> mode, and later have to switch configuration. Which at best will 'just'
> induce some pointless initialisation, at worst confuse attached devices
> to no end. Not to mention introducing lots of interesting races with
> udev and systemd
> - Inhibit default binding, and load the correct drivers after the
> configuration has been read.
> Would be a deviation from the original scenario (where the driver are
> bound/loaded as soon as the device becomes available). Has the drawback
> that one would need to inhibit automatic bindings on the _bus_ level (ie
> PCI), which will be even more interesting.
> - Add some bus-specific (or even general?) device configuration syntax,
> which would allow to pass in the required configuration from the
> command-line (or reasonably early, anyway). For which we need a syntax
> first, anyway. And need to figure out if we can have an abstract syntax
> or would need to have a bus- (or even driver-) specific configuration.
>=20
> So no easy way out here, and it might be worth having input from other
> parties. And some might have similar problems (just thinking of
> usb-modeswitch ...), so there might be some synergies to be had.

(resending from an e-mail address that is subscribed to ksummit-discuss)

Hello Hannes,

Thanks for having brought up this topic. I think this is an important
topic and something we need to solve. I am interested to join the
discussion about this topic.

My preference is to solve this by following the same approach as for the
iSCSI, SRP and several other protocols: design the protocol and HBA such
that initiator and target mode can coexist on the same HBA port, make one
driver responsible for controlling the HBA, a second driver responsible
for providing initiator functionality and make a third driver responsible
for providing target functionality. Whether initiator and/or target mode
are activated depends on which drivers are loaded and also on which
drivers the user chooses to activate.  With this approach no PCI rebinding
is necessary.

Bart.
