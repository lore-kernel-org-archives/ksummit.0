Return-Path: <arnd@arndb.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9B6CF89E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 30 Aug 2016 19:45:46 +0000 (UTC)
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.187])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F285B2BD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 30 Aug 2016 19:45:44 +0000 (UTC)
From: Arnd Bergmann <arnd@arndb.de>
To: Guenter Roeck <linux@roeck-us.net>
Date: Tue, 30 Aug 2016 21:44:40 +0200
References: <20160826193331.GA29084@jra3> <201608301733.36149.arnd@arndb.de>
	<20160830160450.GC26785@roeck-us.net>
In-Reply-To: <20160830160450.GC26785@roeck-us.net>
MIME-Version: 1.0
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
Message-Id: <201608302144.40679.arnd@arndb.de>
Cc: "Bradley M. Kuhn" <bkuhn@sfconservancy.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] GPL defense issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tuesday 30 August 2016, Guenter Roeck wrote:
> On Tue, Aug 30, 2016 at 05:33:36PM +0200, Arnd Bergmann wrote:
> > 
> > > Anyway, like I was saying, no one from Linaro ever contributed
> > > something meaningful (except some cross-tree patches, and the usual
> > > "maintainance" patches).
> > 
> > I'm not surprised at all. Most of the kernel work we do in
> > Linaro is intentionally cross-platform (so it benefits all members
> > equally), or it is done on those platforms that the members decide
> > are important upstream.
> > 
> One may wonder how your Linux kernel patches and merges are classified
> per the above.
>
> Thank you for all your work in the Linux kernel. It is anything but
> meaningless, and it obviously goes far beyond "some cross-tree patches,
> and the usual maintenance patches".

I'm sure Maxime was specifically referring to mach-sunxi specific code
here, but it's clear how that could be interpreted differently, or
taken out of context.

Looking at the commits in mach-sunxi from all Linaro developers,
his categorization is completely right:

$ git log --oneline --no-merges --author=linaro --author=arnd --author=robh torvalds/master arch/arm/mach-sunxi/
5c34a4e89c74 ARM: do away with ARCH_[WANT_OPTIONAL|REQUIRE]_GPIOLIB
117d4f59affa cpufreq: sunxi: Use generic platdev driver
e58cf0193c0f ARM: sunxi: allow building without reset controller
1146b600044d ARM: sunxi: fix build for THUMB2_KERNEL
90bc8ac77dc8 ARM: select HAVE_SMP for V7 multi-platform
ddb902cc3459 ARM: centralize common multi-platform kconfig options

However, Linaro also has a number of subsystem maintainers and most of
the sunxi specific drivers were reviewed and/or merged by someone
in Linaro who is doing that work for all ARM platforms, whether they
are made by Linaro member companies or not.

	Arnd
