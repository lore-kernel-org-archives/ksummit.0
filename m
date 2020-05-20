Return-Path: <SRS0=2co7=7C=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D0A1C433E0
	for <ksummit-discuss@archiver.kernel.org>; Wed, 20 May 2020 19:09:31 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4B8D7207D4
	for <ksummit-discuss@archiver.kernel.org>; Wed, 20 May 2020 19:09:30 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="H+45dB57"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4B8D7207D4
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linux-foundation.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D12A3870BE;
	Wed, 20 May 2020 19:09:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rktk1nqJ_huu; Wed, 20 May 2020 19:09:28 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C07D580DA4;
	Wed, 20 May 2020 19:09:28 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8D4F8C088A;
	Wed, 20 May 2020 19:09:28 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B3E0FC0176
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 19:09:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A962480DA4
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 19:09:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kTdjUV_KIcrA
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 19:09:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D01F68706A
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 19:09:12 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id z6so5102309ljm.13
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 12:09:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=E1i++8Q2HGnzwvAl8iHp2OmOYGNQkAbvEzbB20je168=;
 b=H+45dB57TlfhupHr5TxWkIWZLMZI7SVBT7HEq4hK0CxVSDzmpZWTGVUDhuJrp6om1p
 +dCEinByY4TTmJtfE/xShF3Iqxr3QRqmoB0Ds4YN9NuV2Na7wmkIfzxeGe5fAVCCXb7N
 Cw+AlmhbZsnYCj4pcD8LLJ3uv8mnEvG7GIZOE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=E1i++8Q2HGnzwvAl8iHp2OmOYGNQkAbvEzbB20je168=;
 b=jbD/UPAxDbgx8IPulbWRn06LSnGIA6frCWZiu8++6GicPSVxsQDu5BlWxaRv9FuUF6
 IhIXyMu2H3IOLWDuU3hk+q/ajKAABRLzU/32Zk52t0PRYdEdbwaQk6IC0T55+LQuVEHU
 c7kkbpDmu59KzR579weH95CC4jiYTQL2s/yEo5jesUPva3ybrzli6Brp8z6GHpPml3Ak
 bkDhSKs9tfKYjls7XtC/v4O1JfoCmFOLkFxaa8KNIzC7223jnXHMWCQdJ8WssQWSkgmR
 ZFMabpLXrugHAnDN94cgaUfXotIF5UOX4k2Xssmg6smsnGCtWXyk2rrV4acI/rZZ/A4x
 IhaA==
X-Gm-Message-State: AOAM531Psl9jJAsC4Ny41nKNkoiu9CjEwLAJqkCy49xHPNadNQYCcw/2
 TYx/HfyjFuGz/lUkfw9qWvEplxEkdlv3kA==
X-Google-Smtp-Source: ABdhPJyu0hHFUYSV75FCjoPlevFpJCD03SjWsGE9R/C5pJdHQfN8IxVoh6dEgUh2I6qh3ic9cud6DA==
X-Received: by 2002:a2e:80c1:: with SMTP id r1mr3205086ljg.115.1590001750028; 
 Wed, 20 May 2020 12:09:10 -0700 (PDT)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com.
 [209.85.208.182])
 by smtp.gmail.com with ESMTPSA id v2sm1215868ljj.96.2020.05.20.12.09.08
 for <ksummit-discuss@lists.linuxfoundation.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 20 May 2020 12:09:09 -0700 (PDT)
Received: by mail-lj1-f182.google.com with SMTP id u15so5167635ljd.3
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 12:09:08 -0700 (PDT)
X-Received: by 2002:a2e:150f:: with SMTP id s15mr3360441ljd.102.1590001748471; 
 Wed, 20 May 2020 12:09:08 -0700 (PDT)
MIME-Version: 1.0
References: <202005200917.71E6A5B20@keescook>
 <20200520163102.GZ23230@ZenIV.linux.org.uk>
 <202005201104.72FED15776@keescook>
 <CAHk-=wierGOJZhzrj1+R18id-WdfmK=eWT9YfWdCfMvEO+jLLg@mail.gmail.com>
 <202005201151.AFA3C9E@keescook>
In-Reply-To: <202005201151.AFA3C9E@keescook>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 20 May 2020 12:08:52 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgwS8RJNuaLT1zV_bWGiEb3DndfQ3N85WK9aKP5Kurk_A@mail.gmail.com>
Message-ID: <CAHk-=wgwS8RJNuaLT1zV_bWGiEb3DndfQ3N85WK9aKP5Kurk_A@mail.gmail.com>
To: Kees Cook <keescook@chromium.org>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
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

On Wed, May 20, 2020 at 12:04 PM Kees Cook <keescook@chromium.org> wrote:
>
> Things seccomp is NOT expected to introspect due to complexity would be
> stuff like the bpf() syscall.

Right.

I don't dispute at all that those kinds of pointer-to-pointer things
exist all over.

But:

> Perhaps the question is "how deeply does seccomp need to inspect?"
> and maybe it does not get to see anything beyond just the "top level"
> struct (i.e. struct clone_args) and all pointers within THAT become
> opaque? That certainly simplifies the design.

Exactly. I think that's the most common situation by far. Does anybody
really really need to care at a deep level, and why?

              Linus
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
