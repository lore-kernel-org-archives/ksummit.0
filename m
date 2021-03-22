Return-Path: <SRS0=ZpVE=IU=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=3.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74CBAC433C1
	for <ksummit-discuss@archiver.kernel.org>; Mon, 22 Mar 2021 19:20:10 +0000 (UTC)
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1DC3C61993
	for <ksummit-discuss@archiver.kernel.org>; Mon, 22 Mar 2021 19:20:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1DC3C61993
Authentication-Results: mail.kernel.org; dmarc=pass (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D23F0402BE;
	Mon, 22 Mar 2021 19:20:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LS1ZZM3Tq9ww; Mon, 22 Mar 2021 19:20:09 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTP id EB2B640299;
	Mon, 22 Mar 2021 19:20:07 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id AA40CC000B;
	Mon, 22 Mar 2021 19:20:07 +0000 (UTC)
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 847BBC0001
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 22 Mar 2021 19:20:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 65C4A8300C
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 22 Mar 2021 19:20:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d-7aDP1ShRbD
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 22 Mar 2021 19:20:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x735.google.com (mail-qk1-x735.google.com
 [IPv6:2607:f8b0:4864:20::735])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AD25182FEA
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 22 Mar 2021 19:20:05 +0000 (UTC)
Received: by mail-qk1-x735.google.com with SMTP id q26so6542980qkm.6
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 22 Mar 2021 12:20:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=8Q7RRvuVNavl/gwkoCMwZmRYpQT/3oqqA/DKA2GV8Lw=;
 b=bTRCp0Fu5tnZf7WgMih1mKBhgJgdd4RgZj/Nl+Pxf7YIflOd9ERjLcGWkpn99ggt8B
 loClDoBJn0+GNwZXWsLu7rWDks9FZaW856qyk+2YJBHYweTgZRFizRhhuvcvOlZweEbP
 V5lo753rKrmksaAOHvwXvO+14lJT7nA/EgDao=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=8Q7RRvuVNavl/gwkoCMwZmRYpQT/3oqqA/DKA2GV8Lw=;
 b=IfbqWFRJ6gWf0kYhNXVT1BFyJV9zgWr5HgwzIVeYiLCcMkgtFN8az5S/dZz2ffMtQy
 7tLo1lM9ZRbS7ZKMIy3mCWJR6VRzj+l5vXOtCK7azX4sHPuvlY5bHSgvPkVgKQMZG1jf
 IPXZPAoIt6vay23wvz2XURR4zMQbYoo6XZNoXJJtuL5Tzn22RxvHvIpcWkIwe+4tkYnm
 TSMJIYDR32YCqFYnnur94BIS7HLrz4vvPG4uyTaF+0LZo+jp5Km16MEHN8hFBeeZBgHI
 7VziD9TwaQMWgkQDW3Ql5g/66s/NMT6ylwMnHAG6bym5Trp0XWAw2qOwOFQic46WF2d+
 W4qw==
X-Gm-Message-State: AOAM531ILxrbOaWjaxl3RleL+DBezGAqtFiwlxPqVwkQKrH36UJkD4kD
 b7aGeV3XJ+Vt8KAFfnofrVpGRyQS
X-Google-Smtp-Source: ABdhPJwj9SrTtbeqsFzhsM9BN2vyOE0oiCFqLRGfTVoVe/f+PdSx7Aw2LHjTovOR1jv3SmTYcm9WfA==
X-Received: by 2002:a37:9d57:: with SMTP id g84mr1540801qke.71.1616440804306; 
 Mon, 22 Mar 2021 12:20:04 -0700 (PDT)
Received: from chatter.i7.local ([89.36.78.230])
 by smtp.gmail.com with ESMTPSA id h16sm9632950qto.45.2021.03.22.12.20.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Mar 2021 12:20:02 -0700 (PDT)
Date: Mon, 22 Mar 2021 15:20:00 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Thorsten Leemhuis <linux@leemhuis.info>
Message-ID: <20210322192000.7ea4dfslebcfok4l@chatter.i7.local>
Mail-Followup-To: Thorsten Leemhuis <linux@leemhuis.info>,
 Eric Wong <e@80x24.org>,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 ksummit-discuss@lists.linuxfoundation.org,
 Greg KH <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 workflows@vger.kernel.org
References: <613fe50d-fc9c-6282-f1f3-34653acb2ee9@leemhuis.info>
 <20210322171636.fkep2lby6gnve4su@chatter.i7.local>
 <e93ad98a34828a4140fa59c1fb5b01f03c6f4245.camel@HansenPartnership.com>
 <20210322183427.GA1195@dcvr>
 <09a6256e-0015-d360-9347-f025a7d5adfd@leemhuis.info>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <09a6256e-0015-d360-9347-f025a7d5adfd@leemhuis.info>
Cc: ksummit-discuss@lists.linuxfoundation.org,
 Greg KH <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 workflows@vger.kernel.org
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

On Mon, Mar 22, 2021 at 07:55:29PM +0100, Thorsten Leemhuis wrote:
> Out of curiosity: will that work for other bug trackers as well? Like
> the gitlab instance used by the drm developers? It's not really
> important and I guess the answer will be "no", but the question came up
> while at it...

If there's an API to poll changes, then it can be easily turned into a
public-inbox "feed" -- same as I intend to do for bugzilla. Each entry simply
gets converted into an RFC2822 message and stored in the repository that can
be indexed and queried by public-inbox alongside any other source.

-K
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
