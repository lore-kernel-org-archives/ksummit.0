Return-Path: <SRS0=19W6=6I=goodmis.org=rostedt@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 55C76C7B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jul 2017 17:07:28 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E3AFA198
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jul 2017 17:07:26 +0000 (UTC)
Date: Wed, 5 Jul 2017 13:07:24 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20170705130724.66637518@gandalf.local.home>
In-Reply-To: <1499273908.3668.30.camel@HansenPartnership.com>
References: <576cea07-770a-4864-c3f5-0832ff211e94@leemhuis.info>
	<20170703123025.7479702e@gandalf.local.home>
	<ad94dc65-cc9c-f4f1-27c1-5a48603c7f59@leemhuis.info>
	<20170705084528.67499f8c@gandalf.local.home>
	<4080ecc7-1aa8-2940-f230-1b79d656cdb4@redhat.com>
	<20170705092757.63dc2328@gandalf.local.home>
	<20170705140607.GA30187@kroah.com>
	<a462fb3b-a6d4-e969-b301-b404981de224@roeck-us.net>
	<20170705112707.54d7f345@gandalf.local.home>
	<1499269015.3668.25.camel@HansenPartnership.com>
	<20170705120459.41e81f7b@gandalf.local.home>
	<1499273908.3668.30.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: Carlos O'Donell <carlos@redhat.com>, linux-api@vger.kernel.org,
	Thorsten Leemhuis <linux@leemhuis.info>,
	ksummit-discuss@lists.linuxfoundation.org,
	Shuah Khan <shuahkh@osg.samsung.com>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] & [TECH TOPIC] Improve
 regression tracking
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 05 Jul 2017 09:58:28 -0700
James Bottomley <James.Bottomley@HansenPartnership.com> wrote:

> On Wed, 2017-07-05 at 12:04 -0400, Steven Rostedt wrote:
> > On Wed, 05 Jul 2017 08:36:55 -0700
> > James Bottomley <James.Bottomley@HansenPartnership.com> wrote:
> >  =20
> > >  =20
> > > >=20
> > > > Are we tracking regressions or just simply bugs?=C2=A0=C2=A0 =20
> > >=20
> > > A lot of device driver regressions are bugs that previously existed
> > > in the code but which didn't manifest until something else
> > > happened. =C2=A0A huge number of locking and timing issues are like
> > > this. =C2=A0The irony is that a lot of them go from race always being
> > > won (so bug never noticed) to race being lost often enough to make
> > > something unusable. =C2=A0To a user that ends up being a kernel
> > > regression because it's a bug in the current kernel which they
> > > didn't see previously which makes it unusable for them.
> > >=20
> > > I've got to vote with my users here: that's a regression not a
> > > "feature". =20
> >=20
> > Let's take a step back. What exactly is the problem? =20
>=20
> You mean what question was I answering? =C2=A0It was your "is your proble=
m a
> regression?" one.

No that's not what I meant. I mean that we are going off tangent to the
original topic.

>=20
> > The regressions that we want to track? Why are they not fixed? Is it
> > because they are hard to reproduce? If so, how do we know they are a
> > regression or just some hard to hit bug? If it's hard to hit, how do
> > we know we fixed it? =20
>=20
> Usually for the exposed races we develop a theoretical model which
> tells us what the problem is and also the solution.

I think the problem is that the regressions that are not being fixed
happen to be where we have no model to create, as the problem may be
too hard to hit, and it could just be a "works for me" issue.

>=20
> > What exactly are the questions we want solved. =20
>=20
> In the context of this subthread? =C2=A0Tracking and fixing of regressions
> meaning behaviour that damages or destroys usability of version k+1
> that wasn't present in version k.

Agreed with this part. And I believe this is also in the context of the
entire thread.

>=20
> > Granted, I used this thread to push more use of kselftests, and I
> > don't see any SCSI tests there at all! =20
>=20
> It would be an interesting question for another thread to consider
> whether that's a problem or not.

It's not a problem for me, but it begs the question of whether it would
be useful or not. But I agree, that's for another thread.

-- Steve
