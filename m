Return-Path: <SRS0=2co7=7C=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08186C433DF
	for <ksummit-discuss@archiver.kernel.org>; Wed, 20 May 2020 23:39:28 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A50222072C
	for <ksummit-discuss@archiver.kernel.org>; Wed, 20 May 2020 23:39:27 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="k5WCTReg"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A50222072C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EA5BD88C8E;
	Wed, 20 May 2020 23:39:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fe+U-Sf+OlWo; Wed, 20 May 2020 23:39:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 372F488B0B;
	Wed, 20 May 2020 23:39:26 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0A63AC07FF;
	Wed, 20 May 2020 23:39:26 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6DB91C0176
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 23:39:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5922A8712E
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 23:39:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XxTI_4-3ryHQ
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 23:39:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8B7FA87122
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 23:39:23 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id e11so1407067pfn.3
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 16:39:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=BKxmEd0cc9JnFOdDSJAY2t96ddzYOTGSRva5EGtl4sM=;
 b=k5WCTRegL4qtiRs71zAbn+o1yYFdrunCtzMnu61qwQABmg0/GIzFNa0WkCBD9u3xZf
 yvj0drwJ4TrgNEpv503jpUYD/nCqkyM6Q+yD/uU7x30EjlWYk8ZwA4D7Czhgvf+HQvjD
 n7AgloIUMkOGZWu54iKydCRmC2t+A3dwWw40A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=BKxmEd0cc9JnFOdDSJAY2t96ddzYOTGSRva5EGtl4sM=;
 b=fureTGKVK1Vpeidp1AoFUPeUfBo0JxPmZRQMpZfmf+asN8PU6ySvYa7gM2bg45aQ7M
 ff1J2RiOwbtlLIN/kmJ/jfCdLeJXIDJaNYt/wKDLw2qbS6MCK2MPCq7tuq3Odx6LzPmS
 iWm09r+W+U9N/fEFNbI/T2L98GkQDdNuyBWgztNSFwQsHdjfthlymCn10/XlTxzxrhUN
 QeIyIb5eqlrrjRqkqqVufzrVhb0t0PByOQO+wVjQV60MchS4m/h1c7gfUum1ZCT6Y0Mf
 jusmy5lChWhRbbsVu4lkkItgX4fjltkqI921dsFDCO/+7/wh5crBqGC1Y0oBt9JzJqiM
 DU0w==
X-Gm-Message-State: AOAM5330V39oDanltpCogx8mZ+eaMo693i+XVDxHVLsHYGKNQQjsQoZc
 Kze22XoBdh6S0vaqTr/xC7b8tg==
X-Google-Smtp-Source: ABdhPJyQ3ePD22xinBBFKs4ZY83hieCkmjLI4/2NO3mxxs7+J15byFMue/V9Rx9ipe7u3fy7XNppDg==
X-Received: by 2002:a05:6a00:1490:: with SMTP id
 v16mr6377464pfu.173.1590017963037; 
 Wed, 20 May 2020 16:39:23 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id k30sm2915743pfh.49.2020.05.20.16.39.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 16:39:22 -0700 (PDT)
Date: Wed, 20 May 2020 16:39:20 -0700
From: Kees Cook <keescook@chromium.org>
To: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Message-ID: <202005201540.EF1BD18B44@keescook>
References: <202005200917.71E6A5B20@keescook>
 <20200520163102.GZ23230@ZenIV.linux.org.uk>
 <202005201104.72FED15776@keescook>
 <CAHk-=wierGOJZhzrj1+R18id-WdfmK=eWT9YfWdCfMvEO+jLLg@mail.gmail.com>
 <202005201151.AFA3C9E@keescook>
 <20200520221256.tzqkjpeswv3d6ne2@ast-mbp.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520221256.tzqkjpeswv3d6ne2@ast-mbp.dhcp.thefacebook.com>
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

On Wed, May 20, 2020 at 03:12:56PM -0700, Alexei Starovoitov wrote:
> On Wed, May 20, 2020 at 12:04:04PM -0700, Kees Cook wrote:
> > On Wed, May 20, 2020 at 11:27:03AM -0700, Linus Torvalds wrote:
> > > Don't make this some kind of abstract conceptual problem thing.
> > > Because it's not.
> > 
> > I have no intention of making this abstract (the requests for expanding
> > seccomp coverage have been for only a select class of syscalls, and
> > specifically clone3 and openat2) nor more complicated than it needs to be
> > (I regularly resist expanding the seccomp BPF dialect into eBPF).
> 
> Kees, since you've forked the thread I'm adding bpf mailing list back and
> re-iterating my point:
> ** Nack to cBPF extensions **

Yes, I know. I agreed[1] with you on this point.

> How that is relevant?
> You're proposing to add copy_from_user() to selected syscalls, like clone3,
> and present large __u32 array to cBPF program.
> In other words existing fixed sized 'struct seccomp_data' will become
> either variable length or jumbo fixed size like one page.
> In the fomer case it would mean that cBPF would need to be extended
> with variable length logic. Which in turn means it will suffer from
> spectre v1 issues.

I don't expect to need to do anything with variable lengths in the
seccomp BPF dialect. As I said in the other thread, if we are faced with
design trade-offs that require extending the seccomp filter language, we
would switch to eBPF.

> If you go with latter approach of presenting cBPF with giant
> 'struct seccomp_data + page' that extra page would need to be zeroed out
> before invocation of bpf program which will make seccomp even less usable
> that it is today. Currently it's slow and unusable in production datacenter.

Making universal declarations based on your opinion does not help
convince people of your position. Saying it's "unusable in production
datacenter" is perhaps true for you, but hardly true for the many
datacenters that do use it.

Additionally, we're obviously not interested in making seccomp _slower_.
The entire point of an investigation of the design is to examine our
options and find the right solution.

> People suggested for years to adopt eBPF in seccomp to accelerate it,
> but, as you confessed, you resisted and sounds like now you want to
> implement seccomp specific syscall bitmask?

Yes -- because it's an order of magnitude faster than even a single
instruction BPF seccomp filter. The vast majority of seccomp filters need
nothing more than a single yes/no, and right now the bulk of processing
time is spent running the BPF filter. I would prefer to avoid BPF
entirely where possible for seccomp.

> Which means more kernel code, more bugs, more security issues.

Right. This is a solid design principle, and one I agree with: avoid
adding code, keep things simple, everything will have bugs. And, as it
stands, seccomp has had a significantly safer history than eBPF, largely
due to its goal of staying as utterly small and simple as possible. I
don't intend to discard that stance, and it's why I would rather continue
to shield seccomp from the regularly occurring eBPF flaws.

> imo that's another reinvented wheel when eBPF can do it already. I don't think
> it's a good idea to add kernel code when eBPF-based solution exists and capable
> of examining any level of nested args.

Thanks to the neighboring thread here, the requirements no longer[2]
include nested args. Also, you're mixing bitmasks (to accelerate the
overwhelmingly common case) with the deep argument inspection (which is
a rare but needed case).

> > Perhaps the question is "how deeply does seccomp need to inspect?"
> > and maybe it does not get to see anything beyond just the "top level"
> > struct (i.e. struct clone_args) and all pointers within THAT become
> > opaque? That certainly simplifies the design.
> 
> clone3's 'struct clone_args' has set_tid pointer as a second level.
> I don't think that sticking to first level of pointers for this particular
> syscall will make seccomp filtering any more practical.

Yup, we all agree. :)

-Kees

[1] https://lore.kernel.org/lkml/202005191434.57253AD@keescook/
[2] https://lore.kernel.org/ksummit-discuss/20200520221256.tzqkjpeswv3d6ne2@ast-mbp.dhcp.thefacebook.com/T/#m01a045c8715cfff8399ba86171039110befecbcf

-- 
Kees Cook
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
