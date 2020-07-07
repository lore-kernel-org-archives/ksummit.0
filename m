Return-Path: <SRS0=9K8a=AS=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9A2C433DF
	for <ksummit-discuss@archiver.kernel.org>; Tue,  7 Jul 2020 05:56:23 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5A37620739
	for <ksummit-discuss@archiver.kernel.org>; Tue,  7 Jul 2020 05:56:23 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="NfXW8gw1"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5A37620739
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 19C61886D6;
	Tue,  7 Jul 2020 05:56:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dwwb10KVqJRB; Tue,  7 Jul 2020 05:56:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id E829588649;
	Tue,  7 Jul 2020 05:56:21 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C5838C0893;
	Tue,  7 Jul 2020 05:56:21 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 865D0C016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue,  7 Jul 2020 05:56:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7EA0D87B50
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue,  7 Jul 2020 05:56:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eqOzHaEfBEB7
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue,  7 Jul 2020 05:56:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 03C4A87B4B
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue,  7 Jul 2020 05:56:20 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id z5so19492434pgb.6
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 06 Jul 2020 22:56:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ZbV4l21xdzW71xXZzlMAZD+NRBjos3envDGwppLzulM=;
 b=NfXW8gw1ujyflsQLwzIJUJl6yv/6tCYaWdIMXKgCTt4z3Ww0mFNBeIgOPWXnJj2bT6
 lv1hrqRXfKZADzlSMJTcecsBSJnaZ8lAlqmmL9nFCKuUyP2jIIRFMK2t3hUUbLKt6Xa3
 4z6GvTlG1zXHnw88+cl0MNX0328JZYODTKYZk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ZbV4l21xdzW71xXZzlMAZD+NRBjos3envDGwppLzulM=;
 b=rFapZ7pPeVDH5pPz2iFCShs6tN0jzsKg7svpWfxLF3yM9PgSoOz5aDdST8UM+BknYr
 BuZorWzPv0E9jj6qak/gsINZDK6U8moahgI4tv3gsJYubvXz53kdgd5JRcJTUpL/a5ZA
 7TAdl20hXF5N9tUsx2KBLZm0QMtNYYypeXrU5QenWVa9RaUjpuKltKKkhPfaASOJ/jZc
 EoLHKDPgwKQ61qvUuQ2vJQCoAg5/XlMbA7b6GsbRtzsb7BczPuOjSXZfOQo1c0HFRIwF
 +h5vdE4BvCAYzYp8urnlfGVsNRjloMaAY6uovG3tu3sFfWyt4RvE81zPG8yMuiUYggpk
 fHSg==
X-Gm-Message-State: AOAM533uhz47aPyFfykiaVP3d0I6dcyp5QbDJCQImpWhKqgJBvqPwRMP
 RvNDx3Kn/dQYEIRk1WAEx2CIIA==
X-Google-Smtp-Source: ABdhPJzsiNlWqzzBSxLtFN4h9Kxieuvtd0hdAy5D91AwU2e7ZloJSYe7rbLvC6DMYZd+jw9XnsRtkQ==
X-Received: by 2002:aa7:860f:: with SMTP id p15mr11390619pfn.59.1594101379542; 
 Mon, 06 Jul 2020 22:56:19 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id y27sm21531713pgc.56.2020.07.06.22.56.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jul 2020 22:56:18 -0700 (PDT)
Date: Mon, 6 Jul 2020 22:56:17 -0700
From: Kees Cook <keescook@chromium.org>
To: Andy Lutomirski <luto@amacapital.net>
Message-ID: <202007062234.A90F922DF@keescook>
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 <CALCETrXewAK4_fpaJNDHJVDK9mUcjghA5HwYvZFQNYVfC9M+OQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALCETrXewAK4_fpaJNDHJVDK9mUcjghA5HwYvZFQNYVfC9M+OQ@mail.gmail.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 tech-board-discuss@lists.linuxfoundation.org, Chris Mason <clm@fb.clm>
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

On Mon, Jul 06, 2020 at 09:29:46AM -0700, Andy Lutomirski wrote:
> Is most contexts where 'whitelist' or 'blacklist' might be used, a
> descriptive phrase could be used instead.  For example, a seccomp
> filter could have a 'list of allowed syscalls' or a 'list of
> disallowed syscalls', and just lists could be the 'allowed' or
> 'accepted' lists and the 'disallowed', 'rejected', or 'blocked' lists.
> If a single word replacement for 'whitelist' or 'blacklist' is needed,
> 'allowlist', 'blocklist', or 'denylist' could be used.

Yup. See:
https://lore.kernel.org/lkml/202007041703.51F4059CA@keescook/
specifically the terminology for seccomp is already "allow-list" and
"deny-list":
https://github.com/mkerrisk/man-pages/commit/462ce23d491904a0b46252dc97c8cb42391c093e (last year)
https://github.com/seccomp/libseccomp/commit/0e762521d604612bb4dca8867d4a428a5e6cae54 (last month)

> Second, I realize that I grew up thinking that 'whitelist' and
> 'blacklist' are the common terms for lists of things to be accepted
> and rejected and that this biases my perception of what sounds good,
> but writing a seccomp "denylist" or "blocklist" doesn't seem to roll
> off the tongue.  Perhaps this language would be better:

I have struggled with this as well. The parts of speech change, and my
grammar senses go weird. whitelist = adjective noun. allow-list = verb
noun. verbing the adj/noun combo feels okay, but verbing a verb/noun is
weird.

And just using "allowed" and "denied" doesn't impart whether it refers
to a _single_ instance or a _list_ of instances.

But that's all fine. The change is easy to do and is more descriptive
even if I can't find terms that don't collide with my internal grammar
checker. ;)

-- 
Kees Cook
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
