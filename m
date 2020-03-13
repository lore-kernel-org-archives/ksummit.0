Return-Path: <SRS0=mR8n=46=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0B01C2BB1D
	for <ksummit-discuss@archiver.kernel.org>; Fri, 13 Mar 2020 08:57:47 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 91880206FA
	for <ksummit-discuss@archiver.kernel.org>; Fri, 13 Mar 2020 08:57:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 91880206FA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=intel.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 24D21231C8;
	Fri, 13 Mar 2020 08:57:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SQFHbaYMaosa; Fri, 13 Mar 2020 08:57:45 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id C7DF1204E9;
	Fri, 13 Mar 2020 08:57:45 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A526CC18D3;
	Fri, 13 Mar 2020 08:57:45 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5A67AC0177;
 Fri, 13 Mar 2020 08:57:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 497698740C;
 Fri, 13 Mar 2020 08:57:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r-BoL2ViDbXo; Fri, 13 Mar 2020 08:57:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A1AEC8740A;
 Fri, 13 Mar 2020 08:57:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 01:57:41 -0700
X-IronPort-AV: E=Sophos;i="5.70,548,1574150400"; d="scan'208";a="237153595"
Received: from unknown (HELO localhost) ([10.252.52.87])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 01:57:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Theodore Y. Ts'o" <tytso@mit.edu>, "Bird\, Tim" <Tim.Bird@sony.com>
In-Reply-To: <20200313031947.GC225435@mit.edu>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <6d6dd6fa-880f-01fe-6177-281572aed703@labbott.name>
 <20200312003436.GF1639@pendragon.ideasonboard.com>
 <MWHPR13MB0895E133EC528ECF50A22100FDFD0@MWHPR13MB0895.namprd13.prod.outlook.com>
 <20200313031947.GC225435@mit.edu>
Date: Fri, 13 Mar 2020 10:58:00 +0200
Message-ID: <87d09gljhj.fsf@intel.com>
MIME-Version: 1.0
Cc: "ksummit-discuss@lists.linuxfoundation.org"
 <ksummit-discuss@lists.linuxfoundation.org>,
 "tech-board-discuss@lists.linuxfoundation.org"
 <tech-board-discuss@lists.linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] Linux Foundation Technical Advisory Board
	Elections -- Change to charter
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

On Thu, 12 Mar 2020, "Theodore Y. Ts'o" <tytso@mit.edu> wrote:
> So that means we need to be smart about how we pick the criteria.
> Using a kernel.org account might be a good approach, since it would be
> a lot harder for a huge number of sock puppet accounts to meet that
> criteria.

Per [1] and [2], kernel.org accounts "are usually reserved for subsystem
maintainers or high-profile developers", but apparently it's at the
kernel.org admins discretion to decide whether one is ultimately
eligible or not. Do we want the kernel.org admin to have the final say
on who gets to vote? Do we want to encourage people to have kernel.org
accounts for no other reason than to vote?

Furthermore, having a kernel.org account imposes the additional
requirement that you're part of the kernel developers web of trust,
i.e. that you've met other kernel developers in person. Which is a kind
of awkward requirement for enabling electronic voting to be inclusive to
people who can't attend in person.

Seems like having a kernel.org account is just a proxy for the criteria,
and one that also lacks transparency, and has problems of its own.

Not that I'm saying there's an easy solution, but obviously kernel.org
account is not as problem free as you might think.

BR,
Jani.


[1] https://www.kernel.org/faq.html
[2] https://korg.wiki.kernel.org/userdoc/accounts

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
