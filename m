Return-Path: <hare@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7FFD5480
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 06:05:57 +0000 (UTC)
Received: from smtp.nue.novell.com (smtp.nue.novell.com [195.135.221.5])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 78CF3140
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 06:05:56 +0000 (UTC)
To: Greg KH <gregkh@linuxfoundation.org>
References: <c0ebdd10-5c7c-dfb1-9bc8-c6c632ac1396@suse.com>
	<20170626045919.GD17296@kroah.com>
From: Hannes Reinecke <hare@suse.com>
Message-ID: <98ef581a-1618-623f-d52c-77fec798fb52@suse.com>
Date: Mon, 26 Jun 2017 08:05:53 +0200
MIME-Version: 1.0
In-Reply-To: <20170626045919.GD17296@kroah.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] (PCI) driver rebinding
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 06/26/2017 06:59 AM, Greg KH wrote:
> On Sun, Jun 25, 2017 at 05:39:34PM +0200, Hannes Reinecke wrote:
>> Hi all,
>>
>> here's a thing which came up recently on the SCSI ml:
>>
>> How should we handle devices with _several_ possible drivers?
> 
> Go kick the hardware developers for trying to come up with such complex
> beasts :)
> 
>> Case in point are some HBAs, for which the plan is to have distinct
>> drivers for either target or initiator mode.
>>
>> There are several options how this could be handled:
>> - Have a default driver, and manually rebind the 'real' driver once the
>> configuration could be read and acted upon.
> 
> Yes, do this.
> 
>> That would have the drawback that we do an initialisation in the 'wrong'
>> mode, and later have to switch configuration. Which at best will 'just'
>> induce some pointless initialisation, at worst confuse attached devices
>> to no end. Not to mention introducing lots of interesting races with
>> udev and systemd
> 
> How will udev and systemd have "races"?  We do this today all the time
> in USB with the usb-modeswitch userspace code, as you point out.
> 
The problem here is that we will be generating lots of invalid devices
(ie devices which are only present in one mode, but not the other).
So if we start off with a default mode the driver might be creating lots
of devices, which will be torn down once the device is switched to the
configured mode.
_If_ for some reason one of these invalid devices has the same
identifier as one of the 'real' devices (think of eg multipathing),
udev/systemd will start processing this device.
But then we're killing that device shortly afterwards, making systemd
very unhappy and the user left with a stalled system.

So I'd rather not go down that way; ideally I would have the driver
start off in the 'correct' mode so that the above issue doesn't occur.

>> - Inhibit default binding, and load the correct drivers after the
>> configuration has been read.
> 
> You can do that too vfio does it from what I recall.  It's easy in that
> you can just not do a MODULE_DEVICE_TABLE() export and no driver will
> automatically be loaded and userspace is required to load what it wants.
> 
Yeah; however, if we do this, we either have to kill the module device
table from the driver (but how would the driver then know which device
to bind to?) or we have to kill the autoloading from the bus (but then
_none_ of the drivers will load, impacting the entire system).

While I would prefer this option I'm not sure how we can achieve this
sanely.
vfio doesn't really count here, as this is a generic PCI driver which
would work with any PCI device (at least in theory).

>> Would be a deviation from the original scenario (where the driver are
>> bound/loaded as soon as the device becomes available). Has the drawback
>> that one would need to inhibit automatic bindings on the _bus_ level (ie
>> PCI), which will be even more interesting.
>> - Add some bus-specific (or even general?) device configuration syntax,
>> which would allow to pass in the required configuration from the
>> command-line (or reasonably early, anyway). For which we need a syntax
>> first, anyway. And need to figure out if we can have an abstract syntax
>> or would need to have a bus- (or even driver-) specific configuration.
> 
> Hah, good luck with that :)
> 
That's why I put is last :-)

Cheers,

Hannes
-- 
Dr. Hannes Reinecke		               zSeries & Storage
hare@suse.com			               +49 911 74053 688
SUSE LINUX GmbH, Maxfeldstr. 5, 90409 Nürnberg
GF: F. Imendörffer, J. Smithard, D. Upmanyu, G. Norton
HRB 21284 (AG Nürnberg)
