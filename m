Return-Path: <ilevex.linux@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D510E2FA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 16:36:49 +0000 (UTC)
Received: from mail-ee0-f50.google.com (mail-ee0-f50.google.com [74.125.83.50])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7502520308
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 16:36:48 +0000 (UTC)
Received: by mail-ee0-f50.google.com with SMTP id e51so4854622eek.23
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 09:36:47 -0700 (PDT)
Sender: Levente Kurusa <ilevex.linux@gmail.com>
Date: Mon, 12 May 2014 18:36:43 +0200
From: Levente Kurusa <levex@linux.com>
To: Jason Cooper <jason@lakedaemon.net>
Message-ID: <20140512163643.GA3509@linux.com>
References: <20140511041449.GP12708@titan.lakedaemon.net>
	<CABe+QzBVC=dRZO4+v93A_Cy2nFuf_ajcq8KO20f5PPzVUf2bkg@mail.gmail.com>
	<20140511162918.GA2527@linux.com> <1995824.rdvEX5SOIt@avalon>
	<20140511171824.GB2527@linux.com>
	<CACV2jQACREM61UYrR0=AGDMQ8WYguwaX6HyPFR+wc5oXTRpheA@mail.gmail.com>
	<20140512161539.GX12708@titan.lakedaemon.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="cNdxnHkX5QqsyA0e"
Content-Disposition: inline
In-Reply-To: <20140512161539.GX12708@titan.lakedaemon.net>
Cc: PJ Waskiewicz <pjwaskiewicz@gmail.com>,
	Dirk Hohndel <hohndel@infradead.org>,
	ksummit-discuss@lists.linuxfoundation.org, Anton Arapov <arapov@gmail.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] QR encoded oops for the kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--cNdxnHkX5QqsyA0e
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, May 12, 2014 at 12:15:39PM -0400, Jason Cooper wrote:
> On Sun, May 11, 2014 at 08:52:12PM +0300, Teodora B=C4=83lu=C5=A3=C4=83 w=
rote:
> > On Sun, May 11, 2014 at 8:18 PM, Levente Kurusa <levex@linux.com> wrote:
> > > On Sun, May 11, 2014 at 06:37:47PM +0200, Laurent Pinchart wrote:
> > >> On Sunday 11 May 2014 18:29:18 Levente Kurusa wrote:
> > >> > On Sun, May 11, 2014 at 08:57:01AM -0700, Sarah A Sharp wrote:
> > >> > > On Sat, May 10, 2014 at 9:14 PM, Jason Cooper wrote:
> > >> > > > All,
> > >> > > >
> > >> > > > I recently came across a patch series attempting to implement =
encoding
> > >> > > > kernel oops into a QR code [1].  The QR code is then dumped to=
 the
> > >> > > >
> > >> > > > framebuffer.  The QR code is a URL of the form:
> > >> > > >   https://oops.kernel.org/?qr=3D<base64 compressed oops>
> > >> > > >
> > >> > > > This proposal is interesting because it fundamentally changes =
the way
> > >> > > > users report bugs to the kernel community.  First and foremost=
, it makes
> > >> > > > it much easier.
> > >> > > >
> > >> > > >   1) oops occurs
> > >> > > >   2) user pulls out phone, scans QR code
> > >> > > >       - at this point, the oops is recorded on the server.  No=
thing more
> > >> > > >         is required of the user.
> > >> >
> > >> > To be precise, most scanners don't automatically open the links
> > >> > found in QR codes and hence a tap/click from the user is required.=
 :-)
> >=20
> > That's correct, you still need a click, so maybe a special Android app
> > could do the work so you don't need to turn the compressed oops into
> > base64.
>=20
> I'd like the URL to be valid (meaning base64 the compressed data) so
> that we can get the data to the kernel.org server as easily as possible.
> Making the app a requirement for reporting is too onerous for
> non-developers.  I see no reason we can't link to (Open in/Install) it
> on the webform though.

+1, the app is a good idea but shouldn't at all be mandatory. If we
add that as a requirement people might just get lazy and don't
download the app at which point we lose the report. Of course,
adding the app as a plus is a great idea, since then the geeky people
can take a look at what really happenned if the QR code has messed up
their stack traces or whatever they see on their screen.

>=20
> I see your app as a great tool for people developing the kernel or
> curious about what happened, but there will be a significant number of
> users who don't develop (possibly anything) who won't go to the effort
> to install an app just to help us out.  Knowing how many of those folks
> are affected by the bug is, imho, a very important data point when
> triaging bugs.

Yup, I think it's almost the same as with requiring the user to fill
out a long seemingly endless form. Let's be as small as we can, while
having the possibility of adding more and more data.

>=20
> Even though these 'users' don't talk on lkml, they *do* exist.  And they
> say mean things like "Linux crashes on my $LAPTOP, it sucks."  I'd rather
> not have to get a facebook account to learn that. :)

If only, I had counted how many bad quality photos of people's screens
did I get so far. :-)

Thanks,
    Levente Kurusa

--cNdxnHkX5QqsyA0e
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iQEcBAEBAgAGBQJTcPibAAoJELBqK2lO9dZBedQIALGJcmJNKpEVWGS/AFSvLGWK
S5mkg3lH0CI/DgsDATPjkT/jWuW+iok1VDiyM4oVilqwtk2n56lv7LsamYrgHsWv
/TDPvbCSCJv35MBROeLBDGSSh2aeADUESUg0n5cmzrZFTYL6b6GeDOMFgwTc3pkz
NoGeK+qblPdrHmUOmcuQdOEm9pge5NO/ZtV5N9s4b1muZOwidZtMS/FNdjITOzTx
n0jVtsOzQkXpm5HkEmJWs/uPASos2Kt5BX9JDbCqsO1QfpcN3H/sYIaJKrXAT5sd
eZ4L2652WEHLkz/X0Y/F2ckIGWrwQ7Lt2h+BdAYg7BcXexVss1DMoMswRO3i/bs=
=81+y
-----END PGP SIGNATURE-----

--cNdxnHkX5QqsyA0e--
