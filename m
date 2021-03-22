Return-Path: <SRS0=ZpVE=IU=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=3.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73BD2C433C1
	for <ksummit-discuss@archiver.kernel.org>; Mon, 22 Mar 2021 17:16:44 +0000 (UTC)
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 14CC261972
	for <ksummit-discuss@archiver.kernel.org>; Mon, 22 Mar 2021 17:16:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 14CC261972
Authentication-Results: mail.kernel.org; dmarc=pass (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BAA82402BA;
	Mon, 22 Mar 2021 17:16:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 499e9Bqrqk-1; Mon, 22 Mar 2021 17:16:42 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTP id 02B3A4027F;
	Mon, 22 Mar 2021 17:16:41 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B8DD5C000B;
	Mon, 22 Mar 2021 17:16:41 +0000 (UTC)
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A3B53C0001
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 22 Mar 2021 17:16:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8F877402C5
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 22 Mar 2021 17:16:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UBfOjcTgmzvF
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 22 Mar 2021 17:16:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qt1-x831.google.com (mail-qt1-x831.google.com
 [IPv6:2607:f8b0:4864:20::831])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A567C402C4
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 22 Mar 2021 17:16:39 +0000 (UTC)
Received: by mail-qt1-x831.google.com with SMTP id s2so12897767qtx.10
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 22 Mar 2021 10:16:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=AOzWwNh9Z9Q2fPxgCHDYPxpc0oqGNwrpuGjPzRTDOYM=;
 b=SUPXIeJkm8BeqFPeZOhFyudDzS8X+Q3bXG7r/aza6Z9TpqZXVn/JWTdHwTjt7pO1Di
 2mdLRNSeZt0mL+p9bkjlJ12mu38eSVhX/qcLwxXOaJ3V4NU/7rpg65aRD1C7wHvTWmHk
 jT/MgB55wcXIxwl63yMiCJDwSsui3U08+dwDI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=AOzWwNh9Z9Q2fPxgCHDYPxpc0oqGNwrpuGjPzRTDOYM=;
 b=LBKUinmu85rvww6B6OBMDdiYj35bvlZ/0EwfWcabhFl5Z9sxO5UMnPkqWksTQrYf0W
 SstZPF1G2fEVAM0waluxPO+wos2kWMOcyJ30CJhUkG2ydFYinCe0ppMDZjl5LlPVPFkc
 hD41uud8XXxE2ZF1TaKKga8FYa4bhfxztq9nUoxaQdg82xGVq6hewbn0x+9bJ63Bayt+
 MU43QSuFnZCHgSzgacYPXli/ikJo6RvHCDdDalJ9xDEHdPvGm76P/7JXUfQ8+Kr+0IKW
 jpZS2OfLPJ9EtBwundEtaD2V0rqLXPCaR7BUoFscR92qjkIhu6vEy35eCo7Ssr4ZV77C
 VsDA==
X-Gm-Message-State: AOAM533XJqTbKz7fgPb/bgsfC9/N6SDwxg6Q7w/5Jd/Sv22VVLm+aTNI
 z7nGNSBsGCjRGGlxzi2TUa+SE9kl
X-Google-Smtp-Source: ABdhPJy/CiFfBssEItdA5oVBV2QXfAv2XhDWbXT90l7G5Lo5Ba8ddKwgyAendg7ze94cnMR379PEvA==
X-Received: by 2002:ac8:4a19:: with SMTP id x25mr850552qtq.271.1616433398205; 
 Mon, 22 Mar 2021 10:16:38 -0700 (PDT)
Received: from chatter.i7.local ([89.36.78.230])
 by smtp.gmail.com with ESMTPSA id o197sm11087024qka.26.2021.03.22.10.16.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Mar 2021 10:16:37 -0700 (PDT)
Date: Mon, 22 Mar 2021 13:16:36 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Thorsten Leemhuis <linux@leemhuis.info>
Message-ID: <20210322171636.fkep2lby6gnve4su@chatter.i7.local>
Mail-Followup-To: Thorsten Leemhuis <linux@leemhuis.info>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Greg KH <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 ksummit-discuss@lists.linuxfoundation.org,
 workflows@vger.kernel.org
References: <613fe50d-fc9c-6282-f1f3-34653acb2ee9@leemhuis.info>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <613fe50d-fc9c-6282-f1f3-34653acb2ee9@leemhuis.info>
Cc: Greg KH <gregkh@linuxfoundation.org>, workflows@vger.kernel.org,
 linux-kernel@vger.kernel.org, ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] RFC: create mailing list "linux-issues"
 focussed on issues/bugs and regressions
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

On Mon, Mar 22, 2021 at 04:18:14PM +0100, Thorsten Leemhuis wrote:
> Note, there is a second reason why ksummit-discuss is CCed: another
> reason why I want to create this new list is making it easier to find
> and track regressions reported to our various mailing lists (often
> without LKML in CC, as for some subsystems it's seems to be custom to
> not CC it). 

FYI, there will soon be a unified "search all of lore.kernel.org regardless of
the list/feed source" capability that may make it unnecessary to create a
separate list for this purpose. There's active ongoing work in the
public-inbox project to provide parallel ways to follow aggregate topics,
including query-based subscriptions (i.e. "put a thread into my inbox whenever
someone mentions my favourite file/function/device name"). This work is not
complete yet, but I have great hopes that it will become available in the next
little while.

Once we have this ability, we should be able to plug in multiple sources
beyond just mailing lists, including a feed of all bugzilla.kernel.org
changes. This should allow someone an easy way to query specific bugs and may
not require the creation of a separate list.

I'm not opposed to the creation of a new list, of course -- just want to make
sure it's aligned with the improvements we are working to make available.

-K
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
