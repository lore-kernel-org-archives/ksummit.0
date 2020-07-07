Return-Path: <SRS0=9K8a=AS=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 48CB3C433E1
	for <ksummit-discuss@archiver.kernel.org>; Tue,  7 Jul 2020 12:13:16 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1DEDF20739
	for <ksummit-discuss@archiver.kernel.org>; Tue,  7 Jul 2020 12:13:16 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="Odszq1f0"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1DEDF20739
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B7C1086463;
	Tue,  7 Jul 2020 12:13:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jD6zu_ktxuqL; Tue,  7 Jul 2020 12:13:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4866686341;
	Tue,  7 Jul 2020 12:13:13 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1A36BC0893;
	Tue,  7 Jul 2020 12:13:13 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4E7B0C016F;
 Tue,  7 Jul 2020 12:13:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3776F87B27;
 Tue,  7 Jul 2020 12:13:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Saq49r-ZR2E4; Tue,  7 Jul 2020 12:13:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B80EE882D2;
 Tue,  7 Jul 2020 12:13:11 +0000 (UTC)
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 00522206F6;
 Tue,  7 Jul 2020 12:13:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1594123991;
 bh=bgHVi+z3SEszCd7DWPLvG9vOrvhldDXiJezUwjnQ8Wo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Odszq1f0AQN11s2Vj6EMQHr6D21AgvgNaOAg1M/r2DMqFUpBK4WQvhFJyxMYcwGS/
 JLGI8R12SdmGsIJxtABJXrTy7HVNwQ0xGSdXbA8E3eRf/QtvpPmitnzOH5+BWoPFiv
 RFJnDvAx+g/rT8blMVmZ39138JnWupJTzHEbZ1yI=
Date: Tue, 7 Jul 2020 13:13:06 +0100
From: Mark Brown <broonie@kernel.org>
To: "Harrosh, Boaz" <Boaz.Harrosh@netapp.com>
Message-ID: <20200707121306.GI4870@sirena.org.uk>
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 <CALCETrXewAK4_fpaJNDHJVDK9mUcjghA5HwYvZFQNYVfC9M+OQ@mail.gmail.com>
 <202007062234.A90F922DF@keescook>
 <DM6PR06MB3836FBAD65096AF63ACD3DB3EE660@DM6PR06MB3836.namprd06.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <DM6PR06MB3836FBAD65096AF63ACD3DB3EE660@DM6PR06MB3836.namprd06.prod.outlook.com>
X-Cookie: I hate dying.
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "tech-board-discuss@lists.linuxfoundation.org"
 <tech-board-discuss@lists.linuxfoundation.org>, Chris Mason <clm@fb.clm>
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
Content-Type: multipart/mixed; boundary="===============7535939680566943156=="
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>


--===============7535939680566943156==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="CNK/L7dwKXQ4Ub8J"
Content-Disposition: inline


--CNK/L7dwKXQ4Ub8J
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jul 07, 2020 at 06:56:53AM +0000, Harrosh, Boaz wrote:
> Kees Cook wrote:

> > I have struggled with this as well. The parts of speech change, and my
> > grammar senses go weird. whitelist = adjective noun. allow-list = verb
> > noun. verbing the adj/noun combo feels okay, but verbing a verb/noun is
> > weird.

> But why. In English many times a verb when it comes before the noun means an adjective, or an adjective like, describing some traits of the noun.

I fear that if you are looking for logic or reason in English grammar
you are on a path to disappointment.  FWIW I share Kees' "that looks
off" instinct with some of the usage of allow/deny.

--CNK/L7dwKXQ4Ub8J
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl8EZtEACgkQJNaLcl1U
h9BtcQf8DnXZch2/ywcuhz7I9Tu5LbyspRZ0gAwO+nQPloYT4CqwHyqsxqUL97ZL
Ff1Zf27D1qNrNlAKDUlsy8FaTlQJrtAQ9eXVQAaMONZRmbRoQYwZikz8kEFpPODp
EZN7rd6LGwCis+cUkBblC3SXMuhnXFsCpm3EsgXwNLLlfSwIC1dEvHZuUvmgJmy7
XEBFg/7o89PeQ+x3EYGcWw4S0tzGYu0fKFBaVQq4TsPO0mtsvoh6MikMyilf4fvT
XW4k4x80jaTCRIh2e69MVVu0M3AK0QQeKn6OKLIn2sRMsoxy+szZiNrUh15ILNgR
+sSfpyq9xREm8vI2uX5OKUSDC7gGvw==
=h6Eg
-----END PGP SIGNATURE-----

--CNK/L7dwKXQ4Ub8J--

--===============7535939680566943156==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--===============7535939680566943156==--
