Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6D0A12FA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 11 May 2014 21:49:35 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[95.142.166.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 33C4A1F9D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 11 May 2014 21:49:34 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Teodora =?utf-8?B?QsSDbHXFo8SD?= <teobaluta@gmail.com>
Date: Sun, 11 May 2014 23:49:32 +0200
Message-ID: <3518968.MnEXZBTKnT@avalon>
In-Reply-To: <CACV2jQACREM61UYrR0=AGDMQ8WYguwaX6HyPFR+wc5oXTRpheA@mail.gmail.com>
References: <20140511041449.GP12708@titan.lakedaemon.net>
	<20140511171824.GB2527@linux.com>
	<CACV2jQACREM61UYrR0=AGDMQ8WYguwaX6HyPFR+wc5oXTRpheA@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
Cc: PJ Waskiewicz <pjwaskiewicz@gmail.com>,
	Dirk Hohndel <hohndel@infradead.org>,
	ksummit-discuss@lists.linuxfoundation.org, Anton Arapov <arapov@gmail.com>,
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

Hi,

On Sunday 11 May 2014 20:52:12 Teodora B=C4=83lu=C5=A3=C4=83 wrote:
> On Sun, May 11, 2014 at 8:18 PM, Levente Kurusa <levex@linux.com> wro=
te:
> > On Sun, May 11, 2014 at 06:37:47PM +0200, Laurent Pinchart wrote:
> >> On Sunday 11 May 2014 18:29:18 Levente Kurusa wrote:
> >> > On Sun, May 11, 2014 at 08:57:01AM -0700, Sarah A Sharp wrote:
> >> > > On Sat, May 10, 2014 at 9:14 PM, Jason Cooper wrote:
> >> > > > All,
> >> > > >=20
> >> > > > I recently came across a patch series attempting to implemen=
t
> >> > > > encoding kernel oops into a QR code [1].  The QR code is the=
n
> >> > > > dumped to the
> >> > > >=20
> >> > > > framebuffer.  The QR code is a URL of the form:
> >> > > >   https://oops.kernel.org/?qr=3D<base64 compressed oops>
> >> > > >=20
> >> > > > This proposal is interesting because it fundamentally change=
s the
> >> > > > way users report bugs to the kernel community.  First and fo=
remost,
> >> > > > it makes it much easier.
> >> > > >=20
> >> > > >   1) oops occurs
> >> > > >   2) user pulls out phone, scans QR code
> >> > > >       - at this point, the oops is recorded on the server.  =
Nothing
> >> > > >         more is required of the user.
> >> >=20
> >> > To be precise, most scanners don't automatically open the links
> >> > found in QR codes and hence a tap/click from the user is require=
d. :-)
>=20
> That's correct, you still need a click, so maybe a special Android ap=
p
> could do the work so you don't need to turn the compressed oops into
> base64.
>=20
> >> > > >   optionally:
> >> > > >  =20
> >> > > >   3) user fills out a minimal web form
> >> > > >       - Name
> >> > > >       - email address (do you want to receive emails re this=
 oops?)
> >> > > >       - what were you doing when it occurred?
> >> > > >       - is it repeatable?
> >> > >=20
> >> > > By "web form", do you mean a new form or something that's part=
 of
> >> > > kerneloops.org?
> >> > >=20
> >> > > It would be great if we could allow users to open a new
> >> > > bugzilla.kernel.org entry for the oops.  I believe Teodora is =
working
> >> > > on an Android app that could do this.  Hopefully it could stor=
e
> >> > > information about the person's system, and pre-propagate the b=
ugzilla
> >> > > entry with this information.
>=20
> I am and I've got the part of scanning and decompressing the QR oops
> into text done. The way I see it, you may want to simply read the oop=
s
> on the phone or tablet so you should be able to keep a local history
> of Oops that you've scanned. You can add your profile information for=

> bugzilla.kernel.org and then set an option to automatically send Oops=

> messages you scanned or save them and send them later. I've sent an
> email to Konstantin, the maintainer of bugzilla.kernel.org, asking fo=
r
> more details on the actual sending of the Oops message.
>=20
> >> > Yes, opening a bugzilla entry might be a good idea if the user f=
ills
> >> > out the form. To be honest, I think for that to work we would ne=
ed to
> >> > clean up bugzilla a bit. I try to do some work there every now a=
nd
> >> > then, but nobody is closing the bugs I have fixed...
> >> >=20
> >> > Not sure about how would we create the bugzilla entry? I mean, w=
hich
> >> > section, urgency, etc. how would we decide on those solely based=
 on
> >> > the OOPS? Or should we ask the user to fill it out?
> >>=20
> >> Filling a complex form on a handheld device can be pretty tedious.=
 A two
> >> steps procedure that would allow entering long text on a real comp=
uter
> >> could be an interesting option.
>=20
> I think you could receive an email with a link to a partially
> completed bug report (which you sent when scanning the QR code) and
> follow that link on you computer to add stuff to your report. That'd
> be nice, wouldn't it?

Yes, that would do it I believe. It would also allow easier spam filter=
ing, as=20
oops submissions would need to be followed up by a user action before t=
he=20
bugzilla bug gets created.

> > Makes sense.
> >=20
> > What about only asking for an email address and then sending them
> > an automated message with a link where they can continue to add mor=
e
> > information to the report? (i.e. fill out the bugzilla)
>=20
> Indeed, if you have too much to fill in on your smartphone it could b=
e
> inefficient.
>=20
> > I guess we should also be careful with the bugzilla. We really don'=
t
> > want propertiary driver crashes added to the bugzilla automatically=
.
> > Nor do we want the same oops added twice, right? How would we
> > differentiate between the two - essentially the same - oopses?
> > Obviously, if we find two 'same' oopses then we can add the new
> > info to the old bug.
> >=20
> > Maybe add filter based on 'P' taint to solve the propertiary issue.=

> >=20
> > Oh and of course the email address thing would be optional.
> >=20
> >> > > > I recall discussing this with some RedHat devs at the 2012 K=
S, so I
> >> > > > know there is some interest in this capability.
> >> > > >=20
> >> > > > I'd be interested in having this as a tech topic for several=

> >> > > > reasons. First, to raise awareness of the project among the =
kernel
> >> > > > community (where did all these oops reports start coming fro=
m?).=20
> >> > > > Second, to solicit opinions on how to feed those oops report=
s into
> >> > > > the community. And last, to sit down with the maintainer of
> >> > > > oops.kernel.org and scope out what work needs to be done to =
support
> >> > > > this on the server side.
> >> > > >=20
> >> > > > Of course, all of this assumes the patches get accepted.  Th=
ere's
> >> > > > been no rejections so far, though. :)
> >> > > >=20
> >> > > > If accepted, I would expect the authors to be the ones leadi=
ng the
> >> > > > discussion (Levente, Teodora).
> >> > >=20
> >> > > I would recommend that Teodora lead the discussion, since this=
 is her
> >> > > project.  Levente has been provided helpful commentary and add=
itional
> >> > > patches, and should definitely participate in the discussion a=
s well.
>=20
> I think it'd be a great experience if I could hold a presentation! :)=

> The feedback was really great especially since this is a first for me=
!
>=20
> >> > I was just about to say that the order might not be the most cor=
rect.
> >> > :-)
> >> >=20
> >> > However, I am more than happy to help Teodora lead the discussio=
n if
> >> > she decides so.
> >> >=20
> >> > > > Nominations:
> >> > > >=20
> >> > > > Levente Kurusa <levex@linux.com>
> >> > > > Teodora B=C4=83lu=C5=A3=C4=83 <teobaluta@gmail.com>
> >> > > >=20
> >> > > > Relevant folks:
> >> > > >=20
> >> > > > Konstantin Ryabitsev <mricon@kernel.org>
> >> > > > Jason Cooper <jason@lakedaemon.net>             (auto-nomina=
ted)
> >> > >=20
> >> > > Another relevant person to include would be PJ Waskiewicz.  Te=
o
> >> > > worked on the QR code generator during her internship with the=
 FOSS
> >> > > Outreach Program for Women (OPW) and PJ was her mentor for the=

> >> > > project.
> >> > >=20
> >> > > You mentioned the kerneloops.org maintainer, but didn't list h=
im
> >> > > here?
> >> > >=20
> >> > >  Anton Arapov looks to be the maintainer, since he's the only
> >> > >=20
> >> > > contributor to the kerneloops.org github repo.
> >> > >=20
> >> > > The idea for the oops QR code generator came from Peter Anvin =
and
> >> > > Dirk Hohndel, so they may want to participate in the discussio=
n as
> >> > > well.

--=20
Regards,

Laurent Pinchart
