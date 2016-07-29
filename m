Return-Path: <ben@decadent.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9044483D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 12:43:38 +0000 (UTC)
Received: from shadbolt.e.decadent.org.uk (shadbolt.e.decadent.org.uk
	[88.96.1.126])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9B91C149
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 12:43:37 +0000 (UTC)
Message-ID: <1469796205.4176.85.camel@decadent.org.uk>
From: Ben Hutchings <ben@decadent.org.uk>
To: James Bottomley <James.Bottomley@HansenPartnership.com>, David Howells
	<dhowells@redhat.com>
Date: Fri, 29 Jul 2016 13:43:25 +0100
In-Reply-To: <1469637367.27356.73.camel@HansenPartnership.com>
References: <1469631987.27356.48.camel@HansenPartnership.com>
	<20150804152622.GY30479@wotan.suse.de>
	<1468612258.5335.0.camel@linux.vnet.ibm.com>
	<1468612671.5335.5.camel@linux.vnet.ibm.com>
	<20160716005213.GL30372@sirena.org.uk>
	<1469544138.120686.327.camel@infradead.org>
	<14209.1469636040@warthog.procyon.org.uk>
	<1469636881.27356.70.camel@HansenPartnership.com>
	<1469637367.27356.73.camel@HansenPartnership.com>
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-0/YIm2lMcR6o2g/f3ELD"
Mime-Version: 1.0
Cc: Mark Brown <broonie@sirena.org.uk>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Last minute nominations: mcgrof and toshi
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--=-0/YIm2lMcR6o2g/f3ELD
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2016-07-27 at 12:36 -0400, James Bottomley wrote:
> On Wed, 2016-07-27 at 12:28 -0400, James Bottomley wrote:
> > On Wed, 2016-07-27 at 17:14 +0100, David Howells wrote:
> > > James Bottomley <James.Bottomley@HansenPartnership.com> wrote:
> > >=20
> > > > =C2=A0=C2=A0=C2=A01. Population and update policy: How should we po=
pulate the default
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0keyrings and revocation lists?=
=C2=A0=C2=A0Should we have a built in list of
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0absolute trust that can never b=
e added to? I think the current
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0default here is OK: it's popula=
te with the kernel built in keys and
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0nothing else.=C2=A0=C2=A0If use=
rspace wants to populate with, say, the secure
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0boot keys, then it can do so fr=
om init.=C2=A0=C2=A0An issue here is the
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Microsoft signing key, which mo=
st Linux people have but which they
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0wouldn't necessarily consider t=
o be a source of absolute trust.=C2=A0
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0However, third party driv=
er vendors would like a way to get their
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0key trusted by the kernel so th=
ey can easily supply modules (This
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0isn't a binary module issue: th=
e code is usually GPL, but the
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0vendors would like to supply up=
dates asynchronously to the distro
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0release cycle).=C2=A0=C2=A0We c=
an say their key should be added as part of the
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0rpm that installs the module, b=
ut do users really want this key
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0adding to the default keyring t=
o be trusted for non-module
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0operations?
> > >=20
> > > I have patches that allow the UEFI key and blacklist databases to=C2=
=A0
> > > add to the kernel keyrings during boot.
> > >=20
> > > We don't want to permit loading a key from a file once the kernel=C2=
=A0
> > > is booted unless that key is signed by a key already in the
> > > keyrings.
> >=20
> > This is a policy discussion we should have.=C2=A0=C2=A0If you populate =
the
> > immutable .builtin_trusted_keys keyring with the secure boot keys,=C2=
=A0
> > most people will end up with a Microsoft key in their keyring (and
> > possibly even some random motherboard vendor ODM key) which they=C2=A0
> > can't remove.=C2=A0=C2=A0I thought the idea was to use the=C2=A0
> > .secondary_trusted_keys keyring which is mutable?=C2=A0=C2=A0That way w=
e can=C2=A0
> > have policy in userspace select which secure boot keys we might like
> > to trust.
>=20
> As an aside to the aside, perhaps we want the .builtin_trusted_keys to
> be mutable up to the point the kernel finishes init and then immutable
> after.=C2=A0=C2=A0That would allow us to update it from the initrd if the
> composition of the secure boot keys was in question.

That would seem to open a large hole unless the initramfs can be
verified as trusted (either by the boot loader or the kernel).

Speaking of holes in code signing, the securelevel patches never went
into mainline. =C2=A0Is it worth discussing again how/whether to implement
that sort of restrictions?

Ben.

--=20

Ben Hutchings
Experience is directly proportional to the value of equipment
destroyed.
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0- Carolyn
Scheppner

--=-0/YIm2lMcR6o2g/f3ELD
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCgAGBQJXm09uAAoJEOe/yOyVhhEJYH8QAIfyHUHYy/Me+0QDqsEIyeTD
gVoCShuAOPMOtYKl0DPJdHjpZFJdvpzT4xFI9X1VAg2ebS8zKccmEsOYRot22o3t
w1K0pJ4YfPRi5nQisIucBf27HoeANmmjBaK4c6b7QjvWKdvQkFSa1Gs0sVLcQ8tR
+F+h7YQQ+Ax7cebckZusPmCxxaNpeflN8Hn2QVVz17/kp9hesBQaIRoxL3IC8J6E
GH96YwLEAdPdgcaMafwD8CK5OXNdnyLycLgZtNYFVQT4/MNkfoCrqElQE/ov6U/f
jhZaCgyeYjInu2GCe+v7QEYSOjPj1ZAmRaAyuT+qXx2siN+Smv6TCwCPZreSVwei
7iQ75hwyW2RkrmGVl6we2uD5vdnO94n7jwe1zzQPgACWcHVQsYVnrjIls2zwANlY
R6Xl+izFyWOZo6D8gGh81kdWkgG6x2oNCqKSl6MDT/vFYxVdXrnQDosV9fa2SU5f
Eq/Yhi1ZfTB+fm+eC9DZ9YWHhSDyqPWyXxF0mya8V/SlaSeT80kM3ig4WcmGorlb
XDPzTbbjSYGN/pz7pi9tueUhYW81DthBIkjUkjiBA0shhRW0E4SHUOpMGNvqy4c6
Exu67U3NgOVqtnhiTyeY9UZSXaVSs+iH05+azzvT4jxXXz/2LxcNkN13D/MP2JNd
GJv+q9lCay0XptkzHGY+
=zeet
-----END PGP SIGNATURE-----

--=-0/YIm2lMcR6o2g/f3ELD--
