Return-Path: <SRS0=jAhB=BK=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 45D1AC433E0
	for <ksummit-discuss@archiver.kernel.org>; Fri, 31 Jul 2020 21:37:59 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1A01A208E4
	for <ksummit-discuss@archiver.kernel.org>; Fri, 31 Jul 2020 21:37:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1A01A208E4
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=joshtriplett.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A3B532156F;
	Fri, 31 Jul 2020 21:37:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tRuobxoIdp7d; Fri, 31 Jul 2020 21:37:54 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id B33452156B;
	Fri, 31 Jul 2020 21:37:54 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 86B8AC0050;
	Fri, 31 Jul 2020 21:37:54 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9B4E3C004D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 31 Jul 2020 21:37:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8B21086CC1
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 31 Jul 2020 21:37:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dar48Yklrq4K
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 31 Jul 2020 21:37:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mslow2.mail.gandi.net (mslow2.mail.gandi.net [217.70.178.242])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F0BC186190
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 31 Jul 2020 21:37:51 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (unknown [217.70.183.197])
 by mslow2.mail.gandi.net (Postfix) with ESMTP id BDE4D3A4A36
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 31 Jul 2020 21:27:33 +0000 (UTC)
X-Originating-IP: 50.39.163.217
Received: from localhost (50-39-163-217.bvtn.or.frontiernet.net
 [50.39.163.217]) (Authenticated sender: josh@joshtriplett.org)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id BAB531C0002;
 Fri, 31 Jul 2020 21:27:24 +0000 (UTC)
Date: Fri, 31 Jul 2020 14:27:21 -0700
From: josh@joshtriplett.org
To: Arnd Bergmann <arnd@arndb.de>
Message-ID: <20200731212721.GC32670@localhost>
References: <CAK8P3a2PK_bC5=3wcWm43=y5xk-Dq5-fGPExJMnOrNfGfB1m1A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a2PK_bC5=3wcWm43=y5xk-Dq5-fGPExJMnOrNfGfB1m1A@mail.gmail.com>
Cc: linux-arch <linux-arch@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Planning code obsolescence
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

On Fri, Jul 31, 2020 at 05:00:12PM +0200, Arnd Bergmann wrote:
> The majority of the code in the kernel deals with hardware that was made
> a long time ago, and we are regularly discussing which of those bits are
> still needed. In some cases (e.g. 20+ year old RISC workstation support),
> there are hobbyists that take care of maintainership despite there being
> no commercial interest. In other cases (e.g. x.25 networking) it turned
> out that there are very long-lived products that are actively supported
> on new kernels.
> 
> When I removed support for eight instruction set architectures in 2018,
> those were the ones that no longer had any users of mainline kernels,
> and removing them allowed later cleanup of cross-architecture code that
> would have been much harder before.
> 
> I propose adding a Documentation file that keeps track of any notable
> kernel feature that could be classified as "obsolete", and listing
> e.g. following properties:
> 
> * Kconfig symbol controlling the feature
> 
> * How long we expect to keep it as a minimum
> 
> * Known use cases, or other reasons this needs to stay
> 
> * Latest kernel in which it was known to have worked
> 
> * Contact information for known users (mailing list, personal email)
> 
> * Other features that may depend on this
> 
> * Possible benefits of eventually removing it

We had this once, in the form of feature-removal-schedule.txt. It was,
itself, removed in commit 9c0ece069b32e8e122aea71aa47181c10eb85ba7.

I *do* think there'd be value in having policies and processes for "how
do we carefully remove a driver/architecture/etc we think nobody cares
about". That's separate from having an actual in-kernel list of "things
we think we can remove".
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
