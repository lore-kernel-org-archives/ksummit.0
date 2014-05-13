Return-Path: <ilevex.linux@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id EE5549B1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 15:52:12 +0000 (UTC)
Received: from mail-ee0-f54.google.com (mail-ee0-f54.google.com [74.125.83.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 557792020C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 15:52:12 +0000 (UTC)
Received: by mail-ee0-f54.google.com with SMTP id b57so551950eek.41
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 08:52:10 -0700 (PDT)
Sender: Levente Kurusa <ilevex.linux@gmail.com>
Date: Tue, 13 May 2014 17:52:07 +0200
From: Levente Kurusa <levex@linux.com>
To: Josh Triplett <josh@joshtriplett.org>,
	Teodora =?utf-8?B?QsSDbHXFo8SD?= <teobaluta@gmail.com>
Message-ID: <20140513155207.GA3538@linux.com>
References: <20140511041449.GP12708@titan.lakedaemon.net>
	<CABe+QzBVC=dRZO4+v93A_Cy2nFuf_ajcq8KO20f5PPzVUf2bkg@mail.gmail.com>
	<20140511162918.GA2527@linux.com> <1995824.rdvEX5SOIt@avalon>
	<20140511171824.GB2527@linux.com>
	<CACV2jQACREM61UYrR0=AGDMQ8WYguwaX6HyPFR+wc5oXTRpheA@mail.gmail.com>
	<20140512161539.GX12708@titan.lakedaemon.net>
	<CACV2jQCV=rRFg-+x1B3H1=GM5rB_YWp1UU1p7xXkozHKv1Ewvg@mail.gmail.com>
	<CACV2jQCPpi=18-CMCyhy3qdJgxgwBGKA=DDOWocVubqJWCU3rg@mail.gmail.com>
	<20140513070851.GA20002@thin>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="h31gzZEtNLTqOjlF"
Content-Disposition: inline
In-Reply-To: <20140513070851.GA20002@thin>
Cc: PJ Waskiewicz <pjwaskiewicz@gmail.com>, Anton Arapov <arapov@gmail.com>,
	Dirk Hohndel <hohndel@infradead.org>,
	ksummit-discuss@lists.linuxfoundation.org,
	Sarah A Sharp <sarah@minilop.net>
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


--h31gzZEtNLTqOjlF
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, May 13, 2014 at 12:08:51AM -0700, Josh Triplett wrote:
> On Tue, May 13, 2014 at 09:44:26AM +0300, Teodora B=C4=83lu=C5=A3=C4=83 w=
rote:
> > On Mon, May 12, 2014 at 7:15 PM, Jason Cooper <jason@lakedaemon.net> wr=
ote:
> > > I'd like the URL to be valid (meaning base64 the compressed data) so
> > > that we can get the data to the kernel.org server as easily as possib=
le.
> > > Making the app a requirement for reporting is too onerous for
> > > non-developers.  I see no reason we can't link to (Open in/Install) it
> > > on the webform though.
> >=20
> > So from what I can understand, the QR code has an URL that has the
> > base64 of the compressed Oops message. Right? I see three problems
> > with this approach:
> >=20
> > - base64 adds about 33% overhead (it's turning 3 octets into 4 encoded
> > characters + padding). One issue with QR codes is that they have a
> > limited amount of characters they can hold so that's why I do the
> > compression in the first place
>=20
> Putting base64-encoded data in a URL in a binary-format QR code with 8
> bits per character does indeed waste quite a bit of space.  However, you
> could put base32-encoded data into an alphanumeric-formatted QR code
> with 5.5 bits per character, which would waste very little space.  (Or,
> more efficiently but less conveniently, base40 or so.)
>=20

Base32 does sound good until you realize that it requires roughly 20%
more space than Base64 does. We would need some calculations to
decide if we were to go down this path.

> > - besides doing compression in a kernel that's had issues, you add the
> > base64 encoding inside the kernel
> > - you would still use a device with a camera (smartphone, tablet) to
> > scan the QR from the framebuffer, so basically that means an app,
> > right? What is the point of doing the URL validation inside the kernel
> > when an app can do that? It doesn't add to the difficulty of sending
> > the Oops to kernel.org (just one button away)
>=20
> Many users will already have a QR-code scanning app installed, and such
> apps always support loading URLs in a browser.
>=20

Yes, and having them the requirement of installing an app might make
people turn their heads away from reporting the bug.

> Another possibility to consider: current mobile browsers support the
> HTML Media Capture API, which allows capturing an image from the camera
> from within a file upload control.  Together with a bit of Javascript,
> that would allow app-less oops capturing just by visiting a page and
> using that page to capture the oops image.

I guess this is another way to go provided that devices really do
support it. As far as my device goes it's totally not working. :-)
(Android 2.3.7)

Thanks,
    Levente Kurusa

--h31gzZEtNLTqOjlF
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iQEcBAEBAgAGBQJTcj+mAAoJELBqK2lO9dZB+aQIAIjvuf1ut4FOK/N/N5vKtdLN
qQwq0yv+dGRUrZuyW++gnieU6EyG+QP0hl1CQGtBQTcx4KU39YxQUYLFAeiB+nPv
80oBCa5jR31V4uLeFTiubsekzZ6EhqO05OBuDektaZWXZVSnDYmMFbOBNgEPdmKU
ZZLdz1tdYErI6GCLdd1RhSZbuEk4l3GriIMbvhUmykXw8l++jZGb6OqbQpPzGMSu
eo14YLTa06XfgIOrIX0s/vGvYIELdGau0jVKIYTDgy7NiePaYpmAGRcmshGvUtl3
l07ru/6ngN067aWGbSQvgoh5qq8A5eIHVVW4U30zzpChW+Kq+f1/WVyCTZpdfj0=
=OkGt
-----END PGP SIGNATURE-----

--h31gzZEtNLTqOjlF--
