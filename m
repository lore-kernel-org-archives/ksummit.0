Return-Path: <SRS0=9K8a=AS=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9A3C433DF
	for <ksummit-discuss@archiver.kernel.org>; Tue,  7 Jul 2020 08:54:29 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6D184206C3
	for <ksummit-discuss@archiver.kernel.org>; Tue,  7 Jul 2020 08:54:29 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="kKjby2j8"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6D184206C3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2D07F86FE9;
	Tue,  7 Jul 2020 08:54:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U-xJTJZYKMpN; Tue,  7 Jul 2020 08:54:28 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 516A786F69;
	Tue,  7 Jul 2020 08:54:28 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 26FFEC08A8;
	Tue,  7 Jul 2020 08:54:28 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A34BEC0893
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue,  7 Jul 2020 08:54:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8FC218786B
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue,  7 Jul 2020 08:54:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RP1ID9+J3LBF
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue,  7 Jul 2020 08:54:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A882487730
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue,  7 Jul 2020 08:54:25 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id mn17so4688378pjb.4
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 07 Jul 2020 01:54:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=a/XgwapGx7PaAizT65mHU7yvNl7PTQ8EJ96Y04zIcHI=;
 b=kKjby2j8BdluGT1d4d1Uc52pLcQ41qgyUsoa3BPodKoSXLQp/tMjfHm6Oin7RKRhku
 Z9Cw6EJhuZekt1PUPfxxbSb1/FuKT2v5FSFWeqE35861BhRIWGBc6lJQfHFXZX4Pn/fo
 O3oxw9XWxQdXqm6HPR7ETPTAPMzfc7UdnWqVU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=a/XgwapGx7PaAizT65mHU7yvNl7PTQ8EJ96Y04zIcHI=;
 b=NObyh8/DJ3CT63j056mZRpxYYXnm83HSFndwBkQxfrFKOHpRTv45fLEOUeDCfv6feq
 wHR5hZMfXh2nch4j4KgPDdlx9V23kTctRmRRf+JLud2RuySNs8RP0qqLA/sCdxOHTySH
 Ni2xPUVPK8AyfskMR973cb2tuaU46rZFDOJ6Hmi3A4lFq7M5GQ+PF0MCuTucnjKL1tjg
 JNdivPT1jHChI+/hhn7yxFWYOQpzLBCb+Rxee7fGTk9KgtcFpZbzkmqEZG5NaOribTCd
 RxnDwkk3jqXsJTEAwbfUxor2aMEGWS7dFfKTqG1gpfYQGmaVTtREvkLjcpiJtsm4XkZM
 vMMQ==
X-Gm-Message-State: AOAM533dGVJM7agvMFKIdvUIo/eNajt9ChOHH9E66eKsOBScUr9db793
 PLKGb9v1qm0BzOtY+05ujiT7ag==
X-Google-Smtp-Source: ABdhPJypazJZ9697LiGRccbUmXufo/yd1FT8MI/itchdPIrTuUcvQJCZXUBOE65xNLvuRU+tTfRibw==
X-Received: by 2002:a17:90a:bf02:: with SMTP id
 c2mr3189920pjs.114.1594112065184; 
 Tue, 07 Jul 2020 01:54:25 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id n15sm244618pgs.25.2020.07.07.01.54.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jul 2020 01:54:24 -0700 (PDT)
Date: Tue, 7 Jul 2020 01:54:23 -0700
From: Kees Cook <keescook@chromium.org>
To: "Harrosh, Boaz" <Boaz.Harrosh@netapp.com>
Message-ID: <202007070137.3ADBEDC@keescook>
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 <CALCETrXewAK4_fpaJNDHJVDK9mUcjghA5HwYvZFQNYVfC9M+OQ@mail.gmail.com>
 <202007062234.A90F922DF@keescook>
 <DM6PR06MB3836FBAD65096AF63ACD3DB3EE660@DM6PR06MB3836.namprd06.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM6PR06MB3836FBAD65096AF63ACD3DB3EE660@DM6PR06MB3836.namprd06.prod.outlook.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "tech-board-discuss@lists.linuxfoundation.org"
 <tech-board-discuss@lists.linuxfoundation.org>, Chris Mason <clm@fb.clm>
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

On Tue, Jul 07, 2020 at 06:56:53AM +0000, Harrosh, Boaz wrote:
> Kees Cook wrote:
> > I have struggled with this as well. The parts of speech change, and my
> > grammar senses go weird. whitelist = adjective noun. allow-list = verb
> > noun. verbing the adj/noun combo feels okay, but verbing a verb/noun is
> > weird.
> 
> > And just using "allowed" and "denied" doesn't impart whether it refers
> > to a _single_ instance or a _list_ of instances.
> 
> > But that's all fine. The change is easy to do and is more descriptive
> > even if I can't find terms that don't collide with my internal grammar
> > checker. ;)
> 
> But why. In English many times a verb when it comes before the noun means an adjective, or an adjective like, describing some traits of the noun.

This is kind of my problem being a native English speaker: I can't
entirely describe _why_ a grammar construct feels wrong. :(

> Example: 
> I work - work is a verb here.
> I used the work bench. - Work is saying something about the type of bench, an adjective. Same as you would say "I used the green bench".

Right, so the verb-noun being used as a noun is find, just as adj-noun
is. To me, "add it to the allow-list" is entirely sensible just like
"set it on the work-bench." It's the "verbing" of a noun that trips me
up.

"I will whitelist the syscall" -- sounds correct to me (same for
"it is whitelisted" or "it is in whitelisting mode").

"I will allow-list the syscall" -- sounds wrong to me (same for
"it is allow-listed" or "it is in allow-listing mode").

Similarly, "I will work-bench" sounds wrong to me as does "it is
work-benched" or "it is in work-benching mode".

> I am not an English native at all but allow-list sounds totally English to me. (I guess the very correct English way is "allowed-list"  where the past tense may convert the verb to a noun. but allow-list sounds very good to me as well. Say work-list as opposed to vacation-list do you need to say worked-list? I don't think so.)
> 
> run mate, running mate. cutting board. these are all examples of verbs used as adjectives. Are they not English? What am I missing I would like to learn?

"it is in allowing-list mode" sounds even worse. :) But other
things require the tense follow the merged verb: "It's already in the
allowed-list" sounds fine, where "It's already in the whitelist" had no
tense since it lacked a verb. I haven't been able to find an comfortable
adjective that means "allow"; "allowable-list" is just long.

But, as mentioned earlier -- I have just switched to more descriptive
and less weird (to me) sentences. "It is set to deny by default"
(instead of "it's a whitelist") or "It's already in the allowed-list".

*shrug*

-- 
Kees Cook
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
