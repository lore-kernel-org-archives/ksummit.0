Return-Path: <SRS0=i5gH=7Z=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0FCB0C433E0
	for <ksummit-discuss@archiver.kernel.org>; Fri, 12 Jun 2020 16:08:47 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D417B20801
	for <ksummit-discuss@archiver.kernel.org>; Fri, 12 Jun 2020 16:08:46 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="BiKtnjFX"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D417B20801
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 515EB87E65;
	Fri, 12 Jun 2020 16:08:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5w9rRbbDCazV; Fri, 12 Jun 2020 16:08:43 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1F1EB87D3B;
	Fri, 12 Jun 2020 16:08:43 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E0D62C0881;
	Fri, 12 Jun 2020 16:08:42 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A60D9C016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 12 Jun 2020 16:08:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 92D7888B73
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 12 Jun 2020 16:08:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MbsO7wlGcj6m
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 12 Jun 2020 16:08:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com
 [209.85.167.171])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 73DEC88B6C
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 12 Jun 2020 16:08:39 +0000 (UTC)
Received: by mail-oi1-f171.google.com with SMTP id a137so9165443oii.3
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 12 Jun 2020 09:08:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=I3unn+8ck4qff5VDiu5aS75U40uGZuh+OKF0jazv4mU=;
 b=BiKtnjFXWc3HJJPmoY6y3Z3q2hLQKVM7qqQ/EQOCtQxIhQ6K3EDFa6ondvLyeRg9mB
 VnNhF01+KhDVy2A6OFG/3OEO36Dj7VLeL5BEImK7i0EFcv31UZhG/rHZ7lB5Xn2KDAeb
 2TIKOSWG0t/QARsU+Zwa+WjoLC38gPb7IYTX4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=I3unn+8ck4qff5VDiu5aS75U40uGZuh+OKF0jazv4mU=;
 b=hsNnu/bokzW+RQqbExvgol2oYMapuUaRB2FwaXQdxxV3FdJQQTJHZIkAbwoR5i6Jw2
 4M/7uYnla7yA2OrSBruTxi8JQ0mLTi6y7suRSJZJKRzqq5y/4R259IF5C+L5NpKzF5rR
 2NJEtgbej/RisinDNoNfguvsKQBPhAx8rya89NqmzbTqWh/dlJk/rLO3KnAIBwj/MdA6
 2vfIu9GPSqIhwDFG5VJQ1OpJ9scjUPSx9xu42xAjhTPJfjiTxYWp1qSPWwynSXpB1Z2G
 cNrckyYzEQ+wWB1FFaj5fyIBKiULYe59MpOepb8xxzEh45UKTl7M9eu9fGkCPz7QcPxx
 SvhQ==
X-Gm-Message-State: AOAM532d/hUD36YOhsgS5vdmET2goK3hzNKKiHq8OPKt/ctoeDafDykU
 qB6w3KVMvcg6ybAaLhyAe+dw/9/v
X-Google-Smtp-Source: ABdhPJx2R5vmcaouoWZX/F1G68xkw8R7t4gB7MUzw5vnD2Yl58NbHXaD3bKee5V+Uhtk6YqYUwEfwA==
X-Received: by 2002:a05:6808:687:: with SMTP id k7mr153577oig.69.1591978118601; 
 Fri, 12 Jun 2020 09:08:38 -0700 (PDT)
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id j46sm1411947ota.69.2020.06.12.09.08.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 12 Jun 2020 09:08:37 -0700 (PDT)
To: Mike Rapoport <rppt@linux.ibm.com>, Joe Perches <joe@perches.com>
References: <20200609145353.628a342d@lwn.net>
 <CACRpkdZOxaA9fpd0zFa_GGo1boOEbOoxNbaUavXbewp=CLbEDg@mail.gmail.com>
 <8f68863a-d04c-4502-f88e-2a8b0e3c7968@linuxfoundation.org>
 <928d6b2c9a8afb4262a0d931bce03987ef002c8f.camel@perches.com>
 <20200612090706.GF2051223@linux.ibm.com>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <edbf4ead-6f2d-e548-ee40-517b3ee6ba07@linuxfoundation.org>
Date: Fri, 12 Jun 2020 10:08:36 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200612090706.GF2051223@linux.ibm.com>
Content-Language: en-US
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

On 6/12/20 3:07 AM, Mike Rapoport wrote:
> On Thu, Jun 11, 2020 at 11:28:09AM -0700, Joe Perches wrote:
>> On Thu, 2020-06-11 at 12:03 -0600, Shuah Khan wrote:
>>> People that know the sub-systems well might not
>>> have time to document and more importantly keeping the documents
>>> updated.
>>
>> So you somehow expect people that do _not_ know the
>> sub-system well to produce good and useful documentation?
> 
> Writing documentation is a way to learn.
> 

+1

I find it useful and I also use it as learning tool. When I attempt
document or explain a concept or an area, I get a deeper understanding
of that area.

> Besides, to produce good and usefull documentation it is not necessary
> to have very deep understanding of all the small details. The writer
> must capture the large picture and be able to explain it.

+1.

I would counter the argument that new developers can't document an area,
they can and the document can be reviewed by experts.

A fresh set of eyes bring a new perspective and could help improve the
code, just like the benefits of having others test your code.

I have had some level of success adding documentation tasks in the
mentoring program. It does require experts spending time reviewing to
make sure it is correct.

One thing we could do is creating a list documentation todo and review
which is part of our development workflow anyway.

thanks,
-- Shuah
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
