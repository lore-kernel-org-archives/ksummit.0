Return-Path: <SRS0=5ifu=XG=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9ADFECDE20
	for <ksummit-discuss@archiver.kernel.org>; Wed, 11 Sep 2019 22:11:35 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BB94C2081B
	for <ksummit-discuss@archiver.kernel.org>; Wed, 11 Sep 2019 22:11:35 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel-dk.20150623.gappssmtp.com header.i=@kernel-dk.20150623.gappssmtp.com header.b="QVCVJyaz"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BB94C2081B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=kernel.dk
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 49835DC9;
	Wed, 11 Sep 2019 22:11:35 +0000 (UTC)
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B55AD904
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Sep 2019 22:11:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
	[209.85.215.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 687C62C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Sep 2019 22:11:33 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id n4so12259942pgv.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Sep 2019 15:11:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kernel-dk.20150623.gappssmtp.com; s=20150623;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=Q6jLEHDrdAVkyK20fWjT39oclCB9S4iV/KFrjMBbJeE=;
	b=QVCVJyazN/1N3tJh29TNpXnPZfFboklNshuMEVATsFL73C4lZ3qdC9cIJwoWXu03no
	Yo+usfFGucs6trZ6+x8CKnsjWG1J93b4JdVgkzYxMZtJjlsmh6pRNhFufp6iwRTUeiZT
	MdmwZDKL3OJ4enBbnJjaALuEsrl8rx30ORRFnv2Jr+pCyQKgT/0b2/WOfiaT1DVa87G5
	Y2NPh7gy9tsZ00Phml674zGM20dJ/8cuZjGJDzYAsjA9Z6pGr2jo2reiYecdjUlWGfd6
	JNDirCjdVZwZUzGsqb5fF0iFPnLZXl4Rrnd4IZtgZ2f8Ofom94jQ2//HypL5e60Iw0+s
	WHAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=Q6jLEHDrdAVkyK20fWjT39oclCB9S4iV/KFrjMBbJeE=;
	b=XYhrqPzMJ4r+10RQdVyzKDjrcmAb6amM/u/5EkqC2NBEAqp6zdGEayPXJzDhlHTrPJ
	6CivRhN4WJxjQrpTz+YCnZu4waKfUdrZdxOsdyQtqUn3hom05Gxxy2lESuxXusjyLpM+
	g8rwwkSnNs6AbyaCD5R9fqhVHQ3F+5NSafHCOTctaNPDa5xaXStO0HryR6bG8C3Rby7q
	x/qQnkoz3PWpz5Qq4GNA1HXIXc8KBKODa/CjpQml3KccJtX7D2SFdYX+zGNhvyKOFMr6
	/g8BazJtHVrxg54wKRf9YL0FyGhXClIO6HVlySYvkWCtdloxttEb/yM+G48Q0kqYYmEJ
	5BlQ==
X-Gm-Message-State: APjAAAU0rdg7+fxdxbI0EJJvh7Rde0EPKgZe1QcSPhRBXB46L62BQ1nU
	cE6StizW1zgIXbVeS8upqL84yA==
X-Google-Smtp-Source: APXvYqzc+AsW4ZOIn8LcwEkNbf6geCnMtHj/uM/luJQFVU08Hw7GR90DEjIbBO8Yfy27zfgzGqT8Rg==
X-Received: by 2002:a17:90a:fa3:: with SMTP id 32mr8129966pjz.35.1568239892801;
	Wed, 11 Sep 2019 15:11:32 -0700 (PDT)
Received: from [192.168.1.188] ([23.158.160.160])
	by smtp.gmail.com with ESMTPSA id
	q4sm24322182pfh.115.2019.09.11.15.11.30
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 11 Sep 2019 15:11:31 -0700 (PDT)
To: Dan Carpenter <dan.carpenter@oracle.com>,
	Dan Williams <dan.j.williams@intel.com>
References: <156821692280.2951081.18036584954940423225.stgit@dwillia2-desk3.amr.corp.intel.com>
	<156821693963.2951081.11214256396118531359.stgit@dwillia2-desk3.amr.corp.intel.com>
	<20190911184332.GL20699@kadam>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <9132e214-9b57-07dc-7ee2-f6bc52e960c5@kernel.dk>
Date: Wed, 11 Sep 2019 16:11:29 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190911184332.GL20699@kadam>
Content-Language: en-US
Cc: Dave Jiang <dave.jiang@intel.com>,
	ksummit-discuss@lists.linuxfoundation.org, linux-nvdimm@lists.01.org,
	Vishal Verma <vishal.l.verma@intel.com>,
	linux-kernel@vger.kernel.org, bpf@vger.kernel.org
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

On 9/11/19 12:43 PM, Dan Carpenter wrote:
> On Wed, Sep 11, 2019 at 08:48:59AM -0700, Dan Williams wrote:
>> +Coding Style Addendum
>> +---------------------
>> +libnvdimm expects multi-line statements to be double indented. I.e.
>> +
>> +        if (x...
>> +                        && ...y) {
> 
> That looks horrible and it causes a checkpatch warning.  :(  Why not
> do it the same way that everyone else does it.
> 
> 	if (blah_blah_x && <-- && has to be on the first line for checkpatch
> 	    blah_blah_y) { <-- [tab][space][space][space][space]blah
> 
> Now all the conditions are aligned visually which makes it readable.
> They aren't aligned with the indent block so it's easy to tell the
> inside from the if condition.
> 
> I kind of hate all this extra documentation because now everyone thinks
> they can invent new hoops to jump through.

FWIW, I completely agree with Dan (Carpenter) here. I absolutely
dislike having these kinds of files, and with subsystems imposing weird
restrictions on style (like the quoted example, yuck).

Additionally, it would seem saner to standardize rules around when
code is expected to hit the maintainers hands for kernel releases. Both
yours and Martins deals with that, there really shouldn't be the need
to have this specified in detail per sub-system.

-- 
Jens Axboe

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
