Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 2DF6E4D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 17 May 2014 13:24:50 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 961BE1FAAA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 17 May 2014 13:24:49 +0000 (UTC)
Date: Sat, 17 May 2014 14:24:23 +0100
From: Mark Brown <broonie@sirena.org.uk>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <20140517132423.GX22111@sirena.org.uk>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<1461572.JtpPDPW8DH@vostro.rjw.lan>
	<20140514130401.GC12304@sirena.org.uk>
	<1527482.CPBrbWbyLU@vostro.rjw.lan>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ucW7QTJbHsz5ya91"
Content-Disposition: inline
In-Reply-To: <1527482.CPBrbWbyLU@vostro.rjw.lan>
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


--ucW7QTJbHsz5ya91
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, May 15, 2014 at 02:05:43PM +0200, Rafael J. Wysocki wrote:
> On Wednesday, May 14, 2014 02:04:01 PM Mark Brown wrote:

> > Of course, and for all of these things other than GPIOs we already
> > handle the lookups without any DT code at all in the drivers (and GPIOs
> > are moving away from needing explicit code too).  Things like that just
> > aren't an issue and I'd say that if we are adding new fw_ interfaces for
> > resource lookup like you describe we're doing things wrong, we already
> > have the idiom of looking up by device and some key which works well.

> The "key" think doesn't really work in ACPI if it is a string, however.

> That's a real problem, because, for example, ACPI says "I have these GPIO
> connections between your device and controller X" and it gives you pin
> numbers.  Now the driver (or someone else) needs to figure out which pin
> is used for what.

> If there's only one pin per device, all is fine, but if there are more of
> them things get very ugly quite quickly.

> So in "native" ACPI something like gpiod_get() cannot really be implemented
> to use con_id and if you look at acpi_find_gpio() (the one in gpiolib.c),
> you'll see that it actually only uses the index for this very reason.

Surely all we need to do for these cases is provide a way for drivers to
supply the name to number mappings for usage with ACPI (probably with
per device and per board overrides possible due to all the failures
usually associated with numbers)?  That's much less invasive than making
new APIs.

> > It gets more interesting with compound devices like multimedia; there's
> > not really a clear general model for handling these in kernel in the
> > first place plus also some ongoing discussion about how they are best
> > represented in DT.  Those might well fall into the too hard to handle
> > generically category though.

> Well, that's hard to say wihtout looking at specific examples.

> If something proves too hard to be addressed in a common fashion, which is
> not unlikely, we'll need to find some other way to address it, but as long
> as we *can* do things in common ways, we should do that in my opinion.

That does make sense.  The complex examples I thinking of are things
like Documentation/devicetree/bindings/sound/simple-card.txt and the
more complex versions of such subsystems.

--ucW7QTJbHsz5ya91
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJTd2MEAAoJELSic+t+oim9SuAQAIOH6r9B4K93LE5FpD9bWWuW
cO512PiFJkxP2KdWxnWYJ4MC9O+F9wZ5plKEY740aI627VBBd7dbIHptYr0UZ6UD
VDKWClADIjoZZ9EfvLWJvyGhCQZX+xs8/9eJ0xyy6ARICBSz6vhcjzXqi4//tDTO
JVWvm8J3UZf5mRTf76DheS0caQS4yDJs6CXv3MpKfruwHCb4Qj6lh8OP9Zn8pgZT
dc1v+P4b/zIeVM+Ad3g+uDggCqvCT1u7M9RiBe4qk9358gD/vLt+i13rOXmGxaPO
x0Q3y748s5NglwumJK6ncZr/0MR+7dQ+Bmwqrg2DJeKNo+TLIyc3JVggJtWEpj+H
tONRf0CCkDaezF6DRJmvm03kFH/Oni0wFFEvwnatXV2jcabf4b7omYYIyM3WqC11
RgxM34NIU37Z3nmOthBoBbWNou0GmCw5v9Ib9rYukMBGjZc4Zi/roHguWtda3JWH
R0zBCgQjQf4BRza/LY/esSzRZuZML0dakI/Ag76spwZQvJy+HrXFZMAPRQ0iMlFL
zJxiUNHb7G4n6Va+wGK+TaGcF6cSQYgwcV6wB05oO01fiINru63/rZ8UDdgIa7lj
SoVusp8kFH0mqd19B/Z35UlI9fe+zshfsTMiZSOcKQI1F7QROby7enT7v599z3AD
Bx+x/8GomIIM46QQJU5Y
=vkle
-----END PGP SIGNATURE-----

--ucW7QTJbHsz5ya91--
