Return-Path: <SRS0=QNS2=FH=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=3.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F22C4361A
	for <ksummit-discuss@archiver.kernel.org>; Thu,  3 Dec 2020 21:13:56 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BE82822203
	for <ksummit-discuss@archiver.kernel.org>; Thu,  3 Dec 2020 21:13:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BE82822203
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=HansenPartnership.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B413F877C3;
	Thu,  3 Dec 2020 21:13:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kGS9zeuObIxw; Thu,  3 Dec 2020 21:13:53 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 77065877B2;
	Thu,  3 Dec 2020 21:13:53 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4E613C163C;
	Thu,  3 Dec 2020 21:13:53 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E563AC0FA7
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  3 Dec 2020 21:13:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B5E632E3E1
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  3 Dec 2020 21:13:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EM86htUuXYrE
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  3 Dec 2020 21:13:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
 [96.44.175.130])
 by silver.osuosl.org (Postfix) with ESMTPS id B9D502E3E0
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  3 Dec 2020 21:13:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by bedivere.hansenpartnership.com (Postfix) with ESMTP id 2055F1280149;
 Thu,  3 Dec 2020 13:13:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=hansenpartnership.com; s=20151216; t=1607030029;
 bh=L7wKeBxFaqVMypXVymA48jylQHHP9KGfRKaiDCFxNyA=;
 h=Message-ID:Subject:From:To:Date:In-Reply-To:References:From;
 b=DlJLRTrJX7p7a8EbMc9kQl6ZrgQOfUSMm1tjpEiTn8qqToJfHWoMMernbgbt+DSmw
 w+YIJeIoao9av6Hs00mRG5hRZnYp9f7H+olaqkyX/T+WfEsLiNAA1sRs9kTWLnrZuk
 bRtZRKYezMrgEie/nDHW5QJLJ/+EQQ9me8Ui5LZI=
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
 by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id DYAL0TalDeXu; Thu,  3 Dec 2020 13:13:49 -0800 (PST)
Received: from jarvis.int.hansenpartnership.com (unknown
 [IPv6:2601:600:8280:66d1::527])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id A10FC1280121;
 Thu,  3 Dec 2020 13:13:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=hansenpartnership.com; s=20151216; t=1607030028;
 bh=L7wKeBxFaqVMypXVymA48jylQHHP9KGfRKaiDCFxNyA=;
 h=Message-ID:Subject:From:To:Date:In-Reply-To:References:From;
 b=nz+QAcRzoV6w2gITh66g+io0oXU3sOPlJoY1/+70WZe5DEJpbFmU0o5Hwg8dgHou4
 1EB4Yr8oHM3pCAyX8JBn8HpNwfZMhDaNkpQl3ycYxo1Up3NIbTYFvKcmlNs7+c7czd
 8RRgZK5DgumtFG/SjYDC7MQsA8XhJwplqDFffwRo=
Message-ID: <4b973b02352860978331eef110bae69e0d576adf.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>, Joe Perches
 <joe@perches.com>
Date: Thu, 03 Dec 2020 13:13:47 -0800
In-Reply-To: <20201203191731.bpzvwqfldhcjhzfy@chatter.i7.local>
References: <ea32eb02-5e44-0469-772b-34b5cb882543@suse.cz>
 <694039d6e386d999fd74d038cf2627f5b3b0ca71.camel@HansenPartnership.com>
 <3c11134905f06185dda4e9125f2fb7fd30fff979.camel@perches.com>
 <20201203191731.bpzvwqfldhcjhzfy@chatter.i7.local>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
Cc: Vlastimil Babka <vbabka@suse.cz>,
 "ksummit-discuss@lists.linuxfoundation.org"
 <ksummit-discuss@lists.linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] crediting bug reports and fixes folded into
 original patch
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

On Thu, 2020-12-03 at 14:17 -0500, Konstantin Ryabitsev wrote:
> On Thu, Dec 03, 2020 at 08:55:54AM -0800, Joe Perches wrote:
> > Perhaps automate a mechanism to capture that information as
> > git notes for the patches when applied.
> 
> Git notes have a limited usefulness for this -- they are indeed part
> of the repository, but they aren't replicated unless someone does a 
> --mirror clone (or specifically fetches refs/notes/*). If the goal is
> to improve visibility for contributors, then putting this info into a
> git note will hardly make more difference than providing a Link: that
> someone has to follow to a list archival service. 
> 
> I can offer the following proposal:
> 
> - kernel.org already monitors all mailing lists that are archived on 
>   lore.kernel.org for the purposes of pull request tracking 
>   (pr-tracker-bot).
> - in the near future, we will add a separate process that will 
>   auto-explode all pull requests into individual patches and add them
>   to a separate public-inbox archive (think of it as another 
>   transparency log, since pull requests are transient and opaque).
> 
> We can additionally:
> 
> - identify all Link: and Message-Id: entries in commit messages, 
>   retrieve the threads they refer to, and archive them as part of

>   the same (or adjacent) transparency log.
> 
> This offers an improvement over the status quo, because if 
> lore.kernel.org becomes unavailable, someone would have to have
> access to all backend archive repositories it is currently tracking
> in order to be able to reconstitute relevant conversations -- whereas
> with this change, it should be sufficient to just have the copy of
> the  transparency log to have a fully self-contained high-relevancy
> archive of both individual commits and conversations that happened
> around them.

I don't think this is strictly necessary because there's more than lore
that archive's our lists, but the people at the internet history
project would remind me not to look a gift horse in the mouth, so I
think this would certainly be a useful addition.

The thing which Link: doesn't necessarily track is iterations, so if
you replied to v2 and your feedback got incorporated, there's a v3
iteration which has a different msgid.  Is there a way of getting this
full history, not just the current thread?

> I'm just not sure if this will help with the subject of the 
> conversation, or if it does not serve the goal of recognizing
> developer contributions by making them more visible.

I added Jon to the cc since a lot of managers (community or otherwise)
do use the lwn.net stats as a performance guide.  The real question is
could we get something measurable out of the data?  say number of
replies to an accepted patch counting in the reviewer stats or
something?

James


_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
