Return-Path: <SRS0=5Bgd=BP=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC8A5C433DF
	for <ksummit-discuss@archiver.kernel.org>; Wed,  5 Aug 2020 18:51:01 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 94203206D7
	for <ksummit-discuss@archiver.kernel.org>; Wed,  5 Aug 2020 18:51:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 94203206D7
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0EE1B8692B;
	Wed,  5 Aug 2020 18:51:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Tw-2b03lDqTX; Wed,  5 Aug 2020 18:50:59 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 493B085F89;
	Wed,  5 Aug 2020 18:50:59 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1E641C0050;
	Wed,  5 Aug 2020 18:50:59 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 79578C004C
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  5 Aug 2020 18:50:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6C27985F89
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  5 Aug 2020 18:50:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2-De78gKX6hn
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  5 Aug 2020 18:50:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
 [209.85.167.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2628185F3D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  5 Aug 2020 18:50:56 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id u63so28768764oie.5
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 05 Aug 2020 11:50:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HPsV2zoZzYtOhvNoZSOkLk25C0ml14YDgasXK3+w6VE=;
 b=YF3WHI1Wr4koVoP4wdCLpjZYgdfpPUhkUtRrr+QOBWV0DUaFjYJ6j2nc3rFV00zUh1
 h8ne76CXPhHIQZYxH/hjxAL+mTyB4Mh2dLpzxxwaizQ9YVFlmzvwGxKgOL43Z223kMfK
 aOI0oQJ+Fhf7GthQPwd+UYmYYHlkV0xndtI+RSXLs1y18fr2Um11Wy6w068h8geIZSkR
 GUFH7XwIAPy2q9X+xmPND4UP4oLkaS/OZ0730qDXU/rNG3j1PIOhFOjuO/DGQpPwvTFB
 MCIxZlEsZKxt8SYkiH2E/YoEnFE654zqhkCcYQzqaLaYENiQi4BkoIlEphJqKMtCl14c
 6SDQ==
X-Gm-Message-State: AOAM531YC0fWTyul1kRqoJ18mYa+8FMRcEzUjSjrjaJ9WA35WKnMjAKx
 mg4Nu0FnH0jilYKU1U86b6+qjh+6zFCAPumTACw=
X-Google-Smtp-Source: ABdhPJyjRO4HSKl3hSDUVF5bSG5jZ4RKTOAV+ZERBUYtGBdE78D2y4bJ+423aczt1eKUP/YF0MvfgAOfOKarZ6B+Nu4=
X-Received: by 2002:aca:b742:: with SMTP id h63mr3779425oif.148.1596653455300; 
 Wed, 05 Aug 2020 11:50:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a2PK_bC5=3wcWm43=y5xk-Dq5-fGPExJMnOrNfGfB1m1A@mail.gmail.com>
 <20200805172629.GA1040@bug>
In-Reply-To: <20200805172629.GA1040@bug>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 5 Aug 2020 20:50:43 +0200
Message-ID: <CAMuHMdV20tZSu5gGsjf8h334+0xr1f=N9NvOoxHQGq42GYsj4g@mail.gmail.com>
To: Pavel Machek <pavel@ucw.cz>
Cc: linux-arch <linux-arch@vger.kernel.org>,
 ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
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

Hi Pavel,

On Wed, Aug 5, 2020 at 7:26 PM Pavel Machek <pavel@ucw.cz> wrote:
> > I have submitted the below as a topic for the linux/arch/* MC that Mike
> > and I run, but I suppose it also makes sense to discuss it on the
> > ksummit-discuss mailing list (cross-posted to linux-arch and lkml) as well
> > even if we don't discuss it at the main ksummit track.
>
> > * Latest kernel in which it was known to have worked
>
> For some old hardware, I started collecting kernel version, .config and dmesg from
> successful boots. github.com/pavelmachek, click on "missy".

You mean your complete hardware collection doesn't boot v5.8? ;-)

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
