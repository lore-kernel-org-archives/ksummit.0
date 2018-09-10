Return-Path: <konstantin@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1A10D122B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 18:59:32 +0000 (UTC)
Received: from mail-it0-f47.google.com (mail-it0-f47.google.com
	[209.85.214.47])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B12FF7E9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 18:59:31 +0000 (UTC)
Received: by mail-it0-f47.google.com with SMTP id h1-v6so30125733itj.4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 11:59:31 -0700 (PDT)
Received: from [10.137.0.22] (ca2x.mullvad.net. [162.219.176.251])
	by smtp.gmail.com with ESMTPSA id
	o3-v6sm7281049iod.28.2018.09.10.11.59.29
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 10 Sep 2018 11:59:29 -0700 (PDT)
To: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Message-ID: <06539e48-f20c-431d-51aa-3d299ef894ac@linuxfoundation.org>
Date: Mon, 10 Sep 2018 15:00:09 -0400
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="iNQ76dl7crWNrPQE64uZFmO8sDDpIdlC7"
Subject: [Ksummit-discuss] [MAINTAINER SUMMIT] Gitlab (or similar) hosting
	at kernel.org
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--iNQ76dl7crWNrPQE64uZFmO8sDDpIdlC7
Content-Type: multipart/mixed; boundary="ZTAYEn0aIDWCYQ2iZCZENd8Lq0bYn5LCV";
 protected-headers="v1"
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: "ksummit-discuss@lists.linuxfoundation.org"
 <ksummit-discuss@lists.linuxfoundation.org>
Message-ID: <06539e48-f20c-431d-51aa-3d299ef894ac@linuxfoundation.org>
Subject: [MAINTAINER SUMMIT] Gitlab (or similar) hosting at kernel.org

--ZTAYEn0aIDWCYQ2iZCZENd8Lq0bYn5LCV
Content-Type: text/plain; charset=utf-8
Content-Language: en-CA
Content-Transfer-Encoding: quoted-printable

Hi, all:

The topic of Gitlab comes up quite a bit recently, so I think it's worth
having a separate conversation about it. Kernel.org provides gitolite
hosting, which works great for most "old skool" maintainers who are
comfortable with "everything over email" (see Greg's talk about patches
carved into stone tablets [1]). However, just in case I'm stuck in an
echo chamber, I wanted to ask if providing a more "holistic" platform
like Gitlab (or one of its alternatives like Pagure, pending evaluation)
is something we should be actively considering to be offered centrally
as a standard kernel.org service.

=2E. [1]
https://kernel-recipes.org/en/2016/talks/patches-carved-into-stone-tablet=
s/

Regards,
--=20
Konstantin Ryabitsev
The Linux Foundation
kernel.org


--ZTAYEn0aIDWCYQ2iZCZENd8Lq0bYn5LCV--

--iNQ76dl7crWNrPQE64uZFmO8sDDpIdlC7
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYIAB0WIQR2vl2yUnHhSB5njDW2xBzjVmSZbAUCW5a/OQAKCRC2xBzjVmSZ
bJM+AP9pjrGZUsS/FprYYMVqGxw5PAqTZKVxQeWzdb3QKyFtRAEA4EA7EoNwdp9V
weua5+k0Fj0i+M21D4yFrm5YYdu5HQA=
=G8Hc
-----END PGP SIGNATURE-----

--iNQ76dl7crWNrPQE64uZFmO8sDDpIdlC7--
