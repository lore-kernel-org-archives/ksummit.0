Return-Path: <wsa@the-dreams.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id AFD803C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 09:32:40 +0000 (UTC)
Received: from pokefinder.org (sauhun.de [89.238.76.85])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4D49D1FD44
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 09:32:40 +0000 (UTC)
Date: Mon, 12 May 2014 11:32:35 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Michal Simek <monstr@monstr.eu>
Message-ID: <20140512093235.GA2872@katana>
References: <20140509170709.GA9747@redhat.com> <20140511111034.GA6400@katana>
	<53706EAB.7010601@monstr.eu>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="sdtB3X0nJg68CQEu"
Content-Disposition: inline
In-Reply-To: <53706EAB.7010601@monstr.eu>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] coverity, static checking etc.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--sdtB3X0nJg68CQEu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> is sent. Why not just tell them run this in-kernel tool with all
> that checking enabled before you send the patch?

make C=1 ? That could be perhaps updated to call sparse *and* smatch if
it finds them installed.

The other tools I run one needs to know. They  produce many false
positives so they are not suited for an occasional user.


--sdtB3X0nJg68CQEu
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.15 (GNU/Linux)

iQIcBAEBAgAGBQJTcJUzAAoJEBQN5MwUoCm20dIP/26DzCfAihgZ5QHauWnBz76i
fjFuJk1v0Pc5HNcNMTIdbIpxxbLBzOv3nQlJiqUNb6aKdZtocOwt1x5Nn55K/KH/
SkhW9MNUBMNFMsSW+j1/FdSdA/psHMgjNXKwyrPfbjDIM1+4ATJfby1FwVmiAgFS
P7aHh49NSuRQVUL1zniHbiSW/TUZrb+NosLN5u/j7sqU8+0JJ1IXs3bp6j9Vt6dC
DWOhBusR9Fm9myoJujBT/AFaUQyJOgSvZlPmFZR70aXaC8o0PP7R/nZ7d76FBSKN
aNBvr6IqjA7ZQIiDUFhSVdOoICuhp3AeIzviFtfBRsqImnW9FwihXJ+WX8GkbJ9w
7CA/X6OgxiGat0O5rZBfjNvlw05ce0Iwbq6MLnedG+n/GXVA4miSEAdcnIWZIhjW
m4ekBivN5pOKDGWynsIaFcDzwFrltmfqvrSopaN38sBRndqwCamtDkrs40LraI5u
J+PVhlIq4In/aRmc2SVF9UxsOtYPTgVmfHtgCqxEgk2fu8mRqHmaK58mP4u7kL1f
x6NlCdd8izldMjYNZoMdkNwe4uITq0wQo3ln+gXeZTDEBLdfhKfqSPhu+gFbsxVX
lGT9keZgNKnVaRECVpIBwrpyRkbhWKR7WUV2+lAcxnhIuB3mhH8WteEmjzmiwJFD
iqiYeySRC4OrosUFUiFX
=nCmK
-----END PGP SIGNATURE-----

--sdtB3X0nJg68CQEu--
