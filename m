Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6130671
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 19:44:12 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3AE8C2DD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 19:44:11 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Kevin Hilman <khilman@baylibre.com>
Date: Tue, 02 Aug 2016 22:44:11 +0300
Message-ID: <1738515.fsY7coZ0B1@avalon>
In-Reply-To: <m2ziovqag9.fsf@baylibre.com>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<4917794.pdgKrtIJtY@avalon> <m2ziovqag9.fsf@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Trond Myklebust <trondmy@primarydata.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel unit testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Kevin,

On Tuesday 02 Aug 2016 11:42:30 Kevin Hilman wrote:
> Laurent Pinchart <laurent.pinchart@ideasonboard.com> writes:
> > On Monday 11 Jul 2016 13:24:25 Kevin Hilman wrote:
> >> Trond Myklebust <trondmy@primarydata.com> writes:
> >> > So, we might as well make this a formal proposal.
> >> >=20
> >> > I=E2=80=99d like to propose that we have a discussion around how=
 to make it
> >> > easier to implement kernel unit tests. I=E2=80=99ve co-opted Dan=
 as he has
> >> > expressed both an interest and hands-on experience. :-)
> >>=20
> >> Count me in.
> >>=20
> >> I'm working on the kernelci.org project, where we're testing
> >> mainline/next/stable-rc/stable etc. on real hardware (~200 unique =
boards
> >> across ~30 unique SoC families: arm, arm64, x86.)
> >>=20
> >> Right now, we're mainly doing basic boot tests, but are starting t=
o run
> >> kselftests on all these platforms as well.
> >=20
> > Would you be interested in running other test suites as well (for i=
nstance
> > http://git.ideasonboard.com/renesas/vsp-tests.git) ? If so we need =
to
> > decide on an interface for test suites to make it easy for you to
> > integrate them in your test farm.
>=20
> Sure.  Running tests is the easy part.  It's parsing results and maki=
ng
> useful reports about regressions that involves a little more work.

Which again calls for a common format for test invocation and test resu=
lts. Is=20
that something you've given a thought to already by any chance ?

--=20
Regards,

Laurent Pinchart
