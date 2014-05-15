Return-Path: <ilevex.linux@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 4B86B942
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 12:44:11 +0000 (UTC)
Received: from mail-ee0-f43.google.com (mail-ee0-f43.google.com [74.125.83.43])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0E6EF2010F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 12:44:09 +0000 (UTC)
Received: by mail-ee0-f43.google.com with SMTP id d17so618542eek.16
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 05:44:07 -0700 (PDT)
Sender: Levente Kurusa <ilevex.linux@gmail.com>
Date: Thu, 15 May 2014 14:44:04 +0200
From: Levente Kurusa <levex@linux.com>
To: Josh Triplett <josh@joshtriplett.org>
Message-ID: <20140515124404.GA2599@linux.com>
References: <20140511171824.GB2527@linux.com>
	<CACV2jQACREM61UYrR0=AGDMQ8WYguwaX6HyPFR+wc5oXTRpheA@mail.gmail.com>
	<20140512161539.GX12708@titan.lakedaemon.net>
	<CACV2jQCV=rRFg-+x1B3H1=GM5rB_YWp1UU1p7xXkozHKv1Ewvg@mail.gmail.com>
	<CACV2jQCPpi=18-CMCyhy3qdJgxgwBGKA=DDOWocVubqJWCU3rg@mail.gmail.com>
	<20140513070851.GA20002@thin> <53739333.30108@zytor.com>
	<20140514185449.GB4475@jtriplet-mobl1>
	<20140514200043.GA2516@linux.com>
	<20140514225523.GA10344@jtriplet-mobl1>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="wac7ysb48OaltWcw"
Content-Disposition: inline
In-Reply-To: <20140514225523.GA10344@jtriplet-mobl1>
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


--wac7ysb48OaltWcw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, May 14, 2014 at 03:55:23PM -0700, Josh Triplett wrote:
> On Wed, May 14, 2014 at 10:00:43PM +0200, Levente Kurusa wrote:
> > On Wed, May 14, 2014 at 11:54:49AM -0700, Josh Triplett wrote:
> > > On Wed, May 14, 2014 at 09:00:51AM -0700, H. Peter Anvin wrote:
> > > > On 05/13/2014 12:08 AM, Josh Triplett wrote:
> > > > >=20
> > > > > Many users will already have a QR-code scanning app installed, an=
d such
> > > > > apps always support loading URLs in a browser.
> > > > >=20
> > > >=20
> > > > Let me disavow you of the notion that stock scanning apps handle la=
rge
> > > > QR symbols.
> > >=20
> > > That's certainly true.  On the other hand, I'd really like to see a
> > > version of the oops-as-QR-code bits that uses VGA block characters to
> > > work in non-graphics, non-framebuffer mode, which would require fitti=
ng
> > > in at most 80x50 (using the half-block characters).  That wouldn't al=
low
> > > nearly as much data, but likely enough for a somewhat useful crash
> > > report, especially in aggregate.
> >=20
> > Not really possible, from my experiences the QR code that results from
> > a random oops is ranging from 100x100 to 150x150 depending on the size
> > of stack trace and stuff like that. Of course, we can decrease the
> > error recovery region and that might make it smaller. I'll take a look
> > at this a bit later. If that doesn't work, then that means that we can't
> > shuffle that into the textmode's 80x25. Not to mention that the block
> > characters in the ASCII table (I think you meant that, if not please
> > correct me) are not neccessarily square, which is needed for maximum
> > scannability.
>=20
> In the standard EGA/VGA/DOS character font, see characters DB (solid
> block), DC (lower half block), and DF (upper half block).  Those allow
> drawing 80x50 on an 80x25 console.  Unicode has those as well, and also
> supports a full set of quarter-character blocks which would allow
> 160x50; see U+2580 through U+259F.
>=20

Hm, I see. I'll find some time soon to check on this.

> I've also seen discussions about removing less useful information from
> the oops backtrace (simplifying it to just the backtrace itself, and
> less of the guessed-at information).

Indeed, that might as well make the QR code smaller. I was thinking
about what really is the point in having the registers in the QR code
as well. I guess that is something we could leave out, right?

>=20
> > One thing that we currently support and can be a solution is Micro QR
> > code. It removes two of the three coordinators and does some more
> > compression AFAIK. It might be possible to shuffle that into textmode.
>=20
> How widely do stock barcode reader apps support that?

No idea, but, sadly, mine does not support MicroQR. (At least it was
not able to read the MicroQR example found on Wikipedia). I have
NeoReader as a stock scanner.

Thanks,
    Levente Kurusa

--wac7ysb48OaltWcw
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iQEcBAEBAgAGBQJTdLaUAAoJELBqK2lO9dZBnvQH/0h2Ico/AvDiZkYkihEsemmx
CjvvMi/i/FtmMPl59SdsXyIc13HXOnBudNmlw+Gc+7Z7JVIxBD9+DAXUCxClO/zI
NpLq0iIqRJgB7381SarkQi1bkKC+C7As4LnHpmR8/trGyUhle6MeBTy21wbCP1uD
vQnO9K7YsxLptGzCM/322gwZawqigfMUSUU7VeQOcntBtziQwnJ6KAYbl5rcPerF
65D0GAGtwvbmp0URqZsLhGICVRyU3Hgv//EEdDibVkjlBsl/ajvewPqhcHbos2LZ
6JTRIHp7duG0KD85NudN5XCk4J2EaXijosk+pqLTTH5zxQCSwkKMJCi13NMcvPI=
=Tdk1
-----END PGP SIGNATURE-----

--wac7ysb48OaltWcw--
