Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D0CE3928
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 17:22:09 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 632122027D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 17:22:09 +0000 (UTC)
Date: Fri, 23 May 2014 18:21:38 +0100
From: Mark Brown <broonie@kernel.org>
To: Darren Vincent Hart <darren@dvhart.com>
Message-ID: <20140523172138.GF22111@sirena.org.uk>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<20140512215925.GY12304@sirena.org.uk> <5371453E.2070108@intel.com>
	<6686293.8G8KACfUS3@wuerfel> <20140513121148.GI12304@sirena.org.uk>
	<1400299079.9575.140.camel@wasp-deb.dvhart.com>
	<20140517130949.GW22111@sirena.org.uk>
	<1400309542.9575.203.camel@wasp-deb.dvhart.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="u66JbuNldyJ4Fdqk"
Content-Disposition: inline
In-Reply-To: <1400309542.9575.203.camel@wasp-deb.dvhart.com>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>
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


--u66JbuNldyJ4Fdqk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 16, 2014 at 11:52:22PM -0700, Darren Vincent Hart wrote:
> On Sat, 2014-05-17 at 14:09 +0100, Mark Brown wrote:
> > On Fri, May 16, 2014 at 08:57:59PM -0700, Darren Vincent Hart wrote:
> > > On Tue, 2014-05-13 at 13:11 +0100, Mark Brown wrote:

> Can you elaborate on the issues you're trying to call out regarding
> active versus passive ACPI?

As far as I can tell a big part of what people see themselves getting
=66rom ACPI is the ability to use the executable methods to handle
hardware updates without software updates, including things you can't do
by just changing the data you supply to the system.  Device drivers can
do things to play nicely with this, such as assuming that configuration
in the device when they start is sane and should be preserved unless
they know what they're doing, but in a data only model it's generally
safer to just discard any such configuration and get the hardware into a
known good state by resetting it or similar (this is the most common
pattern that has a practical impact which I'm aware of).  Things like
configuring the features on a new variant of a device for example, or
turning on a previously unsupported feature.

In the embedded case it's generally relatively straightforward to add a
new property, add the code to handle it and rebuild the world.  If
updating the OS isn't an option that gets a lot more tricky and doing
things via firmware methods more sensible.

> At the individual driver level, it is trivial. However, there are
> thousands of drivers, and as we discussed above, many of the integrators
> of these things don't do any driver development. Making those drivers
> available to ACPI based platforms then becomes a large task in
> aggregate.

> The property abstraction layer being discussed is aimed at making that
> aggregate task as small as possible - partly via new backends as you
> describe.

OK, but then can't ACPI just present via the OF APIs rather than
requiring us to go and search and replace all the property parsing code?

> > The thing I'm less clear on is if there are going to be problems down
> > the line with people trying to do things that they currently do with
> > ACPI like hide details of new board versions causing conflicts with code
> > that assumes the firmware is just providing data.

> OK, this goes back to your concerns on active/passive ACPI I guess?

Yes.

> I believe our best weapon against (new) nasty firmware hacks is to
> provide a flexible mechanism with excellent documentation and examples
> that make it easier to follow them than to contrive some gross
> workaround.

> In the past, this is something that ACPI has been lacking. When I first
> started looking into this, I kept asking for a Manual, and all I would
> get was a Specification.

> As part of the ACPI properties update to the specification, we are also
> preparing independent documentation for how to use it.

That should help, though obviously documentation is not always consulted
with the frequency and dilligency that one may desire (and to be fair
it's not always very discoverable).  However a part of my worry is that
given what at least some people are trying to achieve the things they
get up to aren't that tasteless, they just happen to have different aims
and use cases to the embedded one.

--u66JbuNldyJ4Fdqk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJTf4OfAAoJELSic+t+oim9UJIP/A2lVqKfAoRP9LtFAxCGhzCe
jZAGfD9TUgk7ZQgY+2muQEc3bzsvcpo1Cv2XvzdU4A+1KIJ5r8ijDDxSE/PR8dfI
saZGmhpDvW5ZN2lCkfMzO4nk4KwLjmzBwrpEzxtzqhpTWr53T8wDgXD6SPpfYx3z
/BmDDLmNrtLM+cvy4BF29WTYe66vN5VSGrHgheveIcyU0pmhfxo/oNj7xNPqm40j
uwDkag/EoYeq38y3LX35qATn+Dp7E4iLgkRWjmr6BOuIRNQNCk1Ol6uXTlzB+Fx6
pLR3xLCoBVWN4MVqQSgnoPorolU/7HGCnYlqt383Dk8on54PtP7UD0A+jCMhF372
h4s0c1MoYKj43+MQxS8YLeybsUR1AsXrKe6a/04ztoAAqUthr4kuOIMWDHB0tk1i
qLFJTbzj+DPpPJ+7IfIJINom+sPQAxcoh96G7lIXMBPieTWKX+dVrbY4hBMe7AQS
QiYs1n6k65Hnb4RNk5SeSXCV42FPXn/Jv1j+I90+ZOvXIwLsTW9kmRJVMwRg1+Ap
FT2f5vDArsturScNvpjA7/5Fw1Z3Yg+BECD5c4beztrqUDyD6wG6fbCz3+uQdykZ
vg8DChMkCTnAXf3NGH1yt+fzq+up/k26sLIPiXwX0kGDLw5JPZhp0ofKk0k6ZRDY
/2t0NigOryks234ypNEM
=akIw
-----END PGP SIGNATURE-----

--u66JbuNldyJ4Fdqk--
