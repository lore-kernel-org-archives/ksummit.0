Return-Path: <SRS0=9K8a=AS=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=3.0 tests=DKIM_ADSP_CUSTOM_MED,
	DKIM_INVALID,DKIM_SIGNED,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DAA6C433DF
	for <ksummit-discuss@archiver.kernel.org>; Tue,  7 Jul 2020 18:05:13 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 65F0B20708
	for <ksummit-discuss@archiver.kernel.org>; Tue,  7 Jul 2020 18:05:13 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NM57cu5h"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 65F0B20708
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 37F3D87AB1;
	Tue,  7 Jul 2020 18:04:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RDLWeYVTeE4l; Tue,  7 Jul 2020 18:04:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id A65B5884B4;
	Tue,  7 Jul 2020 18:04:17 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 76871C08A6;
	Tue,  7 Jul 2020 18:04:17 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 887CFC016F;
 Mon,  6 Jul 2020 23:58:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 84C2288E08;
 Mon,  6 Jul 2020 23:58:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id apClLD0EJxvJ; Mon,  6 Jul 2020 23:58:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A2DC188DC3;
 Mon,  6 Jul 2020 23:58:24 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id f7so40188670wrw.1;
 Mon, 06 Jul 2020 16:58:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:references:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=4nSbcQc6o8w9v6ZNEJFjfitPw+WKCLAR8ckhCop8iZ8=;
 b=NM57cu5hPt5WpTyLiOYNBE+EktavfXY9/G2/Ex3+2yVkNy+hJ8Jdnwp/YX/f58v7Jd
 s/aTm97pbiBSSSWm9d8BEYy4OiC1T+GZyAZig5GPGpO9DLnb08yCiv1JAlEz3jCHrLFy
 GqNDDk429tmwQDaEAqugXo1tcZGnnFoMvADCJ9HXn7H+DU/3cNkSkcY/H7mlAZpQD1is
 CkwxTsKZo4tJ5WBsSnfoZMATroXRXxPngNT/moD5pzoo62NzDQc73OuYV+uaRDLK1T03
 izEtl6+2R183jRvTFAOQzhRPZ5bflHG/aPf08X6CgsLKCvo2kOZd7Nwr10OsbsfjEO+Z
 QIOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=4nSbcQc6o8w9v6ZNEJFjfitPw+WKCLAR8ckhCop8iZ8=;
 b=ZJCVq+AqDlvDMORTQZmoP0B+HUdxvI2Fb8WbvZqEHQR7AZKjWXtq3bnbop0WZIgoPB
 uRPw/OguZ5D0DiYVNPhi5UGBRhvhYCwlVuSG854RyiabJXpPExIxfmZhY12RjjaaEOuU
 KfUQIL6bet2k8Mggb0Tr3tAHC9zojHi3D1pS9oHwouDQ7QnwWz8ZXoF6hjZGxqdw7hNX
 +YEy/vtbR6pBGLYG+vFmeE0wQqKpAbWZOnO65T9hImanu+ruQqcENc3dnD9tpo6CeB3B
 okUeigNhMwxyxaemlloIj17tZ3/tLAylTyo7067IXcsobLIJRCcfzo60XeZ48/qDtvDv
 0oVw==
X-Gm-Message-State: AOAM532Zal45AUJfwyWQgB6ffsYl7ScMCWKqPP14COpdxbEpf3FotCoo
 zfZUG2SmxvIyhtK6gMYm4T8=
X-Google-Smtp-Source: ABdhPJz/bnvnR1MbXLHSB/I+s79KjMOEJuqMp6UPW3B20faugZU31FoxDxW6frq4uLxEEavfTp2tXw==
X-Received: by 2002:a5d:4dc2:: with SMTP id f2mr52188056wru.399.1594079903117; 
 Mon, 06 Jul 2020 16:58:23 -0700 (PDT)
Received: from [192.168.50.2] (178-164-237-246.pool.digikabel.hu.
 [178.164.237.246])
 by smtp.gmail.com with ESMTPSA id l8sm25651546wrq.15.2020.07.06.16.58.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Jul 2020 16:58:22 -0700 (PDT)
From: Tibor Raschko <tibrasch@gmail.com>
To: Dan Williams <dan.j.williams@intel.com>, torvalds@linux-foundation.org,
 ksummit-discuss@lists.linuxfoundation.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, tech-board-discuss@lists.linuxfoundation.org,
 Chris Mason <clm@fb.clm>, skhan@linuxfoundation.org
References: <79214066-3886-e0ef-f26e-8cb3d53404be@linuxfoundation.org>
Message-ID: <e41ded21-1432-afa8-2e42-e509539281c4@gmail.com>
Date: Tue, 7 Jul 2020 01:58:21 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <79214066-3886-e0ef-f26e-8cb3d53404be@linuxfoundation.org>
Content-Language: en-US
X-Mailman-Approved-At: Tue, 07 Jul 2020 18:04:13 +0000
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

> The suggestions you made will help us adapt inclusive terminology
> for the current times, and also help us move toward terms that are
> intuitive and easier to understand keeping our global developer
> community in mind.

> Allowlist/denylist terms are intuitive and action based which have a
> globally uniform meaning.

Nobody has a problem understanding "blacklist" and "whitelist". These
are universally understood words even outside of computing. Claiming
that we need clearer alternatives is smoke and mirrors.

> Terms such as "whitelist" etc are contextual, hence assume contextual
> knowledge on the part of the reader.

We are talking about the source code of and interacting with an
operating system kernel. Naturally, most things here are contextual and
require domain knowledge to be understood correctly. Not requiring
contextual knowledge when reading the kernel sources doesn't sound like
a realistic argument.

Raschko T.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
