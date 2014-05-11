Return-Path: <teobaluta@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 0F49A3C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 11 May 2014 17:52:14 +0000 (UTC)
Received: from mail-qg0-f42.google.com (mail-qg0-f42.google.com
	[209.85.192.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DFB421FA42
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 11 May 2014 17:52:12 +0000 (UTC)
Received: by mail-qg0-f42.google.com with SMTP id q107so6742865qgd.15
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 11 May 2014 10:52:12 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140511171824.GB2527@linux.com>
References: <20140511041449.GP12708@titan.lakedaemon.net>
	<CABe+QzBVC=dRZO4+v93A_Cy2nFuf_ajcq8KO20f5PPzVUf2bkg@mail.gmail.com>
	<20140511162918.GA2527@linux.com> <1995824.rdvEX5SOIt@avalon>
	<20140511171824.GB2527@linux.com>
Date: Sun, 11 May 2014 20:52:12 +0300
Message-ID: <CACV2jQACREM61UYrR0=AGDMQ8WYguwaX6HyPFR+wc5oXTRpheA@mail.gmail.com>
From: =?UTF-8?B?VGVvZG9yYSBCxINsdcWjxIM=?= <teobaluta@gmail.com>
To: Levente Kurusa <levex@linux.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
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

On Sun, May 11, 2014 at 8:18 PM, Levente Kurusa <levex@linux.com> wrote:
> Hi,
>
> On Sun, May 11, 2014 at 06:37:47PM +0200, Laurent Pinchart wrote:
>> On Sunday 11 May 2014 18:29:18 Levente Kurusa wrote:
>> > On Sun, May 11, 2014 at 08:57:01AM -0700, Sarah A Sharp wrote:
>> > > On Sat, May 10, 2014 at 9:14 PM, Jason Cooper wrote:
>> > > > All,
>> > > >
>> > > > I recently came across a patch series attempting to implement enco=
ding
>> > > > kernel oops into a QR code [1].  The QR code is then dumped to the
>> > > >
>> > > > framebuffer.  The QR code is a URL of the form:
>> > > >   https://oops.kernel.org/?qr=3D<base64 compressed oops>
>> > > >
>> > > > This proposal is interesting because it fundamentally changes the =
way
>> > > > users report bugs to the kernel community.  First and foremost, it=
 makes
>> > > > it much easier.
>> > > >
>> > > >   1) oops occurs
>> > > >   2) user pulls out phone, scans QR code
>> > > >       - at this point, the oops is recorded on the server.  Nothin=
g more
>> > > >         is required of the user.
>> >
>> > To be precise, most scanners don't automatically open the links
>> > found in QR codes and hence a tap/click from the user is required. :-)

That's correct, you still need a click, so maybe a special Android app
could do the work so you don't need to turn the compressed oops into
base64.

>> >
>> > > >   optionally:
>> > > >
>> > > >   3) user fills out a minimal web form
>> > > >       - Name
>> > > >       - email address (do you want to receive emails re this oops?=
)
>> > > >       - what were you doing when it occurred?
>> > > >       - is it repeatable?
>> > >
>> > > By "web form", do you mean a new form or something that's part of
>> > > kerneloops.org?
>> > >
>> > > It would be great if we could allow users to open a new
>> > > bugzilla.kernel.org entry for the oops.  I believe Teodora is workin=
g
>> > > on an Android app that could do this.  Hopefully it could store
>> > > information about the person's system, and pre-propagate the bugzill=
a
>> > > entry with this information.

I am and I've got the part of scanning and decompressing the QR oops
into text done. The way I see it, you may want to simply read the oops
on the phone or tablet so you should be able to keep a local history
of Oops that you've scanned. You can add your profile information for
bugzilla.kernel.org and then set an option to automatically send Oops
messages you scanned or save them and send them later. I've sent an
email to Konstantin, the maintainer of bugzilla.kernel.org, asking for
more details on the actual sending of the Oops message.

>> >
>> > Yes, opening a bugzilla entry might be a good idea if the user fills
>> > out the form. To be honest, I think for that to work we would need to
>> > clean up bugzilla a bit. I try to do some work there every now and
>> > then, but nobody is closing the bugs I have fixed...
>> >
>> > Not sure about how would we create the bugzilla entry? I mean, which
>> > section, urgency, etc. how would we decide on those solely based on
>> > the OOPS? Or should we ask the user to fill it out?
>>
>> Filling a complex form on a handheld device can be pretty tedious. A two=
 steps
>> procedure that would allow entering long text on a real computer could b=
e an
>> interesting option.

I think you could receive an email with a link to a partially
completed bug report (which you sent when scanning the QR code) and
follow that link on you computer to add stuff to your report. That'd
be nice, wouldn't it?

>>
>
> Makes sense.
>
> What about only asking for an email address and then sending them
> an automated message with a link where they can continue to add more
> information to the report? (i.e. fill out the bugzilla)

Indeed, if you have too much to fill in on your smartphone it could be
inefficient.

>
> I guess we should also be careful with the bugzilla. We really don't
> want propertiary driver crashes added to the bugzilla automatically.
> Nor do we want the same oops added twice, right? How would we
> differentiate between the two - essentially the same - oopses?
> Obviously, if we find two 'same' oopses then we can add the new
> info to the old bug.
>
> Maybe add filter based on 'P' taint to solve the propertiary issue.
>
> Oh and of course the email address thing would be optional.
>
>> > > > I recall discussing this with some RedHat devs at the 2012 KS, so =
I know
>> > > > there is some interest in this capability.
>> > > >
>> > > > I'd be interested in having this as a tech topic for several reaso=
ns.
>> > > > First, to raise awareness of the project among the kernel communit=
y
>> > > > (where did all these oops reports start coming from?).  Second, to
>> > > > solicit opinions on how to feed those oops reports into the commun=
ity.
>> > > > And last, to sit down with the maintainer of oops.kernel.org and s=
cope
>> > > > out what work needs to be done to support this on the server side.
>> > > >
>> > > > Of course, all of this assumes the patches get accepted.  There's =
been
>> > > > no rejections so far, though. :)
>> > > >
>> > > > If accepted, I would expect the authors to be the ones leading the
>> > > > discussion (Levente, Teodora).
>> > >
>> > > I would recommend that Teodora lead the discussion, since this is he=
r
>> > > project.  Levente has been provided helpful commentary and additiona=
l
>> > > patches, and should definitely participate in the discussion as well=
.

I think it'd be a great experience if I could hold a presentation! :)
The feedback was really great especially since this is a first for me!

>> >
>> > I was just about to say that the order might not be the most correct. =
:-)
>> >
>> > However, I am more than happy to help Teodora lead the discussion if
>> > she decides so.
>> >
>> > > > Nominations:
>> > > >
>> > > > Levente Kurusa <levex@linux.com>
>> > > > Teodora B=C4=83lu=C5=A3=C4=83 <teobaluta@gmail.com>
>> > > >
>> > > > Relevant folks:
>> > > >
>> > > > Konstantin Ryabitsev <mricon@kernel.org>
>> > > > Jason Cooper <jason@lakedaemon.net>             (auto-nominated)
>> > >
>> > > Another relevant person to include would be PJ Waskiewicz.  Teo work=
ed
>> > > on the QR code generator during her internship with the FOSS Outreac=
h
>> > > Program for Women (OPW) and PJ was her mentor for the project.
>> > >
>> > > You mentioned the kerneloops.org maintainer, but didn't list him her=
e?
>> > >
>> > >  Anton Arapov looks to be the maintainer, since he's the only
>> > >
>> > > contributor to the kerneloops.org github repo.
>> > >
>> > > The idea for the oops QR code generator came from Peter Anvin and Di=
rk
>> > > Hohndel, so they may want to participate in the discussion as well.
>>

Thanks,
Teodora
