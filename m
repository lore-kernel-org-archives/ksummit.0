Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 9E00F99F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 21:02:16 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id EB0B1201F4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 21:02:14 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Mark Brown <broonie@kernel.org>
Date: Tue, 13 May 2014 23:19 +0200
Message-ID: <1461572.JtpPDPW8DH@vostro.rjw.lan>
In-Reply-To: <20140513193146.GR12304@sirena.org.uk>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<4341089.iLfxP0nJG8@wuerfel> <20140513193146.GR12304@sirena.org.uk>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dvhart@dvhart.com,
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
	ksummit-discuss@lists.linuxfoundation.org
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

On Tuesday, May 13, 2014 08:31:46 PM Mark Brown wrote:
> 
> --CHuL9rjfPiigWdCj
> Content-Type: text/plain; charset=us-ascii
> Content-Disposition: inline
> 
> On Tue, May 13, 2014 at 03:08:29PM +0200, Arnd Bergmann wrote:
> > On Tuesday 13 May 2014 13:11:48 Mark Brown wrote:
> 
> > > There's also the possibility that the driver is going to have to figure
> > > out at runtime if it's on a system with active ACPI or a system with
> > > passsive ACPI, though I expect we can just do something like check what
> > > properties are there for that assuming people don't end up doing
> > > mix'n'match type things.  People are interested in ACPI for embedded
> > > cases outside of x86 to a large extent so that they don't have to deal
> > > with two different firmware interfaces if they also work on the server
> > > cases.
> 
> > To be clear, I was only talking about embedded x86 above, there is
> > no reason to introduce ACPI on any new architecture really.
> 
> > While we will likely get ACPI on ARM64 in the future, I definitely don't
> > want to have two incompatible ACPI implementations, especially for the
> > same chip. While AMD recently announced they are also going after
> > embedded markets with their ARM64 products, they should either
> > just use DT in that case, or they should use the same firmware they
> > have on their servers.
> 
> I'd heard mutterings like that from elsewhere (I don't know anything
> about AMD's thoughts), and of course there's nothing stopping ARM people
> just picking up the out of tree ACPI stuff and using that if they decide
> they want to work that way.
> 
> In any case that was more a comment about it being an area of broader
> interest than just some future Intel stuff - my main concern is that
> we've already got upstream embedded ACPI stuff for x86 which doesn't
> look *particularly* like what we do for DT but more like what seems
> idiomatic for ACPI (some of the Haswell and Baytrail laptops have
> embedded style audio subsystems) and as far as I am aware those systems
> are in the active ACPI model rather than a passive ACPI model.

They are, but the ACPI stuff that was added there is not exactly what I would
like it to be, due to gaps in ACPI itself to some extent.

Of course, ACPI "support" can be shoehorned into a limited number of things
this way, but it really doesn't scale and very often the result is really
disgusting.  Also ACPI in its current form may not even be able to provide
information expected by device drivers in the first place, because ACPI
doesn't have means to encode that information in any sensible way today
(that includes clocks, voltage regulators, PWMs, pin control and even GPIOs
to some extent).

If ACPI is extended so that such information can be put into the tables,
there is no reason why the interface for extracting it should be much different
from the of_ one, except that instead of calling of_get_something(device_node, ...)
drivers will call fw_get_something(device, ...).  And that can use the old good
of_ for systems with DT, so it really is a matter of getting the ACPI side of
things to match it.

And if you're asking why things are currently done in different ways, the
reason is simple: ACPI has not been extended yet and the fw_get_something(device, ...)
interface doesn't exist, so people have to use what is available today and there are
products to support in the meatime.

Thanks!


-- 
I speak only for myself.
Rafael J. Wysocki, Intel Open Source Technology Center.
