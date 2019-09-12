Return-Path: <SRS0=FsAW=XH=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 34526ECDE27
	for <ksummit-discuss@archiver.kernel.org>; Thu, 12 Sep 2019 07:41:40 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0AB0720830
	for <ksummit-discuss@archiver.kernel.org>; Thu, 12 Sep 2019 07:41:39 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=intel-com.20150623.gappssmtp.com header.i=@intel-com.20150623.gappssmtp.com header.b="r5iciw4g"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0AB0720830
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=intel.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 7FB54C21;
	Thu, 12 Sep 2019 07:41:39 +0000 (UTC)
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F2CEBB79
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 12 Sep 2019 07:41:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
	[209.85.167.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 696F481A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 12 Sep 2019 07:41:37 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id 11so1043209oix.4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 12 Sep 2019 00:41:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=o8LTeC4govd1fNBJO0ioJqcSmCWQfNIKLUUZIaiAhHg=;
	b=r5iciw4g8aqTCdevxlX7Yl1qKRDD/phXv4v2oTTELHQGit1wxhO/OmSHjpMCzaPPrC
	Vr8pfrqAPKZP/QRditALJa3T7m3utIzI7knIH43NmnrLOYeWwUlpJTX+V+qEIHPXtDWk
	i+S3TBIunng9amNi6owpSMAwGYmTOzTOg39UCXWUFCAs9mW/cRdQ9TrieNsVwozqYGMY
	ud38gNVy7hASRzjURWmOVrK8Lm1bGKmNLt/QqIPlK0Zbi79sDGl94Y4HvgRcvzJv2owV
	GO/6yFDyIZBlsfIr5xvExb4PHDGHZscKuenTgOys/I73OMjRL8cbQsLrUCTP+Fo1/Uy7
	k13A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=o8LTeC4govd1fNBJO0ioJqcSmCWQfNIKLUUZIaiAhHg=;
	b=LtsKPnwPNoF0LK929APDZdSj0twrhKOrocTxelWish9ocMxBh7k+rYUisgcxOE31fa
	t35Oa4SS8uvYWTjSsdt2nX3pXJar+8d1szdT5UTwADeDR2YlsaJsCIDnHXVoGD0QNMtB
	Ch2SumZgZKrAPVy+cUdEmRa8tFsq5UgX8QqwlscW2ZZSbf4J2yV8HVlk51pdsyrkHQoU
	FiTUuGNcxdiz4Rvf+5FvPDa8mE3vSGmCAAcqo3zZp8rkd6sfshNgH6CjB6wTK3dbR9lB
	9Cb/ClU1jKeZHOnhazh5OFv/7FOGAV4QY6BdViAFqQ5tjFrA24LU8uXKnGG84FSM1OOX
	JTWQ==
X-Gm-Message-State: APjAAAXXNYg1zZdpN5lSKRTvwJs89kYHvB1Bzk8Ao6V7sYv9decPWhd0
	AXDfbFOjQO5gFBIq6qpI32ZR3q3vpYxwvvEjBeMqjQ==
X-Google-Smtp-Source: APXvYqw0A8Lqk6qX7CD0ZjUAfqaCMtvOeZCnyqiVzGAx3LVFCio/Y9Fb+8rbJ3TzTxR704q9l8iceiToxbjJgcESn2g=
X-Received: by 2002:aca:eb09:: with SMTP id j9mr7724558oih.105.1568274096350; 
	Thu, 12 Sep 2019 00:41:36 -0700 (PDT)
MIME-Version: 1.0
References: <156821692280.2951081.18036584954940423225.stgit@dwillia2-desk3.amr.corp.intel.com>
	<156821693963.2951081.11214256396118531359.stgit@dwillia2-desk3.amr.corp.intel.com>
	<20190911184332.GL20699@kadam>
	<9132e214-9b57-07dc-7ee2-f6bc52e960c5@kernel.dk>
In-Reply-To: <9132e214-9b57-07dc-7ee2-f6bc52e960c5@kernel.dk>
From: Dan Williams <dan.j.williams@intel.com>
Date: Thu, 12 Sep 2019 00:41:24 -0700
Message-ID: <CAPcyv4ij3s+9uO0f9aLHGj3=ACG7hAjZ0Rf=tyFmpt3+uQyymw@mail.gmail.com>
To: Jens Axboe <axboe@kernel.dk>
Cc: Dave Jiang <dave.jiang@intel.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	linux-nvdimm <linux-nvdimm@lists.01.org>,
	Vishal Verma <vishal.l.verma@intel.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	bpf@vger.kernel.org, Dan Carpenter <dan.carpenter@oracle.com>
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

On Wed, Sep 11, 2019 at 3:11 PM Jens Axboe <axboe@kernel.dk> wrote:
>
> On 9/11/19 12:43 PM, Dan Carpenter wrote:
> > On Wed, Sep 11, 2019 at 08:48:59AM -0700, Dan Williams wrote:
> >> +Coding Style Addendum
> >> +---------------------
> >> +libnvdimm expects multi-line statements to be double indented. I.e.
> >> +
> >> +        if (x...
> >> +                        && ...y) {
> >
> > That looks horrible and it causes a checkpatch warning.  :(  Why not
> > do it the same way that everyone else does it.
> >
> >       if (blah_blah_x && <-- && has to be on the first line for checkpatch
> >           blah_blah_y) { <-- [tab][space][space][space][space]blah
> >
> > Now all the conditions are aligned visually which makes it readable.
> > They aren't aligned with the indent block so it's easy to tell the
> > inside from the if condition.
> >
> > I kind of hate all this extra documentation because now everyone thinks
> > they can invent new hoops to jump through.
>
> FWIW, I completely agree with Dan (Carpenter) here. I absolutely
> dislike having these kinds of files, and with subsystems imposing weird
> restrictions on style (like the quoted example, yuck).
>
> Additionally, it would seem saner to standardize rules around when
> code is expected to hit the maintainers hands for kernel releases. Both
> yours and Martins deals with that, there really shouldn't be the need
> to have this specified in detail per sub-system.

So this is *the* point of the exercise.

I picked up this indentation habit a long while back in response to
review feedback on a patch to a subsystem that formatted code this
way. At the time CodingStyle did not contradict the maintainer's
preference, so I adopted it across the board.

Now I come to find that CodingStyle has settled on clang-format (in
the last 15 months) as the new standard which is a much better answer
to me than a manually specified style open to interpretation. I'll
take a look at getting libnvdimm converted over.

If we can take that further and standardize all of the places where
contributors see variations across subsystems on the fundamental
questions of style, timing, follow-up, and unit test invocation the
Maintainer Entry Profile can be superseded with common guidelines.

Otherwise, yes I completely agree with you that a "Maintainer Entry
Profile" is a sad comment on the state of what contributors need to
navigate, but that's today's reality that needs to be addressed.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
