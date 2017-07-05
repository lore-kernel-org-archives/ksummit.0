Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7960FBA2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jul 2017 15:20:42 +0000 (UTC)
Received: from mezzanine.sirena.org.uk (mezzanine.sirena.org.uk
	[106.187.55.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DA3AE23C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Jul 2017 15:20:41 +0000 (UTC)
Date: Wed, 5 Jul 2017 16:20:26 +0100
From: Mark Brown <broonie@kernel.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20170705152026.rkw73q2f6xmiju37@sirena.org.uk>
References: <ad94dc65-cc9c-f4f1-27c1-5a48603c7f59@leemhuis.info>
	<20170705084528.67499f8c@gandalf.local.home>
	<4080ecc7-1aa8-2940-f230-1b79d656cdb4@redhat.com>
	<20170705092757.63dc2328@gandalf.local.home>
	<20170705140607.GA30187@kroah.com>
	<20170705143341.oees22k2snhtmkxo@sirena.org.uk>
	<20170705103658.226099c6@gandalf.local.home>
	<1499266228.3668.10.camel@HansenPartnership.com>
	<20170705105651.5da9c969@gandalf.local.home>
	<1499267389.3668.16.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="dlwfvgsp4q6epntn"
Content-Disposition: inline
In-Reply-To: <1499267389.3668.16.camel@HansenPartnership.com>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Carlos O'Donell <carlos@redhat.com>, linux-api@vger.kernel.org,
	Shuah Khan <shuahkh@osg.samsung.com>,
	Thorsten Leemhuis <linux@leemhuis.info>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] & [TECH TOPIC] Improve
 regression tracking
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--dlwfvgsp4q6epntn
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 05, 2017 at 08:09:49AM -0700, James Bottomley wrote:
> On Wed, 2017-07-05 at 10:56 -0400, Steven Rostedt wrote:
> > James Bottomley <James.Bottomley@HansenPartnership.com> wrote:

> > > you're protecting was accessed outside the lock, which is the usual
> > > source of concurrency problems. =A0In other words lockdep is useful
> > > but it's not a panacea.

> > Still not an excuse to not have lockdep enabled during tests.

> OK, what makes you think lockdep isn't enabled? =A0Since Kconfig is so
> complex, I usually use a distro config ... they have it enabled (or at
> least openSUSE does), so it's enabled for everything I do.

Yeah, I see enough reports with it in embedded contexts to make me think
people use it there.  I know I tend to have it turned on most of the
time.  The concurrency stuff I'm thinking of here is more the things
you're mentioning with just not taking locks at all when they are needed
or concurrency with hardware.

--dlwfvgsp4q6epntn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlldA7kACgkQJNaLcl1U
h9AHoQf/bbjyToJnzu8CaKvGFqkA7S98lT12GTvIyI4o4g3Fb8cuCjquwUL3wqyG
B5ue9WFc4pRq9qpeSakfC1QQHzBizRAkzWRYGWj7Ep+34BSYPDpyhQN9Nc5GNofW
aPREGjUnYq3JIiJxRn1Vz1FIIqE291KkVnF+s3uV/DHKzCarQ+HdqqeDOsUHKg2g
sostJAJqB83Qc/tejy7XvYu3Y7GynktRG7jfE/fZnRRLo00+jM17B/9wAsRFZWaa
Deb/3hMXBu7YPLhZOtKhVz7731m+z7+KTncGNFucLVvCbMlzzbgfrBiUmgFzIFFw
jboW9O0kUOAXeo55bY2pMlm/FcqgYw==
=DA1C
-----END PGP SIGNATURE-----

--dlwfvgsp4q6epntn--
