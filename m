Return-Path: <sfr@canb.auug.org.au>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9E4F67AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 00:06:27 +0000 (UTC)
Received: from ozlabs.org (ozlabs.org [103.22.144.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E5E7C19F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 00:06:26 +0000 (UTC)
Date: Fri, 29 Jul 2016 10:06:23 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Alexandre Belloni <alexandre.belloni@free-electrons.com>
Message-ID: <20160729100623.09d2c78c@canb.auug.org.au>
In-Reply-To: <20160728234823.GH1494@piout.net>
References: <CAKMK7uEuqLLf2bCyB-sAuu5WvVA1Kp7Jvc33k3um5DfdQr4eyg@mail.gmail.com>
	<20160727142221.GK11806@sirena.org.uk>
	<20160727171551.GE9681@localhost> <27648120.ey0ZEtExVa@wuerfel>
	<20160728234823.GH1494@piout.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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

Hi Alexandre,

On Fri, 29 Jul 2016 01:48:23 +0200 Alexandre Belloni <alexandre.belloni@free-electrons.com> wrote:
>
> On 28/07/2016 at 10:44:23 +0200, Arnd Bergmann wrote :
> > Some subsystems have essential drivers without which a platform cannot
> > work (clock, irqchip, reset, ...) and those often don't allow the
> > driver to be user-selectable at all. I'd like to see more of those
> > get enabled for COMPILE_TEST, but the Kconfig statement for this
> > is rather unintuitive:
> > 
> > config FOO
> > 	bool "foo driver" if COMPILE_TEST && !ARCH_FOO
> > 	default ARCH_FOO
> > 	depends on GPIOLIB && I2C && OF && WHATEVER
> > 
> > This becomes a silent always-on symbol if the platform is used,
> > and user-selectable on every other platform with COMPILE_TEST.
> >   
> 
> Note that some maintainers prefer having the symbol selected directly
> from ARCH_FOO or SOC_FOO instead of defaulting to it which may be more
> explicit. I'm fine with both but my subsystem is not exactly essential
> ;)

You should avoid, if at all possible, selecting any symbol that has
dependencies ...

-- 
Cheers,
Stephen Rothwell
