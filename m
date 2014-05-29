Return-Path: <ben@decadent.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id A4A73AF7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 00:31:49 +0000 (UTC)
Received: from shadbolt.e.decadent.org.uk (shadbolt.e.decadent.org.uk
	[88.96.1.126])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C126E1FA42
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 00:31:48 +0000 (UTC)
Message-ID: <1401323745.14007.51.camel@deadeye.wl.decadent.org.uk>
From: Ben Hutchings <ben@decadent.org.uk>
To: "Martin K. Petersen" <martin.petersen@oracle.com>
Date: Thu, 29 May 2014 01:35:45 +0100
In-Reply-To: <yq1zji2hif7.fsf@sermon.lab.mkp.net>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140525222923.GW15585@mwanda> <1401119598.3303.6.camel@dabdike>
	<alpine.LNX.2.00.1405271634080.28869@pobox.suse.cz>
	<1401224020.14454.92.camel@dabdike>
	<alpine.LNX.2.00.1405272316000.17241@pobox.suse.cz>
	<yq1zji2hif7.fsf@sermon.lab.mkp.net>
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-/NJImZVbFTYl/SsuaVT/"
Mime-Version: 1.0
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--=-/NJImZVbFTYl/SsuaVT/
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2014-05-27 at 20:10 -0400, Martin K. Petersen wrote:
> >>>>> "Jiri" =3D=3D Jiri Kosina <jkosina@suse.cz> writes:
>=20
> Jiri> Are you implying that Linux is still not in a position to force HW
> Jiri> vendor companies to rather invest 30 man-minutes in order to have
> Jiri> a proper changelog and driver merged in Linus' tree compared to
> Jiri> receiving bad public press when they are being rejected
> Jiri> (especially for such negligible reason as changelog text)?
>=20
> There are a few companies in the enterprise space that get it. But in
> general it can be quite the challenge to get these vendors to see the
> value of being good Linux citizens. And these companies are much less
> susceptible to phoronix rants than entities producing consumer widgets.

For consumer widgets, it appears that most vendors don't update the
software, so they won't care that any out-of-tree drivers may break on
the next kernel version.  In fact, they're likely to be starting with
their SoC vendor's kernel tree which was forked a few years ago and has
a ton of dirty performance hacks in the core.

The 'enterprise' world seems to be in a comparatively much better state.

> These companies have internal development processes that are often quite
> unfriendly to the way we work. More often than not, upstream drivers are
> trailing internal driver trees by many, many months. Patches are only
> sent upstream when there is a bit of slack in the engineering schedule.
>=20
> In many cases upstream Linux is not seen as an important target because
> the driver vendor will provide OEMs that ship their hardware with a
> "value added" outbox driver tarball or CD. The server vendors are
> partially to blame for keeping this dreadful anachronism alive. One
> would think that "It Just Works with RHEL/SLES/OL" would be better story
> than retrofitting tarball drivers and jeopardizing future kernel
> updates.

In my experience working for an 'enterprise' hardware vendor, there was
definitely pressure from OEMs to get the hardware supported in mainline
or in their favoured distribution (and distribution maintainers require
them to be upstream first).  I seem to recall one OEM formally requiring
in-tree drivers for all components aside from graphics.  But they
usually wanted out-of-tree driver packages *as well*, since 'enterprise'
customers do like to run old kernel versions.

> According to the server vendors, however, customers expect to
> install an updated Linux driver just like they do on Windows. Otherwise
> the perception is that Linux is lagging behind or poorly supported.
> *sigh*

Chip/board vendors and OEMs often like to differentiate themselves in a
competitive market by implementing unique features and adding special
applications and driver interfaces to support these.

Linux subsystem maintainers may push back against such interfaces -
often because they are not all that unique, or not likely to remain so.
David Miller is particularly strict about this; other maintainers may be
less so.  This does not block differentiation, but it means those
features may be included only in the OOT driver.  When an OEM is
interested in differentiation, then of course it will encourage use of
the OOT driver.

> Vendor driver release cycles are often tied exclusively to new silicon
> availability and internal firmware release schedules. Many vendors pay
> little to no attention to Linux development cycles. Furthermore, driver
> code is often shared between several operating systems so every patch
> needs to undergo IP/legal review before it can be submitted upstream.
> Internal commit messages often have partner references, bug numbers,
> code names, etc. in them. So it's typically easier to just drop the
> patch description than rewriting it and have the new text reviewed by
> the legal team.
[...]

I never had to go through legal review, though I certainly sanitised
some commit messages based on my own knowledge of what product
information was and wasn't already public.

Other reasons I had for needing to write new commit messages:

- The internal commit message had just a bug number and one line of
summary, because the internal bug tracker had the full explanation
- I combined and/or split some internal commits, because we discovered a
regression before sending them upstream

Driver development for a new generation of hardware may begin long
before it is publicly announced, and may contain many false starts or
temporary hacks to work around pre-release hardware or simulations.
Somehow, that messy development branch needs to be turned into some
semblance of coherent refactoring when sending upstream.  Either that or
you fork and rename the driver for the new generation, and send it
upstream with no history at all.

Ben.

--=20
Ben Hutchings
Absolutum obsoletum. (If it works, it's out of date.) - Stafford Beer

--=-/NJImZVbFTYl/SsuaVT/
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIVAwUAU4aA8ue/yOyVhhEJAQqJ8BAAunZOqPXMZoVRwdBfzbmuMqiS3mH9caQg
EqCZ87vInLxO7tdjPxbZueY7kM44Y6d8bycDYZPpdIF1PY2ZBk8sLCStOKr4o2Ze
uw7eWBNWd1KhJS4Bv+D2n8WkxwIqdFsKCY+F7oD7IbKwzEeQoEmR4BFAtPkB8Ksq
wIVVc8Kv/xDJMCZK7RXLvpLR2TXs9sWhD0yuQOcaHb3qjysMjk0S1LxGDD4ouiUT
EjExqPxZXYZ3r2IAaJK+X69SYxFhjztUBZ73ChzX5+wv5x0w9O6NQqIdtTB/ukaM
QH2wGtOQWMXM2vb7Uv/vRYEhAl0QN9pykjde1YcoBOi9jXDEbhbO2A/TrBfCVRUM
FRlORvOZa03drm3QzwGNY9+kWE2tPVC0lNYs/nFc07u3Q0/arNSFhswMuak66H/U
B24eYy/QeXWh+NUEuwiC/m/ScPUm5PDIcXHsoyL6ZMVOs6ukjBHtuyNH+yV723jn
NPETIe3r27Bg9WZpE9t5V5LN/04hB8hEL8UWvqxxazUsel9reZzjEPO6aFUusJdq
d070NmrwjZ2oTLwOsvwuKNaOOcwIaibfM9s/v7qZwO4jd/UZgWoZ0ndO3aNCB3B+
49neDnrXs05DDP05PoU6hLge7vUze82vAUGh9joyoCrC0D84BTFIrF95IueUxw/j
97zQjhZ5vvI=
=9TAT
-----END PGP SIGNATURE-----

--=-/NJImZVbFTYl/SsuaVT/--
