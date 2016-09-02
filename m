Return-Path: <vinod.koul@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D580094D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 Sep 2016 10:38:18 +0000 (UTC)
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 872088A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 Sep 2016 10:38:18 +0000 (UTC)
Date: Fri, 2 Sep 2016 16:16:20 +0530
From: Vinod Koul <vinod.koul@intel.com>
To: Arnd Bergmann <arnd@arndb.de>
Message-ID: <20160902104619.GD9355@localhost>
References: <CAKMK7uEuqLLf2bCyB-sAuu5WvVA1Kp7Jvc33k3um5DfdQr4eyg@mail.gmail.com>
	<27648120.ey0ZEtExVa@wuerfel> <20160731175753.GQ9681@localhost>
	<3132432.DrxSMjl1Vi@wuerfel>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3132432.DrxSMjl1Vi@wuerfel>
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

On Mon, Aug 01, 2016 at 08:56:30AM +0200, Arnd Bergmann wrote:
> 
> Sounds good. Let me know if you end up having to add a 'depends on ARM'
> dependency anywhere, as that might indicate that we are doing something
> different on ARM that should be done in a more generic way.

Only one thing :)

Arm seems to define NO_IRQ. This is not available in other arch and one
driver (moxart-dma) is using it. I don't see why this should be arm specific.

FWIW, now I have a single arm config like x86, ppc, mips for my subsystem with
this change.

Thanks for the suggestion :)

-- 
~Vinod
