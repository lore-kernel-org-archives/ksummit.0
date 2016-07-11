Return-Path: <khilman@baylibre.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 73F728D7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 11 Jul 2016 20:24:27 +0000 (UTC)
Received: from mail-pa0-f51.google.com (mail-pa0-f51.google.com
	[209.85.220.51])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A5D67164
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 11 Jul 2016 20:24:26 +0000 (UTC)
Received: by mail-pa0-f51.google.com with SMTP id ks6so12915686pab.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 11 Jul 2016 13:24:26 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Trond Myklebust <trondmy@primarydata.com>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<5780334E.8020801@roeck-us.net> <20160709001046.GH28589@dtor-ws>
	<91774112.AKkGksYjl6@vostro.rjw.lan> <20160709004352.GK28589@dtor-ws>
	<1468058721.2557.9.camel@HansenPartnership.com>
	<0ED98206-0A66-48A4-B5A4-A0BC53FDBF05@primarydata.com>
	<1468114447.2333.12.camel@HansenPartnership.com>
	<A4E16736-A5CB-4915-9A02-82065AE2E062@primarydata.com>
	<1468115770.2333.15.camel@HansenPartnership.com>
	<CAPcyv4gQ+3aF+DhRVDioBD7O63VRDG+VAm3x0zVDDh4hg8kJig@mail.gmail.com>
	<718BE1FD-6169-4205-A905-53F997D5943A@primarydata.com>
Date: Mon, 11 Jul 2016 13:24:25 -0700
In-Reply-To: <718BE1FD-6169-4205-A905-53F997D5943A@primarydata.com> (Trond
	Myklebust's message of "Mon, 11 Jul 2016 04:03:03 +0000")
Message-ID: <7hk2gr7wjq.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel unit testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Trond Myklebust <trondmy@primarydata.com> writes:

> So, we might as well make this a formal proposal.
>
> I=E2=80=99d like to propose that we have a discussion around how to make =
it
> easier to implement kernel unit tests. I=E2=80=99ve co-opted Dan as he has
> expressed both an interest and hands-on experience. :-)

Count me in.

I'm working on the kernelci.org project, where we're testing
mainline/next/stable-rc/stable etc. on real hardware (~200 unique boards
across ~30 unique SoC families: arm, arm64, x86.)

Right now, we're mainly doing basic boot tests, but are starting to run
kselftests on all these platforms as well.

Kevin
