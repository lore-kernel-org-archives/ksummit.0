Return-Path: <SRS0=2co7=7C=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60840C433DF
	for <ksummit-discuss@archiver.kernel.org>; Wed, 20 May 2020 18:27:27 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2CA3120671
	for <ksummit-discuss@archiver.kernel.org>; Wed, 20 May 2020 18:27:27 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="KkZ3vgUh"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2CA3120671
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linux-foundation.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AF9A4882DE;
	Wed, 20 May 2020 18:27:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8vno6c0eLG0B; Wed, 20 May 2020 18:27:25 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id BBE30882BE;
	Wed, 20 May 2020 18:27:25 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8EE3CC088A;
	Wed, 20 May 2020 18:27:25 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7060FC0176
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 18:27:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5F07C88B57
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 18:27:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xjkHkoTRuNw6
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 18:27:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6E61A88B4B
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 18:27:23 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id m18so4995078ljo.5
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 11:27:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=axx4+A9w9Lpns3hUWIBz9G1pATMMan08aLXnmSpVH44=;
 b=KkZ3vgUhrxP1LK+nc2g1IXzxyfw15dMBjssiGK9CKYIhT06QYqFXQisrq342eCkVor
 Ax12K00ZP6Z3sy/couuQ2ltTpEUF81nJUy8cThN83rc0/lIdE1yu6GL05bHYBa0J7+uS
 zUjTX3r2mcMLst+/uE+nm8NAOr2VNhg5t/yIo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=axx4+A9w9Lpns3hUWIBz9G1pATMMan08aLXnmSpVH44=;
 b=qo/6csR97lVBDATCM9ljFdBQtKOZVb/VwCVSs/VMXbDjqLHLAWsFn2b1ABGdZdP2uY
 ZqrfU3W5y3yEx2BiJyR3ifs5i1vA99IeNTlFFytEtjCENmbAAFySy9cX/o1Sshb98y2W
 zAFP58S2KE+2kS+dckQSJkTofLoEYN6wHKdmC/BkdeZxwkVehgAIIZK0GAYEgUBnvwo6
 4I7kXTHnJI8pxw74IntsxvsgPJW8raqxeCANc42iUl7UYa2ML/NVumXprf8xeW1urz9y
 tYnxdXxyPdcXABBSQj4CdQJyJDAaJayTyT72w2ZxTbgHFCgWt1IZxz8KpqrDdUyDyp73
 6pfw==
X-Gm-Message-State: AOAM532zqmlKkmsQPtt+ln0TOuTbcKLAaBEttnwB6c/VvaRZouL0b4up
 PudvLD5Z2fWwBAz+7Y2Ds8sJDWaVWR+X+g==
X-Google-Smtp-Source: ABdhPJwFX2jzGfzYTpH5weQf6svkinCJUEt2+HcyNsNMAFYwqH78wI9tyhkTWyyn1h7H02MfjVEPyw==
X-Received: by 2002:a2e:b3cd:: with SMTP id j13mr3307438lje.237.1589999240979; 
 Wed, 20 May 2020 11:27:20 -0700 (PDT)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com.
 [209.85.167.46])
 by smtp.gmail.com with ESMTPSA id a7sm1259622lfm.4.2020.05.20.11.27.19
 for <ksummit-discuss@lists.linuxfoundation.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 20 May 2020 11:27:20 -0700 (PDT)
Received: by mail-lf1-f46.google.com with SMTP id z22so2964944lfd.0
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 11:27:19 -0700 (PDT)
X-Received: by 2002:a19:d52:: with SMTP id 79mr3217956lfn.125.1589999239540;
 Wed, 20 May 2020 11:27:19 -0700 (PDT)
MIME-Version: 1.0
References: <202005200917.71E6A5B20@keescook>
 <20200520163102.GZ23230@ZenIV.linux.org.uk>
 <202005201104.72FED15776@keescook>
In-Reply-To: <202005201104.72FED15776@keescook>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 20 May 2020 11:27:03 -0700
X-Gmail-Original-Message-ID: <CAHk-=wierGOJZhzrj1+R18id-WdfmK=eWT9YfWdCfMvEO+jLLg@mail.gmail.com>
Message-ID: <CAHk-=wierGOJZhzrj1+R18id-WdfmK=eWT9YfWdCfMvEO+jLLg@mail.gmail.com>
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

On Wed, May 20, 2020 at 11:06 AM Kees Cook <keescook@chromium.org> wrote:
> We already have structs passed to syscalls that contain pointers to yet
> more structs.

Give real examples of where this matters for security, please, and
where somebody would want to control this.

Yes, we have things like clone3() that pass a struct with pointers to
user space (eg the wait location etc).

Yes, we have tons of things like ioctl's that have random struct
pointer arguments with random contents.

Yes, we have iovec's etc that have arrays of pointers to user space.

But no, none of these seem to be things that seccomp should care about.

So I am not in the least interested in some kind of general discussion
about system calls with "pointers to pointers". They exist. Deal with
it. It's not in the least an interesting issue, and no, we shouldn't
make seccomp and friends incredibly more complicated for it.

If you want to do sandboxing, you disallow those things entirely if
you don't trust them, or make the case-by-case argument for why they
don't matter.

If you want to do something fancier (special compat emulation using
seccomp and a ptrace fallback? I dunno) you are going to just have to
deal with it. It's not simple, but it's not the kernels problem. You
may have to emulate it *entirely* in the ptracer (ie instead of "check
the arguments and let it continue" you _actually_ emulate it to avoid
any races)

And if you have some actual and imminent real security issue, you
mention _that_ and explain _that_, and accept that maybe you need to
do that expensive emulation (because the kernel people just don't care
about your private hang-ups) or you need to explain why it's a real
issue and why the kernel should help with your odd special case.

Don't make this some kind of abstract conceptual problem thing.
Because it's not.

Some computer scientists think that everythinig should be really
generic and solutions that solve some problem for every possible case
are the only good solutions.

But those people are wrong. The thing that _really_ matters is the
details. Not the nebulous theory.

So details, please.

             Linus
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
