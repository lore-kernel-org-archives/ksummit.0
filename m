Return-Path: <SRS0=WQW7=BF=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.6 required=3.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 30762C433E3
	for <ksummit-discuss@archiver.kernel.org>; Sun, 26 Jul 2020 15:31:16 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0285520714
	for <ksummit-discuss@archiver.kernel.org>; Sun, 26 Jul 2020 15:31:15 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="LenBQdlB"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0285520714
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AE4F320526;
	Sun, 26 Jul 2020 15:31:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rYqZEobH85VI; Sun, 26 Jul 2020 15:31:12 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id D230D20336;
	Sun, 26 Jul 2020 15:31:11 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9BD80C004F;
	Sun, 26 Jul 2020 15:31:11 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 148FCC004D;
 Sun, 26 Jul 2020 15:31:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EFC1E86055;
 Sun, 26 Jul 2020 15:31:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GmUI2xmjQtmi; Sun, 26 Jul 2020 15:31:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [213.167.242.64])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2EE6A85F51;
 Sun, 26 Jul 2020 15:31:08 +0000 (UTC)
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id C3734304;
 Sun, 26 Jul 2020 17:31:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1595777461;
 bh=oyQAELgW6klCSGBuOr1AJ3GfNkjzCnTc0DUFvMoWBMY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LenBQdlBe05DVLP1xeshTIGdl2GdKYFqLJeYF4CnKNGQvQYTKT21rgFxHmou6khqQ
 EYjUyEn9YlfpnJPf7xhLBOxc10Ee63qu4sFKbH4eDia7dmqbkI/uwxz/OpuPcj2Nf2
 53tvqXKiyKP+jdq+cisgvXQQwd/5ll6IpEF3+pR0=
Date: Sun, 26 Jul 2020 18:30:54 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dan Williams <dan.j.williams@intel.com>
Message-ID: <20200726153054.GA5925@pendragon.ideasonboard.com>
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
Cc: ksummit-discuss@lists.linuxfoundation.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 tech-board-discuss@lists.linuxfoundation.org
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

Hi Dan, and everybody,

Thank you for the patch.

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
> +
> +Exceptions for introducing new usage is to maintain a userspace ABI, or
> +when updating code for an existing (as of 2020) hardware or protocol
> +specification that mandates those terms. For new specifications consider
> +translating specification usage of the terminology to the kernel coding
> +standard where possible. See :ref:`process/inclusive-terminology.rst
> +<inclusiveterminology>` for details.
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

I've been pondering about this statement for several weeks now, sleeping
over it for far longer than I usually do. Despite this, I haven't been
able to shake off my initial feeling. Hence this reply.

This e-mail isn't challenging the proposed change to the kernel coding
style policy. That's a question that I believe has been widely discussed
behind closed doors, with also a few attempts to debate it publicly in
this mail thread. While that process causes me concern, that's a
separate topic, and I'm not questioning here the usefulness or
desirability of the change. I strongly believe in a welcoming and
inclusive kernel community, and in the need to translate these words
into actions.

The part that initially offended me is the claim that with this change
the "Linux kernel project has done its small part". I can't help feeling
this sounds hypocritical at best, and cynical at worst. Can we, as the
Linux kernel community, claim that taking this small and symbolic first
step would be enough ? I won't try to speak about the impact this coding
style policy change could have on people who today feel discriminated by
our practices, but I can only imagine that stating we "will have done
our part" could infuriate more than one, the same way I feel insulting
that companies raise rainbow flags during Pride week as a means of cheap
advertising.

Do we feel enough discomfort about our own racism to be compelled to
express public sympathy, but nowhere close enough to go further ? I feel
this would be fairly shameless, considering our community collaborates
with large companies that refuse to condemn hate speech. I don't know if
I'm the only one to see an elephant in the room here, but I think we
need to have a real debate about all the other actions we can take to
make a bigger difference.

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

-- 
Regards,

Laurent Pinchart
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
