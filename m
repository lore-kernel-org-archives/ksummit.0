Return-Path: <SRS0=cq3z=AT=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,
	SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A76E2C433E0
	for <ksummit-discuss@archiver.kernel.org>; Wed,  8 Jul 2020 20:48:19 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 79ED320708
	for <ksummit-discuss@archiver.kernel.org>; Wed,  8 Jul 2020 20:48:19 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=networkplumber-org.20150623.gappssmtp.com header.i=@networkplumber-org.20150623.gappssmtp.com header.b="rE8O+zrf"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 79ED320708
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=networkplumber.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C1EE520444;
	Wed,  8 Jul 2020 20:48:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JmreOSz+gPZo; Wed,  8 Jul 2020 20:48:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 248432002B;
	Wed,  8 Jul 2020 20:48:16 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D9504C077B;
	Wed,  8 Jul 2020 20:48:15 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3A80BC016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  8 Jul 2020 20:48:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2EEC08862F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  8 Jul 2020 20:48:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nMpABxTU907M
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  8 Jul 2020 20:48:13 +0000 (UTC)
X-Greylist: delayed 17:05:21 by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9B0A688627
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  8 Jul 2020 20:48:13 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id g67so21342651pgc.8
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 08 Jul 2020 13:48:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CjEoHJO9VGUXepRxlrPCQ4t6OG2a6kpKSMLMfEHyb+4=;
 b=rE8O+zrfKM7aSbWPDdvMMpBZEBo1Ml4GDSOCdEYvqt+hN+jm3ChC2bCssrWN41KwRN
 1gfgIcu8NurhPn9mW54BPdYrWltji2fk1cGpWEXY0Wnj4V9iW7MuUiAmhrznmR8EsdfG
 jeiQK2S16OUgtf7cY42836y/5tXuv4LIBpwtclN+XnaCzeJfTG0+R2R37l4lp0L7u39D
 TCwuRzbgAtXvlD0zUNXeQNE270L0ybWdd4y6C1rB9q32315VEhe93aVvHq+brUKCoKx1
 DffKpydeMq9/ZDLyjib+bkE2GbcRZhajohxXavgMZsHGPwGmX6vG8Q5FbiLijnUqdAhk
 s4JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CjEoHJO9VGUXepRxlrPCQ4t6OG2a6kpKSMLMfEHyb+4=;
 b=b0Wsfg2yNqnLJgGEtFl/FJYBRbBNnn0bMknrPcJv3IJxoxZcV08VilgN0chuS1jGBY
 6E+a832qMuHvsFpxblfJ18B2zixT/6BtL5VetSr9ss2pbreLplyM8NysVSKP4Mg54weH
 FKrBdJAypJ7hBqvXpR+T39eSkFVitEWynr9l3/TajxSo3lPuR4BXkNwm1ZgW9p6Hh6VG
 gv23VBbRHxLHl79IQl3kJm42rk1y2y6LOfB/Q0SrCDkGRZp5/1CKrAzvOrcPO4JGWnzk
 C6YqCpMGnKZvUyjJK7DoKKzdud4cSCLQNlYMryT2c6osDaW1aVVsBSnAN9up/1ZHUC9i
 mrOA==
X-Gm-Message-State: AOAM533teUbnaW2sAhxCuGOvvPoXqW5oc4gmewYXOGidGwlsPgl3FidY
 psImwQaTfAS91yDsShIYMflGnqimsc5xsA==
X-Google-Smtp-Source: ABdhPJziXNsDJgLEwOUYkszh0cJVAyOeTMEVXOMJ7Kk7vIMlv0zAR8pK8SzIIl4lO7Cz4vRzlwMY0Q==
X-Received: by 2002:a17:902:6943:: with SMTP id
 k3mr14777206plt.36.1594234751184; 
 Wed, 08 Jul 2020 11:59:11 -0700 (PDT)
Received: from hermes.lan (204-195-22-127.wavecable.com. [204.195.22.127])
 by smtp.gmail.com with ESMTPSA id z11sm478710pfg.169.2020.07.08.11.59.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jul 2020 11:59:10 -0700 (PDT)
Date: Wed, 8 Jul 2020 11:59:02 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: Dan Williams <dan.j.williams@intel.com>
Message-ID: <20200708115902.1c1d63a7@hermes.lan>
In-Reply-To: <159419296487.2464622.863943877093636532.stgit@dwillia2-desk3.amr.corp.intel.com>
References: <159419296487.2464622.863943877093636532.stgit@dwillia2-desk3.amr.corp.intel.com>
MIME-Version: 1.0
Cc: ksummit-discuss@lists.linuxfoundation.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 SeongJae Park <sjpark@amazon.de>, linux-kernel@vger.kernel.org,
 tech-board-discuss@lists.linuxfoundation.org, Chris Mason <clm@fb.clm>,
 Dave Airlie <airlied@redhat.com>
Subject: Re: [Ksummit-discuss] [PATCH v2] CodingStyle: Inclusive Terminology
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

On Wed, 08 Jul 2020 00:23:59 -0700
Dan Williams <dan.j.williams@intel.com> wrote:

> Linux maintains a coding-style and its own idiomatic set of terminology.
> Update the style guidelines to recommend replacements for the terms
> master/slave and blacklist/whitelist.
> 
> Link: http://lore.kernel.org/r/159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com
> Cc: Jonathan Corbet <corbet@lwn.net>
> Acked-by: Randy Dunlap <rdunlap@infradead.org>
> Acked-by: Dave Airlie <airlied@redhat.com>
> Acked-by: Kees Cook <keescook@chromium.org>
> Acked-by: SeongJae Park <sjpark@amazon.de>
> Signed-off-by: Olof Johansson <olof@lixom.net>
> Signed-off-by: Chris Mason <clm@fb.clm>
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Dan Williams <dan.j.williams@intel.com>

Thanks for doing this.

Signed-off-by: Stephen Hemminger <stephen@networkplumber.org>
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
