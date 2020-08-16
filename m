Return-Path: <SRS0=dGYf=B2=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 067DBC433DF
	for <ksummit-discuss@archiver.kernel.org>; Sun, 16 Aug 2020 20:49:24 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CA8F920866
	for <ksummit-discuss@archiver.kernel.org>; Sun, 16 Aug 2020 20:49:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CA8F920866
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ubuntu.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A17D987E43;
	Sun, 16 Aug 2020 20:49:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n5BQiAxvONfh; Sun, 16 Aug 2020 20:49:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id D576B8798B;
	Sun, 16 Aug 2020 20:49:20 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 97E8FC0889;
	Sun, 16 Aug 2020 20:49:20 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 54FB8C0051
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 16 Aug 2020 20:49:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4488287D5E
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 16 Aug 2020 20:49:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LHMLFIsUAd06
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 16 Aug 2020 20:49:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DC7B38798B
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 16 Aug 2020 20:49:17 +0000 (UTC)
Received: from ip5f5af70b.dynamic.kabel-deutschland.de ([95.90.247.11]
 helo=wittgenstein) by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>) id 1k7Pad-0001II-S3
 for ksummit-discuss@lists.linuxfoundation.org; Sun, 16 Aug 2020 20:49:15 +0000
Date: Sun, 16 Aug 2020 22:49:15 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20200816204915.hun44kawjmu46hpw@wittgenstein>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Ksummit-discuss] Self-nomination for 2020 TAB election
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

Hey,

I would like to stand for election to the Technical Advisory Board.

I have been an active kernel contributor for about 5 years and a
maintainer for about 2 years. I've been working on various parts of the
kernel spanning multiple subsystems but often like to concentrate on
process management, parts of the vfs, and security.
I'm involved in developing and maintaining core technologies in the
kernel that are in use in virtually all container runtimes and most
sandboxing solutions across userspace. As a member of the TAB I'd like
to help further the adoption of security relevant container features
across the industry.

Being a maintainer of large userspace projects too, I have worked to
bring kernel development and low-level userspace closer together. This
aims to ensure improved API design and increased security for all
distros and companies. This has already proven useful as we were adding
various new userspace APIs that have seen rapid adoption over the last
two years.

I really enjoy being part of the organizing committee of the Linux
Plumbers conference this year. A healthy relationship between the Linux
Foundation and Linux Plumbers and other kernel conferences is vital for
the kernel community. Being a member of the TAB I'd like to maintain and
strengthen that relationship!

Being on the TAB I would also like to enable more young developers to
take on responsibility in the kernel community. The TAB also is a great
opportunity to not just help bring in new ideas but also to listen and
learn from already established members.

I am extremely grateful for the encouragement and nudges from existing
and former TAB members to stand for election this year!

I'm always happy to answer any questions and welcome feedback of course.
Just write me a mail or message me on Twitter (@brau_ner).

Thank you!
Christian
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
