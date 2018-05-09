Return-Path: <sfr@canb.auug.org.au>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4B674CEE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  9 May 2018 21:45:26 +0000 (UTC)
Received: from ozlabs.org (ozlabs.org [203.11.71.1])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8FF63681
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  9 May 2018 21:45:25 +0000 (UTC)
Date: Thu, 10 May 2018 07:45:07 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20180510074507.75423824@canb.auug.org.au>
In-Reply-To: <20180509155733.GA13575@roeck-us.net>
References: <20180503020550.GP2714@sirena.org.uk>
	<20180503031000.GC29205@thunk.org>
	<0276fcda-0385-8f22-dbdb-e063f7ed8bbe@roeck-us.net>
	<20180503224217.GR2714@sirena.org.uk>
	<20180503230905.GA98604@atomide.com>
	<CAPDyKFrCKkRHwOh-7yfFbvMp+Ykhs7oXrDwhTShSPvUBvpn2ZQ@mail.gmail.com>
	<20180509084440.GW13402@sirena.org.uk>
	<CAKMK7uEWYmhA3owSeYM9tNA0tpMm5=4Yqda2j=VfMWi7i8ya8w@mail.gmail.com>
	<20180509090346.GY13402@sirena.org.uk>
	<20180509204727.7ff38021@canb.auug.org.au>
	<20180509155733.GA13575@roeck-us.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	boundary="Sig_/lU+hWpCKhqV3z7H0WtOau._";
	protocol="application/pgp-signature"
Cc: Greg KH <gregkh@linuxfoundation.org>, "w@1wt.eu" <w@1wt.eu>,
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

--Sig_/lU+hWpCKhqV3z7H0WtOau._
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Guenter,

On Wed, 9 May 2018 08:57:33 -0700 Guenter Roeck <linux@roeck-us.net> wrote:
>
> Please add
>=20
> git://git.kernel.org/pub/scm/linux/kernel/git/groeck/linux-staging.git hw=
mon
>=20
> as fixes branch.

Added from today.

Thanks for adding your subsystem tree as a participant of linux-next.  As
you may know, this is not a judgement of your code.  The purpose of
linux-next is for integration testing and to lower the impact of
conflicts between subsystems in the next merge window.=20

You will need to ensure that the patches/commits in your tree/series have
been:
     * submitted under GPL v2 (or later) and include the Contributor's
        Signed-off-by,
     * posted to the relevant mailing list,
     * reviewed by you (or another maintainer of your subsystem tree),
     * successfully unit tested, and=20
     * destined for the current or next Linux merge window.

Basically, this should be just what you would send to Linus (or ask him
to fetch).  It is allowed to be rebased if you deem it necessary.

--=20
Cheers,
Stephen Rothwell=20
sfr@canb.auug.org.au

--Sig_/lU+hWpCKhqV3z7H0WtOau._
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAlrza+MACgkQAVBC80lX
0GzYGAf/fceOXkMiVU0RWyaGOjbP5Uen/SIAB/QZeY9+3DYkEcLAnw3Osx+1tzPt
nBuo+bOYaO4nMSIzXYtUFHYbd02fmcvvFKUdFhqOOBcTRPeNGoKtJCzBMIGwYdKx
yFDGY+KPeLPH/GpK2YLkTzxz+Ezcj4kPjI+7mpIHKa4UgtnX39/aKSi71eQtuP+y
8Gp5ReapawAcLTCWcuBMy9C63/LsynetiDk467lNbM9Z/UiJBpA0LAkkkOe0xGeK
vFP5Et0MXXM1ZmO+cxe2C3seBke+5f7pjmxKsJAPMk4YhJCAb3Vm9hhmLF/2sjDe
3HiWvHj4oABlH/pp+cGEUfxzdfefkQ==
=mrqg
-----END PGP SIGNATURE-----

--Sig_/lU+hWpCKhqV3z7H0WtOau._--
