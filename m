Return-Path: <sfr@canb.auug.org.au>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 05757BE0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 22 Aug 2018 23:36:00 +0000 (UTC)
Received: from ozlabs.org (ozlabs.org [203.11.71.1])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5A7E6771
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 22 Aug 2018 23:35:59 +0000 (UTC)
Date: Thu, 23 Aug 2018 09:30:45 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Nicolas Ferre <nicolas.ferre@microchip.com>
Message-ID: <20180823093045.00e751b0@canb.auug.org.au>
In-Reply-To: <f15a82c8-5960-34ea-e7fc-dffdfdd369c6@microchip.com>
References: <551A9FAC.2010203@atmel.com>
	<f15a82c8-5960-34ea-e7fc-dffdfdd369c6@microchip.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	boundary="Sig_/+4dgMPmFUSSpu5TCHLDNxTj";
	protocol="application/pgp-signature"
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Ludovic Desroches <ludovic.desroches@microchip.com>,
	ksummit-discuss@lists.linuxfoundation.org, linux-kernel@vger.kernel.org
Subject: Re: [Ksummit-discuss] at91 git tree in linux-next
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--Sig_/+4dgMPmFUSSpu5TCHLDNxTj
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

On Wed, 22 Aug 2018 14:47:56 +0200 Nicolas Ferre <nicolas.ferre@microchip.c=
om> wrote:
>
> Alexandre Ludovic and myself are the group of maintainers for Microchip=20
> ARM SoCs. The current tree that we have in linux-next is mine [1] and we=
=20
> are moving to a common group kernel.org tree.
>=20
> So, can you please add our new tree to linux-next:
> at91 git=20
> git://git.kernel.org/pub/scm/linux/kernel/git/at91/linux.git#at91-next
>=20
> instead of:
> git://git.kernel.org/pub/scm/linux/kernel/git/nferre/linux-at91.git#at91-=
next
>=20
> In addition to that, we also have now a "fixes" branch. Can you please=20
> add it to your "fixes" tree?
>=20
> at91 git=20
> git://git.kernel.org/pub/scm/linux/kernel/git/at91/linux.git#at91-fixes
>=20
> Thanks for your help, best regards,
>    Nicolas
>=20
>=20
> [1]=20
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/=
Next/Trees#n84

All done.  I added Alexandre and Ludovic as contacts for both trees as
well.

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

--Sig_/+4dgMPmFUSSpu5TCHLDNxTj
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAlt98iUACgkQAVBC80lX
0Gzclgf/ZvkzzO6cm36C2M5s2hjrrv28qwEj6AhizdZIvCe63OJigfEXWyXw83TZ
KJ/SylLSFMaFKJ/cdNUKqR4/We06IfXcPccBIrwqL4PocDZuwoayOB9SPNXr9oSf
Ho+x7yZSM8E1UavKYTxc4RKtFiytW1oFYsZ+mhXo04zptStncgShapIrwG5PMyUC
wrdGqe8IoKtRUQ/KVJiiUZpFhXlhK6S649qskHU7138hOFccm7EIeqcjY/VJ5JIM
pHwg9c/fO8TYzpE7soIIdvX4/QaW5QsmQ0gDrTnBrhDQlYiNzpb1GUIzVGWlu3SK
yKKtzaomCQgtanMskfRyD58sE6Qkiw==
=SJ80
-----END PGP SIGNATURE-----

--Sig_/+4dgMPmFUSSpu5TCHLDNxTj--
