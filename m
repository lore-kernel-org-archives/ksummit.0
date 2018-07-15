Return-Path: <pavel@ucw.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DC12AAEF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 15 Jul 2018 20:15:21 +0000 (UTC)
Received: from atrey.karlin.mff.cuni.cz (atrey.karlin.mff.cuni.cz
	[195.113.26.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0AF9B42D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 15 Jul 2018 20:15:20 +0000 (UTC)
Date: Sun, 15 Jul 2018 22:15:18 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Greg KH <gregkh@linuxfoundation.org>
Message-ID: <20180715201518.GA19675@amd>
References: <20180501163818.GD1468@sasha-vm> <20180501194450.GD10479@thunk.org>
	<20180501200019.GA7397@sasha-vm> <20180501205448.GE10479@thunk.org>
	<20180501220228.GD7397@sasha-vm> <20180502043017.GA11938@1wt.eu>
	<20180502194139.GA18390@sasha-vm> <20180502200229.GA12729@1wt.eu>
	<20180714173812.xhfwtcijlxebmn2k@devuan>
	<20180715085403.GA21992@kroah.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ReaqsoxgOBHFXBhH"
Content-Disposition: inline
In-Reply-To: <20180715085403.GA21992@kroah.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Willy Tarreau <w@1wt.eu>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--ReaqsoxgOBHFXBhH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun 2018-07-15 10:54:03, Greg KH wrote:
> On Sat, Jul 14, 2018 at 07:38:12PM +0200, Pavel Machek wrote:
> > Hi!
> >=20
> > > > The way I see it, if a commit can get one or two tested-by, it's a =
good
> > > > alternative to a week in -next.
> > >=20
>=20
> Pavel, I "love" how you fail to point out that you are responding to a 2
> month old thread :(
>=20
> And that thread was beaten to death, and still you want to revise it,
> which is odd to me, perhaps you just don't like stable releases?  Given
> that you never mark any of the patches for your subsystem for stable
> releases, why do you care about how they are maintained?

I do mark patches -- acording to stable kernel rules. But you are
apparently using different rules, not written anywhere, and I get
complains when I don't mark patches according to _those_.

But this was supposed to be about testing.

And I'd like to see Tested: no/compile headers, instead.

[And yes, motivation for this was that broken LED patches were merged
to stable without any testing, and when that was questioned, I was
told that testing was not performed because it would require unusual
hardware called "USB keyboard".]

									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--ReaqsoxgOBHFXBhH
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAltLq1YACgkQMOfwapXb+vJ/4ACgsOGbawFAbEXJ2EfBdN5W5Ltq
rtsAn2oKuVsakR8nWQM97UFoBtsYEH8A
=akRE
-----END PGP SIGNATURE-----

--ReaqsoxgOBHFXBhH--
