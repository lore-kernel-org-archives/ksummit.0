Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1AF0D1023
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Sep 2019 12:01:21 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A122B81A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Sep 2019 12:01:20 +0000 (UTC)
Message-ID: <1568030467.6613.19.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Mark Brown <broonie@kernel.org>
Date: Mon, 09 Sep 2019 13:01:07 +0100
In-Reply-To: <20190909115338.GD2036@sirena.org.uk>
References: <CAPM=9tx7toB7Bsif6RDo51HNxcGbbHDPHD7DjmF9i+zs-J0HRQ@mail.gmail.com>
	<1568025855.6613.5.camel@HansenPartnership.com>
	<20190909115338.GD2036@sirena.org.uk>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-Xs8hKXvDJJdvu72OLvfE"
Mime-Version: 1.0
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] vague topic for maintainers summit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--=-Xs8hKXvDJJdvu72OLvfE
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2019-09-09 at 12:53 +0100, Mark Brown wrote:
> On Mon, Sep 09, 2019 at 11:44:15AM +0100, James Bottomley wrote:
>=20
> > I haven't really found corporations attempting to apply pressure to
> > get their patches merged as is, although I've heard of others
> > having this
>=20
> I've definitely faced this in various forms, mostly coming from
> companies in the embedded space.  It feels like it's got better
> over time as companies have become less prone to going on
> substantial out of tree adventures but it's still there.
>=20
> > problem.  My usual problem is that the creator of the patch is
> > deeply wedded to their design and doesn't want to change so it's an
> > individual rather than a corporate issue.
>=20
> That's often a corporate problem as well, if the company has a
> big investment in whatever approach or codebase they have they
> may not want to spend the time on substantial rework.  Often it
> seems fairly clear that the people doing the upstreaming have
> inherited something from other engineers rather than having done
> the design and original implementation themselves.  In my more
> embedded experience I'd say that the corporate investment is a
> more common issue than developers.

Actually, I find the inherited code part easier because usually the
person pushing it isn't wedded to someone else's design and is happier
to do a rework because it makes it more their code.  My biggest problem
has been with the original author trying to push their design as the
only possible way and then trying to bring corporate pressure to bear
when it became clear this wouldn't be accepted.

> I'm not sure I have any particularly bright ideas other than
> being clear with people about what the issues are and asking for
> clearer explanations of what's being done and why it's different
> to everything else.

Trying to explain that it's a maintenance and consistency issue more
than anything else does seem to help.

James

--=-Xs8hKXvDJJdvu72OLvfE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iHUEABMIAB0WIQTnYEDbdso9F2cI+arnQslM7pishQUCXXY/AwAKCRDnQslM7pis
hR/OAQDaZX7p4mTdWA0ghBFYQle4QaVEA4StZ3iggg3i9j1NAQEAulE128qCtOB6
VJjGe6F9xy4q4HI4hP2WcygPq0mapdY=
=neI9
-----END PGP SIGNATURE-----

--=-Xs8hKXvDJJdvu72OLvfE--
