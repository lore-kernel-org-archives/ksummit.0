Return-Path: <pavel@ucw.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4FD448CC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 10 Oct 2018 16:36:08 +0000 (UTC)
Received: from atrey.karlin.mff.cuni.cz (atrey.karlin.mff.cuni.cz
	[195.113.26.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8A1127DE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 10 Oct 2018 16:36:06 +0000 (UTC)
Date: Wed, 10 Oct 2018 18:36:03 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Dave Airlie <airlied@gmail.com>
Message-ID: <20181010163603.GA22306@amd>
References: <1538861738.4088.5.camel@HansenPartnership.com>
	<1538861799.4088.6.camel@HansenPartnership.com>
	<CAPM=9tz3Z=vD6qWUL2boZGEAgMeC_o9euBXFu2V58RHOn6gR9g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="OgqxwSJOaUobr8KG"
Content-Disposition: inline
In-Reply-To: <CAPM=9tz3Z=vD6qWUL2boZGEAgMeC_o9euBXFu2V58RHOn6gR9g@mail.gmail.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	LKML <linux-kernel@vger.kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [PATCH 1/2] code-of-conduct: Fix the
 ambiguity about collecting email addresses
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--OgqxwSJOaUobr8KG
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> > Signed-off-by: James Bottomley <James.Bottomley@HansenPartnership.com>
> > ---
> >  Documentation/process/code-of-conduct.rst | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/Documentation/process/code-of-conduct.rst b/Documentation/=
process/code-of-conduct.rst
> > index ab7c24b5478c..aa40e34e7785 100644
> > --- a/Documentation/process/code-of-conduct.rst
> > +++ b/Documentation/process/code-of-conduct.rst
> > @@ -31,7 +31,7 @@ Examples of unacceptable behavior by participants inc=
lude:
> >  * Trolling, insulting/derogatory comments, and personal or political a=
ttacks
> >  * Public or private harassment
> >  * Publishing others=E2=80=99 private information, such as a physical o=
r electronic
> > -  address, without explicit permission
> > +  address not ordinarily collected by the project, without explicit pe=
rmission
> >  * Other conduct which could reasonably be considered inappropriate in a
> >    professional setting
> >
>=20
> I agree we want something like this, the question is whether we want
> to change the CoC text from upstream, or clarify it in a separate
> section.

If this comes from some kind of "upstream", that should be clearly
marked so in the document or at least in the git log. I was always
wondering who created that "useful document".

									Pavel
(And would still like to know what the background story is.)
								=09
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--OgqxwSJOaUobr8KG
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAlu+KnMACgkQMOfwapXb+vLCSgCeLER77yWcAxUsoiaQ78cA29ZQ
J/wAoKhjbDoXy8oP2yAPC1FJGMUmK4ek
=RW8M
-----END PGP SIGNATURE-----

--OgqxwSJOaUobr8KG--
