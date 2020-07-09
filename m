Return-Path: <SRS0=TU90=AU=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D23D5C433E0
	for <ksummit-discuss@archiver.kernel.org>; Thu,  9 Jul 2020 13:00:55 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AD2CB2073A
	for <ksummit-discuss@archiver.kernel.org>; Thu,  9 Jul 2020 13:00:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AD2CB2073A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=perches.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8ADCC26D80;
	Thu,  9 Jul 2020 13:00:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fa2I+Ux94Cgz; Thu,  9 Jul 2020 13:00:50 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id A30FB267C8;
	Thu,  9 Jul 2020 13:00:50 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7EA17C0865;
	Thu,  9 Jul 2020 13:00:50 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 47E3FC016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  9 Jul 2020 13:00:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 372E88788F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  9 Jul 2020 13:00:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id az9DSouOza6M
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  9 Jul 2020 13:00:48 +0000 (UTC)
X-Greylist: delayed 01:17:46 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0035.hostedemail.com
 [216.40.44.35])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5EB3C8788E
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  9 Jul 2020 13:00:48 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave08.hostedemail.com (Postfix) with ESMTP id 02D6B18014B1F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  9 Jul 2020 11:43:03 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay04.hostedemail.com (Postfix) with ESMTP id 5DCB818014AEC;
 Thu,  9 Jul 2020 11:43:00 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-HE-Tag: glass11_130272926ec5
X-Filterd-Recvd-Size: 2057
Received: from XPS-9350.home (unknown [47.151.133.149])
 (Authenticated sender: joe@perches.com)
 by omf18.hostedemail.com (Postfix) with ESMTPA;
 Thu,  9 Jul 2020 11:42:59 +0000 (UTC)
Message-ID: <60434f00e5bc55d2ceac14bb6a8c00d4d17c4e96.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Date: Thu, 09 Jul 2020 04:42:58 -0700
In-Reply-To: <20200709122118.0ffaea91@coco.lan>
References: <20200609145353.628a342d@lwn.net>
 <CACRpkdZOxaA9fpd0zFa_GGo1boOEbOoxNbaUavXbewp=CLbEDg@mail.gmail.com>
 <8f68863a-d04c-4502-f88e-2a8b0e3c7968@linuxfoundation.org>
 <928d6b2c9a8afb4262a0d931bce03987ef002c8f.camel@perches.com>
 <20200612090706.GF2051223@linux.ibm.com>
 <edbf4ead-6f2d-e548-ee40-517b3ee6ba07@linuxfoundation.org>
 <alpine.DEB.2.22.394.2006131838130.2659@hadrien>
 <8dff373fabbbe6ae20512848e93dac7544e0abce.camel@perches.com>
 <20200618090442.GF6493@linux.ibm.com>
 <1f7ace6cd84dfc83f91a8150f396074b05d06b97.camel@perches.com>
 <20200709122118.0ffaea91@coco.lan>
User-Agent: Evolution 3.36.3-0ubuntu1 
MIME-Version: 1.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

On Thu, 2020-07-09 at 12:21 +0200, Mauro Carvalho Chehab wrote:
> Em Thu, 18 Jun 2020 07:40:22 -0700
> Joe Perches <joe@perches.com> escreveu:
> 
> > On Thu, 2020-06-18 at 12:04 +0300, Mike Rapoport wrote:
> > > if a patch breaks the sync between the code and the
> > > kerneldoc can it be detected by checkpatch.pl?  
> > 
> > No, it can not.  Not directly.
> 
> Well, perhaps checkpatch.pl could run:
> 
> 	./scripts/kernel-doc -none
> 
> if it finds "/**" on a patch, showing the warnings produced by it, if any.

checkpatch runs on patches.
Use the tools that are designed for this instead.

> > As there already is an existing tool, that tool
> > should be used when possible.


_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
