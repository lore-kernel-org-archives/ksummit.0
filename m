Return-Path: <ilevex.linux@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id EEFEA2FA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 11 May 2014 16:29:25 +0000 (UTC)
Received: from mail-ee0-f49.google.com (mail-ee0-f49.google.com [74.125.83.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 122E91F968
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 11 May 2014 16:29:24 +0000 (UTC)
Received: by mail-ee0-f49.google.com with SMTP id e53so3951979eek.8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 11 May 2014 09:29:23 -0700 (PDT)
Sender: Levente Kurusa <ilevex.linux@gmail.com>
Date: Sun, 11 May 2014 18:29:18 +0200
From: Levente Kurusa <levex@linux.com>
To: Sarah A Sharp <sarah@thesharps.us>
Message-ID: <20140511162918.GA2527@linux.com>
References: <20140511041449.GP12708@titan.lakedaemon.net>
	<CABe+QzBVC=dRZO4+v93A_Cy2nFuf_ajcq8KO20f5PPzVUf2bkg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="+QahgC5+KEYLbs62"
Content-Disposition: inline
In-Reply-To: <CABe+QzBVC=dRZO4+v93A_Cy2nFuf_ajcq8KO20f5PPzVUf2bkg@mail.gmail.com>
Cc: PJ Waskiewicz <pjwaskiewicz@gmail.com>, Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org, Anton Arapov <arapov@gmail.com>,
	Dirk Hohndel <hohndel@infradead.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] QR encoded oops for the kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--+QahgC5+KEYLbs62
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sun, May 11, 2014 at 08:57:01AM -0700, Sarah A Sharp wrote:
> On Sat, May 10, 2014 at 9:14 PM, Jason Cooper <jason@lakedaemon.net> wrot=
e:
> > All,
> >
> > I recently came across a patch series attempting to implement encoding
> > kernel oops into a QR code [1].  The QR code is then dumped to the
> > framebuffer.  The QR code is a URL of the form:
> >
> >   https://oops.kernel.org/?qr=3D<base64 compressed oops>
> >
> > This proposal is interesting because it fundamentally changes the way
> > users report bugs to the kernel community.  First and foremost, it makes
> > it much easier.
> >
> >   1) oops occurs
> >   2) user pulls out phone, scans QR code
> >       - at this point, the oops is recorded on the server.  Nothing more
> >         is required of the user.
> >

To be precise, most scanners don't automatically open the links
found in QR codes and hence a tap/click from the user is required. :-)

> >   optionally:
> >
> >   3) user fills out a minimal web form
> >       - Name
> >       - email address (do you want to receive emails re this oops?)
> >       - what were you doing when it occurred?
> >       - is it repeatable?
>=20
> By "web form", do you mean a new form or something that's part of
> kerneloops.org?
>=20
> It would be great if we could allow users to open a new
> bugzilla.kernel.org entry for the oops.  I believe Teodora is working
> on an Android app that could do this.  Hopefully it could store
> information about the person's system, and pre-propagate the bugzilla
> entry with this information.
>=20

Yes, opening a bugzilla entry might be a good idea if the user fills
out the form. To be honest, I think for that to work we would need to
clean up bugzilla a bit. I try to do some work there every now and
then, but nobody is closing the bugs I have fixed...

Not sure about how would we create the bugzilla entry? I mean, which
section, urgency, etc. how would we decide on those solely based on
the OOPS? Or should we ask the user to fill it out?

> > I recall discussing this with some RedHat devs at the 2012 KS, so I know
> > there is some interest in this capability.
> >
> > I'd be interested in having this as a tech topic for several reasons.
> > First, to raise awareness of the project among the kernel community
> > (where did all these oops reports start coming from?).  Second, to
> > solicit opinions on how to feed those oops reports into the community.
> > And last, to sit down with the maintainer of oops.kernel.org and scope
> > out what work needs to be done to support this on the server side.
> >
> > Of course, all of this assumes the patches get accepted.  There's been
> > no rejections so far, though. :)
> >
> > If accepted, I would expect the authors to be the ones leading the
> > discussion (Levente, Teodora).
>=20
> I would recommend that Teodora lead the discussion, since this is her
> project.  Levente has been provided helpful commentary and additional
> patches, and should definitely participate in the discussion as well.
>=20

I was just about to say that the order might not be the most correct. :-)

However, I am more than happy to help Teodora lead the discussion if
she decides so.

> > Nominations:
> >
> > Levente Kurusa <levex@linux.com>
> > Teodora B=C4=83lu=C5=A3=C4=83 <teobaluta@gmail.com>
> >
> > Relevant folks:
> >
> > Konstantin Ryabitsev <mricon@kernel.org>
> > Jason Cooper <jason@lakedaemon.net>             (auto-nominated)
>=20
> Another relevant person to include would be PJ Waskiewicz.  Teo worked
> on the QR code generator during her internship with the FOSS Outreach
> Program for Women (OPW) and PJ was her mentor for the project.
>=20
> You mentioned the kerneloops.org maintainer, but didn't list him here?
>  Anton Arapov looks to be the maintainer, since he's the only
> contributor to the kerneloops.org github repo.
>=20
> The idea for the oops QR code generator came from Peter Anvin and Dirk
> Hohndel, so they may want to participate in the discussion as well.
>=20
> Sarah Sharp

Thanks,
Levente Kurusa

--+QahgC5+KEYLbs62
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iQEcBAEBAgAGBQJTb6VeAAoJELBqK2lO9dZBYZMH/32zSet0N2hyAoZIpEATt9+J
PtVSenN5UzfxB6SFFqpeJQ2qqVjVTNKJcOXiaGXE1lQKRTeEoYxR7i3SqdOZ7g/6
Sb0jRqsAGhW37mQUCwMyIPts0MXLXWWqMnVJz0LHmuhTHew7/vvbTx0puGurunZ+
WM49GyiD4wkju/wliLKNs94NiNkT8U8dSpyNeb2aryeBTOdtZoBGI63Xmyi0364S
K88/5kj/f+LjhtLFDMbju0HzD2TMftETgNzLqX0uLwEOoMP1CZOjDY+Z+c7gw3o+
o6XkKffmnaeTatcyj7BB5zr4GmYpStMEW+QDhCGmVs1Kyeygo92y+WlfnseUiF4=
=IOhy
-----END PGP SIGNATURE-----

--+QahgC5+KEYLbs62--
