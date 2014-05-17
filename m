Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 1075670A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 17 May 2014 13:10:15 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 049711FAAA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 17 May 2014 13:10:12 +0000 (UTC)
Date: Sat, 17 May 2014 14:09:49 +0100
From: Mark Brown <broonie@kernel.org>
To: Darren Vincent Hart <darren@dvhart.com>
Message-ID: <20140517130949.GW22111@sirena.org.uk>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<20140512215925.GY12304@sirena.org.uk> <5371453E.2070108@intel.com>
	<6686293.8G8KACfUS3@wuerfel> <20140513121148.GI12304@sirena.org.uk>
	<1400299079.9575.140.camel@wasp-deb.dvhart.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="/X7s3i+qRyIJm2VP"
Content-Disposition: inline
In-Reply-To: <1400299079.9575.140.camel@wasp-deb.dvhart.com>
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


--/X7s3i+qRyIJm2VP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 16, 2014 at 08:57:59PM -0700, Darren Vincent Hart wrote:
> On Tue, 2014-05-13 at 13:11 +0100, Mark Brown wrote:

> > and so on.  If ACPI goes the same way for embedded systems that'd work
> > just as well but that's obviously not how ACPI has historically been
> > done and if systems end up being built like they have been that might
> > not make people happy.

> Which people do you mean?

Systems integrators in the embedded space, I'm mostly thinking from the
perspective of people who make consumer electronics but the issues apply
in other embedded sitautions.

> It is clear that for ACPI to be a viable mechanism in the embedded
> space, we need the ability to add additional device descriptions beyond
> what ships in the firmware on the board. We could stick with the old
> monolithic model by enabling people to easily rebuild the firmware
> (something I personally think we need to do anyway), but just because
> people *can* rebuild the firmware, doesn't mean they are going to want
> to! Alternatively, tooling could be provided to modify these tables

Right, and there are frequently process issues which make it difficult
to do this - in larger organisations the firmware may well be maintained
by a different team to the kernel team which can make getting changes
done harder for non-technical resons.

> > There's also the possibility that the driver is going to have to figure
> > out at runtime if it's on a system with active ACPI or a system with
> > passsive ACPI, though I expect we can just do something like check what
> > properties are there for that assuming people don't end up doing
> > mix'n'match type things.  People are interested in ACPI for embedded
> > cases outside of x86 to a large extent so that they don't have to deal
> > with two different firmware interfaces if they also work on the server
> > cases.

> We can determine which method is used based on which device struct
> pointers are populated.

Not at present - we can tell if we are running on ACPI but that's not
the issue.

> > I'm worried that there's more to the model for using a given firmware
> > interface than just the in kernel API but we're only thinking about
> > what's convenient in kernel here.

> From the ACPI side of things at least, we've definitely been thinking
> more broadly than that. In fact the kernel interface, like the one Arnd
> mentioned which happens to be the same thing Rafael and I have
> suggested, is intended to solve a problem we are seeing in industry
> where we can't reuse drivers on ACPI platforms without a lot of driver
> development. The new API is intended to minimize that effort.

I'm surprised it's a *lot* of development TBH - or rather that the hard
bit is not mostly putting new back ends on existing APIs.

> There's more... but rather than just dump here... could you elaborate on
> your concerns here? Are there some specific things we might be
> overlooking - would like to hear your thoughts as I agree, this is
> bigger than the kernel changes.

The most immediate thing is if the tooling around ACPI based systems is
going to be able to support people providing configuration to the system
without undule pain, otherwise it becomes more likely that people won't
use the new infrastructure.

The thing I'm less clear on is if there are going to be problems down
the line with people trying to do things that they currently do with
ACPI like hide details of new board versions causing conflicts with code
that assumes the firmware is just providing data.  This may end up being
nothing to worry about, hopefully it is, but right now as a driver
author I'd expect to approach things differently with a different
firmware.

--/X7s3i+qRyIJm2VP
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJTd1+aAAoJELSic+t+oim9x/cP/AuOorLB+8K43bNVn47QZ3fK
hYupwAj/TTlwjJwLweTEtXjRqa/hUdihrQqmBkJKukOZwZpICQf2NLsOD2zoUrPj
yRwTL0Z307nECriQGJheq4bYyOkKhIF9+22Mc/C3g7XCHv9XGwN8QjqNODbTom+C
EyJxPNdt4KXZhsXCq6gCMOQxpHpqrWOyAkiAkXAKRJ5dQf4gK9uz8lhgHogeJje6
qMDUhlrTX237vSbCmLlg+xVCFFvGYhn83lkCqDqL+YmQW6BRYgUt1vEf+zytfq+n
67zq6udth7rccbHm7jTMUcXYzqXZrHsn+Df4XGWGAnTS/sMg8JO8W44NuxrZBM/Z
mmoCrCbypLvb29Tim0w1fiiLyX30yTo1f7ZiAk7HC1U4SAbdZS/ZP3VWF0Ck3KFM
zByxvXmz2eCug4DDqhQjPGb+uP4gebuV4H1p1YVCH39PU55RqrnPBl/DWzpJgth8
jbZosuSSDHHnR3Pw/PzrSVdWYZ4NZLegY5gqfcWeiFrKb33mhIg6sNY/RYdzsObL
WG/nbJabaYs2hpFNaEajwty/sM72pZYQ8bLusJN+0Yx6bclSquJTrT8Rnrhk8Id8
ZDN2qMXyyAhTje6mnU4Ce6G0GoYC4WPfYPhQohe6EWxlkiOH7aeyHbtv42ammp/J
ZgoP/kFNO6IpZ0Wpucx0
=TykP
-----END PGP SIGNATURE-----

--/X7s3i+qRyIJm2VP--
