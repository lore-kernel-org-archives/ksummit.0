Return-Path: <SRS0=5cql=AQ=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBC2C433DF
	for <ksummit-discuss@archiver.kernel.org>; Sun,  5 Jul 2020 01:10:23 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 689FF20885
	for <ksummit-discuss@archiver.kernel.org>; Sun,  5 Jul 2020 01:10:23 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="BX49XED6"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 689FF20885
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F0CF42047B;
	Sun,  5 Jul 2020 01:10:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5arT6IMKN9lA; Sun,  5 Jul 2020 01:10:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id E1EE520412;
	Sun,  5 Jul 2020 01:10:21 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id AF6F2C088C;
	Sun,  5 Jul 2020 01:10:21 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C3A8DC0733
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun,  5 Jul 2020 01:10:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AD39287173
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun,  5 Jul 2020 01:10:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tmP3PvhaHlcn
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun,  5 Jul 2020 01:10:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2BCAE84EC1
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun,  5 Jul 2020 01:10:20 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id z5so16752759pgb.6
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sat, 04 Jul 2020 18:10:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=1Vm4HRhvjHhFdTobKM449g3tVhZrMSOdwfZujY8R/hk=;
 b=BX49XED6kLgKZ2llloNkd986iui2sFmeYin1jeehgk2pTKbUwqfqDe8+IYO+6v65OK
 eSH8LREdtMsZKl7Ld4rqEoPZMa4EXb9F8YBn9DRln3JZ+ZeDdYzgk+BRG9l3hFzvPx3s
 /dJBk3IXA2nylMtu0hfsq2SWiv92VZKwQrqYY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=1Vm4HRhvjHhFdTobKM449g3tVhZrMSOdwfZujY8R/hk=;
 b=hJndySTv+Hd0GOYjIQYkT9xif5uN73NidG8k+yrWLX81Hy+3qz/tjoM30lopfoNh6/
 XxDI+AqRnof06wgVHLUDy959g98gmhTftM8TZ9HL+V9mN2BFKcJJdS1sSpsi2UZXPyso
 2ejnbEjHO7LAC0EO9QSs5Vp/zA+Jx2waZD/CC+4JIklO25SnCt7skuLtXIi2kCsHClRR
 nopA6mNvLow3XToPrK6IdxQ5CK0963ngTXdH01zYjnfDEPlSqET8i9wth0F3nMMkhGDD
 bOAt2JW6FG9I86+eGKKSdllaH1DOXUex22FPLyZEcqYsixiAbkxgfmkldC9kBT2Qf4Rk
 KhVg==
X-Gm-Message-State: AOAM532PaYqGDc2Utm2s+EpxXKiIa/EQg2neZy34FfrjBzSwhNbC/gPr
 CdrkrMTNiLKpWJhahbcbdprEng==
X-Google-Smtp-Source: ABdhPJya9+b8rK6wZf0FcN/JrMCWTkK0eTwfDk2tA+2jp9upzyqC8kvr8z5dzQAWK4xYzFmMNXiCUQ==
X-Received: by 2002:a63:3409:: with SMTP id b9mr35832163pga.106.1593911419506; 
 Sat, 04 Jul 2020 18:10:19 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id mg17sm10385151pjb.55.2020.07.04.18.10.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Jul 2020 18:10:18 -0700 (PDT)
Date: Sat, 4 Jul 2020 18:10:17 -0700
From: Kees Cook <keescook@chromium.org>
To: Matthew Wilcox <willy6545@gmail.com>
Message-ID: <202007041804.B5E229E2B6@keescook>
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 <920e6dc0-628b-9bad-926a-d1238a373cda@infradead.org>
 <CAPM=9ty0tiL_qM_UFv0S0VtARKz_f-Anngc+amDM5LjGAHazhA@mail.gmail.com>
 <CAFhKne9MA_G-UsvBFfX-gZRcu9Gb7Xt7UxQ14MTppdU3X1VYdQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFhKne9MA_G-UsvBFfX-gZRcu9Gb7Xt7UxQ14MTppdU3X1VYdQ@mail.gmail.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 tech-board-discuss@lists.linuxfoundation.org, Chris Mason <clm@fb.clm>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

On Sat, Jul 04, 2020 at 08:10:33PM -0400, Matthew Wilcox wrote:
> Left-right tree makes no sense. It doesn't distinguish the rbtree from its
> predecessor the avl tree.  I don't think it's helpful to rename a standard
> piece of computing terminology unless it's actually hurting us to have it.
> Obviously if it were called a "master-slave" tree, I would be in favour of
> renaming it.

(No one has suggested renaming red/black trees, so I think the
slippery-slope argument can be set aside here.)

As for the actual proposal on white/black-list, I've always been annoyed
by the poor description it provides (and I get to see it A LOT being
the seccomp maintainer). I welcome allow/deny-list (though the change is
not new for seccomp -- the man pages were updated last year (thanks
mkerrisk). :)

-- 
Kees Cook
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
