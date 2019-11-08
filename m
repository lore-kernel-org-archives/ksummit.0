Return-Path: <SRS0=8BIp=ZA=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F9D2C43331
	for <ksummit-discuss@archiver.kernel.org>; Fri,  8 Nov 2019 02:42:03 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6EC0820869
	for <ksummit-discuss@archiver.kernel.org>; Fri,  8 Nov 2019 02:42:03 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=intel-com.20150623.gappssmtp.com header.i=@intel-com.20150623.gappssmtp.com header.b="lPy/NPVD"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6EC0820869
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=intel.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 17608C86;
	Fri,  8 Nov 2019 02:42:03 +0000 (UTC)
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id ACB63C75
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  8 Nov 2019 02:42:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
	[209.85.210.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B1D73710
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  8 Nov 2019 02:41:59 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id d5so3951492otp.4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 07 Nov 2019 18:41:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=toJ5uCNFjWzAJBR7ewaPVlC4vkW0KDP/L41X/HMgzgw=;
	b=lPy/NPVDDKD+ljwMBp5nM3NVDpwEfFYxmWpm5I2XkGmYtaHYtOtuieVIpZ11xSy5D5
	zDu67m4cQNjGUQr+N3ov/20jQetm+yuZmeWgycWda/4Z8WWX2JqYr0ibGqm+PQBYhfTV
	FFphYJWpn0ZVinfKUyrxMsb4yNcnrqag9h3ss+ouB+Qxgf9FSOwCEPszXFWHay7/a2BR
	yjqh5G92uY/ZvsjM9xQgsg/0csXrSv+O2AK0wqeAnjVXS+9wHONM/o1DGmTvOyI7CTcH
	WUtxubP94Xixp79t2VSY3o1w4ZEoj+7uxOTBvwEg2KSaIXv2OhS/bUyYcuKs4AzwOoXS
	8w0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=toJ5uCNFjWzAJBR7ewaPVlC4vkW0KDP/L41X/HMgzgw=;
	b=ESQVcuvQhd3x/FXjLb65aS4Al8YGnwPSwZrhjJ1SUTBVm5IPSvs9l1J9FFYERBeVQn
	J/0UVAs8CYekw/y48pXeWAiDJji0DWmqYl+MMh/htzigCju68x22q7oBqjNqBR2MCzh6
	3m5ysCWQ5PYE1+HAIhuA6FknSKzdvKAcKU0+DHAdkLIVoOwlLj10B9Z6DIM/78Tk4BfF
	MS5fjQlC+/4S5HoxM7wyEVm5etuyrgvqKbe2P3m9HdgKTUiO0PKxYKTDCaENSTwOOGIB
	qmg4W3WmbIAjK/060G1ki1W1s2ksy2PdlTm9ZtPvOubKSnUjLBEcD5rlFvjVPdsbs3Sh
	BBGQ==
X-Gm-Message-State: APjAAAUxRNOf7LuJZtSFTZPcz8WiFvjIwotfrzakYpxHrzLNvIapfMjJ
	ibjbuJeDjoPQeuhxt++yupkrN4LTqvb52nILATWdDw==
X-Google-Smtp-Source: APXvYqxiarfUJuzJ/cdOES1XRvlOh8CKmQ30F2dBwib+G2RYBXD1qCju76LJ23t8FPP3e6cmQLgaXAwfB5jE1+JkAmg=
X-Received: by 2002:a05:6830:1af7:: with SMTP id
	c23mr5849948otd.247.1573180918867; 
	Thu, 07 Nov 2019 18:41:58 -0800 (PST)
MIME-Version: 1.0
References: <156821692280.2951081.18036584954940423225.stgit@dwillia2-desk3.amr.corp.intel.com>
	<156821693396.2951081.7340292149329436920.stgit@dwillia2-desk3.amr.corp.intel.com>
	<20191001075559.629eb059@lwn.net> <20191107131313.26b2d2cc@lwn.net>
In-Reply-To: <20191107131313.26b2d2cc@lwn.net>
From: Dan Williams <dan.j.williams@intel.com>
Date: Thu, 7 Nov 2019 18:41:46 -0800
Message-ID: <CAPcyv4ihn9kgO-VDOK=Jyj8RrG2RVXUvu8Y66zR7JYZm9-rWPA@mail.gmail.com>
To: Jonathan Corbet <corbet@lwn.net>
Cc: Vishal L Verma <vishal.l.verma@intel.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	linux-nvdimm <linux-nvdimm@lists.01.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Dmitry Vyukov <dvyukov@google.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Steve French <stfrench@microsoft.com>, "Tobin C. Harding" <me@tobin.cc>
Subject: Re: [Ksummit-discuss] [PATCH v2 2/3] Maintainer Handbook:
	Maintainer Entry Profile
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

On Thu, Nov 7, 2019 at 12:13 PM Jonathan Corbet <corbet@lwn.net> wrote:
>
> Hi, Dan,
>
> A month or so ago I wrote...
>
> > > See Documentation/maintainer/maintainer-entry-profile.rst for more details,
> > > and a follow-on example profile for the libnvdimm subsystem.
> >
> > Thus far, the maintainer guide is focused on how to *be* a maintainer.
> > This document, instead, is more about how to deal with specific
> > maintainers.  So I suspect that Documentation/maintainer might be the
> > wrong place for it.
> >
> > Should we maybe place it instead under Documentation/process, or even
> > create a new top-level "book" for this information?
>
> Unless I missed it, I've not heard back from you on this.  I'd like to get
> this stuff pulled in for 5.5 if possible...  would you object if I were to
> apply your patches, then tack on a move over to the process guide?

Sorry for the delay.

Yes, the process book is a better location now that this information
is focused on being supplemental guidelines for submitters rather than
a "how to maintain X subsystem" guide.

I do want to respin this without the Coding Style addendum to address
the specific feedback there, but other than that I'm happy to see this
move forward.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
