Return-Path: <SRS0=dJtG=E5=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1137DC63777
	for <ksummit-discuss@archiver.kernel.org>; Mon, 23 Nov 2020 10:44:38 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7840F2078E
	for <ksummit-discuss@archiver.kernel.org>; Mon, 23 Nov 2020 10:44:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7840F2078E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 25EF485EF9;
	Mon, 23 Nov 2020 10:44:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tqeQgkqNCuGP; Mon, 23 Nov 2020 10:44:33 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9314985D5C;
	Mon, 23 Nov 2020 10:44:33 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 56DBFC163C;
	Mon, 23 Nov 2020 10:44:33 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D45BFC0052
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 23 Nov 2020 10:44:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BA77D870A1
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 23 Nov 2020 10:44:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cb4cqf9aLmqx
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 23 Nov 2020 10:44:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com
 [209.85.210.44])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AE51D8709D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 23 Nov 2020 10:44:29 +0000 (UTC)
Received: by mail-ot1-f44.google.com with SMTP id f16so15433702otl.11
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 23 Nov 2020 02:44:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zg4vBn2BTnC6xfH9VgNqJXFdkto9KLIzrm0Lwwkr4I4=;
 b=LGVFatUVYCo+r3nOC+8KbCp4KnfZbJfBzlyERe3u2Enym2LmOPfaunyTiB9VmxHFHV
 Qja7JVbs8YTDl9v7/W6pPIjFS/wHuVICPTbQArOcJQ0mMMbQWwUcku8Gu/vbZZzzH1dC
 oI+5zZuvdv5ps2khZA9rZG4Q+iotspjJZWzGcPFHY+zDYsoW74BmJxMB6HAPepVeGXIF
 oiJRXkQii3/SRP4u/0KV1W6Dm31spOi+pDguYFwViBzkhziG3QnuHxq0nWmYUMqQOtok
 0kg5XZmyL8lLXP3YKtUuAZjlEFqHbFh2ClhjcyQ0Gk+GLMQ5nlE9IrweoZTgHFy1Vqm6
 O6jg==
X-Gm-Message-State: AOAM531afHfodqtl7O/QswCsUaw/u+KUrqFtpZqUKmu34KgHYSIjI8Tk
 DK12v2lIpfuJD563KhvcWQfax5mOefSLr+8vYZM=
X-Google-Smtp-Source: ABdhPJzVYzAUT/tPxRIBNmRftMqvyvjUNunaa9JXr6n4wC1KzJ+8Lq3erDyqquQurQGTVtwd80bQ7SidSky1dTXJSpk=
X-Received: by 2002:a9d:5e14:: with SMTP id d20mr21001859oti.107.1606128268658; 
 Mon, 23 Nov 2020 02:44:28 -0800 (PST)
MIME-Version: 1.0
References: <551A9FAC.2010203@atmel.com>
 <f15a82c8-5960-34ea-e7fc-dffdfdd369c6@microchip.com>
 <20180823093045.00e751b0@canb.auug.org.au>
In-Reply-To: <20180823093045.00e751b0@canb.auug.org.au>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 23 Nov 2020 11:44:17 +0100
Message-ID: <CAMuHMdUkQqJ_+8xy3q7tjCXCU4cZsnT7EOHtfTDroc4Ke0yPrw@mail.gmail.com>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Cc: Ludovic Desroches <ludovic.desroches@microchip.com>,
 ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] at91 git tree in linux-next
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

Hi Stephen,

On Thu, Aug 23, 2018 at 1:31 AM Stephen Rothwell <sfr@canb.auug.org.au> wrote:
> On Wed, 22 Aug 2018 14:47:56 +0200 Nicolas Ferre <nicolas.ferre@microchip.com> wrote:
> > Alexandre Ludovic and myself are the group of maintainers for Microchip
> > ARM SoCs. The current tree that we have in linux-next is mine [1] and we
> > are moving to a common group kernel.org tree.
> >
> > So, can you please add our new tree to linux-next:
> > at91 git
> > git://git.kernel.org/pub/scm/linux/kernel/git/at91/linux.git#at91-next
> >
> > instead of:
> > git://git.kernel.org/pub/scm/linux/kernel/git/nferre/linux-at91.git#at91-next
> >
> > In addition to that, we also have now a "fixes" branch. Can you please
> > add it to your "fixes" tree?
> >
> > at91 git
> > git://git.kernel.org/pub/scm/linux/kernel/git/at91/linux.git#at91-fixes
> >
> > Thanks for your help, best regards,
> >    Nicolas
> >
> >
> > [1]
> > https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/Next/Trees#n84
>
> All done.  I added Alexandre and Ludovic as contacts for both trees as
> well.

How is this working?

From next-20201123:

    Merging at91/at91-next (0698efbb33ef Merge branches 'at91-soc',
'at91-dt' and 'at91-defconfig' into at91-next)

which is indeed a recent commit, while Next/Trees has the wrong repo
(linux-at91.git instead of linux.git):

$ git show linux-next/master:Next/Trees | grep at91
at91-fixes git git://git.kernel.org/pub/scm/linux/kernel/git/at91/linux.git#at91-fixes
at91 git git://git.kernel.org/pub/scm/linux/kernel/git/at91/linux-at91.git#at91-next
$ git ls-remote
git://git.kernel.org/pub/scm/linux/kernel/git/at91/linux-at91.git
fatal: remote error: access denied or repository not exported:
/pub/scm/linux/kernel/git/at91/linux-at91.git

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
