Return-Path: <arnd@arndb.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6121A996
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 14:43:26 +0000 (UTC)
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 98D551FB24
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 14:43:25 +0000 (UTC)
From: Arnd Bergmann <arnd@arndb.de>
To: linux-arm-kernel@lists.infradead.org
Date: Fri, 23 May 2014 16:42:51 +0200
Message-ID: <4624104.VNbedVmtTU@wuerfel>
In-Reply-To: <CACRpkdZ6oAO0sx-OwA-31FCPVWYeGH7zxmiog7OooMw_2_jzFA@mail.gmail.com>
References: <20140511030009.GO12708@titan.lakedaemon.net>
	<4921873.t2F8plV493@wuerfel>
	<CACRpkdZ6oAO0sx-OwA-31FCPVWYeGH7zxmiog7OooMw_2_jzFA@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: Rob Herring <robh@kernel.org>, Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Linus Walleij <linus.ml.walleij@gmail.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] ARM legacy board DT conversion
	finalization
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Friday 23 May 2014 15:48:17 Linus Walleij wrote:
> On Tue, May 20, 2014 at 10:08 AM, Arnd Bergmann <arnd@arndb.de> wrote:
> 
> > Ah, right. I see these two includes from mach-versatile to plat/*.h headers:
> >
> > arch/arm/mach-versatile/core.c:#include <plat/clcd.h>
> 
> I have a patch for this one.
> 
> > arch/arm/mach-versatile/core.c:#include <plat/sched_clock.h>
> 
> In the Integrator I solved this by inlining that code into the
> machine. After the introduction of sched_clock_register()
> this becomes very few lines of code really.

Ah, very good.

	Arnd
