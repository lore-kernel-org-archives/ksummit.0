Return-Path: <SRS0=dJtG=E5=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=3.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA08AC56202
	for <ksummit-discuss@archiver.kernel.org>; Mon, 23 Nov 2020 11:59:19 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1B33F208C3
	for <ksummit-discuss@archiver.kernel.org>; Mon, 23 Nov 2020 11:59:17 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=canb.auug.org.au header.i=@canb.auug.org.au header.b="mfrjUAIF"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1B33F208C3
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=canb.auug.org.au
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 63227851AA;
	Mon, 23 Nov 2020 11:59:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Bya5iHI_BwcN; Mon, 23 Nov 2020 11:59:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4651784CAC;
	Mon, 23 Nov 2020 11:59:16 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 13386C0891;
	Mon, 23 Nov 2020 11:59:16 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 14340C0052
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 23 Nov 2020 11:59:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E158A203C9
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 23 Nov 2020 11:59:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3H6U7WxVKR1p
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 23 Nov 2020 11:59:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from ozlabs.org (bilbo.ozlabs.org [203.11.71.1])
 by silver.osuosl.org (Postfix) with ESMTPS id ACF681FEBF
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 23 Nov 2020 11:59:12 +0000 (UTC)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 4Cfm0D1R5lz9sRR;
 Mon, 23 Nov 2020 22:59:08 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1606132749;
 bh=C/02EMvW4o+WQSdThZBP7+ma8iXHpAXlIFsLEtjz06Y=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=mfrjUAIFLQRg6Aj5Z9BjAisGK9DzYOlvkvNXTKvyOZIT0yLFqdYk5Z9aw8q3UZnvS
 uHLaFp++oe0OxVCaMl9svrAyB6Vd+KB21yY1fIgizLP6A7OqkkE5PAurJQNXjbznOr
 +yrxORNwjhPut7r4kqQKKfGFxAj2TqtRskwpAlHZkIZYuTsmJlVUm616c6A691W1DH
 b8RQl06XPPR6LJtdiUSUZtn2E0Fo9nRLUWQ9egRkJPi8ibdpNyH1sX7cP1Bl8POpue
 67/2aev2YLPgkJNb3kpaWWqKTrTLSiSb9P9jCtKhqQoebGVhUhMSNiFYBEJIxyRMUR
 qBzO46/N/qqMQ==
Date: Mon, 23 Nov 2020 22:59:06 +1100
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20201123225906.7cd6d14e@canb.auug.org.au>
In-Reply-To: <CAMuHMdUkQqJ_+8xy3q7tjCXCU4cZsnT7EOHtfTDroc4Ke0yPrw@mail.gmail.com>
References: <551A9FAC.2010203@atmel.com>
 <f15a82c8-5960-34ea-e7fc-dffdfdd369c6@microchip.com>
 <20180823093045.00e751b0@canb.auug.org.au>
 <CAMuHMdUkQqJ_+8xy3q7tjCXCU4cZsnT7EOHtfTDroc4Ke0yPrw@mail.gmail.com>
MIME-Version: 1.0
Cc: Ludovic Desroches <ludovic.desroches@microchip.com>,
 ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] at91 git tree in linux-next
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
Content-Type: multipart/mixed; boundary="===============2995831672872332808=="
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

--===============2995831672872332808==
Content-Type: multipart/signed; boundary="Sig_/DvmE2Rgt16brmASEAq52yA+";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/DvmE2Rgt16brmASEAq52yA+
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Geert,

On Mon, 23 Nov 2020 11:44:17 +0100 Geert Uytterhoeven <geert@linux-m68k.org=
> wrote:
>
> How is this working?
>=20
> From next-20201123:
>=20
>     Merging at91/at91-next (0698efbb33ef Merge branches 'at91-soc',
> 'at91-dt' and 'at91-defconfig' into at91-next)
>=20
> which is indeed a recent commit, while Next/Trees has the wrong repo
> (linux-at91.git instead of linux.git):

That is what happens when you store the (supposedly) same information
in 2 places :-(  I have fixed the incorrect one.

Thanks for letting me know.

--=20
Cheers,
Stephen Rothwell

--Sig_/DvmE2Rgt16brmASEAq52yA+
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl+7pAoACgkQAVBC80lX
0GyJRAf/V/bhAYt+kbgrjswsfnSdam/Is8x0+KRy/IxG4qUvvsjGMM1sZRiC8cLj
EkjTiQH0bEXNHxq2R6vHVidcmZ/z6Gez08Ra8bRmdhGu7CFraRB43LU6yRYd+UWY
7SnDhWQP3jE1qMK1s2X/2cKJkmC7PW4e4ciG4TUjagyRexKb4wR+80P+jHZG/xqx
by//TMGl9buOy0X7woWmmc/onM3hZBJt6JQ8A++DyP7gSCw0CsDpfxxqqyF3+WGd
99EIZtXI5+qq+E8COHiQx1dI37ZZjlYAhE4mWejr/9lRjUOIJ0jzadwobX9FTghD
lUMaFwNVAbcreWnNA8iV0e8s/CNe2w==
=2oEC
-----END PGP SIGNATURE-----

--Sig_/DvmE2Rgt16brmASEAq52yA+--

--===============2995831672872332808==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--===============2995831672872332808==--
