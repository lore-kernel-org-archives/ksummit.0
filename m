Return-Path: <SRS0=ZpVE=IU=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3CDB3C433C1
	for <ksummit-discuss@archiver.kernel.org>; Mon, 22 Mar 2021 18:41:06 +0000 (UTC)
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B73416191E
	for <ksummit-discuss@archiver.kernel.org>; Mon, 22 Mar 2021 18:41:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B73416191E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=80x24.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F37E4607A2;
	Mon, 22 Mar 2021 18:41:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M30Tz_g35Ivd; Mon, 22 Mar 2021 18:41:02 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTP id DD0DD60592;
	Mon, 22 Mar 2021 18:41:01 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 95717C000A;
	Mon, 22 Mar 2021 18:41:01 +0000 (UTC)
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C610DC0001
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 22 Mar 2021 18:40:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B9F46402D0
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 22 Mar 2021 18:40:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gp9m8-6s1L7r
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 22 Mar 2021 18:40:59 +0000 (UTC)
X-Greylist: delayed 00:06:30 by SQLgrey-1.8.0
Received: from dcvr.yhbt.net (dcvr.yhbt.net [64.71.152.64])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E8AAB402CF
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 22 Mar 2021 18:40:58 +0000 (UTC)
Received: from localhost (dcvr.yhbt.net [127.0.0.1])
 by dcvr.yhbt.net (Postfix) with ESMTP id B5FFD1F9FC;
 Mon, 22 Mar 2021 18:34:27 +0000 (UTC)
Date: Mon, 22 Mar 2021 18:34:27 +0000
From: Eric Wong <e@80x24.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20210322183427.GA1195@dcvr>
References: <613fe50d-fc9c-6282-f1f3-34653acb2ee9@leemhuis.info>
 <20210322171636.fkep2lby6gnve4su@chatter.i7.local>
 <e93ad98a34828a4140fa59c1fb5b01f03c6f4245.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e93ad98a34828a4140fa59c1fb5b01f03c6f4245.camel@HansenPartnership.com>
Cc: ksummit-discuss@lists.linuxfoundation.org,
 Greg KH <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Thorsten Leemhuis <linux@leemhuis.info>, workflows@vger.kernel.org,
 Konstantin Ryabitsev <konstantin@linuxfoundation.org>
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

James Bottomley <James.Bottomley@HansenPartnership.com> wrote:
> On Mon, 2021-03-22 at 13:16 -0400, Konstantin Ryabitsev wrote:
> > On Mon, Mar 22, 2021 at 04:18:14PM +0100, Thorsten Leemhuis wrote:
> > > Note, there is a second reason why ksummit-discuss is CCed: another
> > > reason why I want to create this new list is making it easier to
> > > find and track regressions reported to our various mailing lists
> > > (often without LKML in CC, as for some subsystems it's seems to be
> > > custom to not CC it). 
> > 
> > FYI, there will soon be a unified "search all of lore.kernel.org
> > regardless of the list/feed source" capability that may make it
> > unnecessary to create a separate list for this purpose. There's
> > active ongoing work in the public-inbox project to provide parallel
> > ways to follow aggregate topics, including query-based subscriptions
> > (i.e. "put a thread into my inbox whenever someone mentions my
> > favourite file/function/device name"). This work is not complete yet,
> > but I have great hopes that it will become available in the next
> > little while.

Yes, making progress and learning new tricks to make the WWW UI faster :>

> > Once we have this ability, we should be able to plug in multiple
> > sources beyond just mailing lists, including a feed of all
> > bugzilla.kernel.org changes. This should allow someone an easy way to
> > query specific bugs and may not require the creation of a separate
> > list.
> > 
> > I'm not opposed to the creation of a new list, of course -- just want
> > to make sure it's aligned with the improvements we are working to
> > make available.
> 
> I suspect the problem is that there's no known useful search string to
> find a bug report even given a searchable set of lists, so the main
> purpose of this list would be "if it's on here, it's a bug report" and
> the triage team can cc additional lists as appropriate.  Then we simply
> tell everyone to send kernel bugs to this list and ask maintainers to
> cc it if a bug report shows up on their list?

It seems having "bug" or "regression" in the subject could be sufficient?

"s:Regression" or "s:Bug" can be used to query messages reasonably
quickly:

https://80x24.org/lore/all/?q=s:Bug || https://yhbt.net/lore/all/?q=s:Bug
http://rskvuqcfnfizkjg6h5jvovwb3wkikzcwskf54lfpymus6mxrzw67b5ad.onion/all/?q=s:Bug
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
