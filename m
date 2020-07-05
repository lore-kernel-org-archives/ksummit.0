Return-Path: <SRS0=iFvq=AR=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0B827C433DF
	for <ksummit-discuss@archiver.kernel.org>; Mon,  6 Jul 2020 13:55:42 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BE9FC20715
	for <ksummit-discuss@archiver.kernel.org>; Mon,  6 Jul 2020 13:55:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BE9FC20715
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=1wt.eu
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AE85225F3F;
	Mon,  6 Jul 2020 13:55:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eLjKqeCJOu1F; Mon,  6 Jul 2020 13:55:35 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 91C7725DBB;
	Mon,  6 Jul 2020 13:55:35 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5F385C0893;
	Mon,  6 Jul 2020 13:55:35 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E66C4C016F;
 Sun,  5 Jul 2020 05:08:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CA00E20386;
 Sun,  5 Jul 2020 05:08:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rDgKhCFlwU79; Sun,  5 Jul 2020 05:08:07 +0000 (UTC)
X-Greylist: delayed 00:12:49 by SQLgrey-1.7.6
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from 1wt.eu (wtarreau.pck.nerim.net [62.212.114.60])
 by silver.osuosl.org (Postfix) with ESMTP id EBB042037E;
 Sun,  5 Jul 2020 05:08:06 +0000 (UTC)
Received: (from willy@localhost)
 by pcw.home.local (8.15.2/8.15.2/Submit) id 0654t5TB003005;
 Sun, 5 Jul 2020 06:55:05 +0200
Date: Sun, 5 Jul 2020 06:55:05 +0200
From: Willy Tarreau <w@1wt.eu>
To: Dan Williams <dan.j.williams@intel.com>
Message-ID: <20200705045505.GA2962@1wt.eu>
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
User-Agent: Mutt/1.6.1 (2016-04-27)
X-Mailman-Approved-At: Mon, 06 Jul 2020 13:55:33 +0000
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
> +Non-inclusive terminology has that same distracting effect which is why
> +it is a style issue for Linux, it injures developer efficiency.

I'm personally thinking that for a non-native speaker it's already
difficult to find the best term to describe something, but having to
apply an extra level of filtering on the found words to figure whether
they are allowed by the language police is even more difficult. *This*
injures developers efficiency. What could improve developers efficiency
is to take care of removing *all* idiomatic or cultural words then. For
example I've been participating to projects using the term "blueprint",
I didn't understand what that meant. It was once explained to me and
given that it had no logical reason for being called this way, I now
forgot. If we follow your reasoning, Such words should be banned for
exactly the same reasons. Same for colors that probably don't mean
anything to those born blind.

For example if in my local culture we eat tomatoes at starters and
apples for dessert, it could be convenient for me to use "tomato" and
"apple" as list elements to name the pointers leading to the beginning
and the end of the list, and it might sound obvious to many people, but
not at all for many others.

Maybe instead of providing an explicit list of a few words it should
simply say that terms that take their roots in the non-technical world
and whose meaning can only be understood based on history or local
culture ought to be avoided, because *that* actually is the real
root cause of the problem you're trying to address.

Willy
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
