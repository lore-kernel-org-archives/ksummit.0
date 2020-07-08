Return-Path: <SRS0=cq3z=AT=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.5 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 38A61C433DF
	for <ksummit-discuss@archiver.kernel.org>; Wed,  8 Jul 2020 15:15:01 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 078B5206DF
	for <ksummit-discuss@archiver.kernel.org>; Wed,  8 Jul 2020 15:15:00 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=intel-com.20150623.gappssmtp.com header.i=@intel-com.20150623.gappssmtp.com header.b="chhZELv0"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 078B5206DF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=intel.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8CDAF8885F;
	Wed,  8 Jul 2020 15:14:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XWvy0Pe-SqKt; Wed,  8 Jul 2020 15:14:49 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 01A8288D2B;
	Wed,  8 Jul 2020 15:14:45 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D0AF7C077B;
	Wed,  8 Jul 2020 15:14:44 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 05C32C016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  8 Jul 2020 15:14:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id ED73029CAB
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  8 Jul 2020 15:14:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h5PMUIWKEnyz
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  8 Jul 2020 15:14:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com
 [209.85.218.65])
 by silver.osuosl.org (Postfix) with ESMTPS id A191520477
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  8 Jul 2020 15:14:40 +0000 (UTC)
Received: by mail-ej1-f65.google.com with SMTP id rk21so50960360ejb.2
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 08 Jul 2020 08:14:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+wc9AMwrEbeNMpcYWmQkk0DMLNxE+2xQRYkLjlCn58k=;
 b=chhZELv0EVMHzIvL8iY2Ojn8KoNPlOkgGrHSzPggYp9J6IwJyZT704GOCvomH/ZLSl
 dPKpiE5d4lW1bYKlsa2Xr+Qi71L1d5tpQXOknrf5yowP09mP5/gT4uIxNVnkOegPPHhH
 nSKMNEoPwDiz/1PkHXC6iAzlBm607d5/Y3f9khJY5XbtkKydSK5NdoIiB9QlsXWTH2QB
 SyqZt5+5SjFKLuNt+qa0JabcaaoEEpdZ2in1uYFvxwCOg6b49QVLwcR58Je0ntEa5aio
 LTcpDol25SoPyDuEddaynpnTb1WgO/4+SDpHOSDqJ6HRWEtwU6xOoHz7fmWhmsWZxwDX
 H8Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+wc9AMwrEbeNMpcYWmQkk0DMLNxE+2xQRYkLjlCn58k=;
 b=AlcOUC3yy4f81vAWadfQz1nLYOyXcdLuI0WOfvbxp0ht1MiNGii3r2UswYB2AqC819
 9oB9igkDZmP6/eCVIfs8QgVMSG31FqgWbvVxVX1Bo/QOm1dTcQTfU0TYMzDvt9gIUOKH
 D2z/aV2Dm3hyW0XwpzQCB1rWqnirSxyHPGXvvjqhHNMFHAqWEC5gp0DYEoMOHSEgUEhn
 4CmwTrZK+Ec7RRkzB7NClHkKoCoSpv8iOTkd4JTVE+n6X9L7k888McqWX0jJ4ZOy7yt3
 YCN71tZqS03VyMEuJm71AZS1wha4Gl4uiEp857ARc7ERbehd3z9nyePm/ImxYgo5UBBN
 gcfA==
X-Gm-Message-State: AOAM533jfyOiy4KBDkO3MQYZM3Dt11VKoQf+ZeE2MqjynnganQ+kgb1Q
 osr/h48vmPpJDWHEAEa0+F4/Eu0fQfv6VuWfDOgRKQ==
X-Google-Smtp-Source: ABdhPJz67JZnPq+/eyLYBt7UGeM8LX5m9PzhzZsm/9Fo7nGPbQhNjZiijJ2GI+iTn4p9FoR/SisPh4NaNaz2+UyCBD8=
X-Received: by 2002:a17:906:1a54:: with SMTP id
 j20mr51363389ejf.455.1594221279045; 
 Wed, 08 Jul 2020 08:14:39 -0700 (PDT)
MIME-Version: 1.0
References: <159419296487.2464622.863943877093636532.stgit@dwillia2-desk3.amr.corp.intel.com>
 <b15e2652aba06dbe244f5ed447e6e96f12302198.camel@perches.com>
In-Reply-To: <b15e2652aba06dbe244f5ed447e6e96f12302198.camel@perches.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Wed, 8 Jul 2020 08:14:27 -0700
Message-ID: <CAPcyv4iz6TzMhMvDzSvOgOvuu68z2YpxHeOycXrrjOfjaceHwQ@mail.gmail.com>
To: Joe Perches <joe@perches.com>
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

On Wed, Jul 8, 2020 at 4:05 AM Joe Perches <joe@perches.com> wrote:
>
> On Wed, 2020-07-08 at 00:23 -0700, Dan Williams wrote:
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
> > Signed-off-by: Chris Mason <clm@fb.clm>
> > Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Signed-off-by: Dan Williams <dan.j.williams@intel.com>
> > ---
> > Changes since v1 [1]
> > - Drop inclusive-terminology.rst, it is in the lore archives if the
> >   arguments are needed for future debates, but otherwise no pressing
> >   need to carry it in the tree (Linus, James)
>
> Where did Linus publicly state this was unnecessary?

James suggested dropping the document, Linus agreed, I agreed.

>
> > diff --git a/Documentation/process/coding-style.rst b/Documentation/process/coding-style.rst
> []
> > @@ -319,6 +319,19 @@ If you are afraid to mix up your local variable names, you have another
> >  problem, which is called the function-growth-hormone-imbalance syndrome.
> >  See chapter 6 (Functions).
> >
> > +For symbol names, avoid introducing new usage of 'master/slave' (or
> > +'slave' independent of 'master') and 'blacklist/whitelist'. Recommended
> > +replacements for 'master/slave' are: 'main/{secondary,subordinate}',
> > +'primary/replica', '{initiator,requester}/{target,responder}',
> > +'host/{device,proxy}', or 'leader/{performer,follower}'. Recommended
> > +replacements for 'blacklist/whitelist' are: 'denylist/allowlist' or
> > +'blocklist/passlist'.
>
> Adding a reference to SeongJae Park's introduction of
> scripts/deprecated_terms.txt or the like might help
> make this list unnecessary if more terms are added.

Per his last mail he's going to update his checker to refer to coding-style.

> > +Exceptions for introducing new usage is to maintain a userspace ABI/API,
> > +or when updating code for an existing (as of 2020) hardware or protocol
> > +specification that mandates those terms. For new specifications
> > +translate specification usage of the terminology to the kernel coding
> > +standard where possible.
>
> I believe any existing code should not be changed,
> not just code that is required to be maintained
> for userspace.

We have existing practices around coding-style changes that can be
applied here. Some subsystems are open to modernizing their code with
respect to the latest coding style recommendations and others,
especially those with ancient drivers don't want the churn. So, I
would hold these cleanups to the same standard.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
