Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 43DA72FA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 11 May 2014 16:37:50 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[95.142.166.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E7F991FC59
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 11 May 2014 16:37:48 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Sun, 11 May 2014 18:37:47 +0200
Message-ID: <1995824.rdvEX5SOIt@avalon>
In-Reply-To: <20140511162918.GA2527@linux.com>
References: <20140511041449.GP12708@titan.lakedaemon.net>
	<CABe+QzBVC=dRZO4+v93A_Cy2nFuf_ajcq8KO20f5PPzVUf2bkg@mail.gmail.com>
	<20140511162918.GA2527@linux.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
Cc: PJ Waskiewicz <pjwaskiewicz@gmail.com>,
	Dirk Hohndel <hohndel@infradead.org>, Anton Arapov <arapov@gmail.com>,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] QR encoded oops for the kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sunday 11 May 2014 18:29:18 Levente Kurusa wrote:
> On Sun, May 11, 2014 at 08:57:01AM -0700, Sarah A Sharp wrote:
> > On Sat, May 10, 2014 at 9:14 PM, Jason Cooper wrote:
> > > All,
> > >=20
> > > I recently came across a patch series attempting to implement enc=
oding
> > > kernel oops into a QR code [1].  The QR code is then dumped to th=
e
> > >=20
> > > framebuffer.  The QR code is a URL of the form:
> > >   https://oops.kernel.org/?qr=3D<base64 compressed oops>
> > >=20
> > > This proposal is interesting because it fundamentally changes the=
 way
> > > users report bugs to the kernel community.  First and foremost, i=
t makes
> > > it much easier.
> > >=20
> > >   1) oops occurs
> > >   2) user pulls out phone, scans QR code
> > >       - at this point, the oops is recorded on the server.  Nothi=
ng more
> > >         is required of the user.
>=20
> To be precise, most scanners don't automatically open the links
> found in QR codes and hence a tap/click from the user is required. :-=
)
>=20
> > >   optionally:
> > >  =20
> > >   3) user fills out a minimal web form
> > >       - Name
> > >       - email address (do you want to receive emails re this oops=
?)
> > >       - what were you doing when it occurred?
> > >       - is it repeatable?
> >=20
> > By "web form", do you mean a new form or something that's part of
> > kerneloops.org?
> >=20
> > It would be great if we could allow users to open a new
> > bugzilla.kernel.org entry for the oops.  I believe Teodora is worki=
ng
> > on an Android app that could do this.  Hopefully it could store
> > information about the person's system, and pre-propagate the bugzil=
la
> > entry with this information.
>=20
> Yes, opening a bugzilla entry might be a good idea if the user fills
> out the form. To be honest, I think for that to work we would need to=

> clean up bugzilla a bit. I try to do some work there every now and
> then, but nobody is closing the bugs I have fixed...
>=20
> Not sure about how would we create the bugzilla entry? I mean, which
> section, urgency, etc. how would we decide on those solely based on
> the OOPS? Or should we ask the user to fill it out?

Filling a complex form on a handheld device can be pretty tedious. A tw=
o steps=20
procedure that would allow entering long text on a real computer could =
be an=20
interesting option.

> > > I recall discussing this with some RedHat devs at the 2012 KS, so=
 I know
> > > there is some interest in this capability.
> > >=20
> > > I'd be interested in having this as a tech topic for several reas=
ons.
> > > First, to raise awareness of the project among the kernel communi=
ty
> > > (where did all these oops reports start coming from?).  Second, t=
o
> > > solicit opinions on how to feed those oops reports into the commu=
nity.
> > > And last, to sit down with the maintainer of oops.kernel.org and =
scope
> > > out what work needs to be done to support this on the server side=
.
> > >=20
> > > Of course, all of this assumes the patches get accepted.  There's=
 been
> > > no rejections so far, though. :)
> > >=20
> > > If accepted, I would expect the authors to be the ones leading th=
e
> > > discussion (Levente, Teodora).
> >=20
> > I would recommend that Teodora lead the discussion, since this is h=
er
> > project.  Levente has been provided helpful commentary and addition=
al
> > patches, and should definitely participate in the discussion as wel=
l.
>=20
> I was just about to say that the order might not be the most correct.=
 :-)
>=20
> However, I am more than happy to help Teodora lead the discussion if
> she decides so.
>=20
> > > Nominations:
> > >=20
> > > Levente Kurusa <levex@linux.com>
> > > Teodora B=C4=83lu=C5=A3=C4=83 <teobaluta@gmail.com>
> > >=20
> > > Relevant folks:
> > >=20
> > > Konstantin Ryabitsev <mricon@kernel.org>
> > > Jason Cooper <jason@lakedaemon.net>             (auto-nominated)
> >=20
> > Another relevant person to include would be PJ Waskiewicz.  Teo wor=
ked
> > on the QR code generator during her internship with the FOSS Outrea=
ch
> > Program for Women (OPW) and PJ was her mentor for the project.
> >=20
> > You mentioned the kerneloops.org maintainer, but didn't list him he=
re?
> >=20
> >  Anton Arapov looks to be the maintainer, since he's the only
> >=20
> > contributor to the kerneloops.org github repo.
> >=20
> > The idea for the oops QR code generator came from Peter Anvin and D=
irk
> > Hohndel, so they may want to participate in the discussion as well.=


--=20
Regards,

Laurent Pinchart
