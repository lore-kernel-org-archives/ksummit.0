Return-Path: <SRS0=0zO2=74=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDADCC433E0
	for <ksummit-discuss@archiver.kernel.org>; Mon, 15 Jun 2020 09:47:07 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AC2EC2065F
	for <ksummit-discuss@archiver.kernel.org>; Mon, 15 Jun 2020 09:47:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AC2EC2065F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=intel.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2F085227FC;
	Mon, 15 Jun 2020 09:47:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MXEAZDVuZAQV; Mon, 15 Jun 2020 09:47:05 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 11EC022EC1;
	Mon, 15 Jun 2020 09:47:05 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DAFBAC0890;
	Mon, 15 Jun 2020 09:47:04 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B7B95C016E
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 15 Jun 2020 09:47:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B21DA88836
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 15 Jun 2020 09:47:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rPVCioPWbkTo
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 15 Jun 2020 09:47:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EE14188328
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 15 Jun 2020 09:47:02 +0000 (UTC)
IronPort-SDR: Bx4kJNy06DuTwO4hvqHHdENBeKWZ0hwaVpzVUvKnLHM9Lrv81s2SHWFkuGRKZ8YAOo53rTODxu
 mpP0vNtOb8MQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2020 02:47:02 -0700
IronPort-SDR: wJgMH9PE/xlUhZtqWSLMFUefAwBBSl/+YrMZoaqYPlpkLhFayqoi52ipvzoE5+2dll/vQWNUTL
 1ibkSilrcw8g==
X-IronPort-AV: E=Sophos;i="5.73,514,1583222400"; d="scan'208";a="449333169"
Received: from unknown (HELO localhost) ([10.249.36.229])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2020 02:47:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Joe Perches <joe@perches.com>, Julia Lawall <julia.lawall@inria.fr>,
 Shuah Khan <skhan@linuxfoundation.org>
In-Reply-To: <8dff373fabbbe6ae20512848e93dac7544e0abce.camel@perches.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200609145353.628a342d@lwn.net>
 <CACRpkdZOxaA9fpd0zFa_GGo1boOEbOoxNbaUavXbewp=CLbEDg@mail.gmail.com>
 <8f68863a-d04c-4502-f88e-2a8b0e3c7968@linuxfoundation.org>
 <928d6b2c9a8afb4262a0d931bce03987ef002c8f.camel@perches.com>
 <20200612090706.GF2051223@linux.ibm.com>
 <edbf4ead-6f2d-e548-ee40-517b3ee6ba07@linuxfoundation.org>
 <alpine.DEB.2.22.394.2006131838130.2659@hadrien>
 <8dff373fabbbe6ae20512848e93dac7544e0abce.camel@perches.com>
Date: Mon, 15 Jun 2020 12:46:56 +0300
Message-ID: <877dw8wtin.fsf@intel.com>
MIME-Version: 1.0
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Documentation
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

On Sat, 13 Jun 2020, Joe Perches <joe@perches.com> wrote:
> just fyi: scripts/kernel-doc already does:
>
> $ ./scripts/kernel-doc drivers/net/ethernet/freescale/fman/fman.c > /dev/null

FYI, kernel-doc has the -none option to not output any documentation,
only the warnings. Perhaps not the most intuitive thing you ever saw,
but might be slightly more efficient than redirecting stdout to
/dev/null.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
