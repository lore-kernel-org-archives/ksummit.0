Return-Path: <SRS0=BRMW=I3=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=3.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D17DC433C1
	for <ksummit-discuss@archiver.kernel.org>; Mon, 29 Mar 2021 22:44:28 +0000 (UTC)
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C87046192E
	for <ksummit-discuss@archiver.kernel.org>; Mon, 29 Mar 2021 22:44:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C87046192E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=lwn.net
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6963F403AC;
	Mon, 29 Mar 2021 22:44:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NF3DxGdoAaXt; Mon, 29 Mar 2021 22:44:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTP id 66667403AD;
	Mon, 29 Mar 2021 22:44:25 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2B548C000C;
	Mon, 29 Mar 2021 22:44:25 +0000 (UTC)
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E8F34C000A
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 29 Mar 2021 22:44:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CAD3B607DF
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 29 Mar 2021 22:44:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=lwn.net
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tyHLo7JwmV9z
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 29 Mar 2021 22:44:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ms.lwn.net (ms.lwn.net [45.79.88.28])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 05F51607DE
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 29 Mar 2021 22:44:22 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:281:8300:104d::5f6])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id EA6595CC;
 Mon, 29 Mar 2021 22:44:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 ms.lwn.net EA6595CC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lwn.net; s=20201203;
 t=1617057862; bh=EKvmVbzD//QNEEEuaeTgAwCcHafiUeTm6qRa1v6UhRU=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=sYOtGao+7Dz0cFmHAFPNFvdh2Yu9lNiRnH7BZooXPXQ03s006cMRFxZ7lELQrk7Ht
 DAuw9DQgpfKLCJcKPcl/aflDdDk61+qlhrkWTImsKVIoekHLDsHtdYhR+5q6wrDnGD
 CsU2AGIQJGF9ao20InPcr+7B2SFMcmjNDCiNSbwhhJjyrvGsUjghj78rdRUa1doXSN
 6nNP4nAY9zrYtndA+Se8wPQqE52twACfVAnlfv/FduafJkEsCab5htgpUXiKPLfKGc
 3un9ieOFYZHYOyaEQ5SH85S7jeuevYTugykM66xQQA7/8o1ecI56g6F63qLmKWfc/O
 1o/bwKaHRjHYw==
From: Jonathan Corbet <corbet@lwn.net>
To: Thorsten Leemhuis <linux@leemhuis.info>, ksummit
 <ksummit-discuss@lists.linuxfoundation.org>, Greg KH
 <gregkh@linuxfoundation.org>, Sasha Levin <sashal@kernel.org>, Randy
 Dunlap <rdunlap@infradead.org>
In-Reply-To: <14d9b8a3-94ce-00a6-a17b-934ffd999697@leemhuis.info>
References: <c396c91f-27c2-de36-7b05-099e03c213f4@leemhuis.info>
 <6a220d2c-568e-2e41-53a4-0800e206d0a6@leemhuis.info>
 <14d9b8a3-94ce-00a6-a17b-934ffd999697@leemhuis.info>
Date: Mon, 29 Mar 2021 16:44:21 -0600
Message-ID: <87r1jxpol6.fsf@meer.lwn.net>
MIME-Version: 1.0
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-doc@vger.kernel.org
Subject: Re: [Ksummit-discuss] [1/5] reporting-issues: header and TLDR
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

Thorsten Leemhuis <linux@leemhuis.info> writes:

> FWIW, on another channel someone mentioned the process in the TLDR is
> quite complicated when it comes to regressions in stable and longterm
> kernels. I looked at the text and it seemed like a valid complaint, esp.
> as those regressions are something we really care about.
>
> To solve this properly I sadly had to shake up the text in this section
> completely and rewrite parts of it. Find the result below. I'm quite
> happy with it, as it afaics is more straight forward and easier to
> understand. And it matches the step-by-step guide better. And the best
> thing: it's a bit shorter than the old TLDR.

I think this is much improved - concise is good! :)  I really just have
one little comment...

> I'll wait a day or two and then will send it through the regular review
> together with a few small other fixes that piled up for the text, just
> wanted to add it here for completeness.
>
> ---
> The short guide (aka TL;DR)
> ===========================
>
> Are you facing a regression with vanilla kernels from the same stable or
> longterm series? One still supported? Then search the `LKML
> <https://lore.kernel.org/lkml/>`_ and the `Linux stable mailing list
> <https://lore.kernel.org/stable/>_` archives for matching reports to
> join. If you don't find any, install `the latest release from that
> series <https://kernel.org/>`_. If it still shows the issue, report it
> to the stable mailing list and the stable maintainers.

If we really want this to be a short guide that gets people to the
answer quickly, we might as well put the addresses to report to right
here rather than making people search for them.

Thanks,

jon

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
