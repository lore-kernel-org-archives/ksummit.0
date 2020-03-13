Return-Path: <SRS0=mR8n=46=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9066C5ACBF
	for <ksummit-discuss@archiver.kernel.org>; Fri, 13 Mar 2020 10:30:07 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C955C206EB
	for <ksummit-discuss@archiver.kernel.org>; Fri, 13 Mar 2020 10:30:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C955C206EB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=intel.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8203B26FA2;
	Fri, 13 Mar 2020 10:30:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kl5c1Qgs1MaF; Fri, 13 Mar 2020 10:30:06 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 0BC1C25B01;
	Fri, 13 Mar 2020 10:30:06 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D7E59C18D3;
	Fri, 13 Mar 2020 10:30:05 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3BD2CC0177;
 Fri, 13 Mar 2020 10:30:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3574525B01;
 Fri, 13 Mar 2020 10:30:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Iycdp5EUnbjN; Fri, 13 Mar 2020 10:30:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by silver.osuosl.org (Postfix) with ESMTPS id 2A1BE2076B;
 Fri, 13 Mar 2020 10:30:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 03:30:02 -0700
X-IronPort-AV: E=Sophos;i="5.70,548,1574150400"; d="scan'208";a="237179068"
Received: from unknown (HELO localhost) ([10.252.52.87])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 03:29:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Greg KH <greg@kroah.com>
In-Reply-To: <20200313093548.GA2089143@kroah.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <6d6dd6fa-880f-01fe-6177-281572aed703@labbott.name>
 <20200312003436.GF1639@pendragon.ideasonboard.com>
 <MWHPR13MB0895E133EC528ECF50A22100FDFD0@MWHPR13MB0895.namprd13.prod.outlook.com>
 <20200313031947.GC225435@mit.edu> <87d09gljhj.fsf@intel.com>
 <20200313093548.GA2089143@kroah.com>
Date: Fri, 13 Mar 2020 12:30:20 +0200
Message-ID: <877dzolf7n.fsf@intel.com>
MIME-Version: 1.0
Cc: "Bird, Tim" <Tim.Bird@sony.com>,
 "tech-board-discuss@lists.linuxfoundation.org"
 <tech-board-discuss@lists.linuxfoundation.org>,
 "ksummit-discuss@lists.linuxfoundation.org"
 <ksummit-discuss@lists.linuxfoundation.org>,
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

On Fri, 13 Mar 2020, Greg KH <greg@kroah.com> wrote:
> On Fri, Mar 13, 2020 at 10:58:00AM +0200, Jani Nikula wrote:
>> On Thu, 12 Mar 2020, "Theodore Y. Ts'o" <tytso@mit.edu> wrote:
>> > So that means we need to be smart about how we pick the criteria.
>> > Using a kernel.org account might be a good approach, since it would be
>> > a lot harder for a huge number of sock puppet accounts to meet that
>> > criteria.
>> 
>> Per [1] and [2], kernel.org accounts "are usually reserved for subsystem
>> maintainers or high-profile developers", but apparently it's at the
>> kernel.org admins discretion to decide whether one is ultimately
>> eligible or not. Do we want the kernel.org admin to have the final say
>> on who gets to vote? Do we want to encourage people to have kernel.org
>> accounts for no other reason than to vote?
>
> We are using the "kernel.org account" as a way to verify that you really
> are part of our developer/maintainer community and that you are part of
> the "web of trust" and an actual person.
>
> That is the goal here, if you know of some other way to determine this,
> please let us know.  We went through many iterations of this and at the
> moment, it is the best we can come up with.

Ted's mail seemed like it was thrown around as an idea, not something
you're settling on.

> Also, note that the "kernel.org admin" is really a team of people who
> have been doing this for 9 years, it's not a single person responsible
> for giving out new accounts to people that do not meet the obvious
> requirement levels as published on kernel.org
>
>> Furthermore, having a kernel.org account imposes the additional
>> requirement that you're part of the kernel developers web of trust,
>
> That is exactly what we want.

Fair enough.

>> i.e. that you've met other kernel developers in person. Which is a kind
>> of awkward requirement for enabling electronic voting to be inclusive to
>> people who can't attend in person.
>
> Yes, we know that, but it does mean that you are "known" to someone
> else, which is the key here.
>
>> Seems like having a kernel.org account is just a proxy for the criteria,
>> and one that also lacks transparency, and has problems of its own.
>
> What is not transparent about how to get a kernel.org account?

There is no way of knowing whether you're eligible to vote until you
apply for a kernel.org account and either get approved or rejected.

The current "obvious" requirement levels are not obvious to me. How many
contributions is enough? Is everyone in MAINTAINERS eligible, or do you
have to be a high-profile maintainer/developer? What is a high-profile
developer? How many people in the web of trust must you have met in
person?

And it actually seems like you think it's a good thing the admin team
can make a subjective decision on the above.

It may seem completely transparent and fair and objective on the
*inside*, but it does not look that way on the *outside*. Which is kind
of the definition of transparent. Or lack of.

>> Not that I'm saying there's an easy solution, but obviously kernel.org
>> account is not as problem free as you might think.
>
> We are not saying it is "problem free", but what really is the problem
> with it?

Seems that some of what I thought was a bug is a feature for you, so I
suppose it's better to focus on the transparency.

On that note, and since this relates to the charter, how's the "The TAB
shall provide transparent and timely reporting (through any mechanism it
deems appropriate) to the Community at large on all of its activities"
coming along...?

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
