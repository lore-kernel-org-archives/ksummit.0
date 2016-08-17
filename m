Return-Path: <ben@decadent.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 645F7957
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Aug 2016 11:39:09 +0000 (UTC)
Received: from shadbolt.e.decadent.org.uk (shadbolt.e.decadent.org.uk
	[88.96.1.126])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E3AAC17A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Aug 2016 11:39:08 +0000 (UTC)
Message-ID: <1471433936.13300.73.camel@decadent.org.uk>
From: Ben Hutchings <ben@decadent.org.uk>
To: Andy Lutomirski <luto@amacapital.net>, David Howells <dhowells@redhat.com>
Date: Wed, 17 Aug 2016 12:38:56 +0100
In-Reply-To: <1470265316.4176.207.camel@decadent.org.uk>
References: <CALCETrXTusbj3vTQ=DmyiYG-ZqYOtHXD6rQpY-4+qtqsKmoD4g@mail.gmail.com>
	<27174.1470221030@warthog.procyon.org.uk>
	<CALCETrU2qPO8Bu5wtaiKkYHgdpV3dL+Q5P+8YZLNSm3Ekn9sTw@mail.gmail.com>
	<1470265316.4176.207.camel@decadent.org.uk>
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-iLorKahPSoziugqbL8nS"
Mime-Version: 1.0
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Josh Boyer <jwboyer@fedoraproject.org>,
	Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Mark Brown <broonie@sirena.org.uk>
Subject: Re: [Ksummit-discuss] [TOPIC] Secure/verified boot and roots of
 trust
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--=-iLorKahPSoziugqbL8nS
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2016-08-04 at 00:01 +0100, Ben Hutchings wrote:
> On Wed, 2016-08-03 at 09:46 -0700, Andy Lutomirski wrote:
> [...]
> >=20
> > And it gets rid of the IMO extremely nasty temporary key.=C2=A0=C2=A0I
> > personally think that reproducible builds would add considerable
> > value
> > to many use cases, and we currently can't simultaneously support
> > reproducible builds and Secure Boot without a big mess involving
> > trusted parties, and the whole point of reproducible builds is to
> > avoid needed to trust the packager.
> [...]
>=20
> You need that trusted party to supply a signature for the kernel, so
> why is it so much worse to have them do that for the modules as well?
[...]

I think I can now answer this myself.

Where there's a separate certificate store, the signing stage can be
entirely independent of the initial build. =C2=A0A user of a distribution
can reproduce the distribution's unsigned binaries and then use their
own keys to build signed binaries for their own use.

However, the module signing certificate embedded in the kernel - even
if it refers to a persistent signing key, making it reproducible - has
to be established before the initial build, so it doesn't allow for
users to use a different root of trust. =C2=A0So there ought to be an optio=
n
to require signatures but without defining any trusted keys at build
time.

Ben.

--=20
Ben Hutchings
Kids!=C2=A0=C2=A0Bringing about Armageddon can be dangerous.=C2=A0=C2=A0Do =
not attempt it
in
your own home. - Terry Pratchett and Neil Gaiman, `Good Omens'

--=-iLorKahPSoziugqbL8nS
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCgAGBQJXtEzQAAoJEOe/yOyVhhEJsOkQALXC8PRGJjVWzEeDF0JEW2/M
uE/DJiv3DbCAQHrh96yhfqAgDndCPDBg2pVnYGgxLzBJTJkzZwCqGLMO3cyeE0XK
6mj7oRf6b1moCSy2EVZAXhp2ELI7g+k4fIBQ2OWYcZ+xqBf9OdEM6HhbJF03CXSv
u+KqeHOzi3YQpii726I6gEoF7zqGtnZ0l/q8gWmNFlGJJByn36Gb/QfyRpadFkPh
hLdo4R/0PH1+JpTym6Ya9DOBI7iOEWWKWZjZt7PqOB//S85jlEBdocB1YB6jj9P0
WVGibVIkCOAeY6SoH03vQcuDqHOFygnDW6/YYZVVo9WOrbMMx/MWwfBmlG37PrM5
0Rza255RtrzA8F8JE75kAVoBLrV0kCf9mL3GMMPBVg0CYGR6JJRjzLIespEo2m7l
zSotbpceSCtZSsA94tMssLlZV+CJRJaQLGLiPwJI14jT2WSapemvtvcqlwiml6Rs
MwcWsCZDnHXj83+yzFQyRQxEr0+XKwbw4ISR4yPX6sm+h7YKuehFDpEeUpFXiEHp
i8PLE61g5yUq04WlXUhPsVdxv9CHp2mDFAjOrpIijhJ/z7ELi4yt7bn7nny9IWWY
NljkibWjyFPTpJITEw0bltpuNDb24EovG5Dcn0+rMrl2kRNTZFBT9Urzk+S/fm6r
auNT4H8V6dmasVIerncG
=aPIm
-----END PGP SIGNATURE-----

--=-iLorKahPSoziugqbL8nS--
