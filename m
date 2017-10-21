Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D3EA1504
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 21 Oct 2017 23:45:48 +0000 (UTC)
Received: from cloudserver094114.home.net.pl (cloudserver094114.home.net.pl
	[79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AF56AE4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 21 Oct 2017 23:45:47 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 22 Oct 2017 01:36:03 +0200
Message-ID: <2932433.MBmHVLMLTR@aspire.rjw.lan>
In-Reply-To: <CACRpkdYuAduT1oH=+2gLjdP2_805PO5Ubpu6XY5B=mz9gU1BMQ@mail.gmail.com>
References: <1647817.aU4A16bmHW@aspire.rjw.lan>
	<CACRpkdYuAduT1oH=+2gLjdP2_805PO5Ubpu6XY5B=mz9gU1BMQ@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Device power management during
	system-wide PM transitions
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Saturday, October 21, 2017 12:56:05 PM CEST Linus Walleij wrote:
> On Wed, Oct 18, 2017 at 1:17 PM, Rafael J. Wysocki <rjw@rjwysocki.net> wrote:
> 
> > One problem basically is that runtime PM interacts with system-wide PM for
> > devices in ways that need to be taken care of.  The most common patterns are:
> >
> > - What if a device is in runtime suspend before system suspend?  Can it
> >   remain suspended and under what conditions if so?
> >
> > - Can devices be left in suspend when the system is resuming from
> >   system-wide suspend?
> >
> > - Can driver runtime PM callbacks be used for system-wide PM too and to
> >   what extent?  If they can, how to make that happen?
> 
> These are very important topics for PM.
> 
> Maybe more of an ELC workshop than KS though?
> 
> A while back I augmented I2C and SPI to use runtime PM and we achived
> nice PM on such off-chip devices for case (1) and (3) above using the
> force* callbacks.

The force* callbacks are not suitable for all cases, though.

> Examples:
> commit 04f59143b571161d25315dd52d7a2ecc022cb71a
> "i2c: let I2C masters ignore their children for PM"
> commit d7e2ee257038baeb03baef602500368a51ee9eef
> "spi: let SPI masters ignore their children for PM"
> commit 9a9a369d6178dd4e263c49085ce1b37e1e8f63a0
> "iio: accel: kxsd9: Deploy system and runtime PM"
> 
> So in I2C or SPI runtime PM is reused for suspending, and resuming,
> if the device is already in suspend, it just remains suspended in system-wide
> sleep.
> 
> I didn't achive (2), so slow peripheral bus devices still resume when
> the system (main chip/bridges) resume. Then after a while it puts itself to
> runtime sleep again. Which is not optimal and a bit annoying.
> 
> I won't be in Prague, but the SPI and I2C maintainers may be
> so paging them.
> 
> From my standpoint it looks like a conflict between firmware-oriented
> (such as ACPI, proper OpenFirmware (not just device tree), SFI etc)
> design paradigm and full kernel control of peripheral power states.
> The two camps need to understand each other.

Well, not exactly, but there is quite a bit of that.

Basically it boils down to whether or not middle layer code is involved in PM
and what exactly is does (or expects to be done) and whether or not devices are
allowed to wake up the system from sleep.

Thanks,
Rafael
