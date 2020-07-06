Return-Path: <SRS0=iFvq=AR=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.0 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04103C433E0
	for <ksummit-discuss@archiver.kernel.org>; Mon,  6 Jul 2020 18:30:57 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CE07E20663
	for <ksummit-discuss@archiver.kernel.org>; Mon,  6 Jul 2020 18:30:56 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="DLzht/w1"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CE07E20663
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7F25088BC1;
	Mon,  6 Jul 2020 18:30:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4eCTxoyxQbs0; Mon,  6 Jul 2020 18:30:54 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id C4D4B88BA1;
	Mon,  6 Jul 2020 18:30:54 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 94C2BC0891;
	Mon,  6 Jul 2020 18:30:54 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5D33AC016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon,  6 Jul 2020 18:30:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 43AFA262F9
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon,  6 Jul 2020 18:30:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OpOgnc5Ko5KJ
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon,  6 Jul 2020 18:30:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
 [209.85.167.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 04356262E0
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon,  6 Jul 2020 18:30:50 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id y22so20176212oie.8
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 06 Jul 2020 11:30:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=zyWuy0yCyk2eYRG01JT39tEAlo/ud2i6BiJNX7W6VIc=;
 b=DLzht/w1xCkzqQ4MWqV+jtGW5819nHrOl/TS2g7axVbUrMBMtfxHy7hPWH1VaoUHUv
 XZPa70k8YfWCVhbNOEVvP/6kHXhMAi3eGkeQ+psnl0r2i8ZiFhVv3n1fRbpXFvIhKwpw
 cWHf1Bu0mZRzULi3hfujcYzBM6NjG3g8LlYX4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=zyWuy0yCyk2eYRG01JT39tEAlo/ud2i6BiJNX7W6VIc=;
 b=YTyfMuOl2wd5bMXqUCazytr0PYg83tMIXCAnYQ/iWuge8BAY/c8kF2p9XZ0H1bTpSW
 X2AIw25mQJFPhzwSBRSOpKszmWmPm/XUZQb0Rn+JIZmU7FqO86iRwfwoZ48A/76Hr2sp
 GeUUMzokuNK7oKO7U2rxRecBMJKEFwnXr9phS1bfYrTWusUEGktfxwXSZ7RYa9IJxPf1
 BTNrTA88Nh7lRRfxshhGGX8i07qt9mqzkwY92AX6e3wPZqrc5OucLpT/N4QUucbUmBrQ
 38+Uj9fS9hbD+AZsOwUIXL7mhZUBeATlwSsT4lwcVTdrSEIC9qIMpYUFEQmqrgKzrpFV
 efpw==
X-Gm-Message-State: AOAM533s4Xueh1mp6x6r9ygEZQ5AFDWX9xWLrJSfC2Qs2dItWv501iGk
 KYDMA4GseM766Ordbj+/GW9PWJcs
X-Google-Smtp-Source: ABdhPJzReg/+v4QKKp/nrQpjzfo0uxzViggH2J2UiVO5G4gNOcXlE2ggzO5VaaSZlc6Oyz93CbYrDQ==
X-Received: by 2002:aca:54d3:: with SMTP id i202mr479237oib.170.1594060249860; 
 Mon, 06 Jul 2020 11:30:49 -0700 (PDT)
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id t187sm5224957oib.45.2020.07.06.11.30.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Jul 2020 11:30:49 -0700 (PDT)
To: Dan Williams <dan.j.williams@intel.com>, torvalds@linux-foundation.org
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <79214066-3886-e0ef-f26e-8cb3d53404be@linuxfoundation.org>
Date: Mon, 6 Jul 2020 12:30:48 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
Content-Language: en-US
Cc: ksummit-discuss@lists.linuxfoundation.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 tech-board-discuss@lists.linuxfoundation.org, Chris Mason <clm@fb.clm>
Subject: Re: [Ksummit-discuss] [Tech-board-discuss] [PATCH] CodingStyle:
	Inclusive Terminology
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

On 7/4/20 2:02 PM, Dan Williams wrote:
> Recent events have prompted a Linux position statement on inclusive
> terminology. Given that Linux maintains a coding-style and its own
> idiomatic set of terminology here is a proposal to answer the call to
> replace non-inclusive terminology.
> 

Hi Dan,

Thanks for taking the time to work on this patch and updating the
coding-style.rst with the with inclusive terminology guidelines and
adding a new document outlining the scope.

The suggestions you made will help us adapt inclusive terminology
for the current times, and also help us move toward terms that are
intuitive and easier to understand keeping our global developer
community in mind.

Allowlist/denylist terms are intuitive and action based which have a
globally uniform meaning.

Terms such as "whitelist" etc are contextual, hence assume contextual
knowledge on the part of the reader.

A couple comments below:

> Cc: Jonathan Corbet <corbet@lwn.net>
> Cc: Kees Cook <keescook@chromium.org>
> Signed-off-by: Chris Mason <clm@fb.clm>
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Dan Williams <dan.j.williams@intel.com>
> ---
>   Documentation/process/coding-style.rst          |   12 ++++
>   Documentation/process/inclusive-terminology.rst |   64 +++++++++++++++++++++++
>   Documentation/process/index.rst                 |    1
>   3 files changed, 77 insertions(+)
>   create mode 100644 Documentation/process/inclusive-terminology.rst
> 
> diff --git a/Documentation/process/coding-style.rst b/Documentation/process/coding-style.rst
> index 2657a55c6f12..4b15ab671089 100644
> --- a/Documentation/process/coding-style.rst
> +++ b/Documentation/process/coding-style.rst
> @@ -319,6 +319,18 @@ If you are afraid to mix up your local variable names, you have another
>   problem, which is called the function-growth-hormone-imbalance syndrome.
>   See chapter 6 (Functions).
>   
> +For symbol names, avoid introducing new usage of the words 'slave' and
> +'blacklist'. Recommended replacements for 'slave' are: 'secondary',
> +'subordinate', 'replica', 'responder', 'follower', 'proxy', or
> +'performer'.  Recommended replacements for blacklist are: 'blocklist' or
> +'denylist'.

allowlist and blocklist or denylist are lot more intuitive than
white/black in any case.

> +
> +Exceptions for introducing new usage is to maintain a userspace ABI, or
> +when updating code for an existing (as of 2020) hardware or protocol
> +specification that mandates those terms. For new specifications consider
> +translating specification usage of the terminology to the kernel coding
> +standard where possible. See :ref:`process/inclusive-terminology.rst
> +<inclusiveterminology>` for details.
>   
>   5) Typedefs
>   -----------
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

allowlist/denylist makes the most sense than using colors.

> +
> +Inclusion == global developer community efficiency.
> diff --git a/Documentation/process/index.rst b/Documentation/process/index.rst
> index f07c9250c3ac..ed861f6f8d25 100644
> --- a/Documentation/process/index.rst
> +++ b/Documentation/process/index.rst
> @@ -27,6 +27,7 @@ Below are the essential guides that every developer should read.
>      submitting-patches
>      programming-language
>      coding-style
> +   inclusive-terminology
>      maintainer-pgp-guide
>      email-clients
>      kernel-enforcement-statement
> 

Please add my Signed-off-by: Shuah Khan <skhan@linuxfoundation.org>
or Acked-by: Shuah Khan <skhan@linuxfoundation.org>

thanks,
-- Shuah

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
