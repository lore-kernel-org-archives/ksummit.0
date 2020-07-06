Return-Path: <SRS0=iFvq=AR=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91375C433DF
	for <ksummit-discuss@archiver.kernel.org>; Mon,  6 Jul 2020 15:53:34 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5A1F020715
	for <ksummit-discuss@archiver.kernel.org>; Mon,  6 Jul 2020 15:53:34 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="E2900dOp"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5A1F020715
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 021BE260A9;
	Mon,  6 Jul 2020 15:53:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RPhhuWuwaqOn; Mon,  6 Jul 2020 15:53:32 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 30BC625FA7;
	Mon,  6 Jul 2020 15:53:32 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 01BF5C0893;
	Mon,  6 Jul 2020 15:53:32 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 854EDC016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon,  6 Jul 2020 15:53:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5C79920010
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon,  6 Jul 2020 15:53:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uhiuhhIK40yW
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon,  6 Jul 2020 15:53:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 5BCAA1FEED
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon,  6 Jul 2020 15:53:28 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id d4so18571161pgk.4
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 06 Jul 2020 08:53:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=IaQi7Xp42ftquKfgwNd6G15TPvj7K9LsvnIqneB2JPM=;
 b=E2900dOp6ACJ2Rm6CME9oay/0h85cf3q6yzSh/VapfNYjWBQz9pWrlJ6JipPzD+tPH
 7b4oYeCKTTv8mcNfjO2fSIyDDD78dsLcpTt2MOEYEjkLTes4QZVrOVXjXB9rW14fBNmw
 UlL1NFzXiL0Q3iFUMOrU5nnao1wywsR8TZ4/k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=IaQi7Xp42ftquKfgwNd6G15TPvj7K9LsvnIqneB2JPM=;
 b=TfF7H8rZ5EgeNcuAOYQ4Sk/mZnMTsTG6k9rTLUOZDiaq3HYqStbMjznokbXgAHcdaO
 2zm6Vi67JfwX6tOKrTBpA7tTaAWyWydm16MuDg1I28uy4DJkoTRyOAH6cxJvZmAt3Tdz
 zW+aaqeVdtJKngV78UYjwpDBQrpSQ9R4gA+siLhjh9P/hzoOYvVwN29uLKHDznItOVpR
 on9iAE2GkNHT6IFr53a7nsWCtMBmvCR0TgPpA+gSMy2dCsk6yBr/RERT9dOL8xmT+gq9
 iDsR1aeapMfuZ6rY/8ney5XYWWh7cVlD8hNVXP3jvEWsK2yVZTyV3fhc5u6tKyrSTQOn
 BbAA==
X-Gm-Message-State: AOAM531GVAYNlezvz6dXbPWDTDF9wMYKNm7pOC+nqX0Aaef0Gja3QaSV
 Wcu9FFY0gOETbB7dvOyjJh55vg==
X-Google-Smtp-Source: ABdhPJyJlovwNXf7zCxj78F7E5i5D4JnbKX+EyYsl0M3/qGMeuAx1r4WbCmBjeR9tYH0R5iv7TEDzQ==
X-Received: by 2002:a62:8489:: with SMTP id k131mr45654008pfd.4.1594050807911; 
 Mon, 06 Jul 2020 08:53:27 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id e191sm19488211pfh.42.2020.07.06.08.53.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jul 2020 08:53:26 -0700 (PDT)
Date: Mon, 6 Jul 2020 08:53:25 -0700
From: Kees Cook <keescook@chromium.org>
To: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <202007060853.07B4D4F9@keescook>
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 <920e6dc0-628b-9bad-926a-d1238a373cda@infradead.org>
 <CAPM=9ty0tiL_qM_UFv0S0VtARKz_f-Anngc+amDM5LjGAHazhA@mail.gmail.com>
 <CAFhKne9MA_G-UsvBFfX-gZRcu9Gb7Xt7UxQ14MTppdU3X1VYdQ@mail.gmail.com>
 <202007041804.B5E229E2B6@keescook>
 <8c0c1050-3beb-86f6-f184-4687acffd61d@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8c0c1050-3beb-86f6-f184-4687acffd61d@gmail.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 tech-board-discuss@lists.linuxfoundation.org, expensivestephen@hotmail.com,
 Chris Mason <clm@fb.clm>
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

On Mon, Jul 06, 2020 at 01:15:38PM +0200, Michael Kerrisk (man-pages) wrote:
> On 7/5/20 3:10 AM, Kees Cook wrote:
> > On Sat, Jul 04, 2020 at 08:10:33PM -0400, Matthew Wilcox wrote:
> >> Left-right tree makes no sense. It doesn't distinguish the rbtree from its
> >> predecessor the avl tree.  I don't think it's helpful to rename a standard
> >> piece of computing terminology unless it's actually hurting us to have it.
> >> Obviously if it were called a "master-slave" tree, I would be in favour of
> >> renaming it.
> > 
> > (No one has suggested renaming red/black trees, so I think the
> > slippery-slope argument can be set aside here.)
> > 
> > As for the actual proposal on white/black-list, I've always been annoyed
> > by the poor description it provides (and I get to see it A LOT being
> > the seccomp maintainer). I welcome allow/deny-list (though the change is
> > not new for seccomp -- the man pages were updated last year (thanks
> > mkerrisk). :)
> 
> Actually, the manual pages are ahead of the game only thanks to
> a nice presentation last year @OSS from Stephen Kenigbolo :-).

Ah-ha, cool. I think I found it here:
https://www.youtube.com/watch?v=XtS_t3FHWe0

-- 
Kees Cook
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
