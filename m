Return-Path: <SRS0=mR8n=46=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3E53AC10DCE
	for <ksummit-discuss@archiver.kernel.org>; Fri, 13 Mar 2020 13:05:49 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F1E4E20724
	for <ksummit-discuss@archiver.kernel.org>; Fri, 13 Mar 2020 13:05:48 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="q5cRqMyl"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F1E4E20724
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AE7118708A;
	Fri, 13 Mar 2020 13:05:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QLYe34ta8IqX; Fri, 13 Mar 2020 13:05:43 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C98D686FC5;
	Fri, 13 Mar 2020 13:05:41 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 95CD0C1D89;
	Fri, 13 Mar 2020 13:05:41 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3D908C0177;
 Fri, 13 Mar 2020 13:05:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 273EF89452;
 Fri, 13 Mar 2020 13:05:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IsHAbAwEThvs; Fri, 13 Mar 2020 13:05:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9EE8F89447;
 Fri, 13 Mar 2020 13:05:37 +0000 (UTC)
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 20BD520724;
 Fri, 13 Mar 2020 13:05:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584104737;
 bh=g5w22YsBnXA3tJ7GiCEWMSp8fKyae5t0PtEULq1PwZ0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=q5cRqMylfvpZ5+ItbTy3OywUOyRXwOExSRxjFEEoZ0CtNoYt/T+COEom+ufdqH5SZ
 FzY0uGG2cGJCh/L8yvBNUZpO8syfbHI4gqB+r+md/k67HBzmKyqS7HUeOuWgNqrvpq
 OUudYWRnt4bCaFXRtXlb+xx1h7YYC+CI3UyFjnaQ=
Date: Fri, 13 Mar 2020 09:05:36 -0400
From: Sasha Levin <sashal@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200313130536.GD1349@sasha-vm>
References: <6d6dd6fa-880f-01fe-6177-281572aed703@labbott.name>
 <20200312003436.GF1639@pendragon.ideasonboard.com>
 <MWHPR13MB0895E133EC528ECF50A22100FDFD0@MWHPR13MB0895.namprd13.prod.outlook.com>
 <20200313031947.GC225435@mit.edu> <87d09gljhj.fsf@intel.com>
 <20200313093548.GA2089143@kroah.com> <877dzolf7n.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <877dzolf7n.fsf@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: "Bird, Tim" <Tim.Bird@sony.com>,
 "ksummit-discuss@lists.linuxfoundation.org"
 <ksummit-discuss@lists.linuxfoundation.org>,
 "tech-board-discuss@lists.linuxfoundation.org"
 <tech-board-discuss@lists.linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] [Tech-board-discuss] Linux Foundation
 Technical Advisory Board Elections -- Change to charter
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

On Fri, Mar 13, 2020 at 12:30:20PM +0200, Jani Nikula wrote:
>On Fri, 13 Mar 2020, Greg KH <greg@kroah.com> wrote:
>There is no way of knowing whether you're eligible to vote until you
>apply for a kernel.org account and either get approved or rejected.
>
>The current "obvious" requirement levels are not obvious to me. How many
>contributions is enough? Is everyone in MAINTAINERS eligible, or do you
>have to be a high-profile maintainer/developer? What is a high-profile
>developer? How many people in the web of trust must you have met in
>person?

Personally, I think that our definition of who can vote should be "any
member of our community", but it's not practical, right?

This process will take years, and each year I would expect us to
increase the voting pool by a significant amount. Maybe we should focus
too much on what restrictions are in affect in the current year, but
rather on trying to learn how well these restrictions worked and which
of them we can lift.

-- 
Thanks,
Sasha
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
