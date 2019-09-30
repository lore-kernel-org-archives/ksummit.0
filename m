Return-Path: <SRS0=BFb+=XZ=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A3DC35280
	for <ksummit-discuss@archiver.kernel.org>; Mon, 30 Sep 2019 21:24:16 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6B70620815
	for <ksummit-discuss@archiver.kernel.org>; Mon, 30 Sep 2019 21:24:16 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="XlKzxVNU"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6B70620815
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id C4756EE7;
	Mon, 30 Sep 2019 21:24:15 +0000 (UTC)
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 989BEEE5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 30 Sep 2019 21:24:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
	[209.85.160.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2A52C735
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 30 Sep 2019 21:24:14 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id u40so18942171qth.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 30 Sep 2019 14:24:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=date:from:to:cc:subject:message-id:mail-followup-to:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=2a8sEC0KmLOofOR/KmXczBckB9a5kqxAqx9TpHSiZfc=;
	b=XlKzxVNU06r0BbfUWYYjDxmLyDoAzPgulcpGcjH1fkd5eyGkhsQ6FpuDGWs+O7O49T
	NmfC/uKEsn5soFcOfnijm//i+TiQ8XPKy6MNYp4wwDfrarx9NNHqQvMnv2OByCynYf3u
	DecexrvOgamwHRcWYKkfRPmr2Tf109lJhmoKY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id
	:mail-followup-to:references:mime-version:content-disposition
	:in-reply-to:user-agent;
	bh=2a8sEC0KmLOofOR/KmXczBckB9a5kqxAqx9TpHSiZfc=;
	b=qnsAqWrgejQNvQQ2V/0AL/e21+h3ZbpQeqxa7RK1LcPh45kMF4Tmw9TU2WaTko+Wqu
	Wds8LlH1mjpbFvxnE6/MPnoNPryc+sL+Z13X0YjqfuVfa5KFFc7I3Qn/WmYuBVy3pT6X
	oTLhnGxGo2n0BPLHVezCSlsjpiOyPM6vEQIZVTVhHsDltr0URkIJHqKQxElzbT4uqTFj
	/NWshtQWLdXKXXhOu2N80NCqfVQi9qCsrBlWxWRKL9EOcrHnmT/N6eYH510QVumDFpjb
	kPihik+V5qGa6T7KmZZOPdIGG4lJMGAYfSYVwCti9yZTfa4VJQSTY2vqZymMTTh1128H
	qK8Q==
X-Gm-Message-State: APjAAAXBfKjkYdypaSkVBiaO+yPI+JOSChaEATAG8QDAYE2u3D83g7ZD
	/AiQ/s3YMgXsyiPcBzg1A46sn42m
X-Google-Smtp-Source: APXvYqyN2glVmWaNCl4qwwFv62ADu1gIzNjsiyCxBYRncN93yfHISTBV3jwCPgE577G9BZ4FEURzFg==
X-Received: by 2002:ac8:5344:: with SMTP id d4mr27128383qto.258.1569878653021; 
	Mon, 30 Sep 2019 14:24:13 -0700 (PDT)
Received: from pure.paranoia.local ([87.101.92.157])
	by smtp.gmail.com with ESMTPSA id
	x19sm6065914qkf.26.2019.09.30.14.24.11
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Mon, 30 Sep 2019 14:24:12 -0700 (PDT)
Date: Mon, 30 Sep 2019 17:24:10 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <20190930212410.GE14403@pure.paranoia.local>
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
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <610c62f2-f2e4-2eb1-3051-53c573194f52@iogearbox.net>
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

On Mon, Sep 23, 2019 at 02:52:01PM +0200, Daniel Borkmann wrote:
> > Most (all) of the "kit" functionality should be separated from the UI
> > and be available for scripting/automation/other UIs. Whether it's
> > done as "libgit" or as "shell out" is discussable.
> [...]
> On that note, such a tool would also need to co-exist with the current
> email based process for some (long?) time in order to allow a smooth
> transition period. Last week I spent a few of nights hacking a small tool
> which is regularly pulling the lore git trees I'm interested in and checking
> out all [new] mails into maildir format so they can be read naturally by
> UIs like mutt et al [0]. As an experiment, in case of bpf vger mailing list,
> it extracts all current ~8k mails in under a second:

Thanks for working on this -- I've started on a similar tool in the
past, but got distracted and never completed it. In my implementation,
it was piping messages to procmail, which allowed writing complex rules
for folders/pre-processing, etc. May I suggest that your tool also
offers a stdout that can be piped to procmail?

-K
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
