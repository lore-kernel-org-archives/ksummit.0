Return-Path: <SRS0=cq3z=AT=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1627C433DF
	for <ksummit-discuss@archiver.kernel.org>; Wed,  8 Jul 2020 14:44:03 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 65B8420786
	for <ksummit-discuss@archiver.kernel.org>; Wed,  8 Jul 2020 14:44:03 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=intel-com.20150623.gappssmtp.com header.i=@intel-com.20150623.gappssmtp.com header.b="Th0XJc6W"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 65B8420786
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=intel.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 44986882F2;
	Wed,  8 Jul 2020 14:44:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FUxuyH2fJeB2; Wed,  8 Jul 2020 14:44:02 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id A47F68828D;
	Wed,  8 Jul 2020 14:44:02 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 79D3FC077B;
	Wed,  8 Jul 2020 14:44:02 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D6951C016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  8 Jul 2020 14:44:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CE51088D01
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  8 Jul 2020 14:44:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ynuHPc8t1aGC
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  8 Jul 2020 14:44:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com
 [209.85.218.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D453388CFF
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  8 Jul 2020 14:44:00 +0000 (UTC)
Received: by mail-ej1-f65.google.com with SMTP id l12so50785623ejn.10
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 08 Jul 2020 07:44:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xb0I2RYd0Xq5lHyYzv75SJprFPpXAlY3yqWxTTq8ERk=;
 b=Th0XJc6W1FFDmfXlzq1ofFkJvJekBX7zuXGDikGiUjkBMOlogYquNwNS+vDbyRld8C
 LhmCCn8+R4L8aqvauTPdax14LGVHZlnRbxbFJUFk5kGwgekZ9TMHuaCW0xJelAITcZlc
 bTkGqQhrOc4opTVDlF0pxBjYG3sq0LPbVZdatyc9330fOkC85GWl8K2dSLV8Jpbs/9cp
 TsbZP+UEqSPgDclqmwmlP6MwPu3Lle6OFkH2akseeprKhD6GAEX1lQ89u9UnPvr3Meob
 D7JUXToS++1OjP0Y1tqs8PSm01a73keowt+TJ7L/kCHjHuia/yfaEqeyz1gDG4bd4zoY
 TpAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xb0I2RYd0Xq5lHyYzv75SJprFPpXAlY3yqWxTTq8ERk=;
 b=nqdAS1+3AeYNDTGn19RzPjSBldC6KNwG/FzyE+5nTbmiQApTy/mG/ooEHV/sZakvD9
 gsvbjPt6gC2SrQYCGpfd7YuXejmMfQWrQhh/ybTk6L8+Tpm6QrFJYzayY9HtDvLuX0Xo
 jQZRg0KEME8np4VvIrtrLoOY/pTXcV6UmeNP7OTEPWWwx1xt/FcVxaai/z3Sd0ky/UNI
 +Ea/7UFCq33k06C5jL46QFhMs9aZ1z2PlKAOLQwz3Fn1geONI4p+Ki3dBmIADVpGzxSa
 Uf50bZDG03tEeI+owg7m778il3Sxmf1K2SuV68BmC4KUSonvKKSQPPZ7MdAc1rFAasqH
 mbjQ==
X-Gm-Message-State: AOAM5303xpiuuAz4wiV5quTWTHocQkCDS+3xgF6KqqZfkbC49d7znDwE
 pb4AOQ3zuFP459AUq9xxJXP0WHHQX+f2etc+lZjDDg==
X-Google-Smtp-Source: ABdhPJw+kb55V3s0r2zHR9x2KWpKo58dCyUw71gkL9ZFxqoE83rgP6HV9RmtJmzsq9Lyp7rkyPUBX/xTtQTGt0qr+PM=
X-Received: by 2002:a17:906:1a54:: with SMTP id
 j20mr51228103ejf.455.1594219439236; 
 Wed, 08 Jul 2020 07:43:59 -0700 (PDT)
MIME-Version: 1.0
References: <159419296487.2464622.863943877093636532.stgit@dwillia2-desk3.amr.corp.intel.com>
 <202007080108.454C937@keescook>
In-Reply-To: <202007080108.454C937@keescook>
From: Dan Williams <dan.j.williams@intel.com>
Date: Wed, 8 Jul 2020 07:43:48 -0700
Message-ID: <CAPcyv4hmsjKqKWhYYSyCx6fp9P_5GPr+XSVN5xFHxE6Ft2Q7fw@mail.gmail.com>
To: Kees Cook <keescook@chromium.org>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 SeongJae Park <sjpark@amazon.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
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

On Wed, Jul 8, 2020 at 1:22 AM Kees Cook <keescook@chromium.org> wrote:
>
> On Wed, Jul 08, 2020 at 12:23:59AM -0700, Dan Williams wrote:
> > Linux maintains a coding-style and its own idiomatic set of terminology.
> > Update the style guidelines to recommend replacements for the terms
> > master/slave and blacklist/whitelist.
> >
> > Link: http://lore.kernel.org/r/159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com
> > Cc: Jonathan Corbet <corbet@lwn.net>
> > Acked-by: Randy Dunlap <rdunlap@infradead.org>
> > Acked-by: Dave Airlie <airlied@redhat.com>
> > Acked-by: Kees Cook <keescook@chromium.org>
> > Acked-by: SeongJae Park <sjpark@amazon.de>
> > Signed-off-by: Olof Johansson <olof@lixom.net>
> > Signed-off-by: Chris Mason <clm@fb.com>
> > Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Signed-off-by: Dan Williams <dan.j.williams@intel.com>
> > ---
> > Changes since v1 [1]
> > - Drop inclusive-terminology.rst, it is in the lore archives if the
> >   arguments are needed for future debates, but otherwise no pressing
> >   need to carry it in the tree (Linus, James)
> >
> > - Update the recommended terms to include replacement for 'master' and
> >   'whitelist' (Kees, Andy)
> >
> > - Add 'target' as a replacement (Andy)
> >
> > - Add 'device' as a replacement (Mark)
> >
> > - Collect acks and signed-off-bys. Yes, the sign-offs are not reflective
> >   of a submission chain, but I kept "Signed-off-by" if people offered
> >   it.
>
> In that case, I will "upgrade" my Ack. ;)
>
> Signed-off-by: Kees Cook <keescook@chromium.org>
>
> :)

Noted.

>
> > - Non-change: I did not add explicit language as to what to do with
> >   existing usages. My personal inclination is to prioritize this
> >   coding-style cleanup higher than others, but the coding-style document
> >   has typically not indicated policy on how cleanups are handled by
> >   subsystems. It will be a case by case effort and consideration.
>
> While I'd like to have published guidance on fixing existing language
> (which is already underway[1]), I agree: let's start here.
>
> > [...]
> > +For symbol names, avoid introducing new usage of 'master/slave' (or
>
> For symbol names, comments, documentation, and other language, avoid
> introducing ...

How about "symbol names and documentation" because I'm struggling to
think of an example of where this terminology would leak in outside
those broad categories.

> > +'slave' independent of 'master') and 'blacklist/whitelist'. Recommended
> > +replacements for 'master/slave' are: 'main/{secondary,subordinate}',
> > +'primary/replica', '{initiator,requester}/{target,responder}',
>
> the main and primary should be merged, IMO:
>
>         '{primary,main}/{secondary,replica,subordinate}'

Ok.

>
> > +'host/{device,proxy}', or 'leader/{performer,follower}'. Recommended
>
> leader/performer does not track for me. Split it out?
>
>         'leader/follower', 'director/performer'

Sounds good.

> I have also seen:
>
>         'controller/worker'

Will add.

Thanks Kees.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
