Return-Path: <lduncan@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 93C4FA85
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 17:40:10 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 18D001A6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 17:40:10 +0000 (UTC)
Received: from relay1.suse.de (charybdis-ext.suse.de [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id 4C5E3AB43
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 17:40:08 +0000 (UTC)
To: ksummit-discuss@lists.linuxfoundation.org
References: <c0ebdd10-5c7c-dfb1-9bc8-c6c632ac1396@suse.com>
From: Lee Duncan <lduncan@suse.com>
Message-ID: <e85c8415-5ac0-4bb0-5d39-bf8c8750e522@suse.com>
Date: Mon, 26 Jun 2017 10:40:05 -0700
MIME-Version: 1.0
In-Reply-To: <c0ebdd10-5c7c-dfb1-9bc8-c6c632ac1396@suse.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] [TECH TOPIC] (PCI) driver rebinding
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 06/25/2017 08:39 AM, Hannes Reinecke wrote:
> Hi all,
> 
> here's a thing which came up recently on the SCSI ml:
> 
> How should we handle devices with _several_ possible drivers?
> 
> Case in point are some HBAs, for which the plan is to have distinct
> drivers for either target or initiator mode.
> 
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
> 
> So no easy way out here, and it might be worth having input from other
> parties. And some might have similar problems (just thinking of
> usb-modeswitch ...), so there might be some synergies to be had.
> 
> Cheers,
> 
> Hannes
> 

I would very much like to be part of this discussion, as these drivers
are are often iscsi, and that's where I live. :)

Along similar lines, I'll suggest (in a separate email) discussing
iSCSI-boot.
-- 
Lee Duncan
