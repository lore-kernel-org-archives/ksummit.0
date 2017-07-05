Return-Path: <SRS0=19W6=6I=goodmis.org=rostedt@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D03DEB00
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jul 2017 16:05:03 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 93D6F178
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jul 2017 16:05:02 +0000 (UTC)
Date: Wed, 5 Jul 2017 12:04:59 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20170705120459.41e81f7b@gandalf.local.home>
In-Reply-To: <1499269015.3668.25.camel@HansenPartnership.com>
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
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Carlos O'Donell <carlos@redhat.com>, linux-api@vger.kernel.org,
	Thorsten Leemhuis <linux@leemhuis.info>,
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

On Wed, 05 Jul 2017 08:36:55 -0700
James Bottomley <James.Bottomley@HansenPartnership.com> wrote:

> > Are we tracking regressions or just simply bugs? =20
>=20
> A lot of device driver regressions are bugs that previously existed in
> the code but which didn't manifest until something else happened. =C2=A0A
> huge number of locking and timing issues are like this. =C2=A0The irony is
> that a lot of them go from race always being won (so bug never noticed)
> to race being lost often enough to make something unusable. =C2=A0To a us=
er
> that ends up being a kernel regression because it's a bug in the
> current kernel which they didn't see previously which makes it unusable
> for them.
>=20
> I've got to vote with my users here: that's a regression not a
> "feature".

Let's take a step back. What exactly is the problem?

The regressions that we want to track? Why are they not fixed? Is it
because they are hard to reproduce? If so, how do we know they are a
regression or just some hard to hit bug? If it's hard to hit, how do we
know we fixed it?

What exactly are the questions we want solved.

Granted, I used this thread to push more use of kselftests, and I don't
see any SCSI tests there at all!

-- Steve
