Return-Path: <SRS0=FsAW=XH=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.5 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6F74C47404
	for <ksummit-discuss@archiver.kernel.org>; Thu, 12 Sep 2019 13:10:27 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A299520CC7
	for <ksummit-discuss@archiver.kernel.org>; Thu, 12 Sep 2019 13:10:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A299520CC7
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=acm.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 4119DDDE;
	Thu, 12 Sep 2019 13:10:27 +0000 (UTC)
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EC853DD0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 12 Sep 2019 13:10:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
	[209.85.210.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 282958B0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 12 Sep 2019 13:10:24 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id i1so7148224pfa.6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 12 Sep 2019 06:10:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=o85hg2uRViTBTOdRLoeY1KBtWVrAtpQuUFP49tE28+E=;
	b=oofBpNYIqRyQl6AMRzEjW27Xnm24EuvqUCDKh/li5exjav9lIgr8y74VZxY3kDfwTV
	MGHZDO+t6o9NlGcL2bnX7LwpH5BcJGaHrH2kdTMxinLzVLtcypBsG2vx+HWrNjFkWbf7
	LD50G2yh/OY5AW5yWqnhYvdNWHKpiOFGjv7JJ47uilQXi9ekV4ZliJB4wXh4ANmwaVoI
	BI+/Cw8pAuOw8c+6l+Yhmpk5y8fVL/LJTHkxxDa4bOdmSZLcShLVU5RPXi7QGe3bu4PJ
	oQhZ3g4A9Bl+GCmHdsVNqzRs9tfoMYO+JxddaCUozwUtGJBEx8JNw/837vQajHts/SXW
	FIbw==
X-Gm-Message-State: APjAAAVl1jQcRmPBP+f2y6I5Uob3cKwa8tEV/um6doC2l8pNSjK8SyJr
	M+9Hm0Z6LJQx0BqW7V2K2bg=
X-Google-Smtp-Source: APXvYqzrRMGtNABoRFUEmvlswO8y/ZbF7TMze/iCEdYvrjifxzi3YYQpajJ4r+D8tdbIIPZ/7cqrJA==
X-Received: by 2002:a63:460c:: with SMTP id t12mr37672408pga.69.1568293823578; 
	Thu, 12 Sep 2019 06:10:23 -0700 (PDT)
Received: from [172.19.249.100] ([38.98.37.138])
	by smtp.gmail.com with ESMTPSA id
	u65sm28133705pfu.104.2019.09.12.06.10.10
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 12 Sep 2019 06:10:22 -0700 (PDT)
To: Dan Williams <dan.j.williams@intel.com>, linux-kernel@vger.kernel.org
References: <156821692280.2951081.18036584954940423225.stgit@dwillia2-desk3.amr.corp.intel.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <92fb4141-8e2d-1139-2f55-b7100be8a2fd@acm.org>
Date: Thu, 12 Sep 2019 14:10:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156821692280.2951081.18036584954940423225.stgit@dwillia2-desk3.amr.corp.intel.com>
Content-Language: en-US
Cc: Dave Jiang <dave.jiang@intel.com>,
	ksummit-discuss@lists.linuxfoundation.org, linux-nvdimm@lists.01.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Dmitry Vyukov <dvyukov@google.com>,
	Vishal Verma <vishal.l.verma@intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Steve French <stfrench@microsoft.com>, "Tobin C. Harding" <me@tobin.cc>
Subject: Re: [Ksummit-discuss] [PATCH v2 0/3] Maintainer Entry Profiles
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

On 9/11/19 4:48 PM, Dan Williams wrote:
> At last years Plumbers Conference I proposed the Maintainer Entry
> Profile as a document that a maintainer can provide to set contributor
> expectations and provide fodder for a discussion between maintainers
> about the merits of different maintainer policies.
> 
> For those that did not attend, the goal of the Maintainer Entry Profile,
> and the Maintainer Handbook more generally, is to provide a desk
> reference for maintainers both new and experienced. The session
> introduction was:
> 
>     The first rule of kernel maintenance is that there are no hard and
>     fast rules. That state of affairs is both a blessing and a curse. It
>     has served the community well to be adaptable to the different
>     people and different problem spaces that inhabit the kernel
>     community. However, that variability also leads to inconsistent
>     experiences for contributors, little to no guidance for new
>     contributors, and unnecessary stress on current maintainers. There
>     are quite a few of people who have been around long enough to make
>     enough mistakes that they have gained some hard earned proficiency.
>     However if the kernel community expects to keep growing it needs to
>     be able both scale the maintainers it has and ramp new ones without
>     necessarily let them make a decades worth of mistakes to learn the
>     ropes. 
> 
> To be clear, the proposed document does not impose or suggest new
> rules. Instead it provides an outlet to document the unwritten rules
> and policies in effect for each subsystem, and that each subsystem
> might decide differently for whatever reason.

Any maintainer who reads this might interpret this as an encouragement
to establish custom policies. I think one of the conclusions of the
Linux Plumbers 2019 edition is that too much diversity is bad and that
we need more uniformity across kernel subsystems with regard what is
expected from patch contributors. I would appreciate if a summary of
https://linuxplumbersconf.org/event/4/contributions/554/attachments/353/584/Reflections__Kernel_Summit_2019.pdf
would be integrated in the maintainer handbook.

Thanks,

Bart.

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
