Return-Path: <arnd@arndb.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6F5DA97
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Oct 2015 07:55:35 +0000 (UTC)
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 033E4DF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Oct 2015 07:55:34 +0000 (UTC)
From: Arnd Bergmann <arnd@arndb.de>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Fri, 16 Oct 2015 09:55:29 +0200
Message-ID: <8179129.ZdLT4uWW88@wuerfel>
In-Reply-To: <1444978357.2370.8.camel@sipsolutions.net>
References: <20151012190137.GA1992@thunk.org>
	<CAL_JsqLxYRBhnLj0SyEtgwWaCPM+UcPindxZ2NswB3WKopCyPw@mail.gmail.com>
	<1444978357.2370.8.camel@sipsolutions.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Ksummit-discuss] Draft agenda for the kernel summit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Friday 16 October 2015 08:52:37 Johannes Berg wrote:
> On Thu, 2015-10-15 at 19:41 -0500, Rob Herring wrote:
> the unwillingness of chip
> vendors (hi Broadcom, Qualcomm, MediaTek) to have an upstream driver
> that they actually use (some of those do support an upstream driver,
> but don't ship that one and it doesn't nearly have the necessary
> features, while the actually used (still open source [1]) driver is a
> pile of spaghetti code that we'd probably never merge upstream...)
> 
> [1] except for MediaTek, I think, who seem to never be releasing source
> code for any of their kernels
> 

(getting offtopic here)

My understanding is that MediaTek has improved much recently and their
mt76 wireless driver source is available and getting upstreamed now
and integrated into openwrt now. OTOH, Broadcom apparently regressed and is
no longer releasing any source code to their newer softmac parts (bcm4360,
bcm4352) or patching brcmsmac to support them, while they on the other
hand got better at upstreaming their SoC support recently.

	Arnd
