Return-Path: <SRS0=UAjN=XM=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A00C4C4CECD
	for <ksummit-discuss@archiver.kernel.org>; Tue, 17 Sep 2019 16:33:16 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7451B21881
	for <ksummit-discuss@archiver.kernel.org>; Tue, 17 Sep 2019 16:33:16 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="FkMj/GJY"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7451B21881
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D305E1539;
	Tue, 17 Sep 2019 16:33:15 +0000 (UTC)
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 756E51511
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 17 Sep 2019 16:33:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
	[209.85.215.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1473F832
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 17 Sep 2019 16:33:14 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id n9so2315647pgc.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 17 Sep 2019 09:33:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to;
	bh=c+PTSCzGjCSex5vMxl5qRR8PkMLygl/K8peAQu3SOZM=;
	b=FkMj/GJY5ixm4XxNsnmw9paiRJ2ZNgelNLfWZix1SH0rxaC5o+aLi2Tfe5SwOzb+Jz
	FOwDqA1m05sNWGWpuPcukBlhWb1N3t/TvgcQzjFdAtvfARAWJkxaJnbTK764SKzk4Z5v
	c4+5X8oPZlCWBPbbQtbVA5zdN4XLPXK/kFL0w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to;
	bh=c+PTSCzGjCSex5vMxl5qRR8PkMLygl/K8peAQu3SOZM=;
	b=GfaBZJ+wMF+MJjtvm70AK75c9IF9H0PgJbT5OZEynem29IUq8UesIsZBd6ymfgdtcU
	8328guED0AEPYdQ3XQKN8hQ/UP21jlNBvv9PeBHpPuCJ7UTB/wl0AyBlRG+lUSIx67rK
	8aFvK/p3lhCH8CtVRZM9/lTTeNCzIBhDQMqwdiO04ZTeuiabM3dhxRA5GeDoZEUdGTbw
	X/uDGggOWbEtbUuWeTX7IaDLNbEU6yZg1a0ZYLUmMjCAOu3lh9LJ0Mr3EsMdyFK2/qfh
	b2b5Odgc2XZJPGC3vqvV34dnf/oW5ald2ydJd3MV28yyK4K4J26GIqPByOX6pT6+BXRy
	n/Iw==
X-Gm-Message-State: APjAAAXqndGwjkDV75JTwF/m9pFFEh0bEQT3EJlzktr0KnvdYgBMcDw+
	31YfsaBJ8sHaAVIbf/acT7AwpQ==
X-Google-Smtp-Source: APXvYqwtuaUAgzzoeQraSuZ738yvmojRxlIIqMFc1O8f5z8cANqLJaYQmv8KDst/GutoMAHmzKt91A==
X-Received: by 2002:a63:1d52:: with SMTP id d18mr4244378pgm.315.1568737993373; 
	Tue, 17 Sep 2019 09:33:13 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
	by smtp.gmail.com with ESMTPSA id
	c128sm3219182pfc.166.2019.09.17.09.33.12
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Tue, 17 Sep 2019 09:33:12 -0700 (PDT)
Date: Tue, 17 Sep 2019 09:33:11 -0700
From: Kees Cook <keescook@chromium.org>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Message-ID: <201909170930.B8AD840@keescook>
References: <156821693963.2951081.11214256396118531359.stgit@dwillia2-desk3.amr.corp.intel.com>
	<434c05bddd2b364e607e565227487910a8dd9793.1568391461.git.mchehab+samsung@kernel.org>
	<201909162032.F4462D3@keescook> <20190917102817.263517b5@coco.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190917102817.263517b5@coco.lan>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: Re: [Ksummit-discuss] single maintainer profile directory (was Re:
 [PATCH] media: add a subsystem profile documentation)
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

On Tue, Sep 17, 2019 at 10:28:17AM -0300, Mauro Carvalho Chehab wrote:
> No matter where the profiles will physically be stored, its contents belong 
> to subsystem-specific documentation, and should be visible at the same index 
> file as the kAPI docs is located, as anyone interested on submitting patches
> for a subsystem should be aware about the subsystem specific policies and
> details.

That's a good point. I think your other suggestions below address my
"find them all" case...

> So, my vote is to store them at Documentation/*/<subsystem> (together
> with the kAPI book).
> 
> > since there are
> > two ways someone would want to read profiles:
> > 
> > 1) a single profile, based on a MAINTAINERS entry which includes the path
> 
> That is the common case. The problem is that the MAINTAINERS file
> currently doesn't generate html output. This is not a problem for
> "old school" devs, but a newbie wanting to collaborate to a single
> specific subsystem may not notice - or understand - the importance
> of the MAINTAINERS file[1].
> 
> [1] btw, that's why I submitted a RFC, several years ago, a patch
> converting it to ReST - and later - another patch that would be parsing
> its contents and producing a ReST output.
> 
> That's, by far, the most relevant usecase for the profiles, as the
> audience is the ~4k Kernel developers.

Oh yes, having a .rst of the MAINTAINERS file would be pretty great.
Seems like it could just be a build target (and then dependency) for the
sphinx targets?

> > 2) all of them, to study for various reasons
> 
> I suspect that only core people will have interest on study them.
> 
> Those people are more skilled, and can easily find all those files with
> a simple grep:
> 
> 	$ grep  "^P:\s" MAINTAINERS|cut -d':' -f2-
> 
> or
> 
> 	$ git grep "^P:\s" MAINTAINERS|cut -d: -f3-
> 
> If, for whatever reason, he would prefer an HTML output [1], he could even
> create an index file with all of those with something like:
> 
> 	$ for i in $(grep  "^P:\s" MAINTAINERS|cut -d':' -f2-); do j=${i/rst/html}; echo "<a href=\"$j\">$j</a><br/>"; done >Documentation/output/index_profiles.html
> 
> We might, instead, teach the Documentation/Makefile to create something
> like the above, but, IMHO, that would just add more complexity to the
> build without a good reason.
> 
> [1] I doubt that core devs would prefer seeing this in html form, but some
> variant of the above could be used, for example, to create symlinks for
> all profile docs into a "study" directory.
> 
> > The #2 case is helped by having them all in one directory with a single
> > index.rst, etc. Then similar profiles are able to merge, etc.

Whatever the case, please don't let me distract from the actual content
of these profiles: I think it's awesome to capture these details and
makes my life so much easier. :)

-- 
Kees Cook
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
