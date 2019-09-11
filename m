Return-Path: <SRS0=FsAW=XH=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1BEB6C49ED6
	for <ksummit-discuss@archiver.kernel.org>; Thu, 12 Sep 2019 02:26:55 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D84E62085B
	for <ksummit-discuss@archiver.kernel.org>; Thu, 12 Sep 2019 02:26:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D84E62085B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=perches.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 47F26CC4;
	Thu, 12 Sep 2019 02:26:54 +0000 (UTC)
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9ABAEB59
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 12 Sep 2019 02:26:52 +0000 (UTC)
X-Greylist: delayed 05:55:54 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0185.hostedemail.com
	[216.40.44.185])
	by smtp2.linuxfoundation.org (Postfix) with ESMTPS id 380A01DD99
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 12 Sep 2019 02:26:52 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave01.hostedemail.com (Postfix) with ESMTP id 529941802ACBC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Sep 2019 20:30:58 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
	[216.40.38.60])
	by smtprelay04.hostedemail.com (Postfix) with ESMTP id E1B2718025E8E;
	Wed, 11 Sep 2019 20:30:55 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-HE-Tag: paste13_7c63038856825
X-Filterd-Recvd-Size: 1990
Received: from XPS-9350.home (unknown [47.151.152.152])
	(Authenticated sender: joe@perches.com)
	by omf19.hostedemail.com (Postfix) with ESMTPA;
	Wed, 11 Sep 2019 20:30:54 +0000 (UTC)
Message-ID: <37a9f105f85b7accb5eefe788f8d129e9fddaa2c.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Dan Williams <dan.j.williams@intel.com>, linux-kernel@vger.kernel.org
Date: Wed, 11 Sep 2019 13:30:53 -0700
In-Reply-To: <156821693963.2951081.11214256396118531359.stgit@dwillia2-desk3.amr.corp.intel.com>
References: <156821692280.2951081.18036584954940423225.stgit@dwillia2-desk3.amr.corp.intel.com>
	<156821693963.2951081.11214256396118531359.stgit@dwillia2-desk3.amr.corp.intel.com>
User-Agent: Evolution 3.32.1-2 
MIME-Version: 1.0
Cc: Vishal Verma <vishal.l.verma@intel.com>, Dave Jiang <dave.jiang@intel.com>,
	ksummit-discuss@lists.linuxfoundation.org, linux-nvdimm@lists.01.org
Subject: Re: [Ksummit-discuss] [PATCH v2 3/3] libnvdimm,
 MAINTAINERS: Maintainer Entry Profile
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

On Wed, 2019-09-11 at 08:48 -0700, Dan Williams wrote:
> Document the basic policies of the libnvdimm subsystem and provide a first
> example of a Maintainer Entry Profile for others to duplicate and edit.
[]
> +Coding Style Addendum
> +---------------------
> +libnvdimm expects multi-line statements to be double indented. I.e.
> +
> +        if (x...
> +                        && ...y) {

I don't find a good reason to do this.

> diff --git a/MAINTAINERS b/MAINTAINERS
[]
> @@ -9185,6 +9185,7 @@ M:	Dan Williams <dan.j.williams@intel.com>
>  M:	Vishal Verma <vishal.l.verma@intel.com>
>  M:	Dave Jiang <dave.jiang@intel.com>
>  L:	linux-nvdimm@lists.01.org
> +P:	Documentation/nvdimm/maintainer-entry-profile.rst

I also think the indirection to a separate
file is not a good thing.

Separate styles for individual subsystems is
not something I would want to encourage.

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
