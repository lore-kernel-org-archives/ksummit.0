Return-Path: <SRS0=TU90=AU=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.5 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75A99C433E1
	for <ksummit-discuss@archiver.kernel.org>; Thu,  9 Jul 2020 07:25:36 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4107420720
	for <ksummit-discuss@archiver.kernel.org>; Thu,  9 Jul 2020 07:25:36 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=ffwll.ch header.i=@ffwll.ch header.b="F0rG8coo"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4107420720
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ffwll.ch
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 108A9895CE;
	Thu,  9 Jul 2020 07:25:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RYq0jdKVwFmY; Thu,  9 Jul 2020 07:25:35 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3B68688A29;
	Thu,  9 Jul 2020 07:25:35 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 06DCEC077B;
	Thu,  9 Jul 2020 07:25:35 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A1060C016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  9 Jul 2020 07:25:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 89A0D895AE
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  9 Jul 2020 07:25:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0KM9kbf3Nhhq
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  9 Jul 2020 07:25:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A032288A29
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  9 Jul 2020 07:25:31 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id h1so999565otq.12
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 09 Jul 2020 00:25:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Pag+RcEqQEamOjfbOEguYU2pFk2Ny9rxa5wKpcW4W0g=;
 b=F0rG8cooNYI+AtqjAzaVgiBMKgGIwFKGt3eV86gNAcJE5PGpK8mcqdaZ6bCEyFrGiQ
 1UyqqbcTs0YYt4yzktkNusLxF750IWBKUaVdQ3/PVEwqwPjtB/RE3A4fj7bV3CbXazld
 r94M5mu53hV9sOXDj7QKaxV9RKyhomECStcG4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Pag+RcEqQEamOjfbOEguYU2pFk2Ny9rxa5wKpcW4W0g=;
 b=kjSM0gz/nLe7oiksIDLPXWV+l0mUAVWgOcwu3WzFcsb/R5Q5rcGFNYN2RE51YF0xBJ
 z9NnOqoF/ipiTT/qqJv63DBr6pLlo273ChA7IsvzVHgb51oB4RSIGkqZvUJXH1lQqWSp
 AGsghGLe1ohbbEffFEGjGRPurPp1DnEpJfn0FV9WK7TUNKHo7fTXk2SeTCBeluoP4fTj
 7GxsxTrJbHAKYnuJJhWVm3w4/p+Ja4kDEUgv+MxQjPbf0nmIA35HyBilXQ4Bpov2p8OT
 nHUwQPmkgZbu500xWqt8U8C2rAnCKnHf+ucqYCeMDQD/U7ndPiVgyeTvjRqGILc7dCm4
 oPtg==
X-Gm-Message-State: AOAM533+hjsRd576QTikJw2CO6P9onHvUj4LENrlkp07RHMLa0JvfK/5
 FuHG2uIgugyfhZnG0FGtNdBZOxRXgBIZp05iMI8NlA==
X-Google-Smtp-Source: ABdhPJxSzSQRWs2P88SyaSpqBzsbq4KX4iqq22DX5CfdfEZl5KM4nNt9yjQRtppW60x06rUB9yIpnJKfDE7wFZpZG9I=
X-Received: by 2002:a05:6830:1613:: with SMTP id
 g19mr39306609otr.303.1594279530544; 
 Thu, 09 Jul 2020 00:25:30 -0700 (PDT)
MIME-Version: 1.0
References: <159423201991.2466245.8461410729774664077.stgit@dwillia2-desk3.amr.corp.intel.com>
In-Reply-To: <159423201991.2466245.8461410729774664077.stgit@dwillia2-desk3.amr.corp.intel.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 9 Jul 2020 09:25:19 +0200
Message-ID: <CAKMK7uHuOD4v9ZU0d5THBhdD=97xO--N8bWd3+Na38vsHKO5Zg@mail.gmail.com>
To: Dan Williams <dan.j.williams@intel.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 SeongJae Park <sjpark@amazon.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 tech-board-discuss@lists.linuxfoundation.org,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 Dave Airlie <airlied@redhat.com>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [PATCH v3] CodingStyle: Inclusive Terminology
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

On Wed, Jul 8, 2020 at 8:30 PM Dan Williams <dan.j.williams@intel.com> wrote:
>
> Linux maintains a coding-style and its own idiomatic set of terminology.
> Update the style guidelines to recommend replacements for the terms
> master/slave and blacklist/whitelist.
>
> Link: http://lore.kernel.org/r/159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com
> Acked-by: Randy Dunlap <rdunlap@infradead.org>
> Acked-by: Dave Airlie <airlied@redhat.com>
> Acked-by: SeongJae Park <sjpark@amazon.de>
> Acked-by: Christian Brauner <christian.brauner@ubuntu.com>
> Acked-by: James Bottomley <James.Bottomley@HansenPartnership.com>
> Reviewed-by: Mark Brown <broonie@kernel.org>
> Signed-off-by: Theodore Ts'o <tytso@mit.edu>
> Signed-off-by: Shuah Khan <skhan@linuxfoundation.org>
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: Kees Cook <keescook@chromium.org>
> Signed-off-by: Olof Johansson <olof@lixom.net>
> Signed-off-by: Jonathan Corbet <corbet@lwn.net>
> Signed-off-by: Chris Mason <clm@fb.com>
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Dan Williams <dan.j.williams@intel.com>

Replied to the old version, once more here so it's not lost.

Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
> Changes since v2 [1]:
> - Pick up missed sign-offs and acks from Jon, Shuah, and Christian
>   (sorry about missing those earlier).
>
> - Reformat the replacement list to make it easier to read.
>
> - Add 'controller' as a suggested replacement (Kees and Mark)
>
> - Fix up the paired term for 'performer' to be 'director' (Kees)
>
> - Collect some new acks, reviewed-by's, and sign-offs for v2.
>
> - Fix up Chris's email
>
> [1]: http://lore.kernel.org/r/159419296487.2464622.863943877093636532.stgit@dwillia2-desk3.amr.corp.intel.com
>
>
>  Documentation/process/coding-style.rst |   20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
>
> diff --git a/Documentation/process/coding-style.rst b/Documentation/process/coding-style.rst
> index 2657a55c6f12..1bee6f8affdb 100644
> --- a/Documentation/process/coding-style.rst
> +++ b/Documentation/process/coding-style.rst
> @@ -319,6 +319,26 @@ If you are afraid to mix up your local variable names, you have another
>  problem, which is called the function-growth-hormone-imbalance syndrome.
>  See chapter 6 (Functions).
>
> +For symbol names and documentation, avoid introducing new usage of
> +'master / slave' (or 'slave' independent of 'master') and 'blacklist /
> +whitelist'.
> +
> +Recommended replacements for 'master / slave' are:
> +    '{primary,main} / {secondary,replica,subordinate}'
> +    '{initiator,requester} / {target,responder}'
> +    '{controller,host} / {device,worker,proxy}'
> +    'leader / follower'
> +    'director / performer'
> +
> +Recommended replacements for 'blacklist/whitelist' are:
> +    'denylist / allowlist'
> +    'blocklist / passlist'
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
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
