Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E16A82C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 21:09:16 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 584B112D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 21:09:16 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Fri, 29 Jul 2016 00:09:28 +0300
Message-ID: <4917794.pdgKrtIJtY@avalon>
In-Reply-To: <7hk2gr7wjq.fsf@baylibre.com>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<718BE1FD-6169-4205-A905-53F997D5943A@primarydata.com>
	<7hk2gr7wjq.fsf@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Trond Myklebust <trondmy@primarydata.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel unit testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Monday 11 Jul 2016 13:24:25 Kevin Hilman wrote:
> Trond Myklebust <trondmy@primarydata.com> writes:
> > So, we might as well make this a formal proposal.
> >=20
> > I=E2=80=99d like to propose that we have a discussion around how to=
 make it
> > easier to implement kernel unit tests. I=E2=80=99ve co-opted Dan as=
 he has
> > expressed both an interest and hands-on experience. :-)
>=20
> Count me in.
>=20
> I'm working on the kernelci.org project, where we're testing
> mainline/next/stable-rc/stable etc. on real hardware (~200 unique boa=
rds
> across ~30 unique SoC families: arm, arm64, x86.)
>=20
> Right now, we're mainly doing basic boot tests, but are starting to r=
un
> kselftests on all these platforms as well.

Would you be interested in running other test suites as well (for insta=
nce=20
http://git.ideasonboard.com/renesas/vsp-tests.git) ? If so we need to d=
ecide=20
on an interface for test suites to make it easy for you to integrate th=
em in=20
your test farm.

--=20
Regards,

Laurent Pinchart
