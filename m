Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 79C92899
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 17:51:53 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E068EED
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 17:51:52 +0000 (UTC)
Date: Thu, 4 Aug 2016 18:51:40 +0100
From: Mark Brown <broonie@kernel.org>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20160804175140.GD10383@sirena.org.uk>
References: <20160803132607.GA31662@kroah.com>
	<alpine.LNX.2.00.1608031537140.22028@cbobk.fhfr.pm>
	<1470232658.2482.42.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1608031558180.22028@cbobk.fhfr.pm>
	<1470233095.2482.46.camel@HansenPartnership.com>
	<20160803212332.576bb718@grimm.local.home>
	<20160804082018.GA27204@kroah.com>
	<20160804093355.30096bbe@gandalf.local.home>
	<20160804154444.GA10323@sirena.org.uk>
	<20160804121414.2466c31f@gandalf.local.home>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cHMo6Wbp1wrKhbfi"
Content-Disposition: inline
In-Reply-To: <20160804121414.2466c31f@gandalf.local.home>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Trond Myklebust <trondmy@primarydata.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--cHMo6Wbp1wrKhbfi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 04, 2016 at 12:14:14PM -0400, Steven Rostedt wrote:
> Mark Brown <broonie@kernel.org> wrote:

> > I'm really happy we've got people engaging upstream.  I'm happy if
> > people fill in the extra information but really I'm way more interested
> > in a clear changelog than in getting a Fixes tag, or in checking that
> > the tags people are adding are accurate.

> Having a clear change log is orthogonal to having a Fixes tag. Actually,
> in my experience, change logs with Fixes tags tend to have clearer
> explanations in the change log than those without. Because to get that
> Fixes tag, one did some research to why the bug happened in the first
> place.

Yes, definitely - but equally the clear changelog will often have
something to the effect of "we did more evaluation of the chip",
"production versions of the chip have such and such a change" or
whatever. =20

> I mostly work in the core kernel, and any part of the kernel that has a
> much larger area of use would greatly benefit from having clear change
> logs as well as Fixes tags that point to regressions, or even if the
> bug was there all along. It helps out in many areas besides just

It's a sliding scale what should get the closest scruitiny and the most
detailed changelogs and so on but hard rules affect everyone.

> stable. As James mentions, it helps for regression tracking which is
> something that people have been wanting to return.

Indeed.  More use for things like regression tracking would be a really
good pull reason to get people engaged and motivate them to provide the
information.

> I found a bug in an old version of the kernel that I was using and when
> I looked upstream, there was a fixes tag. Not only did I easily find
> the proper fix, but it helped me see that the broken code was indeed in
> the kernel I was playing with. That's something similar to having
> stable releases, but it helps out any other users that are using older
> kernels.

To be clear I think it's great to have the information, I just don't
think making it a requirement for every fix is going to have the desired
result.

--cHMo6Wbp1wrKhbfi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEbBAEBCAAGBQJXo4CrAAoJECTWi3JdVIfQJLoH+KgvFNM1Pq1kERXzktV/7vce
ZHx9Y1yh/7N1L6qHjR0fAmn42LmgU49xZAD5ni4YA/WmthDCx3HJCXlS9mi4Io+h
IwTVdsEYtQ8apfQy8YW53CwW6m7VyVs41fMouQWf0QIb0b/6XBK1cC6Kxaq22Umt
EofRYSROaFyjz2cJViHIen9ygPwKd8h5DG9Fhpb+itLfS7IgrbnmvvwmtfqRJwgb
dg6ZYPwHXYGAO8qXKScdCO9zIfzfurzdthdVW8MQkNfuXh+YrrHhStZBKhW5HT/I
CZzZzf86ELyXEZNBunDhxAyN5RzqHagz87Z1FC0arxk5NSW+g/HIz4wIJ7Im5w==
=A/1b
-----END PGP SIGNATURE-----

--cHMo6Wbp1wrKhbfi--
