Return-Path: <SRS0=ZpVE=IU=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=3.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6327C433C1
	for <ksummit-discuss@archiver.kernel.org>; Mon, 22 Mar 2021 17:58:06 +0000 (UTC)
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7895B61983
	for <ksummit-discuss@archiver.kernel.org>; Mon, 22 Mar 2021 17:58:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7895B61983
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=HansenPartnership.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6F89C402CA;
	Mon, 22 Mar 2021 17:58:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uX3pCVUolXkA; Mon, 22 Mar 2021 17:58:04 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9313740143;
	Mon, 22 Mar 2021 17:58:03 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 64596C000B;
	Mon, 22 Mar 2021 17:58:03 +0000 (UTC)
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5BC77C0001
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 22 Mar 2021 17:58:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2E4E04037B
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 22 Mar 2021 17:58:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=hansenpartnership.com
 header.b="xjapXEFk"; dkim=pass (1024-bit key)
 header.d=hansenpartnership.com header.b="xjapXEFk"
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z2akh0t5P8eD
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 22 Mar 2021 17:58:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
 [96.44.175.130])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5C8F7402B7
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 22 Mar 2021 17:58:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by bedivere.hansenpartnership.com (Postfix) with ESMTP id ACDBC12801FD;
 Mon, 22 Mar 2021 10:58:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=hansenpartnership.com; s=20151216; t=1616435880;
 bh=js5x8RonEdB9AM7IqO+7/faDn1iuZEitNT8uFo3jGV4=;
 h=Message-ID:Subject:From:To:Date:In-Reply-To:References:From;
 b=xjapXEFkDLOda/4rY0+u8LcCnC7IgZ0r+ACiNJEtyIDDZmpCQCVmNt+yhHQ/ilqaz
 LimD1raxsCscvzx8IB+vEMzRY+dHEZRIf3v2RTOYd91+UQixoJxThu0L78cjHmrVTM
 v5O3QbzZazLBuOtoi1pG2KdJjYnGqLe06leJGXBE=
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
 by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id nr2UoEAftmQx; Mon, 22 Mar 2021 10:58:00 -0700 (PDT)
Received: from jarvis.int.hansenpartnership.com (unknown
 [IPv6:2601:600:8280:66d1::527])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 49FEF12801CA;
 Mon, 22 Mar 2021 10:58:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=hansenpartnership.com; s=20151216; t=1616435880;
 bh=js5x8RonEdB9AM7IqO+7/faDn1iuZEitNT8uFo3jGV4=;
 h=Message-ID:Subject:From:To:Date:In-Reply-To:References:From;
 b=xjapXEFkDLOda/4rY0+u8LcCnC7IgZ0r+ACiNJEtyIDDZmpCQCVmNt+yhHQ/ilqaz
 LimD1raxsCscvzx8IB+vEMzRY+dHEZRIf3v2RTOYd91+UQixoJxThu0L78cjHmrVTM
 v5O3QbzZazLBuOtoi1pG2KdJjYnGqLe06leJGXBE=
Message-ID: <e93ad98a34828a4140fa59c1fb5b01f03c6f4245.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>, Thorsten Leemhuis
 <linux@leemhuis.info>
Date: Mon, 22 Mar 2021 10:57:59 -0700
In-Reply-To: <20210322171636.fkep2lby6gnve4su@chatter.i7.local>
References: <613fe50d-fc9c-6282-f1f3-34653acb2ee9@leemhuis.info>
 <20210322171636.fkep2lby6gnve4su@chatter.i7.local>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
Cc: ksummit-discuss@lists.linuxfoundation.org,
 Greg KH <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 workflows@vger.kernel.org
Subject: Re: [Ksummit-discuss] RFC: create mailing list "linux-issues"
 focussed on issues/bugs and regressions
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

On Mon, 2021-03-22 at 13:16 -0400, Konstantin Ryabitsev wrote:
> On Mon, Mar 22, 2021 at 04:18:14PM +0100, Thorsten Leemhuis wrote:
> > Note, there is a second reason why ksummit-discuss is CCed: another
> > reason why I want to create this new list is making it easier to
> > find and track regressions reported to our various mailing lists
> > (often without LKML in CC, as for some subsystems it's seems to be
> > custom to not CC it). 
> 
> FYI, there will soon be a unified "search all of lore.kernel.org
> regardless of the list/feed source" capability that may make it
> unnecessary to create a separate list for this purpose. There's
> active ongoing work in the public-inbox project to provide parallel
> ways to follow aggregate topics, including query-based subscriptions
> (i.e. "put a thread into my inbox whenever someone mentions my
> favourite file/function/device name"). This work is not complete yet,
> but I have great hopes that it will become available in the next
> little while.
> 
> Once we have this ability, we should be able to plug in multiple
> sources beyond just mailing lists, including a feed of all
> bugzilla.kernel.org changes. This should allow someone an easy way to
> query specific bugs and may not require the creation of a separate
> list.
> 
> I'm not opposed to the creation of a new list, of course -- just want
> to make sure it's aligned with the improvements we are working to
> make available.

I suspect the problem is that there's no known useful search string to
find a bug report even given a searchable set of lists, so the main
purpose of this list would be "if it's on here, it's a bug report" and
the triage team can cc additional lists as appropriate.  Then we simply
tell everyone to send kernel bugs to this list and ask maintainers to
cc it if a bug report shows up on their list?

James


_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
