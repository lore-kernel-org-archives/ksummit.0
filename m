Return-Path: <SRS0=lEje=AV=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.5 required=3.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCACC433E1
	for <ksummit-discuss@archiver.kernel.org>; Fri, 10 Jul 2020 16:02:49 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 555062078B
	for <ksummit-discuss@archiver.kernel.org>; Fri, 10 Jul 2020 16:02:49 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="C016bLjS"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 555062078B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DDFCE899FC;
	Fri, 10 Jul 2020 16:02:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cU7CtcJ7mEX7; Fri, 10 Jul 2020 16:02:48 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0A1B387FE8;
	Fri, 10 Jul 2020 16:02:48 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B9614C0890;
	Fri, 10 Jul 2020 16:02:47 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 04ABEC016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 10 Jul 2020 16:02:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E180F2045E
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 10 Jul 2020 16:02:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QlAjNZJk7Clv
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 10 Jul 2020 16:02:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 6E0C520420
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 10 Jul 2020 16:02:41 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id 9so7035878ljv.5
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 10 Jul 2020 09:02:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dP/Cwrj374IdB7UlLTFuDEBsi+Cb3XJB3iKosVI1sUk=;
 b=C016bLjS1iSmlTj0cYHyYgpPqWoY/JAMQZDnD7WVqXT+pAak4ctDI2JY5PrUCGEqjQ
 kK1fGu7t89n/K2qg2s0gtOMBRkEH4Gux1s7dsDRhKk8lkH3i0vAs+rdiFO6xBSDOqp72
 MiuNlhIBNiLc6XYJgQY1TRcEIm6QIoZsFQtuImstn9NX9d/xjTVXRbm5A+W66VrnUjNA
 oTskdRfKYWp5HN6JqO0FzrYzjTURpSMwqj4S2IntcSUJ8C+j2dRGORfVgAod0hF5t8oY
 U5JvZb1Zx66ljOmk9sECCvq3zuZ+EyViOSvG1wYgBRDMgwDb888R3tqYosDQzX4f3vAk
 D3Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dP/Cwrj374IdB7UlLTFuDEBsi+Cb3XJB3iKosVI1sUk=;
 b=Ipwoy3+F0PFk399xrOKaO2eiw8wtdWXdxFSZF2Z5GDs50XTrNzYETRWMaYqrSi7f3Z
 xjbcPO6+GgmZKneZWhdJSW+rOEEqO6+A8CZfYQ7NITWt0tfExnEzB5vxF93dYhXcvBp+
 gCBk4Pdn8qtGS9juzNry/8IslFk60iUxlT1SZ6pONHXCN7B8Qh9kivA00dPOuEkDohzo
 qC+hI+xvjlYUC2ldfjUMuCqNXdilTtMQZJkg+KH0hpmcchrNmLthchszhkgzNK1tuDo2
 oKrI9EdA6apvGqujjFHtsFZItESZpI39Nt5syoWu31DYmGTiMi4WYZu0r9XnTMvSQ1D4
 msUw==
X-Gm-Message-State: AOAM531q1mb4ocOuz5O+rRsr5kQLJyg3N5x5pD0Savf+HH7nXICyTgtI
 qgtJCFgXgpoEpwuBeAcw1Jp+aPZTbh42XTb848s48w==
X-Google-Smtp-Source: ABdhPJxrjkl/SqLB51dbIteb5teAD4c/1Mys6FI12CCbyigPoK1IQmofSn+hyrV2N/0Fs+ibrYIikoRo5cMZoGwR1cY=
X-Received: by 2002:a2e:8046:: with SMTP id p6mr26850311ljg.100.1594396959423; 
 Fri, 10 Jul 2020 09:02:39 -0700 (PDT)
MIME-Version: 1.0
References: <159419296487.2464622.863943877093636532.stgit@dwillia2-desk3.amr.corp.intel.com>
In-Reply-To: <159419296487.2464622.863943877093636532.stgit@dwillia2-desk3.amr.corp.intel.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 10 Jul 2020 18:02:28 +0200
Message-ID: <CACRpkdax9wSFtYxyCu18bWwc5T1GqNx7EDVA6JN+Qu42hOCh_A@mail.gmail.com>
To: Dan Williams <dan.j.williams@intel.com>
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

On Wed, Jul 8, 2020 at 9:40 AM Dan Williams <dan.j.williams@intel.com> wrote:

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

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

An interesting piece on the topic is Douglas R. Hofstadter's
satirical "A Person paper On Purity in Language" from 1985,
which is funny, witty, Jonathan Swift-like and at one point
convinced me on the importance of proper language in
my professional work.
http://www.cs.virginia.edu/~evans/cs655/readings/purity.html

Thanks,
Linus Walleij
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
