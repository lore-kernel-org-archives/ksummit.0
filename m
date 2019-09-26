Return-Path: <SRS0=WLkl=XV=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B622C352AA
	for <ksummit-discuss@archiver.kernel.org>; Thu, 26 Sep 2019 16:24:59 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 20C3B222CB
	for <ksummit-discuss@archiver.kernel.org>; Thu, 26 Sep 2019 16:24:59 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="f4xNzzXK"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 20C3B222CB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id CB9C7D39;
	Thu, 26 Sep 2019 16:24:58 +0000 (UTC)
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F3321D38
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 26 Sep 2019 16:24:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
	[209.85.214.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AE5CC844
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 26 Sep 2019 16:24:56 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id s17so1526428plp.6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 26 Sep 2019 09:24:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to;
	bh=10H/U7S2ghOV1iSbFD3M/tAhuyIEQ4KVMg/2VEiOBIw=;
	b=f4xNzzXKr4mmYi1uFJITBf57fJUx5x05Hkxv0qpTY9MyQY7d7lSG6T3OhoVN+7ASXP
	2G2hWm1pgUPavrJONXg8F5ia8/Z8ziT6auEr/eyTaW+wzq0d/70KkCofW3UnwbdbOJ8u
	l5Lqreyr1TB0yu5ebWkkXqlIFLa7JU6hQMGwk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to;
	bh=10H/U7S2ghOV1iSbFD3M/tAhuyIEQ4KVMg/2VEiOBIw=;
	b=OJWVydwYCL3XWsqQVgW69HplEzuplOSHrw8CzdAZHI/sL5veX/LH6qnckIDp77kFQ+
	+814Mpcrx4T8ZP6pxVvNlrZd8yVg723hhDV1b5TQhf0l3QanLzPq+Pn+fJPufnIZnahB
	kn5BefpF6RkKve2012JpK+Iy+I1vTlqT9IuDM+yEh4lllK37QmGFRg26W2XtSMMjDEaC
	BKP4uU6sXXQqjt/uQ3YVPCgU9Vwjhm84GOJNYrkQ6PQcj7WUNE+oSYk2V/xGLxllqCSO
	4tdcRPuakJ4hRZaRxEtop/1g+rymxdpjr15aJKLaplei5AzUJ5jAB43JIyu3hYzWEWL/
	jhUA==
X-Gm-Message-State: APjAAAWSelQ/qYQ4kxcTsKKXfV8Gsah3mzuCU4nzWLA8RSLYDqbXUNZd
	IcN2gVZ8t4KJWd0CXgNoOWhlIg==
X-Google-Smtp-Source: APXvYqzJO6o2+q3kThM5imEaNfRgKTekPjo4iKpqxyWBQTs7ilT2ZwiNMLKi6UzmS5vgRsehaaTGjA==
X-Received: by 2002:a17:902:36e:: with SMTP id
	101mr5188747pld.46.1569515096274; 
	Thu, 26 Sep 2019 09:24:56 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
	by smtp.gmail.com with ESMTPSA id l7sm2408166pjy.12.2019.09.26.09.24.55
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 26 Sep 2019 09:24:55 -0700 (PDT)
Date: Thu, 26 Sep 2019 09:24:54 -0700
From: Kees Cook <keescook@chromium.org>
To: Joe Perches <joe@perches.com>
Message-ID: <201909260924.D6287F93@keescook>
References: <156821693963.2951081.11214256396118531359.stgit@dwillia2-desk3.amr.corp.intel.com>
	<434c05bddd2b364e607e565227487910a8dd9793.1568391461.git.mchehab+samsung@kernel.org>
	<20190918123620.GA6306@pendragon.ideasonboard.com>
	<20190918105728.24e7eb48@coco.lan> <20190919065447.GF2959@kadam>
	<5d71311232fd6d4aa0fab038512eab933c13a722.camel@perches.com>
	<201909251127.D0C517171E@keescook>
	<4eca5297a213357995c05b90c74a8bc638f54f02.camel@perches.com>
	<201909260848.B429B7DF@keescook>
	<b2e180a2d2d1d205c426ec02051a002f2c77832e.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b2e180a2d2d1d205c426ec02051a002f2c77832e.camel@perches.com>
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org,
	Dan Carpenter <dan.carpenter@oracle.com>,
	Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: Re: [Ksummit-discuss] [PATCH] media: add a subsystem profile
 documentation
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.12
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
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

On Thu, Sep 26, 2019 at 09:02:07AM -0700, Joe Perches wrote:
> > the [a-f0-9]{1,40} already excludes "commit".
> 
> No it doesn't as commit starts with c which matches [a-f0-9]{1,40}

Whoops! Yes, sorry, you're right. I needed a trailing whitespace in the
regex.

-- 
Kees Cook
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
