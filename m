Return-Path: <pavel@ucw.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E4308B78
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 14 Jul 2018 21:09:16 +0000 (UTC)
Received: from atrey.karlin.mff.cuni.cz (atrey.karlin.mff.cuni.cz
	[195.113.26.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D86694FA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 14 Jul 2018 21:09:15 +0000 (UTC)
Date: Sat, 14 Jul 2018 23:09:13 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20180714210913.GA31065@amd>
References: <20180501200019.GA7397@sasha-vm> <20180501205448.GE10479@thunk.org>
	<20180501220228.GD7397@sasha-vm> <20180502043017.GA11938@1wt.eu>
	<20180502194139.GA18390@sasha-vm> <20180502200229.GA12729@1wt.eu>
	<20180714173812.xhfwtcijlxebmn2k@devuan>
	<e1198cd9-9113-d231-d15a-31ac5224b3b1@roeck-us.net>
	<20180714194716.GA27381@amd>
	<4fbbb00c-dcc1-8a2a-a1c6-8d61d545b7b6@roeck-us.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="pWyiEgJYm5f9v55/"
Content-Disposition: inline
In-Reply-To: <4fbbb00c-dcc1-8a2a-a1c6-8d61d545b7b6@roeck-us.net>
Cc: Greg KH <gregkh@linuxfoundation.org>, Willy Tarreau <w@1wt.eu>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--pWyiEgJYm5f9v55/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> >Well, 0day, kernelci etc... is nice... until the change is in the
> >driver. Most of the kernel are drivers, remember?
> >
> >I don't know. I'd say that if patch is important enough for -stable,
> >there should be someone testing it. For core kernel changes, that can
> >be 0day bot, but for drivers...
> >
>=20
> For my part I am just glad that we were able to pick up a fix in xhci code
> just last week, tested or not, from -stable, instead of having to track it
> down ourselves. Similar for many other driver patches which _do_ affect us
> (like the flurry of ext4 patches this week). Granted, there are lots of
> patches which we don't use/need, but even there it is surprising how many
> problems are found with existing testing.
>=20
> For anyone interested in making sure that obscure (whatever that means)
> drivers are tested for stable releases, but does not want to spend time o=
n it,
> all I can recommend is to implement qemu support for it and let me know,
> and I'll be happy to add a respective test to my test farm.

Umm. Yes, qemu support for every driver would be nice, but will not happen.

> However, ultimately, stable release candidates are public. Everyone is
> invited to test them. Anyone interested in a specific release and
> driver

Yes, they are public. SubmittingPatches says every patch should be
tested, and that's clearly not happening for -stable. And I'd like
those patch marked such.

> >And problem exists on mainline, too.
> >
> >Hmm. Patch for obscure driver. Wow, nice, is WellKnownName actually
> >using that driver? Aha, no, he is not; he is doing global
> >search&replace, and did not test the patch...
> >
>=20
> Ah, like me with the strncpy(x, y, strlen(y)) -> memcpy() replacements
> I did a week or so ago ? You are right, I only compile tested those and
> otherwise trusted my ability to understand C code. If that caused any
> problems, please let me know, and hopefully I'll be able to learn somethi=
ng
> from it.

Yes, such stuff. No, I was not talking about you. I did not want to
give concrete example, but...

# > get_monotonic_boottime() is deprecated, so let's convert this to
# > the simpler ktime_get_boot_ns().
# >
# > Signed-off-by: <redacted>
#=20
# Have you tested it?
#
=2E..
#   > -	   curr_boot =3D timespec_to_ns(&boot_time) * cpus;
#=20
# Original code is pretty weird (notice the * cpus), so I'm
# double-checking.

Yes, often you can guess that patch was probably not tested, but it
would be nice to have

Tested: compile

annotation to take away the guesswork. It took me a while an some head
scratching in this concrete example, and it is not first time this
happened.

Best regards,
									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--pWyiEgJYm5f9v55/
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAltKZnkACgkQMOfwapXb+vIKmgCglFAZdOe8KNIzNewX6hFTj+QP
EhcAmgOBb8PVJoxJpMp794mLW8LEgaBx
=N9aT
-----END PGP SIGNATURE-----

--pWyiEgJYm5f9v55/--
