Return-Path: <SRS0=FsAW=XH=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.5 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23689C4CEC7
	for <ksummit-discuss@archiver.kernel.org>; Thu, 12 Sep 2019 13:31:58 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0365520CC7
	for <ksummit-discuss@archiver.kernel.org>; Thu, 12 Sep 2019 13:31:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0365520CC7
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=acm.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 80947E2D;
	Thu, 12 Sep 2019 13:31:57 +0000 (UTC)
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F0BD8E26
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 12 Sep 2019 13:31:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
	[209.85.214.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A87F77DB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 12 Sep 2019 13:31:55 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id e5so754913pls.9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 12 Sep 2019 06:31:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=YbzzOwLPVFiyZazgwx4oK1haet1LCDg9IL0AWwLCITc=;
	b=etYvzzLzNwfKmWh2l7f1bGEHH0xGA9C8G6Uc0sSccPLIX6lUX/k6TvyPso9KGPpM2Q
	/R+7JqWm1j6zSeKM2K9VCHf48UI+PLM18P+WYbXRg1ZXj1TQ2OL0ffaau2l4NjZ73K9m
	HzhIifKxTnNJfoNvDDUZ8ixcoe6udzjkHSV8qSv7ILUznXW3kXztDxLHLtvHnZmwoHD6
	Zo9AdHVlRziCKFSLf8SZw4Z1eyd1CjcJp8bYf1qtLRLG6ZTeXMQamggpucsCe6XHT+Ub
	yqVUJdf/71wh6BsO1wtB6jtuERc5O5PCIpV4UzNbxiudhQYjULeNoKEoszqmUKSZKbbQ
	igiA==
X-Gm-Message-State: APjAAAVDKlfiMsVn2XtlLeStkF2cI+TcOATPaTw+dfoZ82zezNiab7PT
	Bo/4MHv7LVXeyQSMETk1va4=
X-Google-Smtp-Source: APXvYqyA9LmsIt46UYXRB/qnJg8y7VckXgkY1MT7b0npn/YciW4Pp1oR+XE+tg5ecGsQCpqqGjw73Q==
X-Received: by 2002:a17:902:b710:: with SMTP id
	d16mr12261985pls.55.1568295115090; 
	Thu, 12 Sep 2019 06:31:55 -0700 (PDT)
Received: from [172.19.249.100] ([38.98.37.138])
	by smtp.gmail.com with ESMTPSA id
	c125sm31524292pfa.107.2019.09.12.06.31.41
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 12 Sep 2019 06:31:54 -0700 (PDT)
To: "Martin K. Petersen" <martin.petersen@oracle.com>,
	Dan Williams <dan.j.williams@intel.com>
References: <156821692280.2951081.18036584954940423225.stgit@dwillia2-desk3.amr.corp.intel.com>
	<yq1o8zqeqhb.fsf@oracle.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <6fe45562-9493-25cf-afdb-6c0e702a49b4@acm.org>
Date: Thu, 12 Sep 2019 14:31:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <yq1o8zqeqhb.fsf@oracle.com>
Content-Language: en-US
Cc: Dave Jiang <dave.jiang@intel.com>,
	ksummit-discuss@lists.linuxfoundation.org, linux-nvdimm@lists.01.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-kernel@vger.kernel.org, Dmitry Vyukov <dvyukov@google.com>,
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

On 9/11/19 5:40 PM, Martin K. Petersen wrote:
> * Do not use custom To: and Cc: for individual patches. We want to see the
>   whole series, even patches that potentially need to go through a different
>   subsystem tree.

Hi Martin,

Thanks for having written this summary. This is very helpful. For the
above paragraph, should it be clarified whether that requirement applies
to mailing list e-mail addresses only or also to individual e-mail
addresses? When using git send-email it is easy to end up with different
cc-lists per patch.

> * The patch must compile without warnings (make C=1 CF="-D__CHECK_ENDIAN__")
>   and does not incur any zeroday test robot complaints.

How about adding W=1 to that make command?

How about existing drivers that trigger tons of endianness warnings,
e.g. qla2xxx? How about requiring that no new warnings are introduced?

> * The patch must have a commit message that describes, comprehensively and in
>   plain English, what the patch does.

How about making this requirement more detailed and requiring that not
only what has been changed is document but also why that change has been
made?

> * Patches which have been obsoleted by a later version will be set to
>   "Superceded" status.

Did you perhaps mean "Superseded"?

Thanks,

Bart.

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
