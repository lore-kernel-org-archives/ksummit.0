Return-Path: <sfr@canb.auug.org.au>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 14F9A8A5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  1 May 2018 23:28:54 +0000 (UTC)
Received: from ozlabs.org (ozlabs.org [203.11.71.1])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7112318A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  1 May 2018 23:28:53 +0000 (UTC)
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Sasha Levin <Alexander.Levin@microsoft.com>
Message-ID: <20180502092850.5985b0fb@canb.auug.org.au>
In-Reply-To: <20180501200019.GA7397@sasha-vm>
References: <20180501163818.GD1468@sasha-vm> <20180501194450.GD10479@thunk.org>
	<20180501200019.GA7397@sasha-vm>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	boundary="Sig_/RjqM6d1FNoifwZZW4ZOVoOa";
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
Date: Tue, 01 May 2018 23:28:54 -0000

--Sig_/RjqM6d1FNoifwZZW4ZOVoOa
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Sasha,

On Tue, 1 May 2018 20:00:21 +0000 Sasha Levin <Alexander.Levin@microsoft.co=
m> wrote:
>
> I've just finished reading an interesting article on LWN about the
> PostgreSQL fsync issues (https://lwn.net/Articles/752952/). If you
> look at Willy's commit, he wrote the final version of it about 5 days
> ago, Jeff merged it in 3 days ago, and Linus merged it in the tree
> today. Did it spend any time getting -next testing? nope.

The patch was in linux-next from Monday, so it had at least one release
before Linus merged it.  How much testing that got is another issue.

--=20
Cheers,
Stephen Rothwell

--Sig_/RjqM6d1FNoifwZZW4ZOVoOa
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAlro+DIACgkQAVBC80lX
0Gz1CwgAjf3Fk6mT/XelVPL7owk2jDG6jr3p3VYkQoLX92GZfQTetnp2nNcAattA
BY31E2l8hucF2qBDhKj7pv7hGEwKgNRjQrGpyB2l1PCxQWI042Xix6rYV6GI12DU
xdxkR40JP9t7inkJZcT3AeHc8QRw66UxfOpIQwXAEn2PLqBaKMP0/eyyWfw0LpAA
VhVxo25uYcif37abeMLvHdno/DtOcte8ylgNQxBPJl3CGuG66UpNt7Xk/9ET7OOn
d7fRZSothXnCkPEzSBXxotMc0y4zTr8OOnoN8OhnXKp8Mcng1ZS2lLrQ3gJAsUrJ
yG+L3levq5APKn3KRpinLICUg1H6ZQ==
=sajT
-----END PGP SIGNATURE-----

--Sig_/RjqM6d1FNoifwZZW4ZOVoOa--
