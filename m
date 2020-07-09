Return-Path: <SRS0=TU90=AU=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_2 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5116BC433E0
	for <ksummit-discuss@archiver.kernel.org>; Thu,  9 Jul 2020 16:33:20 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1007A207F9
	for <ksummit-discuss@archiver.kernel.org>; Thu,  9 Jul 2020 16:33:19 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=hansenpartnership.com header.i=@hansenpartnership.com header.b="ImfLOYPi";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=hansenpartnership.com header.i=@hansenpartnership.com header.b="Pg957yMR"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1007A207F9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=HansenPartnership.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 706818992C;
	Thu,  9 Jul 2020 16:33:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sdFGHVCQiYsH; Thu,  9 Jul 2020 16:33:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id A1FF8898C1;
	Thu,  9 Jul 2020 16:33:18 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 791E5C0865;
	Thu,  9 Jul 2020 16:33:18 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A1C56C016F;
 Thu,  9 Jul 2020 16:33:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 92F5185F83;
 Thu,  9 Jul 2020 16:33:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QcES5vD-4URl; Thu,  9 Jul 2020 16:33:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
 [66.63.167.143])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DA3CC85F7C;
 Thu,  9 Jul 2020 16:33:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by bedivere.hansenpartnership.com (Postfix) with ESMTP id 7282A8EE2B9;
 Thu,  9 Jul 2020 09:32:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
 s=20151216; t=1594312379;
 bh=+o15DNSiZ8Sr9PsZmCDjs8laU8OpdoFNPKkvUnrn3w4=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=ImfLOYPiXanR4Li+u0eqxVAkMNOpoOHx8W8yy/PXgdyxrnqFIXh1GHL1dP+EvhNeC
 nIqctrQPMTxAvypO5hbSmxQJV9wSV4yCG+qQIxpDuK1U68i5QTsPI/ykdp60NIB34e
 QAf6YQuGIrsnj1yZZxLavmM8NXIB7/sLzs8GFqSA=
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
 by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id WXVlrLr6uDsZ; Thu,  9 Jul 2020 09:32:59 -0700 (PDT)
Received: from [153.66.254.194] (unknown [50.35.76.230])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 6FDC18EE116;
 Thu,  9 Jul 2020 09:32:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
 s=20151216; t=1594312378;
 bh=+o15DNSiZ8Sr9PsZmCDjs8laU8OpdoFNPKkvUnrn3w4=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=Pg957yMR5J0H5kKGQbp+8OVHyS0RtnK3Uw+tWVlPRzPH3/V2ixOY6++uv51M84E95
 AA5Hv5ARWfb7ue7KIh0OEFy9FTA2RbUCtHXXqD/EN4Z5mLIIciRGerGCLVmmlDuR7M
 n3hvgHj151uNJ6y9Ab/m59OtsSmZ7jxO+5Dd8tzg=
Message-ID: <1594312370.10411.9.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Mark Brown <broonie@kernel.org>, Shuah Khan <skhan@linuxfoundation.org>
Date: Thu, 09 Jul 2020 09:32:50 -0700
In-Reply-To: <20200709161351.GF4960@sirena.org.uk>
References: <79214066-3886-e0ef-f26e-8cb3d53404be@linuxfoundation.org>
 <e41ded21-1432-afa8-2e42-e509539281c4@gmail.com>
 <20200709124327.369781a0@coco.lan>
 <93fc3afb-8c3f-0fb9-3b92-adfb6571e060@linuxfoundation.org>
 <20200709161351.GF4960@sirena.org.uk>
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
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
Content-Type: multipart/mixed; boundary="===============2149210233274232267=="
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>


--===============2149210233274232267==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-zROEZHrj0k+UJe0IHmv7"


--=-zROEZHrj0k+UJe0IHmv7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2020-07-09 at 17:13 +0100, Mark Brown wrote:
> On Thu, Jul 09, 2020 at 10:01:18AM -0600, Shuah Khan wrote:
> > On 7/9/20 4:43 AM, Mauro Carvalho Chehab wrote:
> > > For coherency, if "blacklist/whitelist" won't be used anymore, an
> > > alternative to graylist should also be provided.
> > What is "graylist"? Does it mean in between allow/deny?
>=20
> Yes.  Typically it's used in situations where you don't want to deny
> something but might for example want to do extra checks to verify
> that things are OK.

greylisting was originally pioneered by email.  It's where you
initially reject an email but remember you did so and then let it
through if the retries follow an RFC mandated pattern.  The technical
use spread from there since the technique (treating something as
untrusted until it proves trust) is very useful.  It has its origin in
the English idiom "grey area" expressing doubt or lack of clarity.

The etymology of "grey area" is a grey area, but I'd bet it has to do
with not having the clarity of black and white ... but is equally
likely to be tied to Yin and Yang.  Grey is also used in England to
describe the lack of clarity given by mist or fog (he woke up and saw
the world was very grey).  I'd say we just leave it alone as too
distantly related to any problematic uses.

James

--=-zROEZHrj0k+UJe0IHmv7
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iHUEABMIAB0WIQTnYEDbdso9F2cI+arnQslM7pishQUCXwdGsgAKCRDnQslM7pis
hWRRAQDBaOwf4fMhuRZ2OzU+UXPjddWGvKKqosk34PrEH9p73gD+POAP0bN+oRJt
IPmwxHhJaiP4NL/+tFCzSl96XdprHnQ=
=M6ph
-----END PGP SIGNATURE-----

--=-zROEZHrj0k+UJe0IHmv7--


--===============2149210233274232267==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--===============2149210233274232267==--

