Return-Path: <ben@decadent.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8F8618A1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Aug 2014 02:07:11 +0000 (UTC)
Received: from shadbolt.e.decadent.org.uk (shadbolt.e.decadent.org.uk
	[88.96.1.126])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 26A5E1F93F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Aug 2014 02:07:11 +0000 (UTC)
Message-ID: <1407895613.3017.138.camel@deadeye.wl.decadent.org.uk>
From: Ben Hutchings <ben@decadent.org.uk>
To: John Stultz <john.stultz@linaro.org>
Date: Wed, 13 Aug 2014 03:06:53 +0100
In-Reply-To: <CALAqxLUcfaJnxdmkn6mucepNk3QaCQdcSPLRjjeKsk_OTp=uLA@mail.gmail.com>
References: <CALAqxLUcfaJnxdmkn6mucepNk3QaCQdcSPLRjjeKsk_OTp=uLA@mail.gmail.com>
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-buHD25CnbrD/lOAnp9pq"
Mime-Version: 1.0
Cc: "Joseph S. Myers" <joseph@codesourcery.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	lkml <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] 2038 Kernel Summit Discussion Fodder
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--=-buHD25CnbrD/lOAnp9pq
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2014-08-12 at 17:01 -0700, John Stultz wrote:
[...]
> The downsides here are many. The distros will probably hate this idea,

I certainly hate the idea of adding another 32-bit port to Debian.
I think that it's OK for traditional distros to say 'just upgrade to
64bit' while you solve the problem for 32-bit embedded systems where
there's probably little demand for supporting multiple ABIs at once.

>  as it requires rebuilding the world, and maintaining another legacy
> architecture support. I=E2=80=99m also not completely sure how robust
> multi-arch packaging is in the face of having to handle 3-4
> architectures on one system.

dpkg multiarch covers this just fine, while I believe RPM is limited to
biarch.

> On the kernel side, it also adds more complexity, where we have to add
> even more complex compat support for 64bit systems to handle all the
> various 32bit applications possible.
[...]

Didn't we need to do this already to support x32?  Have compat ioctls
involving time been botched?

Ben.

--=20
Ben Hutchings
Humans are not rational beings; they are rationalising beings.

--=-buHD25CnbrD/lOAnp9pq
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIVAwUAU+rIQue/yOyVhhEJAQprlw//QGjxutIPavrjD0F/rXIM7PHpdnijdTHO
RbBGTwYCFfyMvUWmXh1DNOjlCOkiNE5MvzzPTQvGKwH8t4vvmBqVOdOuB91AUrAs
lOmrgg9Gmmy5zQf2JpBw2qPSyzjSXpNZfz4oENsudTqTvDNpGo82V7LCW2MwEBrV
ut8dZUBdJhiiHhK9F3W8OlYoN1a6Q1Dq1YDM5x1VndD6Dt/4wV8dSl7Jjus7Rxif
wIXyTIRrtFShlJmpBJP41tM8I9epIwQKUhm31pSLpNjOlAufXKZjgf3COu5DeMXO
4NUoUDAcH0vKhhxjndq3GWX6Q6eH0mGj8q5ojXQZWFsmTaNMMANTS82mXcCtWMLd
kuXY4pF5tauv1htPymsE9pV3Uto46F+CkqQGV94xwwPtYhjAuGYd0pgaHOf8lN/c
XmiljNH7v/XvsN2wAmiXP2tM7x2fuiqF3yMqLG8FRhV/dKleoUbipVGXljEwLyrt
wD6Gh3cA6lUZ3AbUOynrFdstEI5neHXS8ovFsyUddoOh8tYe6mzhfmzjk8Rntand
y9Dp+fegaT/LaAU8J8JAFnFHz2uKIRvByEZcuUdJVlkriUOpgdhmHmtpac/D3bW2
OU9Lypk1N1vnsXERN+Aa5NgyNEDNpD3EKsyCheb0G0pkbg7MEFotyi7EZeKjo9gj
DPj3GJuE3T8=
=wYoB
-----END PGP SIGNATURE-----

--=-buHD25CnbrD/lOAnp9pq--
