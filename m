Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id A248F979
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 12:12:10 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2FBD02022E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 12:12:10 +0000 (UTC)
Date: Tue, 13 May 2014 13:11:48 +0100
From: Mark Brown <broonie@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Message-ID: <20140513121148.GI12304@sirena.org.uk>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<20140512215925.GY12304@sirena.org.uk> <5371453E.2070108@intel.com>
	<6686293.8G8KACfUS3@wuerfel>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="RyM661wSIZOpCIec"
Content-Disposition: inline
In-Reply-To: <6686293.8G8KACfUS3@wuerfel>
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


--RyM661wSIZOpCIec
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 13, 2014 at 09:34:35AM +0200, Arnd Bergmann wrote:
> On Tuesday 13 May 2014 00:03:42 Rafael J. Wysocki wrote:
> > On 5/12/2014 11:59 PM, Mark Brown wrote:
> > > On Tue, May 06, 2014 at 02:22:15PM +0200, Rafael J. Wysocki wrote:

> > > Aside from the whole question of people bothering to pay attention to
> > > the specs when writing their BIOSs DTs (as used in modern systems) and
> > > ACPI have quite different models for what should be handled where - F=
DT
> > > is pure data and expects the kernel to do everything while ACPI expec=
ts
> > > to be used with active firmware.

> > While in practice ACPI is used on systems with active firmware usually,=
=20
> > there's no expectation like this in ACPI itself in principle.

> Right. Open Firmware already has multiple ways of running code from the
> firmware (client calls, RTAS, FCODE, ...), which are used all the time,
> but we intentionally chose to not allow them for embedded systems with
> the FDT subset.

I wouldn't say they're used all the time these days - the platforms with
runtime OF aren't terribly active any more and don't have much overlap
with other systems.

> It should be entirely possible and reasonable to do the same thing for
> ACPI on embedded systems. I believe this is what SFI attempted to
> do, but that seems to have been discarded for some reason.

SFI didn't provide any way of giving data to devices other than
registering them which meant that it ended up with the pain of firmware
based device registration requring firmware updates to get the device
present being combined with the need for board files to actually get the
devices to do anything useful.  On the bright side this got around the
fact that in my experience the firmware was frequently not modifiable by
people directly working on Linux.

This might be another issue for the model where we treat ACPI as DT.
One of the things that makes the DT model workable in the embedded case
is that most of the time as far as the rest of the system is concerned
the DT is essentially part of the kernel - it's built from the same tree
and so on.  If ACPI goes the same way for embedded systems that'd work
just as well but that's obviously not how ACPI has historically been
done and if systems end up being built like they have been that might
not make people happy.  One of the things that active firmware is doing
is decoupling the firmware from the kernel which is a real and useful
benefit in many embedded situations, otherwise you just end up either
doing board quirks or just hacking things to be system specific in code.

There's also the possibility that the driver is going to have to figure
out at runtime if it's on a system with active ACPI or a system with
passsive ACPI, though I expect we can just do something like check what
properties are there for that assuming people don't end up doing
mix'n'match type things.  People are interested in ACPI for embedded
cases outside of x86 to a large extent so that they don't have to deal
with two different firmware interfaces if they also work on the server
cases.

I'm worried that there's more to the model for using a given firmware
interface than just the in kernel API but we're only thinking about
what's convenient in kernel here.

--RyM661wSIZOpCIec
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJTcgwBAAoJELSic+t+oim9PC0P/iIEmNGKnb9jctUwQdFnNcDi
uNuQqyGOtHwD7HS7OskmB3Hz/t+B7ArCrZOYrNZpgjU4Fp6H17s/Kzpkq4B4/SYy
PaM6aVBe+Y/jqJzUfQ7ccgBAAcIem7lRneJUnuvLAfCsbclYqoeaW+HXtCiCdoVs
ky1ozFbVTtoHKSGx/TUjO9jwfu0UGOYPi4+KduSrDzYTqy79V52sKmJQFeEheVo7
9vWascWZNZFVNdZbBd2/2ij8u8RV3nb2bU93+TAjsYig8hQ36Qj9mlckObQWZy8q
ga45gq40SrPpy31hvzmFxjmJV9j5K3lSOzI6FCdfPFisayPbhbjY4q4A6XnGIoJB
svsO6M3c3WZBCm1E4djdIRshDCdg8Qr+wOhpGZkyDWvXhxlij+zfPU6V2aDcA9GR
mbVh73SERua4tAbAfjNw3V9yp/f1aLQ/KbCRWGWUf5Kzqjq6qGXG+ZHG7hAtqXyW
Q3KorVlB5dT/5tBlqJ9hNY5dUMapxF1ldVDSptrgstxQUpDVVcwLaGTFpfGqszuX
5H5L1IFxfRFJf/iSwuWdoSHQfzBUBX8Kl9I01O1YnGvabcRMxuZJeWKfGvNzuX8G
T/2D162TGkRlwHGEvq2mF8Hu/InNvI83ITz80LUDRKXs0YlTVKCeCP/RmxqO1FBB
Rt+hufTVGqGgMNxYrrSS
=VgVu
-----END PGP SIGNATURE-----

--RyM661wSIZOpCIec--
