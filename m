Return-Path: <SRS0=cq3z=AT=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_2 autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68F35C433E1
	for <ksummit-discuss@archiver.kernel.org>; Wed,  8 Jul 2020 16:00:10 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3DB3F20786
	for <ksummit-discuss@archiver.kernel.org>; Wed,  8 Jul 2020 16:00:10 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=hansenpartnership.com header.i=@hansenpartnership.com header.b="B1VYJdPq";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=hansenpartnership.com header.i=@hansenpartnership.com header.b="GkIbqh4j"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3DB3F20786
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=HansenPartnership.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 88AD92C340;
	Wed,  8 Jul 2020 16:00:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zYpmOtj8nL+l; Wed,  8 Jul 2020 16:00:03 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 3CB4423115;
	Wed,  8 Jul 2020 16:00:03 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E7806C0893;
	Wed,  8 Jul 2020 16:00:02 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id F06E6C016F;
 Wed,  8 Jul 2020 16:00:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E681987D1C;
 Wed,  8 Jul 2020 16:00:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UnHF1ZsW3oh0; Wed,  8 Jul 2020 15:59:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
 [66.63.167.143])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8213787D17;
 Wed,  8 Jul 2020 15:59:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by bedivere.hansenpartnership.com (Postfix) with ESMTP id 0E5E28EE1D9;
 Wed,  8 Jul 2020 08:59:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
 s=20151216; t=1594223998;
 bh=wqk55O2VC/Slr4lVR3r5mJCWnsiLDjFN52OqFL8PToM=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=B1VYJdPqFQS+fqqY5rdrSizfLkmTMBloNay1fdTmef1GfIr5qSpMaM/9Z2Kwp1Jfl
 YMOA9nrMyFPKUXP7Q0mZc3G/ORxbR+PhOI9juZpCpHcC7YuQJiLNT5ZFWya4Pb94Xt
 KheBxppUY/WoSIt0r7n5/YBsx8YjMsH1alNeNEqc=
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
 by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id 4TxuoJRcRocU; Wed,  8 Jul 2020 08:59:57 -0700 (PDT)
Received: from [153.66.254.194] (unknown [50.35.76.230])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 29F768EE12E;
 Wed,  8 Jul 2020 08:59:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
 s=20151216; t=1594223997;
 bh=wqk55O2VC/Slr4lVR3r5mJCWnsiLDjFN52OqFL8PToM=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=GkIbqh4j2vhdw1VTdraa3DFeRdfvYkxyIsXKasakocl9hy7o6/dksAOmGvDJwcf6q
 jR6m83Rn8RfzfXbggCzkMrDm88NlYrkPpWE6mzI20MbDO/mwgITLQNskicNzSUcXNf
 bfsbM5rJ3iskElHX/5K8LlyWYiqKij0UER5blm4Y=
Message-ID: <1594223995.4349.28.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Joe Perches <joe@perches.com>, Dan Williams <dan.j.williams@intel.com>, 
 Jonathan Corbet <corbet@lwn.net>
Date: Wed, 08 Jul 2020 08:59:55 -0700
In-Reply-To: <b15e2652aba06dbe244f5ed447e6e96f12302198.camel@perches.com>
References: <159419296487.2464622.863943877093636532.stgit@dwillia2-desk3.amr.corp.intel.com>
 <b15e2652aba06dbe244f5ed447e6e96f12302198.camel@perches.com>
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
Cc: ksummit-discuss@lists.linuxfoundation.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 SeongJae Park <sjpark@amazon.de>, linux-kernel@vger.kernel.org,
 tech-board-discuss@lists.linuxfoundation.org, Chris Mason <clm@fb.clm>,
 Dave Airlie <airlied@redhat.com>
Subject: Re: [Ksummit-discuss] [Tech-board-discuss] [PATCH v2] CodingStyle:
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

On Wed, 2020-07-08 at 04:04 -0700, Joe Perches wrote:
> On Wed, 2020-07-08 at 00:23 -0700, Dan Williams wrote:
> > Linux maintains a coding-style and its own idiomatic set of
> > terminology.
> > Update the style guidelines to recommend replacements for the terms
> > master/slave and blacklist/whitelist.
> > 
> > Link: http://lore.kernel.org/r/159389297140.2210796.135901422546687
> > 87525.stgit@dwillia2-desk3.amr.corp.intel.com
> > Cc: Jonathan Corbet <corbet@lwn.net>
> > Acked-by: Randy Dunlap <rdunlap@infradead.org>
> > Acked-by: Dave Airlie <airlied@redhat.com>
> > Acked-by: Kees Cook <keescook@chromium.org>
> > Acked-by: SeongJae Park <sjpark@amazon.de>
> > Signed-off-by: Olof Johansson <olof@lixom.net>
> > Signed-off-by: Chris Mason <clm@fb.clm>
> > Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Signed-off-by: Dan Williams <dan.j.williams@intel.com>
> > ---
> > Changes since v1 [1]
> > - Drop inclusive-terminology.rst, it is in the lore archives if the
> >   arguments are needed for future debates, but otherwise no
> > pressing
> >   need to carry it in the tree (Linus, James)

Acked-by: James Bottomley <James.Bottomley@HansenPartnership.com>

> Where did Linus publicly state this was unnecessary?

https://lists.linuxfoundation.org/pipermail/tech-board-discuss/2020-July/000412.html

James


_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
