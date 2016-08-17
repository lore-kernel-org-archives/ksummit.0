Return-Path: <ben@decadent.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 508F891A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Aug 2016 16:11:26 +0000 (UTC)
Received: from shadbolt.e.decadent.org.uk (shadbolt.e.decadent.org.uk
	[88.96.1.126])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BDDCD14E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Aug 2016 16:11:25 +0000 (UTC)
Message-ID: <1471450271.13300.76.camel@decadent.org.uk>
From: Ben Hutchings <ben@decadent.org.uk>
To: Mimi Zohar <zohar@linux.vnet.ibm.com>
Date: Wed, 17 Aug 2016 17:11:11 +0100
In-Reply-To: <1471439025.2664.49.camel@linux.vnet.ibm.com>
References: <CALCETrXTusbj3vTQ=DmyiYG-ZqYOtHXD6rQpY-4+qtqsKmoD4g@mail.gmail.com>
	<27174.1470221030@warthog.procyon.org.uk>
	<CALCETrU2qPO8Bu5wtaiKkYHgdpV3dL+Q5P+8YZLNSm3Ekn9sTw@mail.gmail.com>
	<1470265316.4176.207.camel@decadent.org.uk>
	<1471433936.13300.73.camel@decadent.org.uk>
	<1471439025.2664.49.camel@linux.vnet.ibm.com>
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-qdMqkuFmIKMMwhvXeYd3"
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


--=-qdMqkuFmIKMMwhvXeYd3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2016-08-17 at 09:03 -0400, Mimi Zohar wrote:
> On Wed, 2016-08-17 at 12:38 +0100, Ben Hutchings wrote:
> >=20
> > On Thu, 2016-08-04 at 00:01 +0100, Ben Hutchings wrote:
> > >=20
> > > On Wed, 2016-08-03 at 09:46 -0700, Andy Lutomirski wrote:
> > > [...]
> > > >=20
> > > >=20
> > > > And it gets rid of the IMO extremely nasty temporary key.=C2=A0=C2=
=A0I
> > > > personally think that reproducible builds would add considerable
> > > > value
> > > > to many use cases, and we currently can't simultaneously support
> > > > reproducible builds and Secure Boot without a big mess involving
> > > > trusted parties, and the whole point of reproducible builds is to
> > > > avoid needed to trust the packager.
> > > [...]
> > >=20
> > > You need that trusted party to supply a signature for the kernel, so
> > > why is it so much worse to have them do that for the modules as well?
> > [...]
> >=20
> > I think I can now answer this myself.
> >=20
> > Where there's a separate certificate store, the signing stage can be
> > entirely independent of the initial build.=C2=A0=C2=A0A user of a distr=
ibution
> > can reproduce the distribution's unsigned binaries and then use their
> > own keys to build signed binaries for their own use.
> >=20
> > However, the module signing certificate embedded in the kernel - even
> > if it refers to a persistent signing key, making it reproducible - has
> > to be established before the initial build, so it doesn't allow for
> > users to use a different root of trust.=C2=A0=C2=A0So there ought to be=
 an option
> > to require signatures but without defining any trusted keys at build
> > time.
>=20
> With Mehmet Kayaalp's patches memory can be reserved for adding keys
> post build.=C2=A0=C2=A0After adding the key, the kernel would need to be
> (re-)signed.

I know, but it doesn't replace the first certificate.

Ben.

> > c4c3610 "KEYS: Reserve an extra certificate symbol for inserting withou=
t
> recompiling"
> 8e16789 "KEYS: Use the symbol value for list size, updated by
> scripts/insert-sys-cert"
>=20
> Mimi
>=20
--=20
Ben Hutchings
Kids!=C2=A0=C2=A0Bringing about Armageddon can be dangerous.=C2=A0=C2=A0Do =
not attempt it
in
your own home. - Terry Pratchett and Neil Gaiman, `Good Omens'

--=-qdMqkuFmIKMMwhvXeYd3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCgAGBQJXtIyfAAoJEOe/yOyVhhEJKkMQAKlRMCrQOONHe8XVxe7+ieVf
bIbsS2qXhL70ZdCNNy9Wf5k3rcy3xAc548fWBpctyACGCB0aaKO9Xsny7gXLKzN3
ZaaunQnrxd09ZjlubbZ9GvnW9XbTWSAj8LkhHEcZ16lXq8TIfSeWS3BX4qwUIP3D
KMGTYf5RWAGo5EVpVdCkqeo11Y4lp0I99vHvfubZWLNeJy1QwtZMkDr26gj90wyH
RtdxwZt6ykxfFZHpDaH/uWkZxwN+kesfrDevE1FfpvbyL46TnjmYqyfatO43fKQL
WHIhTEwGb6/bwMo2BgP9203SVsOtyJWeqxrNenRD9YgpyRw4Ijq73OH2m13ghKrd
XeX55HZbelEYVM6cKTi38nrL4ihpTd8DH6xKY9/8rBDl7vRHA7UvAuHHfSjulGm3
m0yoeQG83aX3RPXvYfP5ABEiQdSUWrwWVMHANejWbV5FiG0X7f8M5S6Te7rk2Vbp
uA5TfNOdDRBYRN2OA452llbuEOk0moYevf4AaPctEF7/lC9e6NP6VtVZ/i3EBggA
1KhPveeXwj44cO53Tw3UT9ozfMnyB0jb1ityBNNd2mh935cSM/4vwTpfOAELXmrq
XGKWErQaQwmI4m0qp7cCjU2eITQOcbg1T48x9n2gPSkwl8wpqqJGBQASJtKnS+4G
8J5l45JEcpIQ9XIny77v
=oJz+
-----END PGP SIGNATURE-----

--=-qdMqkuFmIKMMwhvXeYd3--
