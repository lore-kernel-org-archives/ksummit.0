Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4DB8B8B4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 11:50:50 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A43968D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 11:50:49 +0000 (UTC)
Date: Thu, 16 Jul 2015 12:50:33 +0100
From: Mark Brown <broonie@kernel.org>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <20150716115033.GA4039@sirena.org.uk>
References: <55A1407E.5080800@oracle.com>
	<20150713210226.519dedfd@gandalf.local.home>
	<20150713202818.23310729@lwn.net>
	<16735160.dNHXzIZYtq@vostro.rjw.lan>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6c2NcOVqGQ03X4Wi"
Content-Disposition: inline
In-Reply-To: <16735160.dNHXzIZYtq@vostro.rjw.lan>
Cc: Sasha Levin <sasha.levin@oracle.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Issues with stable process
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--6c2NcOVqGQ03X4Wi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jul 16, 2015 at 02:53:55AM +0200, Rafael J. Wysocki wrote:
> On Monday, July 13, 2015 08:28:18 PM Jonathan Corbet wrote:

> > In general, though, I think a lot of people see -next as -rc1 without the
> > quality control; it's volatile and scary.  So it's not surprising that it
> > doesn't get a lot of real-world testing.  And, as long as that's the case,
> > there's going to be a lot of bugs that are never caught in -next.

> Well stated.

> And in addition to that, -next is simply evolving too fast to get any deeper
> testing at any point.

Right.  The one advantage -next does have for testing over individual
development trees is that it's a single point to pick up the majority of
code targetted for -rc1 so where people are doing explicit testing it's
going to be one of the first trees they start looking at after Linus'
tree.

--6c2NcOVqGQ03X4Wi
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVp5qJAAoJECTWi3JdVIfQlZgH/isZ6Wj9yTYMY9u/ZW4qpnrr
HjmliXuNNgT4e1dOKFmxmRY0wnkZJ0YSTX5LeGVy2PSUxXZXnh5kt53kpkS8J/fk
Bc0DVBBkjERwmY2LAZT/JgcTVYTcIAZ9+kipukK9mMXmQD6MHT9U522iqZydNhHZ
td6O/2wfG3eI6KqDTYNoBbG3qS9N1c5UOjOfqMwFVuJk8kdx0xRrqxA/pbPU6a2R
eCgi7s0PDYsvq2GK2XkNi0Cjmb6Yms3hsTT2NKlRlkhQjDHJeCioKIDUkVOfTAXi
kVaQAGpXdH3D3U+vzobhkEABgfNISqD9dt7VejeJ4Bd23MDeGlCEWrNp9tfuNjY=
=sLl1
-----END PGP SIGNATURE-----

--6c2NcOVqGQ03X4Wi--
