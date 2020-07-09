Return-Path: <SRS0=TU90=AU=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F593C433E0
	for <ksummit-discuss@archiver.kernel.org>; Thu,  9 Jul 2020 16:14:00 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1D150207DA
	for <ksummit-discuss@archiver.kernel.org>; Thu,  9 Jul 2020 16:14:00 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="2bdq1FJx"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1D150207DA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E5CCE8993A;
	Thu,  9 Jul 2020 16:13:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kNu7-gz6Fkb7; Thu,  9 Jul 2020 16:13:59 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4AB0789926;
	Thu,  9 Jul 2020 16:13:59 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 17FDFC0865;
	Thu,  9 Jul 2020 16:13:59 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id ECA6CC016F;
 Thu,  9 Jul 2020 16:13:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DBB3487B59;
 Thu,  9 Jul 2020 16:13:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f0B1IoVt0Y9L; Thu,  9 Jul 2020 16:13:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8559787B44;
 Thu,  9 Jul 2020 16:13:57 +0000 (UTC)
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D24022078B;
 Thu,  9 Jul 2020 16:13:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1594311237;
 bh=nTexoKEy5GLJOg8vAoAgb+Bs+0ul8c1mEWXYw5RR9Mw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2bdq1FJx2Eny+0HsA2RDiWRYOkCzlQFE5NZ33A9DyDuVYMvmGYiQ3dFTXe4alkcdD
 gdTBcgvnn6F9ZwxgwgCqq1o85OtbZtlxfjCig7UClixChw6Ihhs4rHwMUEwWRsABHM
 ZXa4dNXY/V260Yw/NUmKvzN7O9jBnunwgGSb+BPM=
Date: Thu, 9 Jul 2020 17:13:51 +0100
From: Mark Brown <broonie@kernel.org>
To: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <20200709161351.GF4960@sirena.org.uk>
References: <79214066-3886-e0ef-f26e-8cb3d53404be@linuxfoundation.org>
 <e41ded21-1432-afa8-2e42-e509539281c4@gmail.com>
 <20200709124327.369781a0@coco.lan>
 <93fc3afb-8c3f-0fb9-3b92-adfb6571e060@linuxfoundation.org>
MIME-Version: 1.0
In-Reply-To: <93fc3afb-8c3f-0fb9-3b92-adfb6571e060@linuxfoundation.org>
X-Cookie: You will be married within a year.
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: ksummit-discuss@lists.linuxfoundation.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 tech-board-discuss@lists.linuxfoundation.org, Chris Mason <clm@fb.clm>,
 Tibor Raschko <tibrasch@gmail.com>
Subject: Re: [Ksummit-discuss] [Tech-board-discuss] [PATCH] CodingStyle:
 Inclusive Terminology
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
Content-Type: multipart/mixed; boundary="===============7538899168757653341=="
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>


--===============7538899168757653341==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="b8GWCKCLzrXbuNet"
Content-Disposition: inline


--b8GWCKCLzrXbuNet
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jul 09, 2020 at 10:01:18AM -0600, Shuah Khan wrote:
> On 7/9/20 4:43 AM, Mauro Carvalho Chehab wrote:

> > For coherency, if "blacklist/whitelist" won't be used anymore, an
> > alternative to graylist should also be provided.

> What is "graylist"? Does it mean in between allow/deny?

Yes.  Typically it's used in situations where you don't want to deny
something but might for example want to do extra checks to verify that
things are OK.

--b8GWCKCLzrXbuNet
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl8HQj8ACgkQJNaLcl1U
h9DBcQf+K56Y9mlR9Dst9+GDWVZmoi7aO+Tnt+eblgju9NN9sKUNWzJ8YR8GA4vV
z6deFWJMWOruLvHFhLXOl4s8OZjnoifyGKvUKZkwNEa7ilfpO6A4ShhVgbeU5aqs
9kalbjk3lIzPqo9L8/qmH1xDyaRMlBeZXzYuc63cCOG3w1NmaQhcSjaBPuTVAF6h
oAIAt/TYlzDw8/Qaa1swsC3iN+cVIkt4cwLEO7+H6juOW/nOqJ0cOWASYDPrY/Gz
bGs48U/wFJoesyl2quo8XtyxAQNmvld4Pb0e1+mcrh3Lz3jitp8Jo+j7UwIXglTS
22KvCX3YVOLc6eQFGhe0Nd17DzHoyQ==
=M0gt
-----END PGP SIGNATURE-----

--b8GWCKCLzrXbuNet--

--===============7538899168757653341==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--===============7538899168757653341==--
