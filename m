Return-Path: <SRS0=2co7=7C=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=3.0 tests=DKIM_ADSP_CUSTOM_MED,
	DKIM_INVALID,DKIM_SIGNED,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 693C7C433E0
	for <ksummit-discuss@archiver.kernel.org>; Wed, 20 May 2020 22:13:06 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2995620823
	for <ksummit-discuss@archiver.kernel.org>; Wed, 20 May 2020 22:13:06 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="p25d0wMM"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2995620823
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D1F9F871FA;
	Wed, 20 May 2020 22:13:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rng6lFSE6uZV; Wed, 20 May 2020 22:13:03 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 77CB0806E3;
	Wed, 20 May 2020 22:13:03 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4376BC088A;
	Wed, 20 May 2020 22:13:03 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B52BFC0176
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 22:13:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A1CFF8868C
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 22:13:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QhxhD95rY1iQ
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 22:13:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D461388689
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 22:13:00 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id y18so2257568pfl.9
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 15:13:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=XErmAxfkk3Y+wyR1/r9vGDck/MULwvoNu6L4T+bWwB8=;
 b=p25d0wMMu9Ivnvc9QM5hFo009ybgJCCis3tX2tcF/iyFyGIWyeeNIWpURCAOKOIBgD
 23gplry9xVsZHhMXH2zz798QYbhKQuyWbMREO3ma4kFg1nRqsQ3qpB96ibht2v2XPuFA
 836QctUy9QmyothByWvR2drELutgPQPGRvdY5zZqKfCbOn/pHpLlbU0VekSHBy5hrZRU
 uTo0c+mT2eFQlXKKXIjQuVjosC26E4OMcpeG4yD4/O6GCRlXnkwBHK7letR8xxqLv1vH
 m63Xj5H6D7AiL4GpALWByxLMrk83wGHOYgELse08EHuuTV6vAtOE3E/FNHEAuLcHKkDt
 jESA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=XErmAxfkk3Y+wyR1/r9vGDck/MULwvoNu6L4T+bWwB8=;
 b=Mw4KG99z4bX7kT21R9qRsOYpkA3GWBzFfD8lwhDFbNMFmdWln4mGqzOBCX+fi80Tyq
 kmYnSMAgSs62CmOihYBlzn9ksXe74wr2cZgEaRG7TKL4Whg3en5VtUmZDymPUoKQuKZf
 j15LXpeWuTC+WKPYP+UH7eoE54Ksd1vrSE8L+QR0pt49etSm7tCd27t2GIOwVyLeC0ps
 Og61+ho1JxYMYeGWA39BwgSnoT50mdIHur7j2GqKsFmg9xjCI15vVKig/4d7UCu7y6EM
 ljVWt8IBmW2YaVsjNwya/vP6yi5OqqG9QNkvE63VYpsvefAnYvID/dFh8ASCnlXfGqCg
 GYNg==
X-Gm-Message-State: AOAM531hC/3hQ5PauESDBx1YFqTlnRKxkNq45ciSLlqpkGD6ErDDFXrZ
 TImBbK1lrMV2uH8ZPYZsd2Y=
X-Google-Smtp-Source: ABdhPJwtKE3/H6cEoLNr7R9vXvdgYq8VWxdeheSKabOuJZHBWvyItRelaxpFaDEPkdO+HsZVL/ozig==
X-Received: by 2002:a63:514:: with SMTP id 20mr5928674pgf.150.1590012780204;
 Wed, 20 May 2020 15:13:00 -0700 (PDT)
Received: from ast-mbp.dhcp.thefacebook.com ([2620:10d:c090:400::5:e680])
 by smtp.gmail.com with ESMTPSA id e1sm2792380pjv.54.2020.05.20.15.12.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 15:12:59 -0700 (PDT)
Date: Wed, 20 May 2020 15:12:56 -0700
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
To: Kees Cook <keescook@chromium.org>
Message-ID: <20200520221256.tzqkjpeswv3d6ne2@ast-mbp.dhcp.thefacebook.com>
References: <202005200917.71E6A5B20@keescook>
 <20200520163102.GZ23230@ZenIV.linux.org.uk>
 <202005201104.72FED15776@keescook>
 <CAHk-=wierGOJZhzrj1+R18id-WdfmK=eWT9YfWdCfMvEO+jLLg@mail.gmail.com>
 <202005201151.AFA3C9E@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202005201151.AFA3C9E@keescook>
Cc: bpf@vger.kernel.org, ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] seccomp feature development
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

On Wed, May 20, 2020 at 12:04:04PM -0700, Kees Cook wrote:
> On Wed, May 20, 2020 at 11:27:03AM -0700, Linus Torvalds wrote:
> > Don't make this some kind of abstract conceptual problem thing.
> > Because it's not.
> 
> I have no intention of making this abstract (the requests for expanding
> seccomp coverage have been for only a select class of syscalls, and
> specifically clone3 and openat2) nor more complicated than it needs to be
> (I regularly resist expanding the seccomp BPF dialect into eBPF).

Kees, since you've forked the thread I'm adding bpf mailing list back and
re-iterating my point:
** Nack to cBPF extensions **
How that is relevant?
You're proposing to add copy_from_user() to selected syscalls, like clone3,
and present large __u32 array to cBPF program.
In other words existing fixed sized 'struct seccomp_data' will become
either variable length or jumbo fixed size like one page.
In the fomer case it would mean that cBPF would need to be extended
with variable length logic. Which in turn means it will suffer from
spectre v1 issues.
We've spent a lot of time fixing spectre v1 issues with eBPF. Including
teaching the verifier to recognize speculative patterns inside the programs
so that malicious bpf progs trying to exploit spec v1 will be caught
at load time. There is no other tool (compiler or static analysis) that
can do similar analysis. I suggest that you look into what eBPF
is actually doing instead of trying to reinvent the wheel.
If you go with latter approach of presenting cBPF with giant
'struct seccomp_data + page' that extra page would need to be zeroed out
before invocation of bpf program which will make seccomp even less usable
that it is today. Currently it's slow and unusable in production datacenter.
People suggested for years to adopt eBPF in seccomp to accelerate it,
but, as you confessed, you resisted and sounds like now you want to
implement seccomp specific syscall bitmask?
Which means more kernel code, more bugs, more security issues.
imo that's another reinvented wheel when eBPF can do it already. I don't think
it's a good idea to add kernel code when eBPF-based solution exists and capable
of examining any level of nested args.

> Perhaps the question is "how deeply does seccomp need to inspect?"
> and maybe it does not get to see anything beyond just the "top level"
> struct (i.e. struct clone_args) and all pointers within THAT become
> opaque? That certainly simplifies the design.

clone3's 'struct clone_args' has set_tid pointer as a second level.
I don't think that sticking to first level of pointers for this particular
syscall will make seccomp filtering any more practical.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
