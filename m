Return-Path: <SRS0=TU90=AU=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A750EC433DF
	for <ksummit-discuss@archiver.kernel.org>; Thu,  9 Jul 2020 16:02:15 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6C2FC2084C
	for <ksummit-discuss@archiver.kernel.org>; Thu,  9 Jul 2020 16:02:15 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="Hut5TGrF"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6C2FC2084C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C0B3B87EDB;
	Thu,  9 Jul 2020 16:02:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ocdhnv04gvHp; Thu,  9 Jul 2020 16:02:12 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DAC4887F01;
	Thu,  9 Jul 2020 16:02:11 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 93852C08A5;
	Thu,  9 Jul 2020 16:02:11 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2716DC08A2
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  9 Jul 2020 16:02:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7C92C8957A
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  9 Jul 2020 16:01:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id opcEjdvrH-un
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  9 Jul 2020 16:01:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 732598957C
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  9 Jul 2020 16:01:21 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id w17so2051842otl.4
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu, 09 Jul 2020 09:01:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=HGsTAj0a+RJU0QpPTNKQCpJ0VMDb7tRPj2FxIP6m4t4=;
 b=Hut5TGrFUZogrXJQXiJE+1pBXG9vA76Jx7ZETGuglXnVW7ytEkhFxIDwsUz1tW+fdO
 sAmFlnROS04w5zHgxmyNFSE60rNlwJzCzyZuEv8zQp19h6BO2BTMZqjp0MflhaEzmI77
 aQPbvFT78Bl6N/NOg983Nu+i7kNkvSFuiEDNg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=HGsTAj0a+RJU0QpPTNKQCpJ0VMDb7tRPj2FxIP6m4t4=;
 b=giYY5FofyhT96vgXTRIPVk36VzKbAuKMEe2kmYgkFIusycYuc906PyoTuRxPvMyQOA
 wIVMP+U7cAh+omj+Mc30wYRZQryyogz2A6MYOXkwGUeajkhr8mtn2cm0HtctAIfJUiaT
 dcUffsv7YPh9IKpIKg6i+CSQ+Z1yeIri5jH22synljZA6bg2Z731dqPhdwsp1tCMbK2i
 LZNq3MX0DFkN0GtBlDu2GNN49EBcMSPKPIoysN7EwTqTjD+2H/38U7CHW/+J6v0pMZJj
 n27gpLqF70M8H6c0ghfxuaDflWdvfmvBOc91o4pl+e6/kkd+OGOe8Pr927whVuHHur1B
 E1Mg==
X-Gm-Message-State: AOAM532SdtviG/rbkWtKKtl1+XBQk81NeN8p3FZyc1h1mxzxwK16ldXn
 YRrEoDmkgKZRh1sbS4kM98Be8RKZ
X-Google-Smtp-Source: ABdhPJxSOkqrlj+FklRoHpl9zpHklPVNbBXZvIvMzH7Yy2NJWfyT4uBUMIfZY07N/M8ALuniqIU6Qw==
X-Received: by 2002:a05:6830:1f22:: with SMTP id
 e2mr17125025oth.62.1594310479762; 
 Thu, 09 Jul 2020 09:01:19 -0700 (PDT)
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id n6sm578331otq.33.2020.07.09.09.01.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Jul 2020 09:01:19 -0700 (PDT)
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Tibor Raschko <tibrasch@gmail.com>
References: <79214066-3886-e0ef-f26e-8cb3d53404be@linuxfoundation.org>
 <e41ded21-1432-afa8-2e42-e509539281c4@gmail.com>
 <20200709124327.369781a0@coco.lan>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <93fc3afb-8c3f-0fb9-3b92-adfb6571e060@linuxfoundation.org>
Date: Thu, 9 Jul 2020 10:01:18 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200709124327.369781a0@coco.lan>
Content-Language: en-US
Cc: ksummit-discuss@lists.linuxfoundation.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 tech-board-discuss@lists.linuxfoundation.org, Chris Mason <clm@fb.clm>
Subject: Re: [Ksummit-discuss] [Tech-board-discuss] [PATCH] CodingStyle:
 Inclusive Terminology
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

On 7/9/20 4:43 AM, Mauro Carvalho Chehab wrote:
> Em Tue, 7 Jul 2020 01:58:21 +0200
> Tibor Raschko <tibrasch@gmail.com> escreveu:
> 
>>> Allowlist/denylist terms are intuitive and action based which have a
>>> globally uniform meaning.
>>
>> Nobody has a problem understanding "blacklist" and "whitelist". These
>> are universally understood words even outside of computing. Claiming
>> that we need clearer alternatives is smoke and mirrors.
> 
> Actually, as a non-native English speaker, the first time I saw
> "<color>list", I had to do some research in order to understand what it
> means :-)

Thanks for the perspective. This is why we need clear and uniform words.
Our community is global. English isn't English everywhere either.

> 
> That reminds me: what about "graylist"?
> 
> For coherency, if "blacklist/whitelist" won't be used anymore, an
> alternative to graylist should also be provided.
> 
> Right now, it seems that only ACPI uses it:
> 
> 	$ git grep -i graylist
> 	drivers/clocksource/acpi_pm.c:static void acpi_pm_check_graylist(struct pci_dev *dev)
> 	drivers/clocksource/acpi_pm.c:                  acpi_pm_check_graylist);
> 	drivers/clocksource/acpi_pm.c:                  acpi_pm_check_graylist);
> 

What is "graylist"? Does it mean in between allow/deny?

thanks,
-- Shuah
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
