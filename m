Return-Path: <SRS0=5cql=AQ=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=3.0 tests=DKIM_ADSP_CUSTOM_MED,
	DKIM_INVALID,DKIM_SIGNED,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79AECC433DF
	for <ksummit-discuss@archiver.kernel.org>; Sun,  5 Jul 2020 02:56:39 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 45D3F208E4
	for <ksummit-discuss@archiver.kernel.org>; Sun,  5 Jul 2020 02:56:39 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="B4Zl3xGH"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 45D3F208E4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2C2B888343;
	Sun,  5 Jul 2020 02:56:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eS3Us5YBUKww; Sun,  5 Jul 2020 02:56:38 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id AA5AE882BD;
	Sun,  5 Jul 2020 02:56:38 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 74F20C08A5;
	Sun,  5 Jul 2020 02:56:38 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0AB27C0733;
 Sun,  5 Jul 2020 02:56:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F38DE20467;
 Sun,  5 Jul 2020 02:56:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jZE8VDZ1wDf2; Sun,  5 Jul 2020 02:56:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 5158B20463;
 Sun,  5 Jul 2020 02:56:36 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id d18so26013806edv.6;
 Sat, 04 Jul 2020 19:56:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vBRoyIDDEXWuOdpKocJGfyLVUig4XuQim58BgYt5AW4=;
 b=B4Zl3xGH6a9uCdz1vSO6zx/aNHbXpsWUt8vWTJ5Krm1HzMg8CAN/BFWnHDOCaDmET0
 uAU1hhXbUfdKLPDcOI3/Ah1ui0QeLjz1f5HIow0Zpu+oUK/nnu+YiqQ8XDND4Odm4hnZ
 yABCGSQIbZtvKQCUeOyFXc/64ukaqwyge6uXTdiQGCHm0MS2Bl68ezENCMy6ZO4V/6w6
 Jjyj9wHfIBPN6JXyZn+iMZ7n0gWkyMREyOXa0EdxJEo0QPbfTSxDLJDc2EUqtQAuyKw4
 13nmOZaNiWnNtWHGRXiPjR8+9dOyi8vZ2Hr/P3UD9xmLunmJ3QM++aozNg9m+MQ3Y4IB
 U6QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vBRoyIDDEXWuOdpKocJGfyLVUig4XuQim58BgYt5AW4=;
 b=K7juIr1Wub4H6T0vRI12RSwAqln9Tsvh+FVds8KOxdSAaWB6RFV8bt3UBddf8dcU+y
 u1JYMCIdyA265V6Pp1xL+XbV6jv9nPch8jNjniN4co76u0MJjZaswbAUH+BbaunOi7Oq
 cg0x+KcUGJi6gaRJwm9rObRVXMoebFCwYda36LKta8yL6taKDYFXOG8rU8IdllmiZcMs
 PoaYqCeWPRBjMqct4PeLYzOYH0x67K2fWAFzIkEvmRpjnCTZue7sd/JC/BjK6meZay6I
 qp+3CAH/QjAdzm7cR16MQVK6+4fpRVwwH4qrG2GKgfcsVHF4KiSmQD+XnFs2YbV+HcdX
 qXJw==
X-Gm-Message-State: AOAM530NTcNxGQ2W0ubml/gUdUQbJpEn0qr8JxhSlm9cb7VQ4BRuBXDO
 1QeMg3JK5sLg3f0FjrwmrOExgx1Uzp3dnY2kObQ=
X-Google-Smtp-Source: ABdhPJwqBqdhktxvnACOO8QFCSHxYt2PEzHgR/vybRWWfR8D9Gqp/tUd4idtWY5ESjf64gys/SOtFc2NeN2pKWzosz4=
X-Received: by 2002:a50:f08c:: with SMTP id v12mr47609189edl.119.1593917794873; 
 Sat, 04 Jul 2020 19:56:34 -0700 (PDT)
MIME-Version: 1.0
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 <20200705064348.71d4d51f@canb.auug.org.au>
 <CAPM=9txOgRYc7RM3fzohB4=Ejcp_xMGLBX_OOCOD=r+W6D678A@mail.gmail.com>
 <20200705121216.2ce2dd46@canb.auug.org.au>
In-Reply-To: <20200705121216.2ce2dd46@canb.auug.org.au>
From: Dave Airlie <airlied@gmail.com>
Date: Sun, 5 Jul 2020 12:56:23 +1000
Message-ID: <CAPM=9txud3xg+++205X9s9R5wnxobpNSJWLUu=bp8BOhnX_8hQ@mail.gmail.com>
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

On Sun, 5 Jul 2020 at 12:12, Stephen Rothwell <sfr@canb.auug.org.au> wrote:
>
> Hi Dave,
>
> On Sun, 5 Jul 2020 09:34:57 +1000 Dave Airlie <airlied@gmail.com> wrote:
> >
> > On Sun, 5 Jul 2020 at 06:45, Stephen Rothwell <sfr@canb.auug.org.au> wrote:
> > >
> > > On Sat, 04 Jul 2020 13:02:51 -0700 Dan Williams <dan.j.williams@intel.com> wrote:
> > > >
> > > > +The Linux kernel is a global software project, and in 2020 there was a
> > > > +global reckoning on race relations that caused many organizations to
> > > > +re-evaluate their policies and practices relative to the inclusion of
> > > > +people of African descent. This document describes why the 'Naming'
> > >
> > > I feel a need to point out that racial issues are wider than just
> > > people of African descent ...  Also, others have pointed out that
> > > slavery is not just restricted to those of African descent.
> >
> > The racial issues are wider than that, and even wider again I'm sure,
> > but in 2020 this is as good a place to start as any, and the trigger
> > as that sentence says was in 2020, there was a reckoning about it
> > mainly due to people of African descent. That trigger has had flow on
> > effects in other countries, but I'm not sure that sentence in any way
> > diminishes that, it's merely an introduction to why this change is
> > happening now.
>
> And reading it again in the (actual) light of day, I see you are right
> and I misinterpreted this.
>
> > As for the non-black slavery, others have never pointed this out
>
> (I did not say "non-black")
>

Sorry I misdirected what you said a bit, and I did misinterpret as
Australia also has it's own indigenous slavery issues,

I was trying to stop the "white slavery" is a thing crew from turning
up on this.

Apologies for accidentally implying something what you hadn't said.

Dave.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
