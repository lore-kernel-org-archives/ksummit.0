Return-Path: <SRS0=cq3z=AT=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,
	SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77F42C433DF
	for <ksummit-discuss@archiver.kernel.org>; Wed,  8 Jul 2020 08:23:01 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 46A632078A
	for <ksummit-discuss@archiver.kernel.org>; Wed,  8 Jul 2020 08:23:01 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="DBkvy0NK"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 46A632078A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7DE6E85913;
	Wed,  8 Jul 2020 08:22:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XOFf4t71P0hh; Wed,  8 Jul 2020 08:22:33 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E061A85683;
	Wed,  8 Jul 2020 08:22:33 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 99F74C077B;
	Wed,  8 Jul 2020 08:22:33 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 25429C016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  8 Jul 2020 08:22:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1452A86AEE
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  8 Jul 2020 08:22:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id scQd7zZEvmPL
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  8 Jul 2020 08:22:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3022A8634E
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  8 Jul 2020 08:22:30 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id w2so20506678pgg.10
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 08 Jul 2020 01:22:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=+WHZEkgbRn1GZtipugYZWIhuk4XxfES0a92pxk+TNa4=;
 b=DBkvy0NK9CykHdZtUaT89e+b6Y27pzscN8ahqFm4CMwWXSsJByCy67sccdKQlgY8Aq
 vwsQRJFEnbkMuUHtXP3L/yjY3q4YqZTBY8UJS1AJyH11wU2pwzsI3OXgWrFgIQcSj9WC
 vXDhlloTMo7pr+v8fqPCeWTNycNcdpV2oXD8Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+WHZEkgbRn1GZtipugYZWIhuk4XxfES0a92pxk+TNa4=;
 b=cPI145GbAJWb6Zm1qII3EIgW0Mw1Z8LVf8xya0+Aycq1gvxoLsHQlWGgRt1GNGUqqr
 5XudbvOrANZWQDwxRoks6Ny/X8mV2vujfm+x3x446PMiGurFMop2851Znq+8p680IOFb
 wIOYO88a+DFdgukkJPc32mMtnJU1JRFUm4GR9+inLigTpVG+IS2brDs8vzfLdFJTwMdk
 QrRx/0MOgHO5dRYtavR9uo/coqkAWvhpTqehHZvb7p2JJzdeL4XAtzj2LO4G5y77zwqt
 lnrBnfurlMgh5WNL036KCU4pTByR7dYb1V8PoCdmu7QbCi8NB6eC/AD2p9zBDsB1meiu
 sT0g==
X-Gm-Message-State: AOAM533PR6oEa26z3V2c8s0Xlhefz1u7ER4O/C5eni3dJzQJHYO1prZ/
 7pUDSoRauwZnDhfoVFa/ZdALOQ==
X-Google-Smtp-Source: ABdhPJwhpW2H06JUZuBCREiFew172FWggpN7+VciY6tAUc7EP1G0jkq6LVyX1PvI0ZZ8Hy1nUwgU0Q==
X-Received: by 2002:a63:531e:: with SMTP id h30mr46674003pgb.165.1594196549725; 
 Wed, 08 Jul 2020 01:22:29 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id d14sm4720225pjc.20.2020.07.08.01.22.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jul 2020 01:22:28 -0700 (PDT)
Date: Wed, 8 Jul 2020 01:22:27 -0700
From: Kees Cook <keescook@chromium.org>
To: Dan Williams <dan.j.williams@intel.com>
Message-ID: <202007080108.454C937@keescook>
References: <159419296487.2464622.863943877093636532.stgit@dwillia2-desk3.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159419296487.2464622.863943877093636532.stgit@dwillia2-desk3.amr.corp.intel.com>
Cc: ksummit-discuss@lists.linuxfoundation.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 SeongJae Park <sjpark@amazon.de>, linux-kernel@vger.kernel.org,
 tech-board-discuss@lists.linuxfoundation.org, Chris Mason <clm@fb.clm>,
 Dave Airlie <airlied@redhat.com>
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

On Wed, Jul 08, 2020 at 12:23:59AM -0700, Dan Williams wrote:
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
> Signed-off-by: Chris Mason <clm@fb.com>
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

In that case, I will "upgrade" my Ack. ;)

Signed-off-by: Kees Cook <keescook@chromium.org>

:)

> - Non-change: I did not add explicit language as to what to do with
>   existing usages. My personal inclination is to prioritize this
>   coding-style cleanup higher than others, but the coding-style document
>   has typically not indicated policy on how cleanups are handled by
>   subsystems. It will be a case by case effort and consideration.

While I'd like to have published guidance on fixing existing language
(which is already underway[1]), I agree: let's start here.

> [...]
> +For symbol names, avoid introducing new usage of 'master/slave' (or

For symbol names, comments, documentation, and other language, avoid
introducing ...

> +'slave' independent of 'master') and 'blacklist/whitelist'. Recommended
> +replacements for 'master/slave' are: 'main/{secondary,subordinate}',
> +'primary/replica', '{initiator,requester}/{target,responder}',

the main and primary should be merged, IMO:

	'{primary,main}/{secondary,replica,subordinate}'

> +'host/{device,proxy}', or 'leader/{performer,follower}'. Recommended

leader/performer does not track for me. Split it out?

	'leader/follower', 'director/performer'

I have also seen:

	'controller/worker'

Thanks!

-Kees

[1] https://lore.kernel.org/lkml/20200630174123.GA1906678@kroah.com/
    https://lore.kernel.org/lkml/20200701171555.3198836-1-gregkh@linuxfoundation.org/

-- 
Kees Cook
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
