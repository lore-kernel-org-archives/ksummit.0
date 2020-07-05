Return-Path: <SRS0=5cql=AQ=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.5 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEEE5C433E0
	for <ksummit-discuss@archiver.kernel.org>; Sun,  5 Jul 2020 00:41:28 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 792E720885
	for <ksummit-discuss@archiver.kernel.org>; Sun,  5 Jul 2020 00:41:28 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="R/0LXiyo"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 792E720885
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1DCE48706C;
	Sun,  5 Jul 2020 00:41:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S_NbcB5ZB_j0; Sun,  5 Jul 2020 00:41:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 282CA86FCD;
	Sun,  5 Jul 2020 00:41:27 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EB1E3C0888;
	Sun,  5 Jul 2020 00:41:26 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CD51EC0733
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun,  5 Jul 2020 00:41:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B7A7487027
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun,  5 Jul 2020 00:41:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9Tuou2Gi8a6K
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun,  5 Jul 2020 00:41:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C8CDE86FCD
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun,  5 Jul 2020 00:41:24 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id gc9so8791348pjb.2
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sat, 04 Jul 2020 17:41:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=QbFiXrrIEyvT0l7kEooCW9inKSOU3LfnxtOYU9+rKpc=;
 b=R/0LXiyon5iW32zpBoiBvUT6KZjGXecOrCxDzP+nM0LcJLi+ceqmCRIKPRPHPY9Bec
 rsjNzYGrAnIkaBjaQ6zzgbS3cPLzyHOxmMvBumK3hilOB8CzbpvyP58gcWPSfI8geS+B
 EolHNrrfZliq2q5diX+E+gBZFHLewCSv/sYWY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=QbFiXrrIEyvT0l7kEooCW9inKSOU3LfnxtOYU9+rKpc=;
 b=KH5GXHc+XoznpvDaq+i358nv9nltB1DZh76Ya6S4mhYCMOqk2gYaYCKijSobyPQzY/
 C5qn+/0RR2hbIVTHnL5JmVhkEbsf7NB4tz/F4MiyWJEkE5YpAzYewoYTP4q3aLlPGylL
 2SLViyhuxpC8C4B3MVP0NwHuD/RG+ArVA5FgU5C7yF2ABy44u7XEdsHB3J16cI79Fk07
 2OtKiGgp/GAbbTthzjRqHB6GtmoozQ2GLCvSKuudn5JpZqcAnIza6QMXng6bE0GIDyta
 Jl0jcMeTmMzTys99EASye32l6gTOWgfm679PuSeWQe5KVFP393PoSNV8K8mZM+DYCCMU
 /qxg==
X-Gm-Message-State: AOAM5331UAn0lQyYs+XAW2wPIOQE6cGXQo86Cv6AjSOyapWdAIP8XXZC
 XP6qU9HVuyVDhEH8R69xRCKf/w==
X-Google-Smtp-Source: ABdhPJw+SIuINDri1NDMi5D0Z1z9ASnH5tdB1fzwC8CA2Ht8Fh8zrjBqQRln5he/ExMdVYRFb6O30w==
X-Received: by 2002:a17:90a:cf01:: with SMTP id
 h1mr45199854pju.234.1593909684251; 
 Sat, 04 Jul 2020 17:41:24 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id x22sm15623429pfr.11.2020.07.04.17.41.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Jul 2020 17:41:23 -0700 (PDT)
Date: Sat, 4 Jul 2020 17:41:22 -0700
From: Kees Cook <keescook@chromium.org>
To: Dan Williams <dan.j.williams@intel.com>
Message-ID: <202007041703.51F4059CA@keescook>
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
Cc: ksummit-discuss@lists.linuxfoundation.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
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

On Sat, Jul 04, 2020 at 01:02:51PM -0700, Dan Williams wrote:
> Recent events have prompted a Linux position statement on inclusive
> terminology. Given that Linux maintains a coding-style and its own
> idiomatic set of terminology here is a proposal to answer the call to
> replace non-inclusive terminology.
> 
> Cc: Jonathan Corbet <corbet@lwn.net>
> Cc: Kees Cook <keescook@chromium.org>
> Signed-off-by: Chris Mason <clm@fb.clm>
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Dan Williams <dan.j.williams@intel.com>

(nit: isn't this a Co-developed-by chain, not a SoB chain?)

Acked-by: Kees Cook <keescook@chromium.org>

Comments below...

> ---
>  Documentation/process/coding-style.rst          |   12 ++++
>  Documentation/process/inclusive-terminology.rst |   64 +++++++++++++++++++++++
>  Documentation/process/index.rst                 |    1 
>  3 files changed, 77 insertions(+)
>  create mode 100644 Documentation/process/inclusive-terminology.rst
> 
> diff --git a/Documentation/process/coding-style.rst b/Documentation/process/coding-style.rst
> index 2657a55c6f12..4b15ab671089 100644
> --- a/Documentation/process/coding-style.rst
> +++ b/Documentation/process/coding-style.rst
> @@ -319,6 +319,18 @@ If you are afraid to mix up your local variable names, you have another
>  problem, which is called the function-growth-hormone-imbalance syndrome.
>  See chapter 6 (Functions).
>  
> +For symbol names, avoid introducing new usage of the words 'slave' and
> +'blacklist'. Recommended replacements for 'slave' are: 'secondary',
> +'subordinate', 'replica', 'responder', 'follower', 'proxy', or
> +'performer'.  Recommended replacements for blacklist are: 'blocklist' or
> +'denylist'.

Keeping "master" in a "master/slave" pairing (i.e. replacing only
"slave") seems incomplete to me. If "master" is paired with "slave", it
should be replaced too. Potential examples: 'primary', 'leader', 'principle',
'controller', 'sender', 'initial'.

Similarly, for "whitelist/blacklist", "whitelist" needs to replaced when
"blacklist" has been. For example, seccomp documentation[1] uses
"allow-list" and "deny-list".

[1] https://man7.org/linux/man-pages/man2/seccomp.2.html

> +Exceptions for introducing new usage is to maintain a userspace ABI, or

and API?

> +when updating code for an existing (as of 2020) hardware or protocol
> +specification that mandates those terms. For new specifications consider
> +translating specification usage of the terminology to the kernel coding
> +standard where possible. See :ref:`process/inclusive-terminology.rst
> +<inclusiveterminology>` for details.

Let's add:

 Where possible, old instances of this language should be replaced when
 it is not tied to external specifications nor userspace ABI/API.

>  
>  5) Typedefs
>  -----------
> diff --git a/Documentation/process/inclusive-terminology.rst b/Documentation/process/inclusive-terminology.rst
> new file mode 100644
> index 000000000000..a8eb26690eb4
> --- /dev/null
> +++ b/Documentation/process/inclusive-terminology.rst
> @@ -0,0 +1,64 @@
> +.. _inclusiveterminology:
> +
> +Linux kernel inclusive terminology
> +==================================
> +
> +The Linux kernel is a global software project, and in 2020 there was a
> +global reckoning on race relations that caused many organizations to
> +re-evaluate their policies and practices relative to the inclusion of
> +people of African descent. This document describes why the 'Naming'
> +section in :ref:`process/coding-style.rst <codingstyle>` recommends
> +avoiding usage of 'slave' and 'blacklist' in new additions to the Linux
> +kernel.

... usage of 'master/slave', 'slave', 'whitelist/blacklist', and
'blacklist' in the Linux kernel.

> +
> +On the triviality of replacing words
> +====================================
> +
> +The African slave trade was a brutal system of human misery deployed at
> +global scale. Some word choice decisions in a modern software project
> +does next to nothing to compensate for that legacy. So why put any
> +effort into something so trivial in comparison? Because the goal is not
> +to repair, or erase the past. The goal is to maximize availability and
> +efficiency of the global developer community to participate in the Linux
> +kernel development process.
> +
> +Word choice and developer efficiency
> +====================================
> +
> +Why does any software project go through the trouble of developing a
> +document like :ref:`process/coding-style.rst <codingstyle>`? It does so
> +because a common coding style maximizes the efficiency of both
> +maintainers and developers. Developers learn common design patterns and
> +idiomatic expressions while maintainers can spot deviations from those
> +norms. Even non-compliant whitespace is considered a leading indicator
> +to deeper problems in a patchset. Coding style violations are known to
> +take a maintainer "out of the zone" of reviewing code. Maintainers are
> +also sensitive to word choice across specifications and often choose to
> +deploy Linux terminology to replace non-idiomatic word-choice in a
> +specification.
> +
> +Non-inclusive terminology has that same distracting effect which is why
> +it is a style issue for Linux, it injures developer efficiency.
> +
> +Of course it is around this point someone jumps in with an etymological
> +argument about why people should not be offended. Etymological arguments
> +do not scale. The scope and pace of Linux to reach new developers
> +exceeds the ability of historical terminology defenders to describe "no,
> +not that connotation". The revelation of 2020 was that black voices were
> +heard on a global scale and the Linux kernel project has done its small
> +part to answer that call as it wants black voices, among all voices, in
> +its developer community.
> +
> +Really, 'blacklist' too?
> +========================
> +
> +While 'slave' has a direct connection to human suffering the etymology
> +of 'blacklist' is devoid of a historical racial connection. However, one
> +thought exercise is to consider replacing 'blacklist/whitelist' with
> +'redlist/greenlist'. Realize that the replacement only makes sense if
> +you have been socialized with the concepts that 'red/green' implies
> +'stop/go'. Colors to represent a policy requires an indirection. The
> +socialization of 'black/white' to have the connotation of
> +'impermissible/permissible' does not support inclusion.
> +
> +Inclusion == global developer community efficiency.

Let's add:

 Beyond just Linux
 =================

 For those of us in the kernel community involved in specification
 development or similar larger ecosystem conversations, please help
 steer those discussions to avoid these terms in new specifications
 or APIs.


> diff --git a/Documentation/process/index.rst b/Documentation/process/index.rst
> index f07c9250c3ac..ed861f6f8d25 100644
> --- a/Documentation/process/index.rst
> +++ b/Documentation/process/index.rst
> @@ -27,6 +27,7 @@ Below are the essential guides that every developer should read.
>     submitting-patches
>     programming-language
>     coding-style
> +   inclusive-terminology
>     maintainer-pgp-guide
>     email-clients
>     kernel-enforcement-statement
> 

-- 
Kees Cook
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
