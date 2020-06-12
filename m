Return-Path: <SRS0=i5gH=7Z=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1B1AC433E0
	for <ksummit-discuss@archiver.kernel.org>; Fri, 12 Jun 2020 10:58:16 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B402D206DC
	for <ksummit-discuss@archiver.kernel.org>; Fri, 12 Jun 2020 10:58:16 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="gLMWvEsz"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B402D206DC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B228687C0B;
	Fri, 12 Jun 2020 10:58:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UjN2O33JvyNA; Fri, 12 Jun 2020 10:58:15 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1037587C10;
	Fri, 12 Jun 2020 10:58:15 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D27B9C0881;
	Fri, 12 Jun 2020 10:58:14 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E000DC016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 12 Jun 2020 10:58:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B858F26C7E
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 12 Jun 2020 10:58:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 74DuLT7ewGHK
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 12 Jun 2020 10:58:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id EFF5122703
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 12 Jun 2020 10:58:12 +0000 (UTC)
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 27AE3206DC;
 Fri, 12 Jun 2020 10:58:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591959492;
 bh=hbGnvzNj2HSAdJWQdg9r3Kj/ZeGeiLPcdvT567ilhck=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gLMWvEszSzNoC7/E78Ro2lFktoqRVG10pqQBCxGVw7qwhxeIzhgMWwx5r/bGcMSn3
 MKzUmiaQtO/Cnet4/ayVB0p6dDyC2zQA7vwW/UOSeuPxnjunySm1f1TiF/vp4Y52Jc
 LYQPdDjWPu97/TcSNQBUScPlMbWzks107F49QRgk=
Date: Fri, 12 Jun 2020 11:58:09 +0100
From: Mark Brown <broonie@kernel.org>
To: Mike Rapoport <rppt@linux.ibm.com>
Message-ID: <20200612105809.GC5396@sirena.org.uk>
References: <20200609145353.628a342d@lwn.net>
 <CACRpkdZOxaA9fpd0zFa_GGo1boOEbOoxNbaUavXbewp=CLbEDg@mail.gmail.com>
 <8f68863a-d04c-4502-f88e-2a8b0e3c7968@linuxfoundation.org>
 <928d6b2c9a8afb4262a0d931bce03987ef002c8f.camel@perches.com>
 <eba85749-0db4-56f6-d61b-54ad061ef979@linuxfoundation.org>
 <20200612081852.GC5957@pendragon.ideasonboard.com>
 <20200612091939.GG2051223@linux.ibm.com>
MIME-Version: 1.0
In-Reply-To: <20200612091939.GG2051223@linux.ibm.com>
X-Cookie: As seen on TV.
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Documentation
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
Content-Type: multipart/mixed; boundary="===============5640030862119553120=="
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>


--===============5640030862119553120==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="z4+8/lEcDcG5Ke9S"
Content-Disposition: inline


--z4+8/lEcDcG5Ke9S
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 12, 2020 at 12:19:39PM +0300, Mike Rapoport wrote:
> On Fri, Jun 12, 2020 at 11:18:52AM +0300, Laurent Pinchart wrote:

> > This would however leave some developers in an uncomfortable situation.
> > While writing documentation is no fun for most of us, it gets much worse
> > for developers who are less fluent in English. Learning how to write
> > good documentation is hard enough without having to also learn a new
> > language. I think this is a problem that needs to be addressed on its
> > own.

> I think we should make a distinction between adding new documentation
> and updating the existing one. I agree that writing documentation is not
> easy, especially when you need to write it from scratch. But making
> small amends to the existing documentation along with the code changes
> so that docs and code would still much is not that difficult.=20
> For such cases a request to have documentation update as a part of the
> changes wouldn't be too much to ask.

I wouldn't underestimate the barriers this can create for developers who
are less fluent in English, take a browse through changelogs sometime.
There's a big jump from being able to write understandable code and
communicate what it's about to being able to write clear and useful
documentation.

--z4+8/lEcDcG5Ke9S
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7jX8EACgkQJNaLcl1U
h9CImAf/ZbxfwCi5s5d7gWFaeJcTkspRBYVdWQi27sG3lXgAYOCy/oqp1loEXulx
u7QMCbgFfF5y2Mhsfyox4yN5O/43nXlH0ssi5Y8TY+gzfErBMVRl4lu8gYg7llu/
rl7FUjTDSmFZYP/9dEj0IcWoBHf10FIpvKBtEX4m4/JHwd0dqk1TiTLTpbjH1Luy
aeeAO601MOJSYaUmPAFU7PxaKnFlFueWrws2BbXuUQjpcuOG5s+TzwL23zW8Mdnn
AqhBqZze1mBvqlJRgLbQznn5JRkm7zoibRmRnVqB9aX9g0WPKC8GGG+LIjFafmVo
VKwsApi1YZLx298hEA3etJJgYHikgw==
=O9tm
-----END PGP SIGNATURE-----

--z4+8/lEcDcG5Ke9S--

--===============5640030862119553120==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--===============5640030862119553120==--
