Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C8694899
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 16:48:58 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3C4D51D4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 16:48:58 +0000 (UTC)
Date: Fri, 29 Jul 2016 17:48:42 +0100
From: Mark Brown <broonie@kernel.org>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20160729164842.GL10376@sirena.org.uk>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<367437209.fSUZRCC4cu@avalon>
	<20160728201010.6d1ef149@gandalf.local.home>
	<26257864.77FIuI985E@avalon> <20160729151247.GG10376@sirena.org.uk>
	<20160729112019.3c71f697@gandalf.local.home>
	<20160729155013.GI10376@sirena.org.uk>
	<20160729120652.3ab04112@gandalf.local.home>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="1hVIwB4NpNcOOTEe"
Content-Disposition: inline
In-Reply-To: <20160729120652.3ab04112@gandalf.local.home>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Trond Myklebust <trondmy@primarydata.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--1hVIwB4NpNcOOTEe
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jul 29, 2016 at 12:06:52PM -0400, Steven Rostedt wrote:

> Well, I don't think there's any answer to that. But I still think it's
> better than nothing. If nobody has the hardware, do we ever care if it
> gets tested? ;-)

I think it'd be better to split such tests out so that there's a clear
distinction between those that we can tell should run reliably and those
that have some hardware dependency.  That way people who just want a
predicatable testsuite without worrying if there's something wrong in
the environment can get one.

--1hVIwB4NpNcOOTEe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXm4jpAAoJECTWi3JdVIfQIBgH/j+nc7zdcH41PjZZ0GLRtU+p
E9j9jD79tHZ1qkX84bYubnrF2HtMyNh3FiNig/epF7H6Hnto3MVJZGKq9NXK5s1T
OISlS7G1LO9p5Pc5Ly+OShdR8VNQjQqQcTEQjcuCE3bKUSwfWBFvZ6k9v9eGWMXy
pjyQjAryKXHPp980yDzHYiCm39ylkHQCt6wMLE3HrjXf1henl+/UTdsYwKV25Ak9
+pSuME9lkqF9XyqTuo2KqU3imvIPwo3PiF0yg+AM8tz7tV+dloSNMecdSxE8VNsi
NqQ51+ucReCENmSXr34UxQNaYLJIV5A3Ey3TMZBEN9e5cb+cvMKZOJmazoV6QdM=
=yiVh
-----END PGP SIGNATURE-----

--1hVIwB4NpNcOOTEe--
