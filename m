Return-Path: <SRS0=QNS2=FH=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=3.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 513FAC433FE
	for <ksummit-discuss@archiver.kernel.org>; Thu,  3 Dec 2020 19:17:39 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BD9D2206F6
	for <ksummit-discuss@archiver.kernel.org>; Thu,  3 Dec 2020 19:17:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BD9D2206F6
Authentication-Results: mail.kernel.org; dmarc=pass (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2D34487A1C;
	Thu,  3 Dec 2020 19:17:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oNHignCSaenX; Thu,  3 Dec 2020 19:17:37 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8088287A01;
	Thu,  3 Dec 2020 19:17:37 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4E3ADC163C;
	Thu,  3 Dec 2020 19:17:37 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BCCB4C0FA7
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  3 Dec 2020 19:17:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AB10287D92
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  3 Dec 2020 19:17:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yxc40ifQsf-u
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  3 Dec 2020 19:17:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
 [209.85.160.175])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C52AC87D8C
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  3 Dec 2020 19:17:34 +0000 (UTC)
Received: by mail-qt1-f175.google.com with SMTP id u21so2177232qtw.11
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 03 Dec 2020 11:17:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=mEdRneYpfbUi98zNntUQNKQ2H6JBdHd09u2mqkK+vgw=;
 b=KOxgV2SOIXW3Z/fxcWUyP4RforAO0+vjI32EDsZbWyUmmW/OBUzRvR+jdQ3SE29o0w
 XMqW2a2cW/uXEqkhPCs617b1tz9iJvae+K7QzjIJhoCRSYBqPz5P6ydYbaNyzxgAdhGF
 T1D81y6xq7s5YAarFPI21bdSNcaHL+07HwYnU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=mEdRneYpfbUi98zNntUQNKQ2H6JBdHd09u2mqkK+vgw=;
 b=kKHs/eM75ioivQRU3tmH5GYBwdrhdqhaN4Pm+qB/rrZFEi5iXlNk1rTTtY4C46JR3p
 sgc4WyhrW/rwtNpNnj1Y5jVibwjswbRIp/nvKO2Owlsv+GL43WSD155jSUa+jIFybA0H
 nUIFTzh2KLva+WtkkIPDzmUKASW9n02/Yc2k9+nlZbfJRKDRfolZew0K7+88MMQXlMwI
 2LUdyZkMV9nFZ5mLsViALf0JfryxoRj0rhOPFoWn3soGvJACENsbtCusZrg/MmwD82x2
 GLpf7tSQ3ziEAkfHa+B60i/UOb2qpGRI9DxBrvde2hgxuiWxgAp5CteVCnMLXWxSqfnJ
 Hkbw==
X-Gm-Message-State: AOAM531+8SboIxEfTlq4Vq+5Wpj9pXFzl5e6IrEVfT5iiNk/Fy8hwWao
 XKzXgf9jFc2mbDhVaF6ntY5DNgrn
X-Google-Smtp-Source: ABdhPJz8iSjD1x8VLHhjJxtXMLdGlj+hJ1g6O92fs0rzspYmrXDO+GqCEdKFTb8FIRIwplwaoDuyxQ==
X-Received: by 2002:ac8:7551:: with SMTP id b17mr4809456qtr.35.1607023053727; 
 Thu, 03 Dec 2020 11:17:33 -0800 (PST)
Received: from chatter.i7.local ([89.36.78.230])
 by smtp.gmail.com with ESMTPSA id o125sm2507034qke.56.2020.12.03.11.17.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Dec 2020 11:17:33 -0800 (PST)
Date: Thu, 3 Dec 2020 14:17:31 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Joe Perches <joe@perches.com>
Message-ID: <20201203191731.bpzvwqfldhcjhzfy@chatter.i7.local>
Mail-Followup-To: Joe Perches <joe@perches.com>,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 Vlastimil Babka <vbabka@suse.cz>,
 "ksummit-discuss@lists.linuxfoundation.org"
 <ksummit-discuss@lists.linuxfoundation.org>, 
 LKML <linux-kernel@vger.kernel.org>
References: <ea32eb02-5e44-0469-772b-34b5cb882543@suse.cz>
 <694039d6e386d999fd74d038cf2627f5b3b0ca71.camel@HansenPartnership.com>
 <3c11134905f06185dda4e9125f2fb7fd30fff979.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3c11134905f06185dda4e9125f2fb7fd30fff979.camel@perches.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
 "ksummit-discuss@lists.linuxfoundation.org"
 <ksummit-discuss@lists.linuxfoundation.org>, Vlastimil Babka <vbabka@suse.cz>,
 LKML <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] crediting bug reports and fixes folded into
 original patch
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

On Thu, Dec 03, 2020 at 08:55:54AM -0800, Joe Perches wrote:
> Perhaps automate a mechanism to capture that information as
> git notes for the patches when applied.

Git notes have a limited usefulness for this -- they are indeed part of 
the repository, but they aren't replicated unless someone does a 
--mirror clone (or specifically fetches refs/notes/*). If the goal is to 
improve visibility for contributors, then putting this info into a git 
note will hardly make more difference than providing a Link: that 
someone has to follow to a list archival service.

I can offer the following proposal:

- kernel.org already monitors all mailing lists that are archived on 
  lore.kernel.org for the purposes of pull request tracking 
  (pr-tracker-bot).
- in the near future, we will add a separate process that will 
  auto-explode all pull requests into individual patches and add them
  to a separate public-inbox archive (think of it as another 
  transparency log, since pull requests are transient and opaque).

We can additionally:

- identify all Link: and Message-Id: entries in commit messages, 
  retrieve the threads they refer to, and archive them as part of the 
  same (or adjacent) transparency log.

This offers an improvement over the status quo, because if 
lore.kernel.org becomes unavailable, someone would have to have access 
to all backend archive repositories it is currently tracking in order to 
be able to reconstitute relevant conversations -- whereas with this 
change, it should be sufficient to just have the copy of the 
transparency log to have a fully self-contained high-relevancy archive 
of both individual commits and conversations that happened around them.

I'm just not sure if this will help with the subject of the 
conversation, or if it does not serve the goal of recognizing developer 
contributions by making them more visible.

-K
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
