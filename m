Return-Path: <arnd@arndb.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id ED47B956
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 08:44:41 +0000 (UTC)
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.134])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id ECD67204
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 08:44:40 +0000 (UTC)
From: Arnd Bergmann <arnd@arndb.de>
To: Vinod Koul <vinod.koul@intel.com>
Date: Thu, 28 Jul 2016 10:44:23 +0200
Message-ID: <27648120.ey0ZEtExVa@wuerfel>
In-Reply-To: <20160727171551.GE9681@localhost>
References: <CAKMK7uEuqLLf2bCyB-sAuu5WvVA1Kp7Jvc33k3um5DfdQr4eyg@mail.gmail.com>
	<20160727142221.GK11806@sirena.org.uk>
	<20160727171551.GE9681@localhost>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
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

On Wednesday, July 27, 2016 10:45:51 PM CEST Vinod Koul wrote:
> On Wed, Jul 27, 2016 at 03:22:21PM +0100, Mark Brown wrote:
> > On Wed, Jul 27, 2016 at 06:27:51PM +0530, Vinod Koul wrote:
> > > On Wed, Jul 27, 2016 at 09:53:24AM +0200, Arnd Bergmann wrote:
> > 
> > > > We should be at the point where an 'allmodconfig' build on ARM
> > > > gets you most of the drivers and builds without warnings (using
> > > > gcc-4.9 or higher).
> > 
> > > The problem is drivers depend on various ARM sub arch's. That is the
> > > sole reason why I have multiple configs now.
> > 
> > That shouldn't be the case at least for any new code, things should at
> > least build OK with an || COMPILE_TEST normally.  Old code may need
> > fixing up for this.
> 
> That's right, this is problematic mostly with older code and for ARMv5 and
> below. As I said later code & sub-ARCHs seems to be well covered with
> current multi-vx-configs...
>
> > > Which brings me to another problem  why should individual drivers
> > > depend on ARM sub arch's. Depends on ARM, yes. First look at code tells
> > > me they shouldn't!, probably sometime back that was true, but I don't
> > > think that should be the case now, ofcourse you would know better!
> > 
> > The dependencies are there to improve UX when people are configuring
> > their kernels - it stops them being asked about hardware they can't
> > possibly have in their system.  If there's no build time reason for it
> > then it should be (ARCH_FOO || COMPILE_TEST) so people can do build
> > tests.
> 
> That is a valid point as well. This seems better suggestion to me.

Unfortunately, we have too many different ways of handling this, and
the preferred style differs by subsystem. The style that Mark
mentioned is particularly nice and concise:

config FOO
	bool "foo driver"
	depends on ARCH_FOO || COMPILE_TEST
	depends on GPIOLIB && I2C && OF && WHATEVER

These days we should rarely need a 'depends on ARM || PPC' statement
in there, but it's very common to limit drivers by architecture as
well for historic reasons.

For old drivers, we often have

config FOO
	bool "foo driver"
	depends on ARCH_FOO

and this used to be a compile-time requirement as each ARM platform
had their own headers, but now this is only needed (on ARM) for
really old platforms that will remain like this (strongarm, ixp4xx,
iop, ...) or those that are a little more recent but still in the
long process of being converted (omap1, davinci, lpc32xx, ep93xx, ...).
On other architectures (MIPS, sh, avr32, ...) this is however much
more common.

We have had a couple of per-subsystem efforts to identify the drivers
that actually build on other architectures and add the '|| COMPILE_TEST'
statements. This typically causes a few regressions initially and then
just works.

Some subsystems have essential drivers without which a platform cannot
work (clock, irqchip, reset, ...) and those often don't allow the
driver to be user-selectable at all. I'd like to see more of those
get enabled for COMPILE_TEST, but the Kconfig statement for this
is rather unintuitive:

config FOO
	bool "foo driver" if COMPILE_TEST && !ARCH_FOO
	default ARCH_FOO
	depends on GPIOLIB && I2C && OF && WHATEVER

This becomes a silent always-on symbol if the platform is used,
and user-selectable on every other platform with COMPILE_TEST.

	Arnd
