Return-Path: <SRS0=9K8a=AS=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.5 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1E902C433DF
	for <ksummit-discuss@archiver.kernel.org>; Tue,  7 Jul 2020 04:30:54 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E695220702
	for <ksummit-discuss@archiver.kernel.org>; Tue,  7 Jul 2020 04:30:53 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=intel-com.20150623.gappssmtp.com header.i=@intel-com.20150623.gappssmtp.com header.b="xeoov7gH"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E695220702
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=intel.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BBE9C85FAC;
	Tue,  7 Jul 2020 04:30:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zK3HDhw9pTbQ; Tue,  7 Jul 2020 04:30:51 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id CD9E38773E;
	Tue,  7 Jul 2020 04:30:51 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9ACB5C0891;
	Tue,  7 Jul 2020 04:30:51 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 03F8EC016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue,  7 Jul 2020 04:30:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DDC5F26A50
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue,  7 Jul 2020 04:30:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nMPJw1-wePWK
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue,  7 Jul 2020 04:30:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
 [209.85.208.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 84870255A6
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue,  7 Jul 2020 04:30:47 +0000 (UTC)
Received: by mail-ed1-f67.google.com with SMTP id g20so37045939edm.4
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 06 Jul 2020 21:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nY1NX73YQB7wCYaxOlNn70nzgryfZkuffDL7UW1FZgQ=;
 b=xeoov7gHbtBFjLh+CW8iWLYDcM6VlKJXt2qFs/sxcUcFTgfY7QVGCaTE/TXvZeeP7n
 1SPwK9XAaGZP3nbJgkvKVqhc2F3rrT6dL7C0t/tFwswq5DbKnL6q3B5fzKAhQueIFSfp
 6LGW9ykd7nBCOcOYrBlQ7IM9tAJ/2+/1i4l6AZk6FxC7L2yc0PJf0jhgw41CaVlxp9aH
 L/j4+A0TsDdubdUXYQwEAFd29Cb9uJ4PuWDPCdyD2JgaIXKY1HgjVGDntuN0RclkqEoO
 CHbbWeGTZZwQhMxhsWEDmUa4iCicAtcUbpqjhzOYf+jRIdBKqWdOeyCB1IZw6ABVEsgt
 o7eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nY1NX73YQB7wCYaxOlNn70nzgryfZkuffDL7UW1FZgQ=;
 b=edNQUH7SSmxIJg82OXpLnX8oBqMXE+df0/7iiMrQ6FRgOE6oId4pl3obFenZHrhHfC
 ndzqJ+AT1EpPhddqrgXaNeA8n5dOcmeWSO6FrZ86iH1Me+kjA+Q2mXjFpYo08oUz4N9K
 8ATXBz9mgtOQP/GTY/nd8rSTUPnoZ1fmgP+VW8FxL0p2Aif3kt8ZBbHOecftsbuL4bL1
 1kamIyB3JhkxPWF5fsXgjnUHV1JtCq0WJ5jhU5v3HTdtS8THTaqUC2k0ES4z1TPvWelN
 YEMAiMPQBP6Miz6gmPIOqS+qDeTudHB9HObwhs7j4k+RJGazZoMWkmwHZmrWwlSpOrHY
 ew2g==
X-Gm-Message-State: AOAM530fK4VNsLlNFqvU75rk13FxtUNpkFczuq5ClF95wr6qEAvVZScx
 wdL2h1U83lDePtzRhcRCJNmRCbzNal/it8tc3InuBQ==
X-Google-Smtp-Source: ABdhPJxP09vAntcEfZ47uc+HcE6HUVgrmDot8jw8/z6A6GHRRxVdKywscxgkHQrIMwJ+fmngkhyz12UTfumMb6N/GDQ=
X-Received: by 2002:a50:a1e7:: with SMTP id 94mr57877555edk.165.1594096245726; 
 Mon, 06 Jul 2020 21:30:45 -0700 (PDT)
MIME-Version: 1.0
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 <202007041703.51F4059CA@keescook>
In-Reply-To: <202007041703.51F4059CA@keescook>
From: Dan Williams <dan.j.williams@intel.com>
Date: Mon, 6 Jul 2020 21:30:32 -0700
Message-ID: <CAPcyv4jy6cKLNBhi9HCUP=f6GC4bM_iw_-U8o0uMrO8OX1SWTw@mail.gmail.com>
To: Kees Cook <keescook@chromium.org>
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

On Sat, Jul 4, 2020 at 5:41 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Sat, Jul 04, 2020 at 01:02:51PM -0700, Dan Williams wrote:
> > Recent events have prompted a Linux position statement on inclusive
> > terminology. Given that Linux maintains a coding-style and its own
> > idiomatic set of terminology here is a proposal to answer the call to
> > replace non-inclusive terminology.
> >
> > Cc: Jonathan Corbet <corbet@lwn.net>
> > Cc: Kees Cook <keescook@chromium.org>
> > Signed-off-by: Chris Mason <clm@fb.clm>
> > Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Signed-off-by: Dan Williams <dan.j.williams@intel.com>
>
> (nit: isn't this a Co-developed-by chain, not a SoB chain?)
>
> Acked-by: Kees Cook <keescook@chromium.org>
>
> Comments below...
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
> Keeping "master" in a "master/slave" pairing (i.e. replacing only
> "slave") seems incomplete to me. If "master" is paired with "slave", it
> should be replaced too. Potential examples: 'primary', 'leader', 'principle',
> 'controller', 'sender', 'initial'.

Yes, this matches Andy's feedback, will add.

> Similarly, for "whitelist/blacklist", "whitelist" needs to replaced when
> "blacklist" has been. For example, seccomp documentation[1] uses
> "allow-list" and "deny-list".
>
> [1] https://man7.org/linux/man-pages/man2/seccomp.2.html

Oh, good to know will make that change.

> > +Exceptions for introducing new usage is to maintain a userspace ABI, or
>
> and API?

True, yes, the intent was "don't break userspace" for terminology replacement.

>
> > +when updating code for an existing (as of 2020) hardware or protocol
> > +specification that mandates those terms. For new specifications consider
> > +translating specification usage of the terminology to the kernel coding
> > +standard where possible. See :ref:`process/inclusive-terminology.rst
> > +<inclusiveterminology>` for details.
>
> Let's add:
>
>  Where possible, old instances of this language should be replaced when
>  it is not tied to external specifications nor userspace ABI/API.

Sounds good to me.

>
> >
> >  5) Typedefs
> >  -----------
> > diff --git a/Documentation/process/inclusive-terminology.rst b/Documentation/process/inclusive-terminology.rst
> > new file mode 100644
> > index 000000000000..a8eb26690eb4
> > --- /dev/null
> > +++ b/Documentation/process/inclusive-terminology.rst
> > @@ -0,0 +1,64 @@
> > +.. _inclusiveterminology:
> > +
> > +Linux kernel inclusive terminology
> > +==================================
> > +
> > +The Linux kernel is a global software project, and in 2020 there was a
> > +global reckoning on race relations that caused many organizations to
> > +re-evaluate their policies and practices relative to the inclusion of
> > +people of African descent. This document describes why the 'Naming'
> > +section in :ref:`process/coding-style.rst <codingstyle>` recommends
> > +avoiding usage of 'slave' and 'blacklist' in new additions to the Linux
> > +kernel.
>
> ... usage of 'master/slave', 'slave', 'whitelist/blacklist', and
> 'blacklist' in the Linux kernel.

Yes, but as I'm reading this thread backwards I've already agreed to
just push the coding-style change in isolation.

>
> > +
> > +On the triviality of replacing words
> > +====================================
> > +
> > +The African slave trade was a brutal system of human misery deployed at
> > +global scale. Some word choice decisions in a modern software project
> > +does next to nothing to compensate for that legacy. So why put any
> > +effort into something so trivial in comparison? Because the goal is not
> > +to repair, or erase the past. The goal is to maximize availability and
> > +efficiency of the global developer community to participate in the Linux
> > +kernel development process.
> > +
> > +Word choice and developer efficiency
> > +====================================
> > +
> > +Why does any software project go through the trouble of developing a
> > +document like :ref:`process/coding-style.rst <codingstyle>`? It does so
> > +because a common coding style maximizes the efficiency of both
> > +maintainers and developers. Developers learn common design patterns and
> > +idiomatic expressions while maintainers can spot deviations from those
> > +norms. Even non-compliant whitespace is considered a leading indicator
> > +to deeper problems in a patchset. Coding style violations are known to
> > +take a maintainer "out of the zone" of reviewing code. Maintainers are
> > +also sensitive to word choice across specifications and often choose to
> > +deploy Linux terminology to replace non-idiomatic word-choice in a
> > +specification.
> > +
> > +Non-inclusive terminology has that same distracting effect which is why
> > +it is a style issue for Linux, it injures developer efficiency.
> > +
> > +Of course it is around this point someone jumps in with an etymological
> > +argument about why people should not be offended. Etymological arguments
> > +do not scale. The scope and pace of Linux to reach new developers
> > +exceeds the ability of historical terminology defenders to describe "no,
> > +not that connotation". The revelation of 2020 was that black voices were
> > +heard on a global scale and the Linux kernel project has done its small
> > +part to answer that call as it wants black voices, among all voices, in
> > +its developer community.
> > +
> > +Really, 'blacklist' too?
> > +========================
> > +
> > +While 'slave' has a direct connection to human suffering the etymology
> > +of 'blacklist' is devoid of a historical racial connection. However, one
> > +thought exercise is to consider replacing 'blacklist/whitelist' with
> > +'redlist/greenlist'. Realize that the replacement only makes sense if
> > +you have been socialized with the concepts that 'red/green' implies
> > +'stop/go'. Colors to represent a policy requires an indirection. The
> > +socialization of 'black/white' to have the connotation of
> > +'impermissible/permissible' does not support inclusion.
> > +
> > +Inclusion == global developer community efficiency.
>
> Let's add:
>
>  Beyond just Linux
>  =================
>
>  For those of us in the kernel community involved in specification
>  development or similar larger ecosystem conversations, please help
>  steer those discussions to avoid these terms in new specifications
>  or APIs.

I agree with this statement and am interested in getting connected to
those conversations, but this may be a bit too much advocacy to expect
in kernel documentation.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
