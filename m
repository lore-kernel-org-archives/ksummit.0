Return-Path: <ben@decadent.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id BC8A2711
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 May 2014 18:32:09 +0000 (UTC)
Received: from shadbolt.e.decadent.org.uk (shadbolt.e.decadent.org.uk
	[88.96.1.126])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 38972201E1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 May 2014 18:32:09 +0000 (UTC)
Message-ID: <1400265111.2647.54.camel@deadeye.wl.decadent.org.uk>
From: Ben Hutchings <ben@decadent.org.uk>
To: Jason Cooper <jason@lakedaemon.net>
Date: Fri, 16 May 2014 19:31:51 +0100
In-Reply-To: <20140516041022.GY27822@titan.lakedaemon.net>
References: <20140511030009.GO12708@titan.lakedaemon.net>
	<20140511083729.211e9b5f@lwn.net>
	<20140515121546.3A06AC40B0E@trevor.secretlab.ca>
	<CAL_JsqJw11fZBbLVi=xxC559iWdwCMFOJ4XYM-8EjykttoWsOg@mail.gmail.com>
	<20140515194215.GR27822@titan.lakedaemon.net>
	<CAOesGMi0JrTp9kUVDod4duBOCZ+wNRJ0dMmgvBX7jEQRjE5cCA@mail.gmail.com>
	<20140516041022.GY27822@titan.lakedaemon.net>
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-f198Ebg9GamzCEWchtbE"
Mime-Version: 1.0
Cc: Rob Herring <robh@kernel.org>, "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Linux ARM Kernel <linux-arm-kernel@lists.infradead.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] ARM legacy board DT conversion
 finalization
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--=-f198Ebg9GamzCEWchtbE
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2014-05-16 at 00:10 -0400, Jason Cooper wrote:
[...]
> Ok, I assumed *everybody* in the Linux ecosystem went to LinuxCon.  I've
> never actually been to one, but that museum was really crowded in
> Edinburgh.  I figured that _must_ be everybody. :)

I find it rather less useful than Plumbers'.

> Joking aside, I concede your point.  It looks like the last two mvebu
> legacy platforms (dove, mv78xx0) might get merged into mach-mvebu during
> the next cycle.  After that, we can reach out to the Debian and OpenWRT
> guys and see what legacy platforms are in use or rotting.  We can go
> from there.

I just removed ixp4xx from Debian as the kernel image wouldn't fit in
the NSLU2's kernel partition any more (even after disabling quite a few
features that are enabled in most other configurations).  iop32x was
removed for the same reason, a while ago.

Our 'legacy' (which I take to mean pre-v7) configurations are now
kirkwood, mv78xx0, orion5x (all about to converge to mvebu) and
versatile.

Ben.

--=20
Ben Hutchings
If you seem to know what you are doing, you'll be given more to do.

--=-f198Ebg9GamzCEWchtbE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIVAwUAU3ZZnOe/yOyVhhEJAQpfqhAA0ZivFJcoffrDDtg44x+Fw1B5q0Pg+aCI
ksTYpT8AxmbUHnQEZPSdN4mPw/z1crmibijVj+2mI6mcf0wMp1luDiBvbkpZVFPh
Wh1OTe4F/7d3En3IL6plI3EfpxqRZ/+qnYS63WPrfi8WLPHmb2Tg7m8EI+Cu4DF5
BNWWac2Yh+J50TjRuStNe4a20D/kjVHJ8UQtPe40iRBp5dV6sfTgugyJMJ3jNiJ1
57w/6yvzRM6f3mDrnZ1uYqProniGFRE2tuVrInmWBNcU/CtRjNmk5xj0q96CDzDM
FaTbH3U8W0rNZZ7OEq1fdFdfebFxYXmDSM5DuznOf3YecKhOcKIH4WK0K73xyDeg
pUjWr7YuhqwI7vNXjCKKzs/87C00Oe3qYjfi7d6C4CIsSddrj7jbNgS/g12WqnN2
6QYBSZgq3kx+ratLyHSxtBRYeqJmxZPwXqYQ32dD/sISpjCH+jx4b8eV5cDXgqLk
rmcSTktmiLrKca6GLkQekiA70g51mI8hMAxz08xc5RJUv4NrW55uBICT/+CGZ5EX
pEDRzNglN6kdq8UVFzHbQpGJr/Zm8pdzzvHS/HaCtkFKH6FuvAlbDUL8EBx9M04s
uzcToeZQQhuZC2rit/5PIOhQlfGl5LbZZr9ChFClxnJ96yj/hyTJyNNAPmpPU0se
8ov/3MaSyCM=
=sf3E
-----END PGP SIGNATURE-----

--=-f198Ebg9GamzCEWchtbE--
