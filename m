Return-Path: <konstantin@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1B5D89F2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 14:07:56 +0000 (UTC)
Received: from mail-ig0-f177.google.com (mail-ig0-f177.google.com
	[209.85.213.177])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B1778110
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 14:07:55 +0000 (UTC)
Received: by igbij6 with SMTP id ij6so22367352igb.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 07:07:55 -0700 (PDT)
Date: Mon, 13 Jul 2015 10:07:52 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Jiri Kosina <jkosina@suse.com>
Message-ID: <20150713140752.GA15582@gmail.com>
References: <20150710143832.GU23515@io.lakedaemon.net>
	<CA+5PVA5j9973GzdYj-s2WX3J8ycf5hQTBdGq+8j-8RGDX2OaYg@mail.gmail.com>
	<20150710162328.GB12009@thunk.org>
	<CAGXu5j+NY8-5WPcP1kLZsKgzmbQ=L0Q18XZ6FYeVTcFGDLrRSw@mail.gmail.com>
	<1436599873.2243.10.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1507131027000.7522@pobox.suse.cz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="TB36FDmn/VVEgNH/"
Content-Disposition: inline
In-Reply-To: <alpine.LNX.2.00.1507131027000.7522@pobox.suse.cz>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] dev/maintainer workflow security
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--TB36FDmn/VVEgNH/
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 13, 2015 at 10:32:06AM +0200, Jiri Kosina wrote:
> If the credentials can be used both to push to ra.kernel.org and to acces=
s=20
> your "local" copy of the GIT repo (on your notebook / desktop / storage),=
=20
> I can just push the malicious commit (*) to both repos and you might not=
=20
> notice immediately (because you wouldn't get non-fast-forward hint from=
=20
> git).

This is mitigated somewhat by existing 2-factor mechanisms placed on
select git repositories.

https://korg.wiki.kernel.org/userdoc/gitolite_2fa

To successfully attack in this manner, you would need to push to
gitolite.kernel.org from an IP address that's been previously
2fa-validated by the developer.

Which brings me around to grumbling a bit -- since we've made 2-factor
auth available, only 30 people have set up a token[*] (not even 10% of all
account holders) and only 25 repositories/subdirs have a 2fa requirement
on them, out of 450 defined.

I'm far from suggesting that we make this mandatory, but I'm open to
any suggestions on how we can make more developers enroll with 2fa.

Best,
--=20
Konstantin Ryabitsev
Linux Foundation Collab Projects
Montr=C3=A9al, Qu=C3=A9bec

[*] Not counting a couple of people using GPG smartcards/yubikeys
    for their ssh authentication.


--TB36FDmn/VVEgNH/
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJVo8Y1AAoJEDZgaZyZ4FVXOgkH/0x2gYX/IMUcwHYumPhJVBqf
HyJIftw1AVTuOwYgnyAXNDxvora2ZHpf425peyooTGsIS1kfnz9RhDpQrcdcqm6O
k5NOGcIxqkaWHjtTVGNKYYd1YbjN6KRJrIChWlEsPXjCQDv3wADTDJafTxNjTSyt
yasAW/D+MHJfinbYtMDK9mHPTcdc6BqHObDPxKnx4Lu4FbDwTpadrTsM/AcdTT3q
pvWxysQLzEDs3XDVx1MOW8ykDSJ+wP2+9iHip+6eW0OTztglSxKI9jBP/Il/k4hO
1pGK+UKf6SzzFlRbDInqsfCx/OLNRiAAoYOef7pPvibW3soBB7PYR/BSbrWiH18=
=o3FI
-----END PGP SIGNATURE-----

--TB36FDmn/VVEgNH/--
