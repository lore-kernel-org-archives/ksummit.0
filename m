Return-Path: <SRS0=PyW3=X2=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 84CD2C352AA
	for <ksummit-discuss@archiver.kernel.org>; Tue,  1 Oct 2019 13:56:17 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5D6EF21855
	for <ksummit-discuss@archiver.kernel.org>; Tue,  1 Oct 2019 13:56:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5D6EF21855
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=lwn.net
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id C2EA8136B;
	Tue,  1 Oct 2019 13:56:16 +0000 (UTC)
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BE9821368
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  1 Oct 2019 13:56:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from ms.lwn.net (ms.lwn.net [45.79.88.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 634608AF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  1 Oct 2019 13:56:01 +0000 (UTC)
Received: from lwn.net (localhost [127.0.0.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ms.lwn.net (Postfix) with ESMTPSA id 32FD6491;
	Tue,  1 Oct 2019 13:56:00 +0000 (UTC)
Date: Tue, 1 Oct 2019 07:55:59 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Dan Williams <dan.j.williams@intel.com>
Message-ID: <20191001075559.629eb059@lwn.net>
In-Reply-To: <156821693396.2951081.7340292149329436920.stgit@dwillia2-desk3.amr.corp.intel.com>
References: <156821692280.2951081.18036584954940423225.stgit@dwillia2-desk3.amr.corp.intel.com>
	<156821693396.2951081.7340292149329436920.stgit@dwillia2-desk3.amr.corp.intel.com>
Organization: LWN.net
MIME-Version: 1.0
Cc: vishal.l.verma@intel.com, ksummit-discuss@lists.linuxfoundation.org,
	linux-nvdimm@lists.01.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-kernel@vger.kernel.org, Dmitry Vyukov <dvyukov@google.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Steve French <stfrench@microsoft.com>, "Tobin C. Harding" <me@tobin.cc>
Subject: Re: [Ksummit-discuss] [PATCH v2 2/3] Maintainer Handbook:
	Maintainer Entry Profile
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.12
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
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

On Wed, 11 Sep 2019 08:48:54 -0700
Dan Williams <dan.j.williams@intel.com> wrote:

> As presented at the 2018 Linux Plumbers conference [1], the Maintainer
> Entry Profile (formerly Subsystem Profile) is proposed as a way to reduce
> friction between committers and maintainers and encourage conversations
> amongst maintainers about common best practices. While coding-style,
> submit-checklist, and submitting-drivers lay out some common expectations
> there remain local customs and maintainer preferences that vary by
> subsystem.
> 
> The profile contains short answers to some of the common policy questions a
> contributor might have that are local to the subsystem / device-driver, or
> otherwise not covered by the top-level process documents.
> 
> Overview: General introduction to how the subsystem operates
> Submit Checklist Addendum: Mechanical items that gate submission staging
> Key Cycle Dates:
>  - Last -rc for new feature submissions: Expected lead time for submissions
>  - Last -rc to merge features: Deadline for merge decisions
> Coding Style Addendum: Clarifications of local style preferences
> Resubmit Cadence: When to ping the maintainer
> Checkpatch / Style Cleanups: Policy on pure cleanup patches

So I'm finally back home after my European tour, and I have it on good
authority that my bag might even get here eventually too.  That means I'm
digging through a pile of docs stuff I've been neglecting badly...

My intention is to apply these patches.  But as I was reading through
them, one little nagging thing came to mind...

> See Documentation/maintainer/maintainer-entry-profile.rst for more details,
> and a follow-on example profile for the libnvdimm subsystem.

Thus far, the maintainer guide is focused on how to *be* a maintainer.
This document, instead, is more about how to deal with specific
maintainers.  So I suspect that Documentation/maintainer might be the
wrong place for it.

Should we maybe place it instead under Documentation/process, or even
create a new top-level "book" for this information?

Thanks,

jon
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
