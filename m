Return-Path: <SRS0=lEje=AV=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.5 required=3.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29A1FC433E5
	for <ksummit-discuss@archiver.kernel.org>; Fri, 10 Jul 2020 16:13:35 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F255820725
	for <ksummit-discuss@archiver.kernel.org>; Fri, 10 Jul 2020 16:13:34 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=intel-com.20150623.gappssmtp.com header.i=@intel-com.20150623.gappssmtp.com header.b="isKdQKPN"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F255820725
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=intel.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D7F56871CC;
	Fri, 10 Jul 2020 16:13:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ehpxm0QKL2mB; Fri, 10 Jul 2020 16:13:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 15AF88873B;
	Fri, 10 Jul 2020 16:13:34 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D80DBC1797;
	Fri, 10 Jul 2020 16:13:33 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 388ADC016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 10 Jul 2020 16:13:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 26F94221CC
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 10 Jul 2020 16:13:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WgZvyq7BXP-k
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 10 Jul 2020 16:13:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com
 [209.85.218.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 9E91E22176
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 10 Jul 2020 16:13:30 +0000 (UTC)
Received: by mail-ej1-f67.google.com with SMTP id w6so6684040ejq.6
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 10 Jul 2020 09:13:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GuTemQ7KYRFEUiSXBnnfVYEJAwLMSHFjzyXd2qUpBJM=;
 b=isKdQKPNlEDojcebZaIkUqT/0t9js4SLcA3mJCOcioV+3ATcqDxdJCxfd3ILcFOLZl
 tOpvnVcodD05qit011zarA1ggkgVfVB/d4xaBV61gDXqcNoMFLprTwjguRUNpThyMqMu
 PLeoxfuiYD6PlKu9hCxjjBVXvghQXzHmu0ZumROT5OsnGOCmp/D3KHgodO5B+HlQV/bg
 oHmKnl0wQA3PwOvL7o9tUKflDiU1CorxFe6/pjsSstrrmP7voSAFGFNLqT9anvtjtEFb
 VWqtGh9BTarWrZSz+pkTQqFks18quP+n6EtZwUo8oBZS84qr8b0L/WVkJrXHWuIx6JrO
 vRYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GuTemQ7KYRFEUiSXBnnfVYEJAwLMSHFjzyXd2qUpBJM=;
 b=ESly3cs41b/3aooWdwfBxbcEKKP5ZGY5ex+1VfQN42tQBfsk5mWjLHvc3lVctrSKvi
 FrpbCt4rXnNdJlzHXasBt0B+RNrEgA4yrVo+HWcYLih7AtpbL017N3SzV21JlRY9mJG2
 qZS13G18j7DbjQwr1dHx7171P38zXoclPKp4KvRvJYbciWpBwC2Lb8X4iCXL/wfB7ycK
 nRELIAEz27lm0HxpVaH+oy0BGpx7uNfiXF8vwowoiIrnKcuwjUbnIbfP5IkS/ZRINTXU
 C/2EWAM+BmvyNSjSHZB5mTmczzYUFljTmvM6kPShnpXophJsVKvYM6wRyUBQdLbCouFX
 ZVcA==
X-Gm-Message-State: AOAM532Vr8YP0TraksGvxqoRuMyhqxZAOB9ClKQW/Qbl3nM+nnS/uWk6
 QIbKWTNyvNatkU2xIKJCZ3wj8Zf+Y2+Vuma1wZLJTA==
X-Google-Smtp-Source: ABdhPJzCbKvo8U8scwvbkPOPP/8wbfKDhI1Qe8+dFjUDkLc3+GTw9TBaNPbuhtlMWViJabrxSULQvMydjEo4r5TzVxQ=
X-Received: by 2002:a17:906:f98e:: with SMTP id
 li14mr61467350ejb.174.1594397609098; 
 Fri, 10 Jul 2020 09:13:29 -0700 (PDT)
MIME-Version: 1.0
References: <159419296487.2464622.863943877093636532.stgit@dwillia2-desk3.amr.corp.intel.com>
 <CACRpkdax9wSFtYxyCu18bWwc5T1GqNx7EDVA6JN+Qu42hOCh_A@mail.gmail.com>
In-Reply-To: <CACRpkdax9wSFtYxyCu18bWwc5T1GqNx7EDVA6JN+Qu42hOCh_A@mail.gmail.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Fri, 10 Jul 2020 09:13:17 -0700
Message-ID: <CAPcyv4jxnayrq6FKVkR-hCedm-XARd-wuQpFjfGVBg6j5ow0xw@mail.gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 SeongJae Park <sjpark@amazon.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
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

On Fri, Jul 10, 2020 at 9:03 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Wed, Jul 8, 2020 at 9:40 AM Dan Williams <dan.j.williams@intel.com> wrote:
>
> > Linux maintains a coding-style and its own idiomatic set of terminology.
> > Update the style guidelines to recommend replacements for the terms
> > master/slave and blacklist/whitelist.
> >
> > Link: http://lore.kernel.org/r/159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com
> > Cc: Jonathan Corbet <corbet@lwn.net>
> > Acked-by: Randy Dunlap <rdunlap@infradead.org>
> > Acked-by: Dave Airlie <airlied@redhat.com>
> > Acked-by: Kees Cook <keescook@chromium.org>
> > Acked-by: SeongJae Park <sjpark@amazon.de>
> > Signed-off-by: Olof Johansson <olof@lixom.net>
> > Signed-off-by: Chris Mason <clm@fb.clm>
> > Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Signed-off-by: Dan Williams <dan.j.williams@intel.com>
>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

Thanks Linus.

>
> An interesting piece on the topic is Douglas R. Hofstadter's
> satirical "A Person paper On Purity in Language" from 1985,
> which is funny, witty, Jonathan Swift-like and at one point
> convinced me on the importance of proper language in
> my professional work.
> http://www.cs.virginia.edu/~evans/cs655/readings/purity.html

...and thanks for that laugh.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
