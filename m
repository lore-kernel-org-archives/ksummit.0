Return-Path: <SRS0=cq3z=AT=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.6 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A517C433DF
	for <ksummit-discuss@archiver.kernel.org>; Wed,  8 Jul 2020 07:12:45 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4E42B206DF
	for <ksummit-discuss@archiver.kernel.org>; Wed,  8 Jul 2020 07:12:45 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=intel-com.20150623.gappssmtp.com header.i=@intel-com.20150623.gappssmtp.com header.b="j0BlwJ+u"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4E42B206DF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=intel.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 22A928955F;
	Wed,  8 Jul 2020 07:12:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TUWHKBsjKZre; Wed,  8 Jul 2020 07:12:43 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id CC0F989510;
	Wed,  8 Jul 2020 07:12:43 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9CFE4C0893;
	Wed,  8 Jul 2020 07:12:43 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 942C6C016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  8 Jul 2020 07:12:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9DF1F2156F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  8 Jul 2020 07:12:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4K6AhkV231jm
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  8 Jul 2020 07:12:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com
 [209.85.218.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 0065A207A4
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  8 Jul 2020 07:12:16 +0000 (UTC)
Received: by mail-ej1-f65.google.com with SMTP id dr13so49254182ejc.3
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 08 Jul 2020 00:12:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kdsNHpxkoZR0fNVD9KrCnenPHEfoVj8EUtIv2TOWsWM=;
 b=j0BlwJ+uXyhLTpoVaN9qRQHNt/ExEKP8IoksaMZqa2G/4XGDzEBG5CZ1XP1Hg7T47g
 UD3XFVWzblYT5t/ms/jZ/kOSQDXI062J4zcoI12zRT7aKk05gmg3mBK/5uwnG4gOmOY+
 JQ1UGkqzSM9SWpLf/7bMNZL0JSG2St4X/qH93fSqqcwVUBhXtKiHJnGZ76C775HY3BKP
 ExyyJaWhSRs3DVhVUlCRJOXBM4ACpFKinoaruMVhQcrWFHvuHiXDEsLtWEOrd3087JhD
 kQQphm2hwLoHiTGTDO85/ZMqrHirIr8UGk6TnfJLnAZEr7oPnJJXSQkIzcmYgFyGv879
 eomA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kdsNHpxkoZR0fNVD9KrCnenPHEfoVj8EUtIv2TOWsWM=;
 b=s8LJmkdKazMLIyVqECbxb8y2atjMm6PIOdxRoi7Bi9tjqUmEtzUey759G+N3xBKtTX
 xkKpj2kzgPPAFCYNabUrNW9scOtyZAvY0Ct8RiQaPx6zurail5XHEYSfEwx1lxnf0254
 vU68vKMlMDnnRL1FUZ7S+2d0jJTARODDHHQ5R1z8ruXOUHL8VxIlypDuYL3qnbE5+cWM
 vfGc9jx2GFDnXcrXlaDFk+BMAXoinoYfyrEl8o4FcvzmTzvmkwpJwPfb9wpBS8Cdbz4D
 YjwJGQfv00N6MB8YWxxZTaE5qLxLF/SKiMdFd9+QMbU7DMAeTqu00SSwF/aDILRkZ4ON
 Xwxg==
X-Gm-Message-State: AOAM531/4N7ejHIcakOrOXcbOPZfklv4CvDWXLxOjhTV/AsVv0Kf72l6
 EcNiSZ7nCS7b+sc/mu7ANEIhw6v3II1e7Q4OYC/jxA==
X-Google-Smtp-Source: ABdhPJwTblcoIWxEvyJM9MnbL5UwKKNnULlprxGqQYwvDI3+GFPGWhnQgZuUdY2+rUS7JmbetQhGNgiTigGaAcnTS+0=
X-Received: by 2002:a17:906:6d56:: with SMTP id
 a22mr52231269ejt.440.1594192335322; 
 Wed, 08 Jul 2020 00:12:15 -0700 (PDT)
MIME-Version: 1.0
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 <20200707065612.8239-1-sjpark@amazon.com>
In-Reply-To: <20200707065612.8239-1-sjpark@amazon.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Wed, 8 Jul 2020 00:12:03 -0700
Message-ID: <CAPcyv4ggm50tMnaCtMZJRz0j6ZO15buNUmTfk4sLf3AYkxS12w@mail.gmail.com>
To: SeongJae Park <sjpark@amazon.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
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

On Mon, Jul 6, 2020 at 11:56 PM SeongJae Park <sjpark@amazon.com> wrote:
>
> Hello,
>
> On Sat, 04 Jul 2020 13:02:51 -0700 Dan Williams <dan.j.williams@intel.com> wrote:
>
> > Recent events have prompted a Linux position statement on inclusive
> > terminology. Given that Linux maintains a coding-style and its own
> > idiomatic set of terminology here is a proposal to answer the call to
> > replace non-inclusive terminology.
>
> I'm glad to see this patch.
>
> >
> > Cc: Jonathan Corbet <corbet@lwn.net>
> > Cc: Kees Cook <keescook@chromium.org>
> > Signed-off-by: Chris Mason <clm@fb.clm>
> > Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Signed-off-by: Dan Williams <dan.j.williams@intel.com>
>
> Acked-by: SeongJae Park <sjpark@amazon.de>
>
> > ---
> >  Documentation/process/coding-style.rst          |   12 ++++
> >  Documentation/process/inclusive-terminology.rst |   64 +++++++++++++++++++++++
> >  Documentation/process/index.rst                 |    1
> >  3 files changed, 77 insertions(+)
> >  create mode 100644 Documentation/process/inclusive-terminology.rst
> >
> > diff --git a/Documentation/process/coding-style.rst b/Documentation/process/coding-style.rst
> > index 2657a55c6f12..4b15ab671089 100644
> > --- a/Documentation/process/coding-style.rst
> > +++ b/Documentation/process/coding-style.rst
> > @@ -319,6 +319,18 @@ If you are afraid to mix up your local variable names, you have another
> >  problem, which is called the function-growth-hormone-imbalance syndrome.
> >  See chapter 6 (Functions).
> >
> > +For symbol names, avoid introducing new usage of the words 'slave' and
> > +'blacklist'. Recommended replacements for 'slave' are: 'secondary',
> > +'subordinate', 'replica', 'responder', 'follower', 'proxy', or
> > +'performer'.  Recommended replacements for blacklist are: 'blocklist' or
> > +'denylist'.
>
> I have submitted a couple of patches for automated encouragement of the the
> inclusive terms and those merged in the -next tree[1,2] now.  Nonetheless, the
> version says only "please consider using 'denylist' and 'allowlist' instead of
> 'blacklist' and 'whitelist'" for now.  I think we could add more terms in there
> based on this discussion.  I could do that after this patch is merged, or you
> could do that yourself in the next spin of this patch.  Please do whatever you
> feel comfort.
>
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=7d0bea01dec27195d95d929c1ee49a4a74dd6671
> [2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=95a94258ceb27052f00b7e51588a128d20bf05ed
>

Thank you for stepping up to take this on, much appreciated.

I think I'll leave it to you to fixup checkpatch after the final
version of this patch is merged. It may be as simple as "See section 4
'Naming' in coding-style for suggested replacements".
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
