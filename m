Return-Path: <ilevex.linux@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 8C5E5711
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 20:41:34 +0000 (UTC)
Received: from mail-ee0-f49.google.com (mail-ee0-f49.google.com [74.125.83.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EF00C2020D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 20:41:33 +0000 (UTC)
Received: by mail-ee0-f49.google.com with SMTP id e53so971911eek.22
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 13:41:32 -0700 (PDT)
Sender: Levente Kurusa <ilevex.linux@gmail.com>
Date: Thu, 15 May 2014 22:41:28 +0200
From: Levente Kurusa <levex@linux.com>
To: "H. Peter Anvin" <hpa@zytor.com>
Message-ID: <20140515204128.GA10395@linux.com>
References: <1995824.rdvEX5SOIt@avalon> <20140511171824.GB2527@linux.com>
	<CACV2jQACREM61UYrR0=AGDMQ8WYguwaX6HyPFR+wc5oXTRpheA@mail.gmail.com>
	<20140512161539.GX12708@titan.lakedaemon.net>
	<CACV2jQCV=rRFg-+x1B3H1=GM5rB_YWp1UU1p7xXkozHKv1Ewvg@mail.gmail.com>
	<CACV2jQCPpi=18-CMCyhy3qdJgxgwBGKA=DDOWocVubqJWCU3rg@mail.gmail.com>
	<20140513070851.GA20002@thin> <53739333.30108@zytor.com>
	<20140514185449.GB4475@jtriplet-mobl1> <53751303.3010000@zytor.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="YiEDa0DAkWCtVeE4"
Content-Disposition: inline
In-Reply-To: <53751303.3010000@zytor.com>
Cc: PJ Waskiewicz <pjwaskiewicz@gmail.com>, Sarah A Sharp <sarah@minilop.net>,
	ksummit-discuss@lists.linuxfoundation.org, Anton Arapov <arapov@gmail.com>,
	Dirk Hohndel <hohndel@infradead.org>
Subject: Re: [Ksummit-discuss] Fwd: [TECH TOPIC] QR encoded oops for the
 kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--YiEDa0DAkWCtVeE4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, May 15, 2014 at 12:18:27PM -0700, H. Peter Anvin wrote:
> On 05/14/2014 11:54 AM, Josh Triplett wrote:
> >=20
> > That's certainly true.  On the other hand, I'd really like to see a
> > version of the oops-as-QR-code bits that uses VGA block characters to
> > work in non-graphics, non-framebuffer mode, which would require fitting
> > in at most 80x50 (using the half-block characters).  That wouldn't allow
> > nearly as much data, but likely enough for a somewhat useful crash
> > report, especially in aggregate.
> >=20
>=20
> Now we're getting into a funny area, which is "what is the lowest common
> denominator".  If the lowest common denominator is VGA, a simple VGA
> driver could force the screen to 640x480 graphics mode, or reprogram the
> font to allow for an 160x100 pixel pseudographic mode (more if we allow
> the font size to be adjusted).  It is not at all clear that using IBM
> pseudographics with no other programming is a useful point on that spectr=
um.
>=20
> Either way, this is *way* past turning into a technical conversation,
> and belongs on LKML and not ksummit-discuss.
>=20

Right, I'll write up what technical stuff we discussed here and post
it on LKML in the RFC thread so we can get rid of the tech discussions
here.

Thanks,
    Levente Kurusa

--YiEDa0DAkWCtVeE4
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iQEcBAEBAgAGBQJTdSZ4AAoJELBqK2lO9dZB3hMIAKdFYGqG0juhAKjMyWN7ZLbR
AA1vasYfKvredvPwIVtwVeekRnjg5TJ+PEeHwFkgbmWHFnZ1XoAKAZQQeUiyelHL
zw0nlRrDfa1tEX7gmGmMlsumLYNvWFfqHnGR2SCq2I4Hr8lchx8t8de0Tqzq7Bm/
4M9NRUhJEbviRPxmQV58CS1zH0DuYuZayMhBC69G9SZNWL781oFtidufFESjO771
tUFvoB1CSHgkko5+1/1kme6sAOiEVygPT7wJXfSUpIXwuLnZhDrwy4qU84A3vTvk
sNogfKRllzKYyNam9tcgp7gR61X3PC1vi0jnSkRLoY3K2jK6Rj7bZXfx+2n46tY=
=oWi/
-----END PGP SIGNATURE-----

--YiEDa0DAkWCtVeE4--
