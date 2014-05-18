Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id A2E723C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 18 May 2014 23:39:41 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 6CB2D1FAAA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 18 May 2014 23:39:40 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Mark Brown <broonie@sirena.org.uk>
Date: Mon, 19 May 2014 01:56:33 +0200
Message-ID: <1785175.GYZBbEJPJC@vostro.rjw.lan>
In-Reply-To: <20140517132423.GX22111@sirena.org.uk>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<1527482.CPBrbWbyLU@vostro.rjw.lan>
	<20140517132423.GX22111@sirena.org.uk>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: dvhart@dvhart.com, ksummit-discuss@lists.linuxfoundation.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
	Mika Westerberg <mika.westerberg@linux.intel.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Driver model/resources, ACPI, DT,
	etc (sigh)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Saturday, May 17, 2014 02:24:23 PM Mark Brown wrote:
> 
> --ucW7QTJbHsz5ya91
> Content-Type: text/plain; charset=us-ascii
> Content-Disposition: inline
> 
> On Thu, May 15, 2014 at 02:05:43PM +0200, Rafael J. Wysocki wrote:
> > On Wednesday, May 14, 2014 02:04:01 PM Mark Brown wrote:
> 
> > > Of course, and for all of these things other than GPIOs we already
> > > handle the lookups without any DT code at all in the drivers (and GPIOs
> > > are moving away from needing explicit code too).  Things like that just
> > > aren't an issue and I'd say that if we are adding new fw_ interfaces for
> > > resource lookup like you describe we're doing things wrong, we already
> > > have the idiom of looking up by device and some key which works well.
> 
> > The "key" think doesn't really work in ACPI if it is a string, however.
> 
> > That's a real problem, because, for example, ACPI says "I have these GPIO
> > connections between your device and controller X" and it gives you pin
> > numbers.  Now the driver (or someone else) needs to figure out which pin
> > is used for what.
> 
> > If there's only one pin per device, all is fine, but if there are more of
> > them things get very ugly quite quickly.
> 
> > So in "native" ACPI something like gpiod_get() cannot really be implemented
> > to use con_id and if you look at acpi_find_gpio() (the one in gpiolib.c),
> > you'll see that it actually only uses the index for this very reason.
> 
> Surely all we need to do for these cases is provide a way for drivers to
> supply the name to number mappings for usage with ACPI (probably with
> per device and per board overrides possible due to all the failures
> usually associated with numbers)?

Yes, we can do that for things like gpiod_get() that already abstract the
firmware interface away from device drivers.

> That's much less invasive than making new APIs.

But for drivers that call of_get_something() directly I don't see any other
sensible way forward.  Otherwise each of them will need to do something like

if (dev->of_node)
	use of_get_X()
else if (ACPI_COMPANION(dev))
	use acpi_get_X()
else
	use black magic

possibly in several places.

Rafael
