Return-Path: <pavel@ucw.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 77A11B78
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 18:37:59 +0000 (UTC)
Received: from atrey.karlin.mff.cuni.cz (atrey.karlin.mff.cuni.cz
	[195.113.26.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 68C4B1E8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 18:37:58 +0000 (UTC)
Date: Wed, 28 Jun 2017 20:37:56 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20170628183756.GA30277@amd>
References: <20170625104850.GA24717@amd>
	<87shinzkp9.fsf@notabene.neil.brown.name>
	<20170626083407.GA9621@amd>
	<20170626112052.oze7qxmxiyu67wzh@sirena.org.uk>
	<20170626122224.GA11441@amd>
	<20170627114026.iwsqbbwytleyurmi@sirena.org.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="uAKRQypu60I7Lcqm"
Content-Disposition: inline
In-Reply-To: <20170627114026.iwsqbbwytleyurmi@sirena.org.uk>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] mobile phones
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--uAKRQypu60I7Lcqm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Tue 2017-06-27 12:40:26, Mark Brown wrote:
> On Mon, Jun 26, 2017 at 02:22:24PM +0200, Pavel Machek wrote:
>=20
> > > No, such systems can and do work absolutely fine with the existing
> > > frameworks.  You just have non-upstream drivers that don't make any
> > > effort to work within existing frameworks.  Most of the vendors came
> > > round to doing the right thing on this some years ago.
>=20
> > Take a look at ./drivers/hsi/clients/cmt_speech.c in your favourite
> > kernel. It was merged in 2010 AFAICT.
>=20
> That looks like it went in in 2015, not 2010 - the commit date is in
> March 2015, I suspect the 2010 date comes from whatever vendor tree it
> came from.  The code isn't super clear but it looks like a fairly
> standard DSP streaming interface which should be supportable as a
> compressed audio stream in ALSA (or regular one if the data is
> uncompressed), there's no reason I can see for it to be done outside of
> the standard audio framework.

Ok, I guess I was wrong with 2010.

And yes, it is uncompressed. I actually tried to convert it to ALSA
some time ago, but could not get it to work.

Right now, first priority is to get useful quality of the voice
calls. If Nokia is the only one, then this is perhaps not a big
problem.

I'd like to know how Pyra handles this (
https://pyra-handheld.com/boards/pages/pyra/ ).

Best regards,
									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--uAKRQypu60I7Lcqm
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAllT94QACgkQMOfwapXb+vJjswCgm8E6lczccRpIr8KmruCRrs1w
ZMgAniNJNK4cpMYcqFfHyM2w7fDSgvMW
=2SNu
-----END PGP SIGNATURE-----

--uAKRQypu60I7Lcqm--
