Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 06F43AB4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 15:46:47 +0000 (UTC)
Date: Mon, 12 May 2014 11:46:39 -0400
From: Jason Cooper <jason@lakedaemon.net>
To: Sarah A Sharp <sarah@thesharps.us>
Message-ID: <20140512154639.GV12708@titan.lakedaemon.net>
References: <20140511041449.GP12708@titan.lakedaemon.net>
	<CABe+QzBVC=dRZO4+v93A_Cy2nFuf_ajcq8KO20f5PPzVUf2bkg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CABe+QzBVC=dRZO4+v93A_Cy2nFuf_ajcq8KO20f5PPzVUf2bkg@mail.gmail.com>
Content-Transfer-Encoding: quoted-printable
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

On Sun, May 11, 2014 at 08:57:01AM -0700, Sarah A Sharp wrote:
> On Sat, May 10, 2014 at 9:14 PM, Jason Cooper <jason@lakedaemon.net> wr=
ote:
> > All,
> >
> > I recently came across a patch series attempting to implement encodin=
g
> > kernel oops into a QR code [1].  The QR code is then dumped to the
> > framebuffer.  The QR code is a URL of the form:
> >
> >   https://oops.kernel.org/?qr=3D<base64 compressed oops>
> >
> > This proposal is interesting because it fundamentally changes the way
> > users report bugs to the kernel community.  First and foremost, it ma=
kes
> > it much easier.
> >
> >   1) oops occurs
> >   2) user pulls out phone, scans QR code
> >       - at this point, the oops is recorded on the server.  Nothing m=
ore
> >         is required of the user.
> >
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

New form designed for mobile devices.  Based on current conversations,
I'm thinking a box for the email address, and a check-block for
receiving emails regarding the oops/bug.  Nothing more.  Well, maybe a
page title and a simple stat, "You're the XX person to report this oops"

An auto-generated email would contain a 'beginner' link, and a link to
the normal bugzilla login/form for those comfortable with that.

> It would be great if we could allow users to open a new
> bugzilla.kernel.org entry for the oops.

While I agree with the value of a bugzilla entry, I think we need to
keep in mind that we would be opening up oops reporting to a new class
of users.  iow, non-technical folks.

The workflow of an oops reporting should bear that in mind, as well as
any user interfaces along the way.

> I believe Teodora is working on an Android app that could do this.
> Hopefully it could store information about the person's system, and
> pre-propagate the bugzilla entry with this information.

The app is a nice option, but I'd like to keep it optional.  To me, the
first and foremost goal is to get the oops recorded on a kernel.org
system.  Dupes and all.  Anything that raises the barrier for
accomplishing that goal must be carefully considered and justified.

There's value in seeing the same oops has >100 reports, while another
oops has but one.  Once we have that raw data, what we do with it is the
topic worth discussing at KS.

> > I recall discussing this with some RedHat devs at the 2012 KS, so I k=
now
> > there is some interest in this capability.
> >
> > I'd be interested in having this as a tech topic for several reasons.
> > First, to raise awareness of the project among the kernel community
> > (where did all these oops reports start coming from?).  Second, to
> > solicit opinions on how to feed those oops reports into the community=
.
> > And last, to sit down with the maintainer of oops.kernel.org and scop=
e
> > out what work needs to be done to support this on the server side.
> >
> > Of course, all of this assumes the patches get accepted.  There's bee=
n
> > no rejections so far, though. :)
> >
> > If accepted, I would expect the authors to be the ones leading the
> > discussion (Levente, Teodora).
>=20
> I would recommend that Teodora lead the discussion, since this is her
> project.  Levente has been provided helpful commentary and additional
> patches, and should definitely participate in the discussion as well.

My mistake, I thought they were working together.  Of course Teodora
would have the lead.

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

Ack.

thx,

Jason.
