Return-Path: <SRS0=cq3z=AT=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.5 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7582C433DF
	for <ksummit-discuss@archiver.kernel.org>; Wed,  8 Jul 2020 07:53:06 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7ACCB2078A
	for <ksummit-discuss@archiver.kernel.org>; Wed,  8 Jul 2020 07:53:06 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=intel-com.20150623.gappssmtp.com header.i=@intel-com.20150623.gappssmtp.com header.b="RKAUZLS8"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7ACCB2078A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=intel.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1D2A68829A;
	Wed,  8 Jul 2020 07:53:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KbrjBHk3ItXc; Wed,  8 Jul 2020 07:53:05 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6861C87E27;
	Wed,  8 Jul 2020 07:53:05 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 38575C0893;
	Wed,  8 Jul 2020 07:53:05 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 80969C08A9
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  8 Jul 2020 07:53:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DD81F20349
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  8 Jul 2020 07:53:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OQGKOuORzk4G
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  8 Jul 2020 07:52:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com
 [209.85.218.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 2D89F2033B
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  8 Jul 2020 07:52:59 +0000 (UTC)
Received: by mail-ej1-f65.google.com with SMTP id dr13so49357513ejc.3
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 08 Jul 2020 00:52:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uzQgfQwlB8mQ8qOfmtknJOwa2W5D3WSjFsl4EQ7bldY=;
 b=RKAUZLS8ppSGqqaHG7ZpIgrwQ4r8B+G/T5SL3RJnDgnzyaiBa8W86kf3od5xL40Utl
 i6sfNp+Psui78KrXHyEyLcLwJ+StdXe8zue+WBNTrxBYzK1bKDKbZfx+17BRQ8BLtjUq
 JU8kOyCeajyj/z+qqxVy47uUr8k0brlZ65dZ5xtbF76ueZQQkVYMLML9zplT9hlRvJce
 DEf0lTcMjSp0fypSqF2K5dT7rHDKxo5JGwDTRfsEdMF+tTII4hs3WZUByfIgcQJadGIr
 sTGOKA8G9whVLWqyP3Zu6HIObSR6j+7lKmOUSgvh8Ez4x3aOtICftIqhwrwqBQZQzTkc
 mDAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uzQgfQwlB8mQ8qOfmtknJOwa2W5D3WSjFsl4EQ7bldY=;
 b=ivcxgspUK5baQg23cXSiUXs03iXlxTaXNGWGM2TfCDjpTtSYFY1vcTTgvB4h+2dPcq
 O3iJCwKMHYvSZAdhtgCJsagWlYDLc7r8wWIopcFZYHMcSBUzNy/Fsuh5h93C7Lu15Psq
 cB05y9ESVGMqgmUkGtBe3zSybCpX/CtNgTkhTjEmJsF2YLSuX/ul0Ep2nnv27afV+Cth
 qAGJsHP4UhkCjVV6aCbNev6oR410pUmJTTLHk38UwsRuXwTPtDT+yY30iRJACJSP8H59
 UFdoL4gTydoHS2/9eIUpYfZ4zLTnBHFrq6yIGZ+PSSg/8jjuGHRG4vhPlYQXFO97NZ7I
 83vw==
X-Gm-Message-State: AOAM531ehXHQFSGoA0otKek/mGDeXm6D1swG5lpU67WDaqh0EEW3JY17
 cH+oJJKzEQ0+fshVTy8/pc9ZltHhjJjnxXrUDLv77w==
X-Google-Smtp-Source: ABdhPJw7442gcjNFjZSE2uTN+bNfa8n0XgtMlWOFnhVCtn09GNsf3QDa21dGRGPOv8CCO6HI2q650npcLAIGzKIcY5g=
X-Received: by 2002:a17:906:b888:: with SMTP id
 hb8mr50141392ejb.124.1594194777397; 
 Wed, 08 Jul 2020 00:52:57 -0700 (PDT)
MIME-Version: 1.0
References: <159419296487.2464622.863943877093636532.stgit@dwillia2-desk3.amr.corp.intel.com>
In-Reply-To: <159419296487.2464622.863943877093636532.stgit@dwillia2-desk3.amr.corp.intel.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Wed, 8 Jul 2020 00:52:46 -0700
Message-ID: <CAPcyv4h8J2qx92YmEfYDoSwKZYjqPaw8w2dcmeDuVbApCbS7aA@mail.gmail.com>
To: Jonathan Corbet <corbet@lwn.net>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 SeongJae Park <sjpark@amazon.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 tech-board-discuss@lists.linuxfoundation.org, Dave Airlie <airlied@redhat.com>
Subject: Re: [Ksummit-discuss] [PATCH v2] CodingStyle: Inclusive Terminology
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

On Wed, Jul 8, 2020 at 12:40 AM Dan Williams <dan.j.williams@intel.com> wrote:
>
> Linux maintains a coding-style and its own idiomatic set of terminology.
> Update the style guidelines to recommend replacements for the terms
> master/slave and blacklist/whitelist.
>
> Link: http://lore.kernel.org/r/159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com
> Cc: Jonathan Corbet <corbet@lwn.net>
> Acked-by: Randy Dunlap <rdunlap@infradead.org>
> Acked-by: Dave Airlie <airlied@redhat.com>
> Acked-by: Kees Cook <keescook@chromium.org>
> Acked-by: SeongJae Park <sjpark@amazon.de>
> Signed-off-by: Olof Johansson <olof@lixom.net>
> Signed-off-by: Chris Mason <clm@fb.clm>

Copy - paste error of Chris's address, should be .com of course.

> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Dan Williams <dan.j.williams@intel.com>
> ---
> Changes since v1 [1]
> - Drop inclusive-terminology.rst, it is in the lore archives if the
>   arguments are needed for future debates, but otherwise no pressing
>   need to carry it in the tree (Linus, James)
>
> - Update the recommended terms to include replacement for 'master' and
>   'whitelist' (Kees, Andy)
>
> - Add 'target' as a replacement (Andy)
>
> - Add 'device' as a replacement (Mark)
>
> - Collect acks and signed-off-bys. Yes, the sign-offs are not reflective
>   of a submission chain, but I kept "Signed-off-by" if people offered
>   it.
>
> - Non-change: I did not add explicit language as to what to do with
>   existing usages. My personal inclination is to prioritize this
>   coding-style cleanup higher than others, but the coding-style document
>   has typically not indicated policy on how cleanups are handled by
>   subsystems. It will be a case by case effort and consideration.
>
> [1]: http://lore.kernel.org/r/159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com
>
>  Documentation/process/coding-style.rst |   13 +++++++++++++
>  1 file changed, 13 insertions(+)
>
> diff --git a/Documentation/process/coding-style.rst b/Documentation/process/coding-style.rst
> index 2657a55c6f12..a5b61e9005ac 100644
> --- a/Documentation/process/coding-style.rst
> +++ b/Documentation/process/coding-style.rst
> @@ -319,6 +319,19 @@ If you are afraid to mix up your local variable names, you have another
>  problem, which is called the function-growth-hormone-imbalance syndrome.
>  See chapter 6 (Functions).
>
> +For symbol names, avoid introducing new usage of 'master/slave' (or
> +'slave' independent of 'master') and 'blacklist/whitelist'. Recommended
> +replacements for 'master/slave' are: 'main/{secondary,subordinate}',
> +'primary/replica', '{initiator,requester}/{target,responder}',
> +'host/{device,proxy}', or 'leader/{performer,follower}'. Recommended
> +replacements for 'blacklist/whitelist' are: 'denylist/allowlist' or
> +'blocklist/passlist'.
> +
> +Exceptions for introducing new usage is to maintain a userspace ABI/API,
> +or when updating code for an existing (as of 2020) hardware or protocol
> +specification that mandates those terms. For new specifications
> +translate specification usage of the terminology to the kernel coding
> +standard where possible.
>
>  5) Typedefs
>  -----------
>
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
