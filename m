Return-Path: <arnd@arndb.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B5FE93EE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Oct 2015 08:37:37 +0000 (UTC)
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3508FB0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Oct 2015 08:37:37 +0000 (UTC)
From: Arnd Bergmann <arnd@arndb.de>
To: Marcel Holtmann <marcel@holtmann.org>
Date: Fri, 16 Oct 2015 10:37:32 +0200
Message-ID: <4223037.44QX3yqisC@wuerfel>
In-Reply-To: <8E20B896-416E-4C76-877B-26B558D44422@holtmann.org>
References: <20151012190137.GA1992@thunk.org> <8179129.ZdLT4uWW88@wuerfel>
	<8E20B896-416E-4C76-877B-26B558D44422@holtmann.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Draft agenda for the kernel summit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Friday 16 October 2015 10:00:18 Marcel Holtmann wrote:
> 
> >> On Thu, 2015-10-15 at 19:41 -0500, Rob Herring wrote:
> >> the unwillingness of chip
> >> vendors (hi Broadcom, Qualcomm, MediaTek) to have an upstream driver
> >> that they actually use (some of those do support an upstream driver,
> >> but don't ship that one and it doesn't nearly have the necessary
> >> features, while the actually used (still open source [1]) driver is a
> >> pile of spaghetti code that we'd probably never merge upstream...)
> >> 
> >> [1] except for MediaTek, I think, who seem to never be releasing source
> >> code for any of their kernels
> >> 
> > 
> > (getting offtopic here)
> > 
> > My understanding is that MediaTek has improved much recently and their
> > mt76 wireless driver source is available and getting upstreamed now
> > and integrated into openwrt now. OTOH, Broadcom apparently regressed and is
> > no longer releasing any source code to their newer softmac parts (bcm4360,
> > bcm4352) or patching brcmsmac to support them, while they on the other
> > hand got better at upstreaming their SoC support recently.
> 
> are sure that Mediatek got better? I am not convinced by that.
> 
> I think there is also a large difference in their MiniPCI cards compared
> to their connectivity hub in their SoC. The Bluetooth side for example
> is largely copying existing drivers, hacking their vendor specific
> behavior in and then throwing it over the wall.

It's of course a large company, and there are several business units that
are not all improving equally. There is however a big difference between
basically ignoring upstream as of a few years ago and now being as good
as any other SoC vendor that works with us on arm-soc.

The areas that I have observed improving most are:

- support for their wireless AP solutions (mtk76xx, formerly ralink) is
  getting much better. While this is mainly driven by OpenWRT on the
  upstream side, they are working together. All there is today is the
  MIPS based support, but I'm sure that the recently announced ARM
  based parts will get upstreamed quickly too as they are quite
  similar.

- Mobile phone/tablet SoC support is getting merged upstream for both
  ARM32 (mt65xx, mt81xx) and ARM64 (mt67xx, mt81xx too) in a good way.
  They are still doing groundwork at the moment, so I'm not surprised
  that the people that rewrite the code into upstreamable drivers
  have not arrived at bluetooth yet, but it seems likely that they
  will get there as they do one subsystem at a time.

The main concern that is still valid for all their SoCs is whether they
eventually get to the point where full support for any product is
in mainline by the time that it gets into user's hands, which is really
what our KS session is about.

	Arnd
