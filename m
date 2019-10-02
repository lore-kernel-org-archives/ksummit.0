Return-Path: <SRS0=9S04=X3=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8711C35280
	for <ksummit-discuss@archiver.kernel.org>; Wed,  2 Oct 2019 15:05:05 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BDF9C2133F
	for <ksummit-discuss@archiver.kernel.org>; Wed,  2 Oct 2019 15:05:05 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="akZRQStU"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BDF9C2133F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 70B85F58;
	Wed,  2 Oct 2019 15:05:05 +0000 (UTC)
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 95D0AF1E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  2 Oct 2019 15:05:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
	[209.85.160.180])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3D4495D0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  2 Oct 2019 15:05:04 +0000 (UTC)
Received: by mail-qt1-f180.google.com with SMTP id r5so26808596qtd.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 02 Oct 2019 08:05:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=date:from:to:cc:subject:message-id:mail-followup-to:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=oRX69xwhI/ZJDr0sqoERdlAld2qrcgQ/Y5j+SXfKPXU=;
	b=akZRQStUQdVLjyg128MoGozpCwSWbpdls+7hnmsLD5F436PO5myUsYGJ1QUSd42bm/
	2eCzVe/zGtN3FpXxk/QC2MVaV/rl0i5J6dGBZh3OKKCA2ynP/ux1UEnoSFSfBb2fxKuN
	5X+/utiARVKv4pkB5vqsDxoI2uu9hzW9aFH/Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id
	:mail-followup-to:references:mime-version:content-disposition
	:in-reply-to:user-agent;
	bh=oRX69xwhI/ZJDr0sqoERdlAld2qrcgQ/Y5j+SXfKPXU=;
	b=hq3ZrFkukqDgb9PHyZxT4GPGGdgjNRQn38g1RI97vRcV+O3zPcA2D/fGNNx3JxQOpp
	ELC5ZgeZuWNisSKsSZHsKX6BpG/hDfrn8k5lLupLyAerFedUHRx4IoPpZbqL2gjxV5fk
	9Fs9Jgq2s6Dj6pGHbDlnt/TRs+GpQKZnAmCL+g4B113PIaDygdOoyLlqLhd/UuHxabv0
	w/OzM9KtpZb4r3eg1OD+yF1cutm9f+/fjbkgX0Hzso9LlEiuF79zdervxJoz9wpOoJuc
	DtRmjb/DLZE/MFBFDEUxKm6JzQNH+mYj/Ym/o831YfMkfcPAGWrghvOyerxOPutpcIvI
	e8Lg==
X-Gm-Message-State: APjAAAXcpoWHCvEfhygtTjgTqkyZzwEG14/h1OMH9X7zhh2822P8rxzZ
	VUx9KjASU8O5HZRDIqVAyAvkqGSA
X-Google-Smtp-Source: APXvYqzaleXYCyJDShrzr2bM8Fn947vINxZZqSbiTVbQqfVt29tU0WHMRnK3J+gQSplZN0J4qaOM1w==
X-Received: by 2002:a0c:921a:: with SMTP id a26mr3326078qva.98.1570028703135; 
	Wed, 02 Oct 2019 08:05:03 -0700 (PDT)
Received: from pure.paranoia.local ([206.55.93.20])
	by smtp.gmail.com with ESMTPSA id
	h68sm9542428qkd.35.2019.10.02.08.05.00
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Wed, 02 Oct 2019 08:05:01 -0700 (PDT)
Date: Wed, 2 Oct 2019 11:04:58 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <20191002150458.GA5611@pure.paranoia.local>
Mail-Followup-To: Daniel Borkmann <daniel@iogearbox.net>,
	Dmitry Vyukov <dvyukov@gmail.com>,
	ksummit-discuss@lists.linuxfoundation.org, tytso@mit.edu,
	robh@kernel.org, laurent.pinchart@ideasonboard.com,
	rjw@rjwysocki.net, workflows@vger.kernel.org,
	skhan@linuxfoundation.org, gregkh@linuxfoundation.org,
	helgaas@kernel.org, jikos@kernel.org, jani.nikula@intel.com,
	geert@linux-m68k.org, stefan@datenfreihafen.org, sashal@kernel.org,
	hch@lst.de, Dmitry Vyukov <dvyukov@google.com>
References: <20190912120602.GC29277@pure.paranoia.local>
	<d6e8f49e93ece6f208e806ece2aa85b4971f3d17.1569152718.git.dvyukov@google.com>
	<610c62f2-f2e4-2eb1-3051-53c573194f52@iogearbox.net>
	<20190930212410.GE14403@pure.paranoia.local>
	<a01ead7c-94ce-12ef-a043-6fd492c6c431@iogearbox.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a01ead7c-94ce-12ef-a043-6fd492c6c431@iogearbox.net>
User-Agent: Mutt/1.12.1 (2019-06-15)
Cc: robh@kernel.org, ksummit-discuss@lists.linuxfoundation.org,
	gregkh@linuxfoundation.org, Dmitry Vyukov <dvyukov@gmail.com>,
	helgaas@kernel.org, workflows@vger.kernel.org,
	Dmitry Vyukov <dvyukov@google.com>, hch@lst.de, stefan@datenfreihafen.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Reflections on kernel
 development processes
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

On Tue, Oct 01, 2019 at 11:33:06PM +0200, Daniel Borkmann wrote:
> > Thanks for working on this -- I've started on a similar tool in the
> > past, but got distracted and never completed it. In my implementation,
> > it was piping messages to procmail, which allowed writing complex rules
> > for folders/pre-processing, etc. May I suggest that your tool also
> > offers a stdout that can be piped to procmail?
> 
> I have a rough version working now. ;-) Just pushed to [0]. Let me know if that
> does the trick on your side, I've added example configs for procmail to the repo
> as well for getting started. Did a quick run for l2md -> procmail -> mutt and
> seems fine as far as I can tell. (Patches always welcome of course.)

Nice, thanks! Until we have a better tool for holistic patch/series
management backed by public-inbox, this should allow folks to pre-filter
their messages.

Best,
-K
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
