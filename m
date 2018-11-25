Return-Path: <pavel@ucw.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 08E3A415
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 25 Nov 2018 10:57:59 +0000 (UTC)
Received: from atrey.karlin.mff.cuni.cz (atrey.karlin.mff.cuni.cz
	[195.113.26.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 513658A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 25 Nov 2018 10:57:58 +0000 (UTC)
Date: Sun, 25 Nov 2018 11:57:54 +0100
From: Pavel Machek <pavel@ucw.cz>
To: Dan Williams <dan.j.williams@intel.com>
Message-ID: <20181125105754.GB25471@amd>
References: <154225759358.2499188.15268218778137905050.stgit@dwillia2-desk3.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="QKdGvSO+nmPlgiQ/"
Content-Disposition: inline
In-Reply-To: <154225759358.2499188.15268218778137905050.stgit@dwillia2-desk3.amr.corp.intel.com>
Cc: Dave Jiang <dave.jiang@intel.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Ross Zwisler <zwisler@kernel.org>, linux-kernel@vger.kernel.org,
	linux-nvdimm@lists.01.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Steve French <stfrench@microsoft.com>,
	Vishal Verma <vishal.l.verma@intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Dmitry Vyukov <dvyukov@google.com>, "Tobin C. Harding" <me@tobin.cc>
Subject: Re: [Ksummit-discuss] [RFC PATCH 0/3] Maintainer Handbook:
	Subsystem Profile
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--QKdGvSO+nmPlgiQ/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed 2018-11-14 20:53:13, Dan Williams wrote:
> At a recently concluded session at the Linux Plumbers Conference I
> proposed a "Subsystem Profile" as a document that a maintainer can
> provide to set contributor expectations and provide fodder for a
> discussion between maintainers about the merits of different maintainer
> policies.
>=20
> For those that did not attend, the goal of the Subsystem Profile, and the
> Maintainer Handbook more generally, is to provide a desk reference for
> maintainers both new and experienced. The session introduction was:
>=20
>     The first rule of kernel maintenance is that there are no hard and
>     fast rules. That state of affairs is both a blessing and a curse. It
>     has served the community well to be adaptable to the different
>     people and different problem spaces that inhabit the kernel
>     community. However, that variability also leads to inconsistent
>     experiences for contributors, little to no guidance for new
>     contributors, and unnecessary stress on current maintainers. There
>     are quite a few of people who have been around long enough to make
>     enough mistakes that they have gained some hard earned proficiency.
>     However if the kernel community expects to keep growing it needs to
>     be able both scale the maintainers it has and ramp new ones without
>     necessarily let them make a decades worth of mistakes to learn the
>     ropes.=20
>=20
> To be clear, the proposed document does not impose or suggest new
> rules. Instead it provides an outlet to document the unwritten rules
> and policies in effect for each subsystem, and that each subsystem
> might decide differently for whatever reason.

Sounds like a new rules to me :-(, making submitting simple patches
harder.

It would be good if the rules were similar / same accross the
subsystems, documenting "it is okay to be different" is not really helpful.


									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--QKdGvSO+nmPlgiQ/
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAlv6gDIACgkQMOfwapXb+vIHpACeMr/5ZBBOd8P13v1FJdbu09st
8jwAoLVfTBCtCF/7C+p9+kZKxV4DKggb
=utEq
-----END PGP SIGNATURE-----

--QKdGvSO+nmPlgiQ/--
