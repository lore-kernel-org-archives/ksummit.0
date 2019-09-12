Return-Path: <SRS0=FsAW=XH=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.5 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E7CC4CEC8
	for <ksummit-discuss@archiver.kernel.org>; Thu, 12 Sep 2019 20:01:34 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 91D1820830
	for <ksummit-discuss@archiver.kernel.org>; Thu, 12 Sep 2019 20:01:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 91D1820830
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=acm.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 45E2FD56;
	Thu, 12 Sep 2019 20:01:34 +0000 (UTC)
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8DB1ECB2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 12 Sep 2019 20:01:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
	[209.85.210.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 424517D2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 12 Sep 2019 20:01:32 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id y5so13892289pfo.4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 12 Sep 2019 13:01:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=7ShxzRkwVpFXPFUhCMkn8w2H4SHeQQrrLJDUeQMUdcI=;
	b=oFeeyzJ3uPbIyE9hMmCyotS2GSTwXj6HdvBf5whAdgaIP7w4XCXISMFGEjkOZw65I3
	sNLStL8xlxcQncFZQXK3low6Otsv3VwZmJ3ZC5A1eXNp0kd+pzowLynbtn/70AEMEiOd
	yQEDlLuia09VsqQuluj7D2FGy/AMA8iVMUUx9oSYETxAcS6Rp6IvzzDhYePZngownPCT
	hjxRO9ErHXrtasNRwny0tkoDMMxpKc1q9Jwo1EOoCC1TwfR+yPrG6bfiVZbLWNcTX0Jy
	VsuGHUk65gUOSbM6TtuNwFHiz/HEvQ0Nl23HZ20HM9274PupAtxEu+ZT5tj7u4fysVR8
	FQqA==
X-Gm-Message-State: APjAAAU+VxP5vI0XMxVhHZPzga8s4dq6Ydx/cP+pBKxvtNS2E6HV5F3N
	w5a2dHBmaOipliITj4zY1xs=
X-Google-Smtp-Source: APXvYqyry5egiR7l6s0aQO4rPH0UT6pfvHSg90vmXu4bIiK4MHA+WwyQh+uKxb6FVD5SJXGN+IyDag==
X-Received: by 2002:a63:fe52:: with SMTP id x18mr23647280pgj.344.1568318491686;
	Thu, 12 Sep 2019 13:01:31 -0700 (PDT)
Received: from [192.168.43.134] ([38.98.37.138])
	by smtp.gmail.com with ESMTPSA id v43sm134470pjb.1.2019.09.12.13.01.18
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 12 Sep 2019 13:01:30 -0700 (PDT)
To: Joe Perches <joe@perches.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Dan Williams <dan.j.williams@intel.com>
References: <156821692280.2951081.18036584954940423225.stgit@dwillia2-desk3.amr.corp.intel.com>
	<yq1o8zqeqhb.fsf@oracle.com>
	<6fe45562-9493-25cf-afdb-6c0e702a49b4@acm.org>
	<44c08faf43fa77fb271f8dbb579079fb09007716.camel@perches.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <74984dc0-d5e4-f272-34b9-9a78619d5a83@acm.org>
Date: Thu, 12 Sep 2019 13:01:07 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <44c08faf43fa77fb271f8dbb579079fb09007716.camel@perches.com>
Content-Language: en-US
Cc: Dave Jiang <dave.jiang@intel.com>,
	ksummit-discuss@lists.linuxfoundation.org, linux-nvdimm@lists.01.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-kernel@vger.kernel.org, Steve French <stfrench@microsoft.com>,
	Vishal Verma <vishal.l.verma@intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Dmitry Vyukov <dvyukov@google.com>, "Tobin C. Harding" <me@tobin.cc>
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

On 9/12/19 8:34 AM, Joe Perches wrote:
> On Thu, 2019-09-12 at 14:31 +0100, Bart Van Assche wrote:
>> On 9/11/19 5:40 PM, Martin K. Petersen wrote:
>>> * The patch must compile without warnings (make C=1 CF="-D__CHECK_ENDIAN__")
>>>   and does not incur any zeroday test robot complaints.
>>
>> How about adding W=1 to that make command?
> 
> That's rather too compiler version dependent and new
> warnings frequently get introduced by new compiler versions.

I've never observed this myself. If a new compiler warning is added to
gcc and if it produces warnings that are not useful for kernel code
usually Linus or someone else is quick to suppress that warning.

Another argument in favor of W=1 is that the formatting of kernel-doc
headers is checked only if W=1 is passed to make.

Bart.

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
