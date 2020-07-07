Return-Path: <SRS0=9K8a=AS=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 647F0C433DF
	for <ksummit-discuss@archiver.kernel.org>; Tue,  7 Jul 2020 06:56:42 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2BF90206E9
	for <ksummit-discuss@archiver.kernel.org>; Tue,  7 Jul 2020 06:56:42 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amazon.com header.i=@amazon.com header.b="IvZZs+oI"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2BF90206E9
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=lists.linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EBDCC87E6E;
	Tue,  7 Jul 2020 06:56:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id husrfetobloU; Tue,  7 Jul 2020 06:56:40 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id CCEBE87E77;
	Tue,  7 Jul 2020 06:56:40 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 99110C0891;
	Tue,  7 Jul 2020 06:56:40 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3309EC016F;
 Tue,  7 Jul 2020 06:56:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1D2E187E77;
 Tue,  7 Jul 2020 06:56:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mkdJwTVSEdQq; Tue,  7 Jul 2020 06:56:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from smtp-fw-2101.amazon.com (smtp-fw-2101.amazon.com [72.21.196.25])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1F1D787E6E;
 Tue,  7 Jul 2020 06:56:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1594104998; x=1625640998;
 h=from:to:cc:subject:date:message-id:in-reply-to: mime-version;
 bh=dYTenh+4o/E5myW1JLq36hnqWz98bpD2JBziT4XX3pU=;
 b=IvZZs+oIH1+TZgJwSzApWIBttZxDEcfVbzlkDpTYZ2plK3au/qIlFZfX
 CaJL+ljtMNvJAyNaEC3b2jN6kA8AdN7Nm4gtVvD+DHwJn++DlsXZhOyre
 URh7AYbK+0zftN4oGG9BdhcAryOivfMnIxGYjTD9NDbThWuydKaigSOdt A=;
IronPort-SDR: 6J3coRccikdW1T9bSDb8H9lL3PtPOgswF22QI0fS3hcrC5A7Wn4q495t7lL19LXA0m8OpNz9kb
 fx29I08i9XKQ==
X-IronPort-AV: E=Sophos;i="5.75,321,1589241600"; d="scan'208";a="40386945"
Received: from iad12-co-svc-p1-lb1-vlan2.amazon.com (HELO
 email-inbound-relay-2a-6e2fc477.us-west-2.amazon.com) ([10.43.8.2])
 by smtp-border-fw-out-2101.iad2.amazon.com with ESMTP;
 07 Jul 2020 06:56:35 +0000
Received: from EX13MTAUEA002.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan2.pdx.amazon.com [10.170.41.162])
 by email-inbound-relay-2a-6e2fc477.us-west-2.amazon.com (Postfix) with ESMTPS
 id EC10DA1F51; Tue,  7 Jul 2020 06:56:34 +0000 (UTC)
Received: from EX13D31EUA004.ant.amazon.com (10.43.165.161) by
 EX13MTAUEA002.ant.amazon.com (10.43.61.77) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Tue, 7 Jul 2020 06:56:34 +0000
Received: from u886c93fd17d25d.ant.amazon.com (10.43.161.145) by
 EX13D31EUA004.ant.amazon.com (10.43.165.161) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Tue, 7 Jul 2020 06:56:30 +0000
To: Dan Williams <dan.j.williams@intel.com>
Date: Tue, 7 Jul 2020 08:56:12 +0200
Message-ID: <20200707065612.8239-1-sjpark@amazon.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 (raw)
MIME-Version: 1.0
X-Originating-IP: [10.43.161.145]
X-ClientProxiedBy: EX13D30UWC004.ant.amazon.com (10.43.162.4) To
 EX13D31EUA004.ant.amazon.com (10.43.165.161)
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
From: SeongJae Park via Ksummit-discuss
 <ksummit-discuss@lists.linuxfoundation.org>
Reply-To: SeongJae Park <sjpark@amazon.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

Hello,

On Sat, 04 Jul 2020 13:02:51 -0700 Dan Williams <dan.j.williams@intel.com> wrote:

> Recent events have prompted a Linux position statement on inclusive
> terminology. Given that Linux maintains a coding-style and its own
> idiomatic set of terminology here is a proposal to answer the call to
> replace non-inclusive terminology.

I'm glad to see this patch.

> 
> Cc: Jonathan Corbet <corbet@lwn.net>
> Cc: Kees Cook <keescook@chromium.org>
> Signed-off-by: Chris Mason <clm@fb.clm>
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Dan Williams <dan.j.williams@intel.com>

Acked-by: SeongJae Park <sjpark@amazon.de>

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

I have submitted a couple of patches for automated encouragement of the the
inclusive terms and those merged in the -next tree[1,2] now.  Nonetheless, the
version says only "please consider using 'denylist' and 'allowlist' instead of
'blacklist' and 'whitelist'" for now.  I think we could add more terms in there
based on this discussion.  I could do that after this patch is merged, or you
could do that yourself in the next spin of this patch.  Please do whatever you
feel comfort.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=7d0bea01dec27195d95d929c1ee49a4a74dd6671
[2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=95a94258ceb27052f00b7e51588a128d20bf05ed


Thanks,
SeongJae Park
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
