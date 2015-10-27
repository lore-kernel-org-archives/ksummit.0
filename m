Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 38E648CC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Oct 2015 01:39:50 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CD9D3E4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Oct 2015 01:39:49 +0000 (UTC)
Date: Tue, 27 Oct 2015 10:39:34 +0900
From: Mark Brown <broonie@kernel.org>
To: tytso <tytso@mit.edu>
Message-ID: <20151027013934.GO28319@sirena.org.uk>
References: <562E37D7.9080105@suse.com> <20151027001201.GI28319@sirena.org.uk>
	<20151027005950.GA26445@localhost>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3hAdtgBjtgL7p0NQ"
Content-Disposition: inline
In-Reply-To: <20151027005950.GA26445@localhost>
Cc: theodore.tso@gmail.com, ksummit-discuss@lists.linuxfoundation.org
Subject: [Ksummit-discuss] Deferred probing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--3hAdtgBjtgL7p0NQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Oct 26, 2015 at 08:59:50PM -0400, tytso wrote:

> I didn't see that message, sorry.  I found it after spending many
> minutes searching an overflowing inbox, but it's not something which
> is scalable.

Please provide clearer information on the process that you are expecting
people to follow :(

> If you have specific requests, please use a separate subject line (so
> people who are massively behind on their e-mail during the conference
> have some *hope* of finding messages with real-time requests), and

I was hoping that replying to your message asking for new topics and
sending to the (different to normal) e-mail address you were requesting
was a good way of indicating a new topic.

> please don't reference "subject XXX on the lists" and expect folks to
> have to read a largish thread and to try to figure out what issues you
> want to talk about.

> Please send a 2-3 sentence summary of the issues you want to discuss
> --- I'm not sure I understand what needs to be discussed about
> "deferred probing and general device ordering" this week.

Currently we don't do anything useful to capture inter-device
dependencies outside the parent/child relationship.  This means that
during boot we can get a very largee number of probe attempts which gets
messy from a logging point of view and means that during suspend and
resume we don't do anything to make sure we're suspending and resuming
things in a useful order.

Currently it's all hacked with link order and is very fragile.

--3hAdtgBjtgL7p0NQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJWLtXSAAoJECTWi3JdVIfQt90H/ihypUWlx8XY+lGm5YVf4r9R
inflawix5l5OMGpcnrEVG5U2+TQBuOfJdIbp88X9QX/BiUSehe+LDcJ8MswfZNAr
xpp6gttxDhhJShRfCE+/ojWwKMa9//PDZ2SP19h3mGrUL/6azOMl92+DT4ZQ4FU3
rp5B77VZqulcyOrSWiRloryNUSgfyKO7OrPA8mAn0Ua8j3GvHX8GXc7oLiVhfLhU
SSkBNHBqS1bKJtmeCUQO3BbUjgxcdNWP52+zFEmG+KywJuWMpje4SCa4DDyoiLrc
djEsrCKua2Lpk9mlC2ZbPgx1eTllEJ6G+o+Wmrx2MD5wcm1HTFLusdTGWvb2vd8=
=bnXl
-----END PGP SIGNATURE-----

--3hAdtgBjtgL7p0NQ--
