Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 362DC48E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 13:04:31 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A52631FA42
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 13:04:30 +0000 (UTC)
Date: Wed, 14 May 2014 14:04:01 +0100
From: Mark Brown <broonie@kernel.org>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <20140514130401.GC12304@sirena.org.uk>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<4341089.iLfxP0nJG8@wuerfel> <20140513193146.GR12304@sirena.org.uk>
	<1461572.JtpPDPW8DH@vostro.rjw.lan>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="7Mplw3OCI4oLNRBG"
Content-Disposition: inline
In-Reply-To: <1461572.JtpPDPW8DH@vostro.rjw.lan>
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


--7Mplw3OCI4oLNRBG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, May 13, 2014 at 11:19:00PM +0200, Rafael J. Wysocki wrote:

> Of course, ACPI "support" can be shoehorned into a limited number of things
> this way, but it really doesn't scale and very often the result is really
> disgusting.  Also ACPI in its current form may not even be able to provide
> information expected by device drivers in the first place, because ACPI
> doesn't have means to encode that information in any sensible way today
> (that includes clocks, voltage regulators, PWMs, pin control and even GPIOs
> to some extent).

> If ACPI is extended so that such information can be put into the tables,
> there is no reason why the interface for extracting it should be much different
> from the of_ one, except that instead of calling of_get_something(device_node, ...)
> drivers will call fw_get_something(device, ...).  And that can use the old good
> of_ for systems with DT, so it really is a matter of getting the ACPI side of
> things to match it.

Of course, and for all of these things other than GPIOs we already
handle the lookups without any DT code at all in the drivers (and GPIOs
are moving away from needing explicit code too).  Things like that just
aren't an issue and I'd say that if we are adding new fw_ interfaces for
resource lookup like you describe we're doing things wrong, we already
have the idiom of looking up by device and some key which works well.

It gets more interesting with compound devices like multimedia; there's
not really a clear general model for handling these in kernel in the
first place plus also some ongoing discussion about how they are best
represented in DT.  Those might well fall into the too hard to handle
generically category though.

> And if you're asking why things are currently done in different ways, the
> reason is simple: ACPI has not been extended yet and the fw_get_something(device, ...)
> interface doesn't exist, so people have to use what is available today and there are
> products to support in the meatime.

Not really, the issue is more about the model and applies just as much
to things like device specific properties as it does to resource lookup
(to be honest resource lookup is the easiest thing here - it's not a
relevant issue with the in tree stuff).

Active ACPI systems have the idea that the firmware is going to go and
interact with the hardware directly itself, one of the goals being to
allow the hardware to be extended in ways that the OS would otherwise
need to be modified to support.  In contrast FDT and the new passive
ACPI model you are describing just provide data and leave everything up
to the OS in terms of interacting with the hardware.  What's tasteful
and what system integrators expect to work with both seem to vary
between the two - one of the most common I'm seeing is that with active
firmware configuration written into the device on startup may actually
be real and worth paying attention to while with passive firmware it's
usually best to ignore the device state.

Some of what's going on is limitations in current ACPI and it does make
sense to address those in as generic a fashion as possible but it isn't
clear to me that all ACPI users want to have something that looks like
DT.

--7Mplw3OCI4oLNRBG
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJTc2m+AAoJELSic+t+oim9obQP/1TbysQ//f2+stNI0X/OON0t
Mxbqw5AJ0qmqBd3edif7s5pnEYfny2js6ljpAXqfDpVHfTBpxXjUr1lorWgAxeCj
Wq4hT8GUVM+OkochK2z64c9qijVAHrpmniI1HFXzZUvd6IzB0J3BupLodQWzA0Qi
K+o8dqrTztxBycEyPMh0j7c3W5PZ9nArEaUyRzjDRyQIpnWvICzAb3leWI8RRV3p
91j4VLBE8toSN0dkvoOGNN0+4SpwPLaF5JlyYxpkKBHWmg6J/4zfOGSYqqB+EMcr
p6Del31ezD0KmvRum3QvBTl0gEaTPHKnSgCDHKUK3pajfPOBUCNiAZVhYzX+Mjvf
NP7bhpo/qr/bgM23yFwN5l+/tDDhQyp+6c9X/R0vGtMoCOBkzEdMWJxRwIyxC1ci
0pjsxC+0hvQ2xaPc5avWLe/2wjUDorDQk0ijFdlHAZNud57SzxNOu2gCzDJwVADB
PAGtcUzOydtgZlnge3LOQ5jlnpkhGcQ8MH84LgqoqEhO74FOyAjne7fuUWayro3l
s0PhXD7sjlEneNPgTzLkyXGngkb2arL32e4GACevPNABRd+2B42qWj5A37z0OyAk
4gVl5PZG10TfsfBEDuiVO3acOEXJpt51cMYOHEdcaUmrBKNKIAfzJK9FkgkWtezk
n5arVE8l71mihQuu534g
=Te/j
-----END PGP SIGNATURE-----

--7Mplw3OCI4oLNRBG--
