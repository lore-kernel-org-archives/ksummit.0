Return-Path: <sfr@canb.auug.org.au>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CC1258A5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  1 May 2018 23:10:07 +0000 (UTC)
Received: from ozlabs.org (ozlabs.org [203.11.71.1])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0A6505D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  1 May 2018 23:10:06 +0000 (UTC)
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Sasha Levin <Alexander.Levin@microsoft.com>
Message-ID: <20180502090154.6f9611d6@canb.auug.org.au>
In-Reply-To: <20180501163818.GD1468@sasha-vm>
References: <20180501163818.GD1468@sasha-vm>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	boundary="Sig_/01pENINGTr6GYSrWc_2qU9.";
	protocol="application/pgp-signature"
Cc: "ksummit-discuss@lists.linuxfoundation.org"        
	<ksummit-discuss@lists.linuxfoundation.org>, Greg KH
	<gregkh@linuxfoundation.org>, "w@1wt.eu, " <w@1wt.eu>,
	"julia.lawall@lip6.fr, "
	<julia.lawall@lip6.fr>, "linux-kernel@vger.kernel.org,
	<linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
Date: Tue, 01 May 2018 23:10:07 -0000

--Sig_/01pENINGTr6GYSrWc_2qU9.
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Sasha,

On Tue, 1 May 2018 16:38:21 +0000 Sasha Levin <Alexander.Levin@microsoft.co=
m> wrote:
>
>  - v4.4..v4.16 (just becuase it's as far as linux-next-history goes).

Umm, the linux-next-history tree I have covers practically all
linux-next releases (next-20080214 to next-20180501) which covers
v2.6.25-rc1-120-ge760e716d47b to v4.17-rc3-3-g8188fc8bef8c in Linus'
tree.  However, the copy on git.kernel.org seems to only have the tags
beyond next-20160118 ... I wonder why, since I push my copy onto
git.kernel.org every evening ...  actually I don't. I push my
linux-next tree onto the git.kernel.org linux-next-history tree.  Let
me fix that (just in case you want more data ;-)).
--=20
Cheers,
Stephen Rothwell

--Sig_/01pENINGTr6GYSrWc_2qU9.
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAlro8eIACgkQAVBC80lX
0GyYtwgAkyqwaOa0xR0mqnqfxsym6+Pu6fXs5UZa23Vx3OBxVKJsKzKGtzHcBmBU
tf57AFNI26PQco4L+CERbUtMrrtMKROy7YxMGSOsu2AQek8XUUGc0YY9bU1QTfZk
2Q0blcVCQvSzxi8RE9OQATrbA5H0Gw4T2E3ALkU3dr3yfNJt16BFOKDC3BH5+UnZ
++JSNeXe4gcPm6o9VxOHztbhkqp0+yT9ONgHnVpnHZTkMFNZXO/YT/8pSP+2Qyey
odRmIIm0WGvDvR95wBqoQ6IriCGXl3LDm5xZu71IE+aXcpGnc5RByKKI8HdhjkTd
kxXfV7FOWdvCxCl7quU5NsmfnfqLTQ==
=LpHA
-----END PGP SIGNATURE-----

--Sig_/01pENINGTr6GYSrWc_2qU9.--
