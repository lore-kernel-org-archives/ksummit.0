Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id EE31226
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 13:48:22 +0000 (UTC)
Received: from mail-ob0-f178.google.com (mail-ob0-f178.google.com
	[209.85.214.178])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A1EEB1FA7D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 13:48:18 +0000 (UTC)
Received: by mail-ob0-f178.google.com with SMTP id va2so5431491obc.9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 06:48:18 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <4921873.t2F8plV493@wuerfel>
References: <20140511030009.GO12708@titan.lakedaemon.net>
	<4931877.zNfKfvcgox@wuerfel>
	<CAL_Jsq+kOu82okhJn0_ftwemE_m4nsTRawrF-fWAU2XTJ9xRcA@mail.gmail.com>
	<4921873.t2F8plV493@wuerfel>
Date: Fri, 23 May 2014 15:48:17 +0200
Message-ID: <CACRpkdZ6oAO0sx-OwA-31FCPVWYeGH7zxmiog7OooMw_2_jzFA@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
To: Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset=UTF-8
Cc: "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, Rob Herring <robh@kernel.org>,
	Jason Cooper <jason@lakedaemon.net>,
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

On Tue, May 20, 2014 at 10:08 AM, Arnd Bergmann <arnd@arndb.de> wrote:

> Ah, right. I see these two includes from mach-versatile to plat/*.h headers:
>
> arch/arm/mach-versatile/core.c:#include <plat/clcd.h>

I have a patch for this one.

> arch/arm/mach-versatile/core.c:#include <plat/sched_clock.h>

In the Integrator I solved this by inlining that code into the
machine. After the introduction of sched_clock_register()
this becomes very few lines of code really.

Yours,
Linus Walleij
