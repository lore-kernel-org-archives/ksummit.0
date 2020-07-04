Return-Path: <SRS0=o/nk=AP=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=3.0 tests=DKIM_ADSP_CUSTOM_MED,
	DKIM_INVALID,DKIM_SIGNED,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 463F3C433E2
	for <ksummit-discuss@archiver.kernel.org>; Sat,  4 Jul 2020 23:35:14 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0D33C20772
	for <ksummit-discuss@archiver.kernel.org>; Sat,  4 Jul 2020 23:35:14 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mVToQFB0"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0D33C20772
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A29BE88C04;
	Sat,  4 Jul 2020 23:35:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AO427zeUqJDh; Sat,  4 Jul 2020 23:35:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 010FB8887F;
	Sat,  4 Jul 2020 23:35:12 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C9718C088C;
	Sat,  4 Jul 2020 23:35:12 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6097BC0733;
 Sat,  4 Jul 2020 23:35:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4409188146;
 Sat,  4 Jul 2020 23:35:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UIA4VFCjYKIf; Sat,  4 Jul 2020 23:35:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com
 [209.85.218.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4761F88100;
 Sat,  4 Jul 2020 23:35:10 +0000 (UTC)
Received: by mail-ej1-f65.google.com with SMTP id p20so38540277ejd.13;
 Sat, 04 Jul 2020 16:35:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HNDVeItDy/XBJ+8/VApySLuTKnyDwRPMoyZTnmzqQFg=;
 b=mVToQFB0MteQPg60+j4sV1I3VbaU39JUkaonE1q9EGVvB6176pUyGu2KyH1VE3ixbD
 gfY/YIX3tKWUhzizlEgvK3g67Cxjbd5C0OGaHirmfieJtN0mkJjDLGmb9RPVVsoACtoA
 kVTWv+2kauUJf6W3C+FAz39m5bE8c2DzB+2Q2NcjNsKmJYsZj7IJaRNrK3O17oSxudQS
 v5vJdLD1mDnqkFiiIO3mU8BuhWY8SFlcXhv9MmfDq/AgPpdRTtO35/qsCQuNYEhqlOng
 80cf5/tzQnCwskMaplSXXY4aW318c/rn0ZxOwhIXF8I9xsM0c8HWtH0BWhod0ZbR8AF9
 CK4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HNDVeItDy/XBJ+8/VApySLuTKnyDwRPMoyZTnmzqQFg=;
 b=o+yRxWmaTHjB7ivDykAQElW4dKre4XIkMJmvvD7zKFgjT/laAdRGJuuxNYP+s+sFh5
 1q8TV1eGufbhZIYwUnxMZdXkPIz4t7gNFb1vOeD7jSFfX17q8ly4YTF+/Dp35yHtF9sz
 6mLqPJnGo8nrYf1phqk8jxnQlVkxX1g3bptAMGNoF2we2SuIwtDEhlu75K+kuOD8sECd
 O2it+lEqhL7czWNzEC451rIVMAAyL8373nwUAKQTlBXcY4uKemI+a3aPmX/H6iZdpobq
 nesYhqs0tHJWSdTnL68+ibRaR6VQ/0xu4s6N6wsx/IB/KXO/zW77rgucVNQh6UYRiSZ8
 2KDQ==
X-Gm-Message-State: AOAM5327/hn1sURQ02Wu7QcZ5jC0naLMzH46/yUpc9IflPUVKIuZyQym
 4psrmcAg73vLeDiEePCoxLotgJnX3VefiSOLWOA=
X-Google-Smtp-Source: ABdhPJzLHDeLKWceSh0oqqwXr+kjyv7oF+hVEXofB6wPk1V5t3rlZKh6KqR8EFtrC8rgBH5h4Ut4Mck8IR9S9Tp4ZJA=
X-Received: by 2002:a17:906:4086:: with SMTP id
 u6mr40502780ejj.9.1593905708462; 
 Sat, 04 Jul 2020 16:35:08 -0700 (PDT)
MIME-Version: 1.0
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 <20200705064348.71d4d51f@canb.auug.org.au>
In-Reply-To: <20200705064348.71d4d51f@canb.auug.org.au>
From: Dave Airlie <airlied@gmail.com>
Date: Sun, 5 Jul 2020 09:34:57 +1000
Message-ID: <CAPM=9txOgRYc7RM3fzohB4=Ejcp_xMGLBX_OOCOD=r+W6D678A@mail.gmail.com>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 tech-board-discuss@lists.linuxfoundation.org,
 LKML <linux-kernel@vger.kernel.org>,
 ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [PATCH] CodingStyle: Inclusive Terminology
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

On Sun, 5 Jul 2020 at 06:45, Stephen Rothwell <sfr@canb.auug.org.au> wrote:
>
> Hi Dan,
>
> On Sat, 04 Jul 2020 13:02:51 -0700 Dan Williams <dan.j.williams@intel.com> wrote:
> >
> > +Linux kernel inclusive terminology
> > +==================================
> > +
> > +The Linux kernel is a global software project, and in 2020 there was a
> > +global reckoning on race relations that caused many organizations to
> > +re-evaluate their policies and practices relative to the inclusion of
> > +people of African descent. This document describes why the 'Naming'
>
> I feel a need to point out that racial issues are wider than just
> people of African descent ...  Also, others have pointed out that
> slavery is not just restricted to those of African descent.

The racial issues are wider than that, and even wider again I'm sure,
but in 2020 this is as good a place to start as any, and the trigger
as that sentence says was in 2020, there was a reckoning about it
mainly due to people of African descent. That trigger has had flow on
effects in other countries, but I'm not sure that sentence in any way
diminishes that, it's merely an introduction to why this change is
happening now.

As for the non-black slavery, others have never pointed this out
before in 30 years of master/slave terminology? surely if white
slavery was as big a problem, they be as supportive of this, even more
so. It speaks volumes that I've never heard white slavery as a problem
once in 30 years, but now I'm hearing about it a few times, and
somehow as an excuse not to support this.

Dave.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
