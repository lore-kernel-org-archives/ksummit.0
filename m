Return-Path: <ben@decadent.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8F93A8D9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  4 Sep 2016 21:15:16 +0000 (UTC)
Received: from shadbolt.e.decadent.org.uk (shadbolt.e.decadent.org.uk
	[88.96.1.126])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 121ADCF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  4 Sep 2016 21:15:15 +0000 (UTC)
Message-ID: <1473023702.25374.119.camel@decadent.org.uk>
From: Ben Hutchings <ben@decadent.org.uk>
To: Randy Dunlap <rdunlap@infradead.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Date: Sun, 04 Sep 2016 22:15:02 +0100
In-Reply-To: <0e76826b-6552-e880-42fc-17be0c5bf3fe@infradead.org>
References: <0e76826b-6552-e880-42fc-17be0c5bf3fe@infradead.org>
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-LaZ5dyE09j3TkoFesMOZ"
Mime-Version: 1.0
Cc: Michal Marek <mmarek@suse.cz>, Arjan van de Ven <arjan@linux.intel.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Ingo Molnar <mingo@kernel.org>, Jiri Olsa <jolsa@kernel.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] tools/Makefile: Fix Many Many
 problems and inconsistencies
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--=-LaZ5dyE09j3TkoFesMOZ
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

[Slowly catching up on ksummit-discuss]

On Mon, 2016-08-01 at 20:46 -0700, Randy Dunlap wrote:
> and subdir Makefiles.
>=20
> Examples:
>=20
> Use/honor O=3Doutputdir consistently instead of building in <kerneltree>/=
tools.
> (check/compare kernel commit bf35182ffcd00d8b36d56210ffdac110e5624d7d)
>=20
> Honor MAKEFLAGS (well, they aren't even passed to tools/Makefile AFAICT.
> from an execution log:
> make LDFLAGS=3D MAKEFLAGS=3D"" O=3D/local/lnx/kernel/lnx-47/TOOLS subdir=
=3Dtools -C ../tools/ all
>=20
> Use make's "findstring" correctly (see patch below)
>=20
> There are lots of other problems unless I have just had too much too drin=
k tonight,
> so here's the TECH TOPIC:
>=20
> In a 1.5 hour code crunch session, get a bunch of interested people toget=
her to fix
> a lot of problems quickly.=C2=A0=C2=A0Then I will be a guinea pig tester.=
=C2=A0=C2=A0:)
[...]

I don't know how much can be done in that time. =C2=A0I've had some
recurring pains in packaging tools/:

1. Many different build systems
=C2=A0 =C2=A0- Inconsistent support for configuration variables (not just '=
O')
=C2=A0 =C2=A0- usbip isn't included in a recursive build, presumably becaus=
e
=C2=A0 =C2=A0 =C2=A0it uses autotools

2. Tools include UAPI headers in one of two ways, neither of which is
=C2=A0 =C2=A0reliable:
=C2=A0 =C2=A0- Assume the current headers are on the system include path
=C2=A0 =C2=A0- Include unprocessed UAPI headers through a relative path

=C2=A0 =C2=A0The right thing to do is to run 'make headers_install' and add
=C2=A0 =C2=A0usr/ to the front of the system include path. =C2=A0But we'd w=
ant a
=C2=A0 =C2=A0way to avoid re-doing that when the UAPI headers haven't chang=
ed.

3. Tools frequently fail to build in stable releases (sometimes on
=C2=A0 =C2=A0specific architectures) - seems like tools/ is not covered by =
CI
=C2=A0 =C2=A0or it's ignored

This last point is more of a core topic though.

Ben.

--=20
Ben Hutchings
Once a job is fouled up, anything done to improve it makes it worse.

--=-LaZ5dyE09j3TkoFesMOZ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQIcBAABCgAGBQJXzI7WAAoJEOe/yOyVhhEJ4owQAMqH6778n/d/a/NSoOsZK+rL
liYtlDPgCY+z4FmjOi8XbyACVqA2y0zSz1V4myB5ETm1FxsqMVDd5ii3hgN+b0ot
CzqaAKI6T4P/o0YBi3wiskTheTj3ZwnY/OrS4ztgP01/suSp0vPkEjTIoE/TJ25A
5lgKBFwczwaCkBhyndIbzgHL0NeIXQlz1HLjH/o1pKcOy0coEGaKz997f7oTSsp6
TxELfbvP7vnpXAvBG7d4PuZykVuve+qEBu5+7zlMCOeZE/NtU51YOvIFZZ6kFxwI
MJ4ea6CtU3F9qAM7trH4lIyKcoXLEzhO7KhtkcHJ2jFI8yOosJxVqr06D1bMY3LI
YPoi47TavtjS/UHcvy0xUCzCWqbCa5yMVCuYS0XumC4xH95v6RuAofBpzAFzOlFq
cRnM8L19olITxB87PUIAHQmmKosPgyk1UuI5c/scWW585f8W9XWbSovZtqEFYW6B
qfnIeXEQE63G3cknX3deHHNAd0d+WgJP6tVwudXflS83eG2UKsiiD3jWGoeqt5DD
hD/O1ScydEi7hSaBMoze9RmzrR5qGBJcdW5KD6ktsp8eA2+5/MaWnni32GtKXcsV
kQ9zMUBIypPQYBEeXsSn/rFnBlkGUxaolD4IhrLxEKSmzsuY2rDkaLG0knurOSl9
c8rr2kesmqecnT/6U55+
=+GVr
-----END PGP SIGNATURE-----

--=-LaZ5dyE09j3TkoFesMOZ--
