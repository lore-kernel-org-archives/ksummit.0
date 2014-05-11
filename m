Return-Path: <ilevex.linux@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 339912FA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 11 May 2014 17:18:31 +0000 (UTC)
Received: from mail-ee0-f50.google.com (mail-ee0-f50.google.com [74.125.83.50])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 135C41F89A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 11 May 2014 17:18:29 +0000 (UTC)
Received: by mail-ee0-f50.google.com with SMTP id e51so3944099eek.37
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 11 May 2014 10:18:28 -0700 (PDT)
Sender: Levente Kurusa <ilevex.linux@gmail.com>
Date: Sun, 11 May 2014 19:18:24 +0200
From: Levente Kurusa <levex@linux.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20140511171824.GB2527@linux.com>
References: <20140511041449.GP12708@titan.lakedaemon.net>
	<CABe+QzBVC=dRZO4+v93A_Cy2nFuf_ajcq8KO20f5PPzVUf2bkg@mail.gmail.com>
	<20140511162918.GA2527@linux.com> <1995824.rdvEX5SOIt@avalon>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="TRYliJ5NKNqkz5bu"
Content-Disposition: inline
In-Reply-To: <1995824.rdvEX5SOIt@avalon>
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


--TRYliJ5NKNqkz5bu
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sun, May 11, 2014 at 06:37:47PM +0200, Laurent Pinchart wrote:
> On Sunday 11 May 2014 18:29:18 Levente Kurusa wrote:
> > On Sun, May 11, 2014 at 08:57:01AM -0700, Sarah A Sharp wrote:
> > > On Sat, May 10, 2014 at 9:14 PM, Jason Cooper wrote:
> > > > All,
> > > >=20
> > > > I recently came across a patch series attempting to implement encod=
ing
> > > > kernel oops into a QR code [1].  The QR code is then dumped to the
> > > >=20
> > > > framebuffer.  The QR code is a URL of the form:
> > > >   https://oops.kernel.org/?qr=3D<base64 compressed oops>
> > > >=20
> > > > This proposal is interesting because it fundamentally changes the w=
ay
> > > > users report bugs to the kernel community.  First and foremost, it =
makes
> > > > it much easier.
> > > >=20
> > > >   1) oops occurs
> > > >   2) user pulls out phone, scans QR code
> > > >       - at this point, the oops is recorded on the server.  Nothing=
 more
> > > >         is required of the user.
> >=20
> > To be precise, most scanners don't automatically open the links
> > found in QR codes and hence a tap/click from the user is required. :-)
> >=20
> > > >   optionally:
> > > >  =20
> > > >   3) user fills out a minimal web form
> > > >       - Name
> > > >       - email address (do you want to receive emails re this oops?)
> > > >       - what were you doing when it occurred?
> > > >       - is it repeatable?
> > >=20
> > > By "web form", do you mean a new form or something that's part of
> > > kerneloops.org?
> > >=20
> > > It would be great if we could allow users to open a new
> > > bugzilla.kernel.org entry for the oops.  I believe Teodora is working
> > > on an Android app that could do this.  Hopefully it could store
> > > information about the person's system, and pre-propagate the bugzilla
> > > entry with this information.
> >=20
> > Yes, opening a bugzilla entry might be a good idea if the user fills
> > out the form. To be honest, I think for that to work we would need to
> > clean up bugzilla a bit. I try to do some work there every now and
> > then, but nobody is closing the bugs I have fixed...
> >=20
> > Not sure about how would we create the bugzilla entry? I mean, which
> > section, urgency, etc. how would we decide on those solely based on
> > the OOPS? Or should we ask the user to fill it out?
>=20
> Filling a complex form on a handheld device can be pretty tedious. A two =
steps=20
> procedure that would allow entering long text on a real computer could be=
 an=20
> interesting option.
>=20

Makes sense.

What about only asking for an email address and then sending them
an automated message with a link where they can continue to add more
information to the report? (i.e. fill out the bugzilla)

I guess we should also be careful with the bugzilla. We really don't
want propertiary driver crashes added to the bugzilla automatically.
Nor do we want the same oops added twice, right? How would we
differentiate between the two - essentially the same - oopses?
Obviously, if we find two 'same' oopses then we can add the new
info to the old bug.

Maybe add filter based on 'P' taint to solve the propertiary issue.

Oh and of course the email address thing would be optional.

> > > > I recall discussing this with some RedHat devs at the 2012 KS, so I=
 know
> > > > there is some interest in this capability.
> > > >=20
> > > > I'd be interested in having this as a tech topic for several reason=
s.
> > > > First, to raise awareness of the project among the kernel community
> > > > (where did all these oops reports start coming from?).  Second, to
> > > > solicit opinions on how to feed those oops reports into the communi=
ty.
> > > > And last, to sit down with the maintainer of oops.kernel.org and sc=
ope
> > > > out what work needs to be done to support this on the server side.
> > > >=20
> > > > Of course, all of this assumes the patches get accepted.  There's b=
een
> > > > no rejections so far, though. :)
> > > >=20
> > > > If accepted, I would expect the authors to be the ones leading the
> > > > discussion (Levente, Teodora).
> > >=20
> > > I would recommend that Teodora lead the discussion, since this is her
> > > project.  Levente has been provided helpful commentary and additional
> > > patches, and should definitely participate in the discussion as well.
> >=20
> > I was just about to say that the order might not be the most correct. :=
-)
> >=20
> > However, I am more than happy to help Teodora lead the discussion if
> > she decides so.
> >=20
> > > > Nominations:
> > > >=20
> > > > Levente Kurusa <levex@linux.com>
> > > > Teodora B=C4=83lu=C5=A3=C4=83 <teobaluta@gmail.com>
> > > >=20
> > > > Relevant folks:
> > > >=20
> > > > Konstantin Ryabitsev <mricon@kernel.org>
> > > > Jason Cooper <jason@lakedaemon.net>             (auto-nominated)
> > >=20
> > > Another relevant person to include would be PJ Waskiewicz.  Teo worked
> > > on the QR code generator during her internship with the FOSS Outreach
> > > Program for Women (OPW) and PJ was her mentor for the project.
> > >=20
> > > You mentioned the kerneloops.org maintainer, but didn't list him here?
> > >=20
> > >  Anton Arapov looks to be the maintainer, since he's the only
> > >=20
> > > contributor to the kerneloops.org github repo.
> > >=20
> > > The idea for the oops QR code generator came from Peter Anvin and Dirk
> > > Hohndel, so they may want to participate in the discussion as well.
>=20
> --=20
> Regards,
>=20
> Laurent Pinchart

Thanks,
    Levente Kurusa

--TRYliJ5NKNqkz5bu
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iQEcBAEBAgAGBQJTb7DgAAoJELBqK2lO9dZBuIoIAJRg67Appse5LZ+PVUuIBUxt
Js2og9FrTPTFQwp6C/zI+jpEWz8RuNlvsJnWDPvE/RFI19UfsMZrvadyzgxPkQzH
Ev/odx/nA439IDfKhnqNDgZGma8MXAQWNRMSFJAbvLtki2OLpnGHxSDa4PJy1E2K
UZTVS/m7xQsHXhVr62RReJjcEDMGkxfZS/g73Ifr52sGFO3vONe0EMB8nWS+ZaAL
vF8AxZY5LZaOiWLnT/a0yrjXoGuuAuDxxgfZBtyYe3mQyaA6jk7Rd1PCktrEnPqM
Gb/8DojQfp6FqemsjF6JUOHVAMV3pV5B+6vLXhasYFHShc5vtd2o6mUKE5e0lZM=
=ocgO
-----END PGP SIGNATURE-----

--TRYliJ5NKNqkz5bu--
