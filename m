Return-Path: <vinod.koul@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 664DC87A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 31 Jul 2016 17:50:22 +0000 (UTC)
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 6C13B1A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 31 Jul 2016 17:50:21 +0000 (UTC)
Date: Sun, 31 Jul 2016 23:27:53 +0530
From: Vinod Koul <vinod.koul@intel.com>
To: Arnd Bergmann <arnd@arndb.de>
Message-ID: <20160731175753.GQ9681@localhost>
References: <CAKMK7uEuqLLf2bCyB-sAuu5WvVA1Kp7Jvc33k3um5DfdQr4eyg@mail.gmail.com>
	<20160727142221.GK11806@sirena.org.uk>
	<20160727171551.GE9681@localhost> <27648120.ey0ZEtExVa@wuerfel>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <27648120.ey0ZEtExVa@wuerfel>
Cc: ksummit-discuss@lists.linuxfoundation.org, Dave Airlie <airlied@linux.ie>,
	"Nikula, Jani" <jani.nikula@linux.intel.com>,
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

On Thu, Jul 28, 2016 at 10:44:23AM +0200, Arnd Bergmann wrote:
 
> config FOO
> 	bool "foo driver" if COMPILE_TEST && !ARCH_FOO
> 	default ARCH_FOO
> 	depends on GPIOLIB && I2C && OF && WHATEVER
> 
> This becomes a silent always-on symbol if the platform is used,
> and user-selectable on every other platform with COMPILE_TEST.

Yeah this seems a bit more better. I am perhaps thinking to add top
level arch dependency if required. I will try this out on DMAengine to
start with and ease my build tests :)

-- 
~Vinod
