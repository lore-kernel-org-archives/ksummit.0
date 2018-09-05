Return-Path: <broonie@sirena.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C75C8D39
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 15:10:09 +0000 (UTC)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk
	[172.104.155.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 57F327E7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 15:10:09 +0000 (UTC)
Date: Wed, 5 Sep 2018 16:10:05 +0100
From: Mark Brown <broonie@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
Message-ID: <20180905151005.GR9781@sirena.org.uk>
References: <5c9c41b2-14f9-41cc-ae85-be9721f37c86@redhat.com>
	<CAFbkSA3Zjojhb4uUFrdpJUTSWz1V9RbG_EL83roQY3bzX80i-g@mail.gmail.com>
	<20180905144233.GB15573@kroah.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="AFQGHouA0VN8Ovbt"
Content-Disposition: inline
In-Reply-To: <20180905144233.GB15573@kroah.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Justin Forbes <jforbes@redhat.com>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] Stable trees and release
 time
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--AFQGHouA0VN8Ovbt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Sep 05, 2018 at 04:42:33PM +0200, Greg KH wrote:

> totally-crazy-intrusive patches I have had to take is insane.  Combine
> that with a total lack of regard for the security issues for some arches
> (arm32 comes to mind), it's been a very rough year and I have been just
> trying to keep on top of everything.

There is regard for the arm32 stuff, it's just a question of having
enough people to do the backports to the excitingly old kernels that
people want for both arm32 and especially arm64 (which is a lot more
here fun as it's been more actively developed in the relevant time
period for current stable kernels).  Watch this space basically.

--AFQGHouA0VN8Ovbt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAluP8cwACgkQJNaLcl1U
h9CghAf/dxQ/4BQTtmdLG4lz9dhRhdEYLXQhldjqrah8v3XUg5NwbzUzTmDj2Rbo
VfeTuK0YB57Z74rltWWNi98nfQpKq5lu9iG+jVVDPwbZqnRjqHq2DMnqD1fAU0r0
L94IMmuV56fgK6lIB9Y7NONrpFUXAFMo/9lHKcsWEJWQTOsI12OAeI2QrDmfqXoW
lLaaGeQF+k/e6iKg1+JiRQmeI+H+CoHmQP56l+pI4mZLykMChl2pMxf7+XpyY57k
N4F+xc4od5nUN5ZFI6dsnKaj3+oCkLewKh0POrfUsJZG7KvPT7VBm1ssrrZdO3fr
4C/baMJANE1U1u5Zm7jfFPACS1408g==
=JaQi
-----END PGP SIGNATURE-----

--AFQGHouA0VN8Ovbt--
