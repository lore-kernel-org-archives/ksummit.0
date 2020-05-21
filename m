Return-Path: <SRS0=2Olw=7D=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=3.0 tests=DKIM_ADSP_CUSTOM_MED,
	DKIM_INVALID,DKIM_SIGNED,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 007DAC433DF
	for <ksummit-discuss@archiver.kernel.org>; Thu, 21 May 2020 00:43:40 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A6CB420756
	for <ksummit-discuss@archiver.kernel.org>; Thu, 21 May 2020 00:43:39 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="rQzSp+c1"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A6CB420756
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6688F88AD3;
	Thu, 21 May 2020 00:43:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aWWdvwmlWIuu; Thu, 21 May 2020 00:43:38 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8430088A4E;
	Thu, 21 May 2020 00:43:38 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4FF2DC088A;
	Thu, 21 May 2020 00:43:38 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 89B1DC0176
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 21 May 2020 00:43:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6F5C320113
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 21 May 2020 00:43:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fccJlPI2OWvG
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 21 May 2020 00:43:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 809112002A
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 21 May 2020 00:43:36 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id x10so2089048plr.4
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 17:43:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=HS1maZuWnBXaGu3gD+7B6DdCr/3Fx7aMCbwDkTOo3Gc=;
 b=rQzSp+c1mPRqN/mz7nkR5UUFFR0tcwED1cDbLVBRElNqqE+mpvIeaYss22IE7kTzTL
 GImjgshiRnrG45KIn2qHUYsebQbeXeM7NRHVsPjzMjgWnYJUufSZlIQjMa2/8OAAjLlN
 7tavbKTz/fHk80T0+/hY+AZojLhTM7vX4oZlkVcogH7exkszwpZtLARq70zJGX1uPutY
 tdBUGaQni8hEM58ZQ4usXfuePyEu8fh5wi1TY2l19KqeyjSKVAG+o62p2Bd2ZubmReHw
 AZjnI4i+EFSjFO8tFxIBCFkQy2xv5w0D22ALHx7rp+Vk2H2txrZhZSos0zVdzsX2FVL5
 vQXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=HS1maZuWnBXaGu3gD+7B6DdCr/3Fx7aMCbwDkTOo3Gc=;
 b=M18D8OkWz3UcXVBzOiuL1gY+9XNqUNe+fGtWBoZ25QosoCwleFdf7AcDWDIVuAsYNK
 98fzhFGKgyZ/hVZJX2QK58s0hbnTH096nbtjFBEr3a7I+v+6GarsX76b9iSIO/B6MBi6
 j6DQ8tMGkPEXaiFoUO7Hk55LaSZjPiRbNxlAdqmmnniXJ2MtjNu0qCyUacbIO4Z0skRw
 8ogIjQjinJ6gsiTCsyazWXG3tfWXklQ54OLUOH+pRZbtbL8NzleJMmWyDXoh1N/br8Lo
 34lOIoeWZP2D98/JzKNPkT+nuw+BX5qd/4o4LPEfLAdxJlTlmWdqLaWD1pJMOwcioAeX
 S4uw==
X-Gm-Message-State: AOAM532cSX2thUlzhbMxndExXI69Q1XU7ygVbFx7teodfZA5vEw5opIM
 9UegY5DsKWG49yMXmjR30VY=
X-Google-Smtp-Source: ABdhPJxVwS0lGjHT7KKag75D5pbWfBM1KdGARKVQ/TSDXwUpQ4vDrxRgVfawaKs6E0R8UcVg0gkQ2Q==
X-Received: by 2002:a17:902:a408:: with SMTP id
 p8mr7355383plq.36.1590021815928; 
 Wed, 20 May 2020 17:43:35 -0700 (PDT)
Received: from ast-mbp.dhcp.thefacebook.com ([2620:10d:c090:400::5:e680])
 by smtp.gmail.com with ESMTPSA id n23sm2776842pjq.18.2020.05.20.17.43.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 17:43:34 -0700 (PDT)
Date: Wed, 20 May 2020 17:43:32 -0700
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
To: Kees Cook <keescook@chromium.org>
Message-ID: <20200521004332.we4m2vpmkzrb57x2@ast-mbp.dhcp.thefacebook.com>
References: <202005200917.71E6A5B20@keescook>
 <20200520163102.GZ23230@ZenIV.linux.org.uk>
 <202005201104.72FED15776@keescook>
 <CAHk-=wierGOJZhzrj1+R18id-WdfmK=eWT9YfWdCfMvEO+jLLg@mail.gmail.com>
 <202005201151.AFA3C9E@keescook>
 <20200520221256.tzqkjpeswv3d6ne2@ast-mbp.dhcp.thefacebook.com>
 <202005201540.EF1BD18B44@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202005201540.EF1BD18B44@keescook>
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

On Wed, May 20, 2020 at 04:39:20PM -0700, Kees Cook wrote:
> On Wed, May 20, 2020 at 03:12:56PM -0700, Alexei Starovoitov wrote:
> > On Wed, May 20, 2020 at 12:04:04PM -0700, Kees Cook wrote:
> > > On Wed, May 20, 2020 at 11:27:03AM -0700, Linus Torvalds wrote:
> > > > Don't make this some kind of abstract conceptual problem thing.
> > > > Because it's not.
> > > 
> > > I have no intention of making this abstract (the requests for expanding
> > > seccomp coverage have been for only a select class of syscalls, and
> > > specifically clone3 and openat2) nor more complicated than it needs to be
> > > (I regularly resist expanding the seccomp BPF dialect into eBPF).
> > 
> > Kees, since you've forked the thread I'm adding bpf mailing list back and
> > re-iterating my point:
> > ** Nack to cBPF extensions **
> 
> Yes, I know. I agreed[1] with you on this point.
> 
> > How that is relevant?
> > You're proposing to add copy_from_user() to selected syscalls, like clone3,
> > and present large __u32 array to cBPF program.
> > In other words existing fixed sized 'struct seccomp_data' will become
> > either variable length or jumbo fixed size like one page.
> > In the fomer case it would mean that cBPF would need to be extended
> > with variable length logic. Which in turn means it will suffer from
> > spectre v1 issues.
> 
> I don't expect to need to do anything with variable lengths in the
> seccomp BPF dialect. As I said in the other thread, if we are faced with
> design trade-offs that require extending the seccomp filter language, we
> would switch to eBPF.
> 
> > If you go with latter approach of presenting cBPF with giant
> > 'struct seccomp_data + page' that extra page would need to be zeroed out
> > before invocation of bpf program which will make seccomp even less usable
> > that it is today. Currently it's slow and unusable in production datacenter.
> 
> Making universal declarations based on your opinion does not help
> convince people of your position. Saying it's "unusable in production
> datacenter" is perhaps true for you, but hardly true for the many
> datacenters that do use it.

The datacenter that went with full bypass of kernel storage and networking
subsystems where application don't do many syscalls per second any more ?
Sure. In such cases extreme seccomp overhead is irrelevant.
Just like kpti and retpoline overhead.

> Additionally, we're obviously not interested in making seccomp _slower_.
> The entire point of an investigation of the design is to examine our
> options and find the right solution.
> 
> > People suggested for years to adopt eBPF in seccomp to accelerate it,
> > but, as you confessed, you resisted and sounds like now you want to
> > implement seccomp specific syscall bitmask?
> 
> Yes -- because it's an order of magnitude faster than even a single
> instruction BPF seccomp filter. The vast majority of seccomp filters need
> nothing more than a single yes/no, and right now the bulk of processing
> time is spent running the BPF filter. I would prefer to avoid BPF
> entirely where possible for seccomp.

Are you running in interpreted mode? Otherwise above statement is nonsense or
you haven't done eBPF benchmarking in long time. JITed eBPF has exact same
speed as kernel C code. Even extreme use cases of bpf programs with single
'return 0' instruction are being optimized into minimal number of native
instructions.
So with above you're saying that giant bitmask of syscalls in C code
is faster than 'int foo() { return 0; }' in C code ? Simply absurd.
You realize that eBPF is processing tens of millions of packets per second
and folks measure the overhead in nanoseconds.
Indirect call and retpoline overhead was removed from a lot bpf use cases
in networking specifically because every nanosecond counts.

> 
> > Which means more kernel code, more bugs, more security issues.
> 
> Right. This is a solid design principle, and one I agree with: avoid
> adding code, keep things simple, everything will have bugs. And, as it
> stands, seccomp has had a significantly safer history than eBPF, largely
> due to its goal of staying as utterly small and simple as possible. I
> don't intend to discard that stance, and it's why I would rather continue
> to shield seccomp from the regularly occurring eBPF flaws.

It's subjectively safer. I argue it's enjoying smaller bug rate because
syzbots are not looking into it and it's not being actively developed.
In the year 2020 there were three verifier bugs that could have been exploited
through unpriv. All three were found by new kBdysch fuzzer. In 2019 there was
nothing. Not because people didn't try, but because syzbot reached its limit.
The pace of bpf development is accelerating. There will be more bugs found and
introduced in the verifier. Yet that doesn't stop folks to use eBPF to secure
the datacenters.
The JITs are also being developed. There are bugs in them and they affect both
cBPF and eBPF. If you're worried about that it's probably time to get rid of
cBPF from seccomp. Invent your own syscall processing thingy, fix bugs and stop
adding new features. That's the only way to reduce the bug rate. We're not
going to slow down JITs development because of seccomp.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
