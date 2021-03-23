Return-Path: <SRS0=ua7e=IV=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2D429C433DB
	for <ksummit-discuss@archiver.kernel.org>; Tue, 23 Mar 2021 23:11:13 +0000 (UTC)
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id ABCC5619D3
	for <ksummit-discuss@archiver.kernel.org>; Tue, 23 Mar 2021 23:11:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org ABCC5619D3
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=80x24.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3251A8480C;
	Tue, 23 Mar 2021 23:11:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 87oNA2Kd32dM; Tue, 23 Mar 2021 23:11:11 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTP id 82DB28480B;
	Tue, 23 Mar 2021 23:11:10 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 44B63C000D;
	Tue, 23 Mar 2021 23:11:10 +0000 (UTC)
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 655F3C000A
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 23 Mar 2021 23:11:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3F4DD40588
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 23 Mar 2021 23:11:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6Jf7qVoCsbit
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 23 Mar 2021 23:11:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from dcvr.yhbt.net (dcvr.yhbt.net [64.71.152.64])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6A96B40587
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 23 Mar 2021 23:11:07 +0000 (UTC)
Received: from localhost (dcvr.yhbt.net [127.0.0.1])
 by dcvr.yhbt.net (Postfix) with ESMTP id 59C7D1F9FC;
 Tue, 23 Mar 2021 23:11:06 +0000 (UTC)
Date: Tue, 23 Mar 2021 23:11:06 +0000
From: Eric Wong <e@80x24.org>
To: workflows@vger.kernel.org
Message-ID: <20210323231106.GA7165@dcvr>
References: <613fe50d-fc9c-6282-f1f3-34653acb2ee9@leemhuis.info>
 <CAHk-=wgiYqqLzsb9-UpfH+=ktk7ra-2fOsdc_ZJ7WF47wS73CA@mail.gmail.com>
 <62b60247-7838-a624-706e-b1a54785b2a5@leemhuis.info>
 <20210323122025.77888b49@gandalf.local.home>
 <72f1c67bc8ad21bb1e5a7d77b88e2c3e50065e3b.camel@HansenPartnership.com>
 <20210323214317.t3igv3nan4lfolgr@chatter.i7.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210323214317.t3igv3nan4lfolgr@chatter.i7.local>
Cc: ksummit-discuss@lists.linuxfoundation.org,
 Greg KH <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Thorsten Leemhuis <linux@leemhuis.info>,
 James Bottomley <James.Bottomley@hansenpartnership.com>
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

Konstantin Ryabitsev <konstantin@linuxfoundation.org> wrote:
> On Tue, Mar 23, 2021 at 09:30:33AM -0700, James Bottomley wrote:
> > > I think the bulk of user issues are going to be regressions. Although
> > > you may be in a better position to know for sure, but at least for
> > > me, wearing my "user" hat, the thing that gets me the most is
> > > upgrading to a new kernel and suddenly something that use to work no
> > > longer does. And that is the definition of a regression. My test
> > > boxes still run old distros (one is running fedora 13). These are the
> > > boxes that catch the most issues, and if they do, they are pretty
> > > much guaranteed to be a regression.
> > > 
> > > I like the "linux-regressions" mailing list idea.
> > 
> > Can't we use the fancy features of public inbox to get the best of both
> > worlds?  Have the bug list (or even a collection of lists) but make the
> > linux-regressions one a virtual list keying off an imap flag which a
> > group of people control.  That way anything that is flagged as a
> > regression appears in that public inbox.  I assume the search can be
> > quite wide so we could flag a regression on any list indexed by lore?

The lei (local email interface) data model will have "labels"(*)
and developers will be able to publish mail with it via static
HTML/Atom/JSON feed via cronjob and whatnot.

> There's a number of ways we can accomplish this, sure.
> 
> However, this functionality is not in production yet, and I'm not sure which
> upcoming public-inbox features we'll be implementing as a public
> lore.kernel.org service,

> which ones we'll only offer to kernel.org account holders,

lei could offer read-write JMAP support; either as a CGI tied
to Unix user accounts or some virtual user system.  Some fixes
I'm currently making to speed up the test suite will also make
it more suitable for a largish virtual user system.

> and which ones should really be running locally by developers
> themselves.

lei will be MY dream mail/git tool that fills in the gaps
left by other tools; I hope it can make others happy, too :)

> So, I don't want to say either yes or no to this one for the fear of
> over-promising. I guess this is why I'm not in sales. :)

Heh, same here.  Once I start using lei to handle all of my mail
and there's a data-loss bug, I could conceivably never know
about it because the bug reports would be lost... :x


[1] "labels" are "mailboxes" in JMAP-speak; and lei's per-user data
    model will be tied to JMAP.  "keywords" are Maildir/IMAP-system
    flags (seen/flagged/answered/...).  JMAP doesn't allow arbitrary
    keywords, but does allow arbitrary labels.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
