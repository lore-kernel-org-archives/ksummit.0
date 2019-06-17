Return-Path: <Tim.Bird@sony.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6B10A9EE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Jun 2019 16:48:12 +0000 (UTC)
Received: from NAM04-CO1-obe.outbound.protection.outlook.com
	(mail-eopbgr690125.outbound.protection.outlook.com [40.107.69.125])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B79382C3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Jun 2019 16:48:11 +0000 (UTC)
From: <Tim.Bird@sony.com>
To: <broonie@kernel.org>, <mchehab+samsung@kernel.org>
Date: Mon, 17 Jun 2019 16:48:03 +0000
Message-ID: <ECADFF3FD767C149AD96A924E7EA6EAF97735B4F@USCULXMSG01.am.sony.com>
References: <1559836116.15946.27.camel@HansenPartnership.com>
	<20190606155846.GA31044@kroah.com>
	<1559838275.3144.6.camel@HansenPartnership.com>
	<20190613105916.66d03adf@coco.lan>
	<20190614101222.GA4797@pendragon.ideasonboard.com>
	<20190614102424.3fc40f04@coco.lan> <20190614135807.GA6573@kroah.com>
	<20190614121137.02b8a6dc@coco.lan>
	<20190615110107.GA5974@pendragon.ideasonboard.com>
	<20190617080315.4d8fd076@coco.lan>
	<20190617122837.GP5316@sirena.org.uk>
In-Reply-To: <20190617122837.GP5316@sirena.org.uk>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: ksummit-discuss@lists.linuxfoundation.org,
	James.Bottomley@hansenpartnership.com,
	media-submaintainers@linuxtv.org, dvyukov@google.com
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Pull network and Patch
 Acceptance Consistency
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>



> -----Original Message-----
> From: Mark Brown [mailto:broonie@kernel.org]
>=20
> On Mon, Jun 17, 2019 at 08:03:15AM -0300, Mauro Carvalho Chehab wrote:
...
> > Are there any other subsystem currently working to get funding for
> > hosting/automation?
>=20
> Not sure if it's specifically what you're looking at but there's stuff
> going on that's at least very adjacent to this, more from the angle of
> providing general infrastructure than subsystem specific things and
> currently mainly foucsed on getting tests run.  To me that sort of
> approach seems good since it avoids duplicated efforts between
> subsystems.
>=20
> There's people working on things like KernelCI (people are working on
> expanding to include runtime tests, and there's active efforts on
> securing more funding) and CKI which aren't focused on specific
> subsystems but more on general infrastructure.  Tim Bird (CCed) has been
> pushing on trying to get people working in this area talking to each
> other - there's a mailing list and monthly call:
>=20
>     https://elinux.org/Automated_Testing
>=20
> and one of the things people are talking about is what sorts of things
> the kernel community would find useful here so it's probably useful at
> least putting ideas for things that'd be useful in the heads of people
> who are interested in working on the infrastructure and automation end
> of things.

Indeed.  Although I haven't piped up, I have been paying close attention to
these discussions, and I know from talking to others who are involved with
automated testing that they are as well.

I'm about to go on vacation, so I'll be incommunicado for about a week, but
just to highlight some of the stuff I'm keen on following up on:
 - if Linus like the syzbot notification mechanism, we should definitely
follow up and try to have more tools and frameworks adopt that mechanism
It's on my to-do list to investigate this further and see how it would inte=
grate
with my particular framework (Fuego).  I think Dmitry said we should avoid
introducing bots with lots of different notification mechanisms, as that wi=
ll
overload developers and just turn them off.
- I recently saw a very cool system for isolating new warnings (at all leve=
ls
of W=3D[0-3]) introduced by a new patch.  This would be a great thing to=20
add to the kernel build system, IMHO, and that's also on my to-do list.
- I was very interested in discussions about the mechanism to check whether
a patch modified the binary or not.   It would be nice to make this part of
the build system as well (something like: "make check-for-binary-change"

Both of the latter items require the ability to set a baseline to compare
against.  So the usage sequence would be:
 - make save-baseline
 - <do commit or pull>
 - make show-new-warnings
or
 - make check-for-binary-change

Just FYI, some of the stuff that the automated testing folk are working on
are:
 - standards for lab equipment management (/board management)
 - standards for test definition
 - standards for test results format and aggregation
 - setting up a multi-framework results aggregation site

Keep the ideas flowing!  While we sometimes don't chime in, I know people
are listening and thinking about the ideas presented.  And many of us will =
be
at plumbers for live discussions, and at ELC Europe.  A few of us are start=
ing a new event
called Automated Testing Summit that we're co-locating (at least this year)=
 with=20
OSSUE/ELCE on October 31, in Lyon France.  Check the Linux Foundation event=
s site
for more information.
-- Tim
