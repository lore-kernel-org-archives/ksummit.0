Return-Path: <SRS0=5cql=AQ=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0C7A5C433E0
	for <ksummit-discuss@archiver.kernel.org>; Sun,  5 Jul 2020 03:26:21 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B5E2420C09
	for <ksummit-discuss@archiver.kernel.org>; Sun,  5 Jul 2020 03:26:20 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=canb.auug.org.au header.i=@canb.auug.org.au header.b="NQP0XXp/"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B5E2420C09
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=canb.auug.org.au
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3F34B871E4;
	Sun,  5 Jul 2020 03:26:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qgBYbVTAP3tJ; Sun,  5 Jul 2020 03:26:19 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C4E458713E;
	Sun,  5 Jul 2020 03:26:19 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A5BB2C08A6;
	Sun,  5 Jul 2020 03:26:19 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2BF51C0733;
 Sun,  5 Jul 2020 03:26:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2079C8713E;
 Sun,  5 Jul 2020 03:26:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6m_ddqBbvJej; Sun,  5 Jul 2020 03:26:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from ozlabs.org (ozlabs.org [203.11.71.1])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0A7D28704B;
 Sun,  5 Jul 2020 03:26:16 +0000 (UTC)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 49zvHV3yXtz9sRf;
 Sun,  5 Jul 2020 13:26:14 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1593919575;
 bh=ck06iISBamx0TCobZ4Y5nDeE+ArGM/pO5d78tIPSA9U=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=NQP0XXp/C4X/X/tGuIolLqUQbsYqjWD+XQSPY0XlxtHnhqWMP9kDnbDVjTZZk0wPi
 64iAqo9U6FzGgsQOABrX6xZV5aPr84UPJJuM5MtfFePQEuO9IeqIl5DGlVsSlnXu7c
 oEq7dMZ2kyY+1+UsIWyS+V7XMtalfI3C0nODGsLgKDLeSOnrOyrAKtg9bGtKT3S9E+
 gbZVqelIqRZP+pyRCOW3hfWzUxdvcjNYBtXe6BnTX/JsoXpT8fB31zfdgyrE1RcnPW
 TaxmlcgG+qeR+98H3NlzMOEbg4yn6wRBzQUQd6nXN0p/9rwSQL4PpgKu5E3hPM9LNU
 jcoxduV6+mLLg==
Date: Sun, 5 Jul 2020 13:26:13 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Dave Airlie <airlied@gmail.com>
Message-ID: <20200705132613.3144031a@canb.auug.org.au>
In-Reply-To: <CAPM=9txud3xg+++205X9s9R5wnxobpNSJWLUu=bp8BOhnX_8hQ@mail.gmail.com>
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 <20200705064348.71d4d51f@canb.auug.org.au>
 <CAPM=9txOgRYc7RM3fzohB4=Ejcp_xMGLBX_OOCOD=r+W6D678A@mail.gmail.com>
 <20200705121216.2ce2dd46@canb.auug.org.au>
 <CAPM=9txud3xg+++205X9s9R5wnxobpNSJWLUu=bp8BOhnX_8hQ@mail.gmail.com>
MIME-Version: 1.0
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 tech-board-discuss@lists.linuxfoundation.org,
 LKML <linux-kernel@vger.kernel.org>,
 ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [PATCH] CodingStyle: Inclusive Terminology
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>, 
 <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>, 
 <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0166313446325292316=="
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

--===============0166313446325292316==
Content-Type: multipart/signed; boundary="Sig_/iL2lz/+KwJs.0itw5NirmW.";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/iL2lz/+KwJs.0itw5NirmW.
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Dave,

On Sun, 5 Jul 2020 12:56:23 +1000 Dave Airlie <airlied@gmail.com> wrote:
>
> Sorry I misdirected what you said a bit, and I did misinterpret as
> Australia also has it's own indigenous slavery issues,

(and non-indigenous :-()

> I was trying to stop the "white slavery" is a thing crew from turning
> up on this.
>=20
> Apologies for accidentally implying something what you hadn't said.

Sure

No worries, mate :-)

--=20
Cheers,
Stephen Rothwell

--Sig_/iL2lz/+KwJs.0itw5NirmW.
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl8BSFUACgkQAVBC80lX
0GwH9Af/TC7R70v0PqOHnYyBqPSLekDlnoxwiUwuxlQZFDfRpbPsV0HZ/STVOrcn
SM/OWPrJ6noid35LZlU3C/SwL+9Z/RT3qN0bFlR8EzTrtKWgIY7SpU//KAFgoHZq
7GtoBZljNLJz0EED3TdDy2RI+1soMhhCTFsLRY7uEmCsPtRTHgqZDR41EYOeZ9Ok
EBT8J3Bm/1FcNIIhEfd1SIjKQqHMZc5CBBP0seqlLf7QNP9nzBrGZKkjoE6+E5UG
7hyFF0bS6vlcGTXDsNg8J+HsixvlmeeLSyf++5Z42wacZux2+HdPFACVmIqGiJrc
weQDx7Kap/TQKEtnePE8ZLWcj3aStg==
=iD9c
-----END PGP SIGNATURE-----

--Sig_/iL2lz/+KwJs.0itw5NirmW.--

--===============0166313446325292316==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--===============0166313446325292316==--
