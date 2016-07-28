Return-Path: <alexandre.belloni@free-electrons.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6D57C2C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 23:48:25 +0000 (UTC)
Received: from mail.free-electrons.com (down.free-electrons.com
	[37.187.137.238])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id D669A13A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 23:48:24 +0000 (UTC)
Date: Fri, 29 Jul 2016 01:48:23 +0200
From: Alexandre Belloni <alexandre.belloni@free-electrons.com>
To: Arnd Bergmann <arnd@arndb.de>
Message-ID: <20160728234823.GH1494@piout.net>
References: <CAKMK7uEuqLLf2bCyB-sAuu5WvVA1Kp7Jvc33k3um5DfdQr4eyg@mail.gmail.com>
	<20160727142221.GK11806@sirena.org.uk>
	<20160727171551.GE9681@localhost> <27648120.ey0ZEtExVa@wuerfel>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <27648120.ey0ZEtExVa@wuerfel>
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

Hi,

On 28/07/2016 at 10:44:23 +0200, Arnd Bergmann wrote :
> Some subsystems have essential drivers without which a platform cannot
> work (clock, irqchip, reset, ...) and those often don't allow the
> driver to be user-selectable at all. I'd like to see more of those
> get enabled for COMPILE_TEST, but the Kconfig statement for this
> is rather unintuitive:
> 
> config FOO
> 	bool "foo driver" if COMPILE_TEST && !ARCH_FOO
> 	default ARCH_FOO
> 	depends on GPIOLIB && I2C && OF && WHATEVER
> 
> This becomes a silent always-on symbol if the platform is used,
> and user-selectable on every other platform with COMPILE_TEST.
> 

Note that some maintainers prefer having the symbol selected directly
from ARCH_FOO or SOC_FOO instead of defaulting to it which may be more
explicit. I'm fine with both but my subsystem is not exactly essential
;)

-- 
Alexandre Belloni, Free Electrons
Embedded Linux and Kernel engineering
http://free-electrons.com
