Return-Path: <linux+ksummit-discuss=lists.linuxfoundation.org@armlinux.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 72C5F7AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 08:41:55 +0000 (UTC)
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk [78.32.30.218])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 819E1121
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 08:41:54 +0000 (UTC)
Date: Tue, 2 Aug 2016 09:41:36 +0100
From: Russell King - ARM Linux <linux@armlinux.org.uk>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <20160802084136.GF1041@n2100.armlinux.org.uk>
References: <CAKMK7uEuqLLf2bCyB-sAuu5WvVA1Kp7Jvc33k3um5DfdQr4eyg@mail.gmail.com>
	<3132432.DrxSMjl1Vi@wuerfel> <3411313.MV5bv347js@avalon>
	<23532527.pWCIkcecbr@wuerfel> <20160802044609.GS9681@localhost>
	<2ddeb98b-7bf8-aa21-2dee-9e02f9c59a92@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2ddeb98b-7bf8-aa21-2dee-9e02f9c59a92@ti.com>
Sender: Russell King - ARM Linux <linux@armlinux.org.uk>
Cc: ksummit-discuss@lists.linuxfoundation.org, "Nikula,
	Jani" <jani.nikula@linux.intel.com>, Dave Airlie <airlied@linux.ie>,
	Grant Likely <grant.likely@linaro.org>,
	Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] (group) maintainership models
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Aug 02, 2016 at 09:48:53AM +0300, Peter Ujfalusi wrote:
> I'm not going to move the legacy API under dmaengine, it makes no sense.
> 
> My plan is to do what I did with the eDMA driver stack:
> - convert drivers using the legacy API to dmaengine
> - 'merge' the code from plat-omap to the dmaengine driver
>   - while doing this the legacy API will vanish along with the plat-omap/dma.c
> 
> As with the eDMA, the sDMA stack will need some cleanup, but the good
> thing is that the dmaengine driver have minimal dependency on the legacy
> plat-omap/dma.c API.

I totally oppose moving arch/arm/plat-omap/dma.c into drivers/dma.
The omap-dma driver in drivers/dma is a replacement modern driver
for the legacy crap, and most users of the legacy crap have been
converted.

Why we still have users of the legacy crap is because:

(a) they don't fit into the DMA engine API very well
(b) I don't have hardware to be able to test them

and, because of that, I'm not going to start proposing DMA engine API
extensions to support something that I've no way to even test.

I've asked for help from TI on this when I was woring on the DMA
engine implementation, and there was no interest - it kept being
put back on me as something for me to sort.  It became an impossible
situation.

So, how things were left was that I'd introduce a warning into the
legacy driver, and in a few years time we'd strip it out of users
and delete the legacy driver.

The warning (which is rather large, because it's a WARN(), so
involves a kernel stack dump) has not produced (afaik) any complaints
from anyone.  So, we can probably conclude that any of these drivers
which are using the legacy DMA code are probably not being used.

This means we can save ourselves a lot of work and just delete all
these drivers using the legacy OMAP DMA along with the legacy OMAP
DMA driver.

-- 
RMK's Patch system: http://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line: currently at 9.6Mbps down 400kbps up
according to speedtest.net.
