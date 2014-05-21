Return-Path: <konstantin@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id F1EAF932
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 00:41:10 +0000 (UTC)
Received: from mail-ie0-f180.google.com (mail-ie0-f180.google.com
	[209.85.223.180])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 764C22027A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 00:41:10 +0000 (UTC)
Received: by mail-ie0-f180.google.com with SMTP id tp5so1258475ieb.25
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 May 2014 17:41:09 -0700 (PDT)
Sender: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Message-ID: <537BF61A.5010700@kernel.org>
Date: Tue, 20 May 2014 20:40:58 -0400
From: Konstantin Ryabitsev <mricon@kernel.org>
MIME-Version: 1.0
To: josh@joshtriplett.org, "H. Peter Anvin" <hpa@zytor.com>
References: <537BA385.6090208@zytor.com> <20140520225301.GC21744@cloud>
In-Reply-To: <20140520225301.GC21744@cloud>
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="Xl4IVBGkmPjeLIf4lnPNaxHNHVrKvRuFo"
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Services needed from kernel.org
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--Xl4IVBGkmPjeLIf4lnPNaxHNHVrKvRuFo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 20/05/14 06:53 PM, josh@joshtriplett.org wrote:
> How feasible is it to support git hooks that want to construct and send=

> (significant volumes of) email, while retaining the security and
> sandboxing currently being applied to git repositories?

It's feasible, but I can't make this a free-for-all, for obvious
reasons. :) With gitolite, hooks execute as the same user "git" and
therefore any code running inside a hook has unfettered access to all
git repositories regardless of in-gitolite repository permissions.

What we can do is have a peer-reviewed collection of "blessed" hooks
available to developers. Not being a kernel dev myself, I'm not the one
to put such a collection together, though -- I'm not even sure if such a
cookie-cutter approach would be suitable.

I guess what I'm really trying to say is that I'd rather avoid having to
continuously review code written by people to whom "you write perl like
it's C" is a compliment. ;) If we can get by with a handful of standard
hooks, I'm for it, though.

Best,
--=20
Konstantin Ryabitsev
Senior Systems Administrator
Linux Foundation Collab Projects
Montr=C3=A9al, Qu=C3=A9bec


--Xl4IVBGkmPjeLIf4lnPNaxHNHVrKvRuFo
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1
Comment: Using GnuPG with Thunderbird - http://www.enigmail.net/

iQGcBAEBCAAGBQJTe/YeAAoJEI6WedmufEleFHoL/jbxQeKjYQhM8fmd8U5hpGgH
z99R/5oSa21fu1DK9VFafF053dZ3n5ac2hfAH79W5/cmyobC7YK4IZrwPh5MtU8e
g5XismS0n2/G/lP3DowB2LIfuCy2VNril2YCdX91Qt0g+QSPWQMPllxI0ObXZQsQ
6zWSxFpKizCthZ3SBZ+ie/JHEyKa49IPxt6m0+52oPiK2NpzATh11WCk7TU8RUz6
iv3KufOeXrKPv3yANqJCMmyDhoXbIG6tiuJmBq69j/upU46w6t2+tfbhYmtXUzy8
pMgBvYqUH1HqW+lHLCvDaBwqeXOf2nPAMOlFRpyZ4Ewj/tmXoXJ1/Ye9ITvCjIuu
qvSAaTyqt/2BVILRDCqtYFQ7Hm08S6SmSyZueEYoXMqWo32oys/ladBG8+Tmt3YK
0WpcohYv5xfMA9kqO57crOl7sQEqSgTXoSzJcCtGIYbkK5i4o+lGc8YMoeG/hrp0
y3PcIKr1AqqQtbTUimItBM2HLF8LJ9WkbmN0cxXaBw==
=/Yjm
-----END PGP SIGNATURE-----

--Xl4IVBGkmPjeLIf4lnPNaxHNHVrKvRuFo--
