Return-Path: <khilman@baylibre.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1A51999A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 18:42:34 +0000 (UTC)
Received: from mail-pa0-f45.google.com (mail-pa0-f45.google.com
	[209.85.220.45])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 97B881B9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 18:42:33 +0000 (UTC)
Received: by mail-pa0-f45.google.com with SMTP id iw10so65689277pac.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 02 Aug 2016 11:42:33 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<718BE1FD-6169-4205-A905-53F997D5943A@primarydata.com>
	<7hk2gr7wjq.fsf@baylibre.com> <4917794.pdgKrtIJtY@avalon>
Date: Tue, 02 Aug 2016 11:42:30 -0700
In-Reply-To: <4917794.pdgKrtIJtY@avalon> (Laurent Pinchart's message of "Fri,
	29 Jul 2016 00:09:28 +0300")
Message-ID: <m2ziovqag9.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

Laurent Pinchart <laurent.pinchart@ideasonboard.com> writes:

> On Monday 11 Jul 2016 13:24:25 Kevin Hilman wrote:
>> Trond Myklebust <trondmy@primarydata.com> writes:
>> > So, we might as well make this a formal proposal.
>> >=20
>> > I=E2=80=99d like to propose that we have a discussion around how to ma=
ke it
>> > easier to implement kernel unit tests. I=E2=80=99ve co-opted Dan as he=
 has
>> > expressed both an interest and hands-on experience. :-)
>>=20
>> Count me in.
>>=20
>> I'm working on the kernelci.org project, where we're testing
>> mainline/next/stable-rc/stable etc. on real hardware (~200 unique boards
>> across ~30 unique SoC families: arm, arm64, x86.)
>>=20
>> Right now, we're mainly doing basic boot tests, but are starting to run
>> kselftests on all these platforms as well.
>
> Would you be interested in running other test suites as well (for instanc=
e=20
> http://git.ideasonboard.com/renesas/vsp-tests.git) ? If so we need to dec=
ide=20
> on an interface for test suites to make it easy for you to integrate them=
 in=20
> your test farm.

Sure.  Running tests is the easy part.  It's parsing results and making
useful reports about regressions that involves a little more work.

Kevin
