Return-Path: <ilevex.linux@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D38019A0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 20:00:48 +0000 (UTC)
Received: from mail-ee0-f44.google.com (mail-ee0-f44.google.com [74.125.83.44])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 449B220193
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 20:00:48 +0000 (UTC)
Received: by mail-ee0-f44.google.com with SMTP id c41so47114eek.31
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 13:00:46 -0700 (PDT)
Sender: Levente Kurusa <ilevex.linux@gmail.com>
Date: Wed, 14 May 2014 22:00:43 +0200
From: Levente Kurusa <levex@linux.com>
To: Josh Triplett <josh@joshtriplett.org>
Message-ID: <20140514200043.GA2516@linux.com>
References: <20140511162918.GA2527@linux.com> <1995824.rdvEX5SOIt@avalon>
	<20140511171824.GB2527@linux.com>
	<CACV2jQACREM61UYrR0=AGDMQ8WYguwaX6HyPFR+wc5oXTRpheA@mail.gmail.com>
	<20140512161539.GX12708@titan.lakedaemon.net>
	<CACV2jQCV=rRFg-+x1B3H1=GM5rB_YWp1UU1p7xXkozHKv1Ewvg@mail.gmail.com>
	<CACV2jQCPpi=18-CMCyhy3qdJgxgwBGKA=DDOWocVubqJWCU3rg@mail.gmail.com>
	<20140513070851.GA20002@thin> <53739333.30108@zytor.com>
	<20140514185449.GB4475@jtriplet-mobl1>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="J/dobhs11T7y2rNN"
Content-Disposition: inline
In-Reply-To: <20140514185449.GB4475@jtriplet-mobl1>
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


--J/dobhs11T7y2rNN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 14, 2014 at 11:54:49AM -0700, Josh Triplett wrote:
> On Wed, May 14, 2014 at 09:00:51AM -0700, H. Peter Anvin wrote:
> > On 05/13/2014 12:08 AM, Josh Triplett wrote:
> > >=20
> > > Many users will already have a QR-code scanning app installed, and su=
ch
> > > apps always support loading URLs in a browser.
> > >=20
> >=20
> > Let me disavow you of the notion that stock scanning apps handle large
> > QR symbols.
>=20
> That's certainly true.  On the other hand, I'd really like to see a
> version of the oops-as-QR-code bits that uses VGA block characters to
> work in non-graphics, non-framebuffer mode, which would require fitting
> in at most 80x50 (using the half-block characters).  That wouldn't allow
> nearly as much data, but likely enough for a somewhat useful crash
> report, especially in aggregate.

Not really possible, from my experiences the QR code that results from
a random oops is ranging from 100x100 to 150x150 depending on the size
of stack trace and stuff like that. Of course, we can decrease the
error recovery region and that might make it smaller. I'll take a look
at this a bit later. If that doesn't work, then that means that we can't
shuffle that into the textmode's 80x25. Not to mention that the block
characters in the ASCII table (I think you meant that, if not please
correct me) are not neccessarily square, which is needed for maximum
scannability.

One thing that we currently support and can be a solution is Micro QR
code. It removes two of the three coordinators and does some more
compression AFAIK. It might be possible to shuffle that into textmode.

I as well would love to support QR codes in textmode, but I think that
it's really not possible at the moment.

Thanks,
    Levente Kurusa

--J/dobhs11T7y2rNN
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iQEcBAEBAgAGBQJTc8trAAoJELBqK2lO9dZBof4H/1IZRMDhg09B9UoTEz0CYxiS
FyIm8ItkugIks9Hrw9moFKpqKYHgfBecuw5NKNpH2qa4vawqRlW4PTKqJSClD7ch
HJZj3HWABWSBJpQykUV51Bn2SmETxfIHN1ypzvHAu+YGUBGJLg9WERT7LbWGaZUK
1ujKllkFPUs8MnWrDcfXRhLICgL0Z3WMRT/nU9lSDQC3t33eBxDaGj2pA922qm08
8tYnMQPhY8aNkF9K0RZCpNtXpK7JIXZABHvpSIKqQqG290Uxc+QEs2052XXFdj11
5kDs5LOhk2ereO5KHNpAwCxWq57xDmq1YkvCg8zWJdN8N11eJKdik3j7upTQy+E=
=+/3Q
-----END PGP SIGNATURE-----

--J/dobhs11T7y2rNN--
