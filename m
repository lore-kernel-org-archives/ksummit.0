Return-Path: <SRS0=TU90=AU=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74427C433E0
	for <ksummit-discuss@archiver.kernel.org>; Thu,  9 Jul 2020 19:09:09 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 294482078B
	for <ksummit-discuss@archiver.kernel.org>; Thu,  9 Jul 2020 19:09:08 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=intel-com.20150623.gappssmtp.com header.i=@intel-com.20150623.gappssmtp.com header.b="z30mKjYD"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 294482078B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=intel.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9F9E02D5E0;
	Thu,  9 Jul 2020 19:09:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CB6+0dlDqDO5; Thu,  9 Jul 2020 19:09:06 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id BB3792D620;
	Thu,  9 Jul 2020 19:09:06 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6F960C08A8;
	Thu,  9 Jul 2020 19:09:06 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 077A1C016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  9 Jul 2020 19:09:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EF1ED2D5E0
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  9 Jul 2020 19:09:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yNhfWd1DwjRN
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  9 Jul 2020 19:09:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
 [209.85.208.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 4BBF92D620
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  9 Jul 2020 19:09:03 +0000 (UTC)
Received: by mail-ed1-f68.google.com with SMTP id g20so2702898edm.4
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 09 Jul 2020 12:09:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VfCzYMi3aNHcdHPq4uJcYySKGoZRsLImzoMVPW+0WwU=;
 b=z30mKjYDHsKECZqXGPwVfeUpwmx0KVsIJEYam/LLKpJgaSS+zZ7368G8grmGsaaBqV
 fXZ6JEciUwBH48DjCti7A+KgHIs35CBxgGs2hgjRqyXuy7OZ3avpHbt0FCJG4uhCGHk1
 DAAfbYHFGjCq6wq30HwbPA+3MefVaxzYgFThCzHKNq0SLzjrZehaPh08juOv7gqS6FT/
 Led6Vie6mZl2txj0XNkIBjSlG1GQGXChXrh2Oge70rjkt/fY4UhYe3C+JXBvocWyJCa2
 zCMh/Pr/uMUZ067y+k73eEEYe26s7PqWvzuXLkvoF9wRi1FOdYOUs+SXfeGRfSDC/H7j
 SrLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VfCzYMi3aNHcdHPq4uJcYySKGoZRsLImzoMVPW+0WwU=;
 b=ZkYzuBTDl99JuWIWSUbNqfQsXY/3pd6AFHW8Q5E8ALD4gtdZl0fMe2BisrWk3HagC9
 9kAvtWRIdzlnM2cnnTj9cTiYriG4Pgd41233U9KmAHYQuvRQELYqz4EJzQuj/BU18ZSI
 MVsqqdE3N2bYcrBGFtKHtJXwddkVO5AxAMD5c6RitX9Ykr3AMBO/IKAz7TMd8HmKXweT
 6SFft3rKFBkZJ+Busq4zaJXUxyA7VwnWiiMxk18i2vIRV5wMe0QH6964p4RkMwPvsJKo
 yrMUEfX7fQP9c1nWEWRVJQr5SGdknZhk3a0FO688sHIly7aoByGCN+tn6cbJ/uPeCaof
 /QKQ==
X-Gm-Message-State: AOAM5318hmEn/Q2GFRqqBC3ZWZrZqBIZWEMxsgtknV8QJBO+dXXGVE3W
 JC3GCDRqeEsc720cLBYWZbt5zK+wDsgmpx0p0ryUtg==
X-Google-Smtp-Source: ABdhPJwTYAZenqmgPEu0u5fZlCZXdTGUh5K//najny/f1OYXQHK89+GmctbhEmneY4bj5VNSlsqBCWdY8zLwDlGG1Qs=
X-Received: by 2002:a05:6402:21c2:: with SMTP id
 bi2mr73091204edb.296.1594321741684; 
 Thu, 09 Jul 2020 12:09:01 -0700 (PDT)
MIME-Version: 1.0
References: <159423201991.2466245.8461410729774664077.stgit@dwillia2-desk3.amr.corp.intel.com>
 <CAKMK7uHuOD4v9ZU0d5THBhdD=97xO--N8bWd3+Na38vsHKO5Zg@mail.gmail.com>
In-Reply-To: <CAKMK7uHuOD4v9ZU0d5THBhdD=97xO--N8bWd3+Na38vsHKO5Zg@mail.gmail.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Thu, 9 Jul 2020 12:08:50 -0700
Message-ID: <CAPcyv4iht01M8t42JNSmfewKcZ7ztPuhdu01WrGzNFLPuqVNRw@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 SeongJae Park <sjpark@amazon.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 tech-board-discuss@lists.linuxfoundation.org,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 Dave Airlie <airlied@redhat.com>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [PATCH v3] CodingStyle: Inclusive Terminology
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

On Thu, Jul 9, 2020 at 12:26 AM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
>
> On Wed, Jul 8, 2020 at 8:30 PM Dan Williams <dan.j.williams@intel.com> wrote:
> >
> > Linux maintains a coding-style and its own idiomatic set of terminology.
> > Update the style guidelines to recommend replacements for the terms
> > master/slave and blacklist/whitelist.
> >
> > Link: http://lore.kernel.org/r/159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com
> > Acked-by: Randy Dunlap <rdunlap@infradead.org>
> > Acked-by: Dave Airlie <airlied@redhat.com>
> > Acked-by: SeongJae Park <sjpark@amazon.de>
> > Acked-by: Christian Brauner <christian.brauner@ubuntu.com>
> > Acked-by: James Bottomley <James.Bottomley@HansenPartnership.com>
> > Reviewed-by: Mark Brown <broonie@kernel.org>
> > Signed-off-by: Theodore Ts'o <tytso@mit.edu>
> > Signed-off-by: Shuah Khan <skhan@linuxfoundation.org>
> > Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > Signed-off-by: Olof Johansson <olof@lixom.net>
> > Signed-off-by: Jonathan Corbet <corbet@lwn.net>
> > Signed-off-by: Chris Mason <clm@fb.com>
> > Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Signed-off-by: Dan Williams <dan.j.williams@intel.com>
>
> Replied to the old version, once more here so it's not lost.
>
> Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>

Got it, thanks Daniel.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
