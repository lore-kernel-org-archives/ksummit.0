Return-Path: <SRS0=CRNu=XI=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=3.0 tests=DKIM_ADSP_CUSTOM_MED,
	DKIM_INVALID,DKIM_SIGNED,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB72DC4CEC7
	for <ksummit-discuss@archiver.kernel.org>; Fri, 13 Sep 2019 14:26:32 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8DCD320CC7
	for <ksummit-discuss@archiver.kernel.org>; Fri, 13 Sep 2019 14:26:32 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Muma7wU7"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8DCD320CC7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 239821007;
	Fri, 13 Sep 2019 14:26:32 +0000 (UTC)
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 326FAFF6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Sep 2019 14:26:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
	[209.85.222.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A62AF7D2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Sep 2019 14:26:30 +0000 (UTC)
Received: by mail-qk1-f193.google.com with SMTP id i78so28276893qke.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Sep 2019 07:26:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=azm0iCcEcLT4hP2ezLX9IH/CNTQYVbzbUpSdpFDhS6M=;
	b=Muma7wU7xrn/3eoODqlVRvCuiNodQ0jM/YGuZk17KRlQ+sXHjloLKgfJuARAKNbttw
	ZXWX5nRBYXbMxq6E6UZ7fr7qQd7PA/We79kui5sa00OB1/hT0wkY1lHtAiyJAnq7wN58
	PpC3YvxEID2w1Zc5e7igg13PT9Pslth2O5xmJc4pOdjYr7j/Ux5rLWkxX6CJnc2nxOkj
	uZMZX3jxegkn/5eyV1O2o2Y4AgCto/eztbIswtSKZY6UkZHPbRAJ5Y9LsNt+lBAOhWxd
	xOuuCttfM+CTc5sZpQXgU6mqEbpc4cryUInczp8jAPHv37yiwotDtlI2NtYpu8/HC431
	kjig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=azm0iCcEcLT4hP2ezLX9IH/CNTQYVbzbUpSdpFDhS6M=;
	b=rq2sC4S4kU5OJuRDtkpqQK16EylvNcwXXvuVJhhxbW/DGaGQoAoWDIF4knSCwXpcd9
	ETjLM8F2I+/+Qh1isu6mbCWRVeBsZy9IqjVABFBdPpNXSCaxvC8Sf7cWMFah1gtp4Dle
	kGiT8SSkFgG7dBUMcMcnSdvJt5XEA6m/CfMlJEBhzyGzs+a6r8JyoEn9g66+v5gHTq6P
	KLF2WpRYvBtAqSYcklSYrTPMS1UrX/TujEUG8adVNw84GcGabxQjSbwzn70KGekIAKF2
	3oCKUzgEUL7UdGbyaamAdfD4lblGXOTAldOV+cPHIBwiiYQJM5WCRgYDnd3OCJomF8P6
	36kg==
X-Gm-Message-State: APjAAAUIpBln5g5Vcg3dFzWxTMYdu43aSRRIbNBngjVgzFg39yGfAxSZ
	CI/TeUmqU861d98MPBjImGis4LcuI56dxFT22g==
X-Google-Smtp-Source: APXvYqwvIEmEHGdQDy+6TCnCkxmg7LX7EPhqfEAWQyNuhuySpaCg+l4qKRkviip5T5jA3ejq1Vb8Wt7RAKKyifcMyoQ=
X-Received: by 2002:a37:8905:: with SMTP id l5mr47165423qkd.152.1568384789630; 
	Fri, 13 Sep 2019 07:26:29 -0700 (PDT)
MIME-Version: 1.0
References: <156821692280.2951081.18036584954940423225.stgit@dwillia2-desk3.amr.corp.intel.com>
	<yq1o8zqeqhb.fsf@oracle.com>
	<6fe45562-9493-25cf-afdb-6c0e702a49b4@acm.org>
	<44c08faf43fa77fb271f8dbb579079fb09007716.camel@perches.com>
	<74984dc0-d5e4-f272-34b9-9a78619d5a83@acm.org>
	<4299c79e33f22e237e42515ea436f187d8beb32e.camel@perches.com>
In-Reply-To: <4299c79e33f22e237e42515ea436f187d8beb32e.camel@perches.com>
From: Rob Herring <robherring2@gmail.com>
Date: Fri, 13 Sep 2019 15:26:18 +0100
Message-ID: <CAL_JsqJju36BZPK6DJab28Ne-ORpEyPpxH0H4DuymxFMabpMRQ@mail.gmail.com>
To: Joe Perches <joe@perches.com>
Cc: Dave Jiang <dave.jiang@intel.com>, Bart Van Assche <bvanassche@acm.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	linux-nvdimm <linux-nvdimm@lists.01.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Vishal Verma <vishal.l.verma@intel.com>,
	Dmitry Vyukov <dvyukov@google.com>,
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

On Fri, Sep 13, 2019 at 3:12 PM Joe Perches <joe@perches.com> wrote:
>
> On Thu, 2019-09-12 at 13:01 -0700, Bart Van Assche wrote:
>
> > Another argument in favor of W=1 is that the formatting of kernel-doc
> > headers is checked only if W=1 is passed to make.
>
> Actually, but for the fact there are far too many
> to generally enable that warning right now,
> (an x86-64 defconfig has more than 1000)
> that sounds pretty reasonable to me.

It's in the 1000s on arm because W=1 turns on more checks in building
.dts files. There are lots of duplicates as most of the dts content is
as an include file (e.g. board dts includes soc dts).

We could shift the dts checks to W=2 (and what's enabled by W=2 now to
3) I guess.

Why not just promote what doesn't give false or still noisy warnings
out of W=1 to be the default?

Rob
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
