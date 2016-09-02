Return-Path: <arnd@arndb.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 12CCA957
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 Sep 2016 20:06:04 +0000 (UTC)
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.130])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 14D5D150
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 Sep 2016 20:06:02 +0000 (UTC)
From: Arnd Bergmann <arnd@arndb.de>
To: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 02 Sep 2016 22:06:02 +0200
Message-ID: <7359509.5sppVSLXcK@wuerfel>
In-Reply-To: <CA+55aFwSpNrOuOzaR5hh0A1XvuTu0=xVbE_CV1RVf9GMrTPDNQ@mail.gmail.com>
References: <CAKMK7uEuqLLf2bCyB-sAuu5WvVA1Kp7Jvc33k3um5DfdQr4eyg@mail.gmail.com>
	<20160902104619.GD9355@localhost>
	<CA+55aFwSpNrOuOzaR5hh0A1XvuTu0=xVbE_CV1RVf9GMrTPDNQ@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: ksummit-discuss@lists.linuxfoundation.org, "Nikula,
	Jani" <jani.nikula@linux.intel.com>, Dave Airlie <airlied@linux.ie>,
	Grant Likely <grant.likely@linaro.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] (group) maintainership models
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Friday, September 2, 2016 10:25:09 AM CEST Linus Torvalds wrote:
> On Fri, Sep 2, 2016 at 3:46 AM, Vinod Koul <vinod.koul@intel.com> wrote:
> >
> > Arm seems to define NO_IRQ. This is not available in other arch and one
> > driver (moxart-dma) is using it. I don't see why this should be arm specific.
> 
> NO_IRQ is broken. We long long since agreed that 0 is "no irq", and
> that the right way to test for it is just
> 
>    if (!irq) ...
> 
> which is what all the generic drivers use.

Right, this one must have escaped review. We had NO_IRQ almost eliminated
from ARM specific drivers, and this one was probably added later.

> See for example
> 
>    git grep '(!.*irq)'
> 
> for how common that is.
> 
> (If you grep for NO_IRQ, you'll find a lot in particularly powerpc
> drivers and platforms, but there NO_IRQ is actually just defined to
> (0), so it ends up being the same thing).
> 
> The fact that ARM still has a NO_IRQ that seems to be defined to
> ((unsigned int)-1) just means that there are bugs hiding: if ARM
> actually _uses_ that value for "no IRQ", then all the generic drivers
> will be broken, and if ARM core doesn't, then the drivers that still
> use NO_IRQ are broken. Either way you can't win.
>
> So please make sure that NO_IRQ goes away entirely (or, if you insist
> on having the confusing #define for some legacy reason, make it be 0
> like powerpc, so that the real way of just testing "!irq" also works)

I'll throw this patch at my randconfig builder and see what breaks:

diff --git a/arch/arm/include/asm/irq.h b/arch/arm/include/asm/irq.h
index 1bd9510de1b9..b5b8354c1d9e 100644
--- a/arch/arm/include/asm/irq.h
+++ b/arch/arm/include/asm/irq.h
@@ -13,14 +13,6 @@
 #define irq_canonicalize(i)	(i)
 #endif
 
-/*
- * Use this value to indicate lack of interrupt
- * capability
- */
-#ifndef NO_IRQ
-#define NO_IRQ	((unsigned int)(-1))
-#endif
-
 #ifndef __ASSEMBLY__
 struct irqaction;
 struct pt_regs;


When I once looked, I thought all drivers using NO_IRQ were specific
to powerpc or one of the less common architectures.  We do have
these files however:

arch/arm/common/locomo.c:       if (lchip->irq != NO_IRQ && lchip->irq_base != NO_IRQ)
arch/arm/common/locomo.c:       if (lchip->irq != NO_IRQ) {
arch/arm/common/sa1111.c:       if (sachip->irq != NO_IRQ) {
arch/arm/common/sa1111.c:       if (sachip->irq != NO_IRQ) {
arch/arm/mach-mmp/devices.c:    if (desc->irq != NO_IRQ) {
arch/arm/mach-mv78xx0/common.c:                 NO_IRQ,
arch/arm/mach-mv78xx0/common.c:                 NO_IRQ);
arch/arm/mach-mv78xx0/common.c:                 NO_IRQ);
arch/arm/mach-orion5x/rd88f5181l-fxo-setup.c:   orion5x_eth_switch_init(&rd88f5181l_fxo_switch_plat_data, NO_IRQ);
arch/arm/mach-orion5x/rd88f6183ap-ge-setup.c:           .irq            = NO_IRQ,
arch/arm/mach-orion5x/wnr854t-setup.c:  orion5x_eth_switch_init(&wnr854t_switch_plat_data, NO_IRQ);
arch/arm/mach-orion5x/wrt350n-v2-setup.c:       orion5x_eth_switch_init(&wrt350n_v2_switch_plat_data, NO_IRQ);
arch/arm/plat-orion/common.c:   if (irq != NO_IRQ) {
arch/arm/plat-orion/common.c:                  mapbase + 0x2000, SZ_16K - 1, NO_IRQ);
arch/arm/plat-orion/common.c:                  mapbase + 0x2000, SZ_16K - 1, NO_IRQ);
arch/arm/plat-orion/common.c:                  mapbase + 0x2000, SZ_16K - 1, NO_IRQ);
arch/arm/plat-orion/common.c:                  mapbase + 0x2000, SZ_16K - 1, NO_IRQ);
arch/arm/plat-orion/common.c:   if (irq != NO_IRQ) {
arch/arm/plat-orion/common.c:                  mapbase, SZ_512 - 1, NO_IRQ);
arch/arm/plat-orion/common.c:                  mapbase, SZ_512 - 1, NO_IRQ);

I can have another look what can be done about them. IIRC, plat-orion (which
includes mach-orion5x and mv78xx0) until recently still had devices with
IRQ as a valid number, but that was finally fixed now, so we should be able to
clean up most of them.

	Arnd
