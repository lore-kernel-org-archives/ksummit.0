Return-Path: <arnd@arndb.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 04C1D982
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 Sep 2016 23:35:38 +0000 (UTC)
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.74])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8BA80146
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 Sep 2016 23:35:36 +0000 (UTC)
From: Arnd Bergmann <arnd@arndb.de>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Sat, 03 Sep 2016 01:35:49 +0200
Message-ID: <5093654.0BrtFI3yeT@wuerfel>
In-Reply-To: <7359509.5sppVSLXcK@wuerfel>
References: <CAKMK7uEuqLLf2bCyB-sAuu5WvVA1Kp7Jvc33k3um5DfdQr4eyg@mail.gmail.com>
	<CA+55aFwSpNrOuOzaR5hh0A1XvuTu0=xVbE_CV1RVf9GMrTPDNQ@mail.gmail.com>
	<7359509.5sppVSLXcK@wuerfel>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: Dave Airlie <airlied@linux.ie>, Grant Likely <grant.likely@linaro.org>,
	Linus Torvalds <torvalds@linux-foundation.org>, "Nikula,
	Jani" <jani.nikula@linux.intel.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] (group) maintainership models
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Friday, September 2, 2016 10:06:02 PM CEST Arnd Bergmann wrote:
> I'll throw this patch at my randconfig builder and see what breaks:
> 

I found four dmaengine drivers that built on ARM, two of them were
actually incorrect, the other ones should work fine either way.
I've sent patches for those four now, and for the mv_cesa crypto driver
that was also incorrect.

I've also done patches for arch/arm/mach-{mmp,mv78xx0,orion5x}
and plat-orion, but these are more invasive and I'm still build
testing to ensure there were no obvious mistakes in my patches.

The only other drivers I found using NO_IRQ on ARM are
drivers/pcmcia/soc_common.c and drivers/mfd/ucb1x00-core.c.
I haven't looked at those yet, it's possible that the former
is still problematic as mach-pxa still uses '0' as a valid
interrupt.

	Arnd
