Return-Path: <saharabeara@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D61763C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 11 May 2014 15:57:03 +0000 (UTC)
Received: from mail-ig0-f172.google.com (mail-ig0-f172.google.com
	[209.85.213.172])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 64B2B1FA9C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 11 May 2014 15:57:02 +0000 (UTC)
Received: by mail-ig0-f172.google.com with SMTP id uy17so2925641igb.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 11 May 2014 08:57:01 -0700 (PDT)
MIME-Version: 1.0
Sender: saharabeara@gmail.com
In-Reply-To: <20140511041449.GP12708@titan.lakedaemon.net>
References: <20140511041449.GP12708@titan.lakedaemon.net>
Date: Sun, 11 May 2014 08:57:01 -0700
Message-ID: <CABe+QzBVC=dRZO4+v93A_Cy2nFuf_ajcq8KO20f5PPzVUf2bkg@mail.gmail.com>
From: Sarah A Sharp <sarah@thesharps.us>
To: Jason Cooper <jason@lakedaemon.net>
Content-Type: text/plain; charset=UTF-8
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

On Sat, May 10, 2014 at 9:14 PM, Jason Cooper <jason@lakedaemon.net> wrote:
> All,
>
> I recently came across a patch series attempting to implement encoding
> kernel oops into a QR code [1].  The QR code is then dumped to the
> framebuffer.  The QR code is a URL of the form:
>
>   https://oops.kernel.org/?qr=3D<base64 compressed oops>
>
> This proposal is interesting because it fundamentally changes the way
> users report bugs to the kernel community.  First and foremost, it makes
> it much easier.
>
>   1) oops occurs
>   2) user pulls out phone, scans QR code
>       - at this point, the oops is recorded on the server.  Nothing more
>         is required of the user.
>
>   optionally:
>
>   3) user fills out a minimal web form
>       - Name
>       - email address (do you want to receive emails re this oops?)
>       - what were you doing when it occurred?
>       - is it repeatable?

By "web form", do you mean a new form or something that's part of
kerneloops.org?

It would be great if we could allow users to open a new
bugzilla.kernel.org entry for the oops.  I believe Teodora is working
on an Android app that could do this.  Hopefully it could store
information about the person's system, and pre-propagate the bugzilla
entry with this information.

> I recall discussing this with some RedHat devs at the 2012 KS, so I know
> there is some interest in this capability.
>
> I'd be interested in having this as a tech topic for several reasons.
> First, to raise awareness of the project among the kernel community
> (where did all these oops reports start coming from?).  Second, to
> solicit opinions on how to feed those oops reports into the community.
> And last, to sit down with the maintainer of oops.kernel.org and scope
> out what work needs to be done to support this on the server side.
>
> Of course, all of this assumes the patches get accepted.  There's been
> no rejections so far, though. :)
>
> If accepted, I would expect the authors to be the ones leading the
> discussion (Levente, Teodora).

I would recommend that Teodora lead the discussion, since this is her
project.  Levente has been provided helpful commentary and additional
patches, and should definitely participate in the discussion as well.

> Nominations:
>
> Levente Kurusa <levex@linux.com>
> Teodora B=C4=83lu=C5=A3=C4=83 <teobaluta@gmail.com>
>
> Relevant folks:
>
> Konstantin Ryabitsev <mricon@kernel.org>
> Jason Cooper <jason@lakedaemon.net>             (auto-nominated)

Another relevant person to include would be PJ Waskiewicz.  Teo worked
on the QR code generator during her internship with the FOSS Outreach
Program for Women (OPW) and PJ was her mentor for the project.

You mentioned the kerneloops.org maintainer, but didn't list him here?
 Anton Arapov looks to be the maintainer, since he's the only
contributor to the kerneloops.org github repo.

The idea for the oops QR code generator came from Peter Anvin and Dirk
Hohndel, so they may want to participate in the discussion as well.

Sarah Sharp
