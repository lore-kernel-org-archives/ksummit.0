Return-Path: <hare@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1DF75486
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 25 Jun 2017 15:39:45 +0000 (UTC)
Received: from smtp.nue.novell.com (smtp.nue.novell.com [195.135.221.5])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1846CCE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 25 Jun 2017 15:39:43 +0000 (UTC)
To: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
From: Hannes Reinecke <hare@suse.com>
Message-ID: <c0ebdd10-5c7c-dfb1-9bc8-c6c632ac1396@suse.com>
Date: Sun, 25 Jun 2017 17:39:34 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: [Ksummit-discuss] [TECH TOPIC] (PCI) driver rebinding
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi all,

here's a thing which came up recently on the SCSI ml:

How should we handle devices with _several_ possible drivers?

Case in point are some HBAs, for which the plan is to have distinct
drivers for either target or initiator mode.

There are several options how this could be handled:
- Have a default driver, and manually rebind the 'real' driver once the
configuration could be read and acted upon.
That would have the drawback that we do an initialisation in the 'wrong'
mode, and later have to switch configuration. Which at best will 'just'
induce some pointless initialisation, at worst confuse attached devices
to no end. Not to mention introducing lots of interesting races with
udev and systemd
- Inhibit default binding, and load the correct drivers after the
configuration has been read.
Would be a deviation from the original scenario (where the driver are
bound/loaded as soon as the device becomes available). Has the drawback
that one would need to inhibit automatic bindings on the _bus_ level (ie
PCI), which will be even more interesting.
- Add some bus-specific (or even general?) device configuration syntax,
which would allow to pass in the required configuration from the
command-line (or reasonably early, anyway). For which we need a syntax
first, anyway. And need to figure out if we can have an abstract syntax
or would need to have a bus- (or even driver-) specific configuration.

So no easy way out here, and it might be worth having input from other
parties. And some might have similar problems (just thinking of
usb-modeswitch ...), so there might be some synergies to be had.

Cheers,

Hannes
-- 
Dr. Hannes Reinecke		   Teamlead Storage & Networking
hare@suse.com			               +49 911 74053 688
SUSE LINUX GmbH, Maxfeldstr. 5, 90409 Nürnberg
GF: F. Imendörffer, J. Smithard, J. Guild, D. Upmanyu, G. Norton
HRB 21284 (AG Nürnberg)
