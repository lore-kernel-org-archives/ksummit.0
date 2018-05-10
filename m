Return-Path: <tony@atomide.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5494F825
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 10 May 2018 15:57:59 +0000 (UTC)
Received: from muru.com (muru.com [72.249.23.125])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id E38EB682
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 10 May 2018 15:57:58 +0000 (UTC)
Date: Thu, 10 May 2018 08:57:55 -0700
From: Tony Lindgren <tony@atomide.com>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Message-ID: <20180510155755.GF98604@atomide.com>
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
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="r5Pyd7+fXNt84Ff3"
Content-Disposition: inline
In-Reply-To: <20180509204727.7ff38021@canb.auug.org.au>
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


--r5Pyd7+fXNt84Ff3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

* Stephen Rothwell <sfr@canb.auug.org.au> [180509 10:49]:
> I currently have 44 such fixes branches.  More welcome!

Can you please also add mine:

git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap.git fixes

Thanks,

Tony



--r5Pyd7+fXNt84Ff3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkgNvrZJU/QSQYIcQG9Q+yVyrpXMFAlr0bAAACgkQG9Q+yVyr
pXPEpw//Xf2XUKq9mvoygg2qozGp0qMdr4i/+4t9hP8gwYl2ZXlmzeaVoJvJb1jb
xE/bKEMazXZ0xs3k9kDIqeZAG/f9TRT/BLJudkjGm4iJz49FA35rp1caY2OEjL3z
R3AmDsaREWSQ+rEuWU0M8wtroxbsEmNEtYF1EpAL7St0eQvfHIvQhoN17Gnf81tS
/OoBpNyupNaooZY17xtf7/OSGJgdkfvoh3Mpntvkv5k48tLGo7BHhjxgwYLf2xo+
VSlcaB+To+Hvf+1qpuqEhsgY8kODL/f7oBB/bGsXfQ4SnAwnBUErYGudS/c9D8bz
von8xjXAPCIvtJ3g7TKTfaQemffGnQ0gpUPcOcu8RS4aew3dGyssOd/oC8C3pGLy
E9LrdBfHaB2/mQPyuK5zBozFgrjbC5/TKIFGpt0NxG4GC6jQFN0HR87MXIdDTjaF
g3drs+aqR7GB1hgmb1KyCNP+fryRGO4Z5xZ6nMzfiP/nsROkDTd5qF//K4tho0bT
rAuhpUXw67iF7tBBBDQ3zUEgdzlWx9MTlVnt8YYcLPF4YQd5ATOqXNroi382YwES
tzkdNTfY6pvDWffNSYCSCaeMWM9YS7d5owjMwP6LX4itEq+I1kpOz/hvfWQzkkNV
GBYLHZGIpX9eHNzPKob5yWoLy6qJIOoLH9+d1ruTdFJ24gg6HvU=
=GSF7
-----END PGP SIGNATURE-----

--r5Pyd7+fXNt84Ff3--
