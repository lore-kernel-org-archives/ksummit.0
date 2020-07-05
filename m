Return-Path: <SRS0=5cql=AQ=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7404DC433DF
	for <ksummit-discuss@archiver.kernel.org>; Sun,  5 Jul 2020 01:32:39 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 376FA207CD
	for <ksummit-discuss@archiver.kernel.org>; Sun,  5 Jul 2020 01:32:39 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="HSX7QgEP"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 376FA207CD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E7AD9204C7;
	Sun,  5 Jul 2020 01:32:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BROKzs7CXnZo; Sun,  5 Jul 2020 01:32:37 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id C347F204A8;
	Sun,  5 Jul 2020 01:32:37 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 76E0BC088C;
	Sun,  5 Jul 2020 01:32:37 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 261DAC0733
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun,  5 Jul 2020 01:32:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0F9EB882C0
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun,  5 Jul 2020 01:32:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GHg23jMS-IIc
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun,  5 Jul 2020 01:32:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 959228820C
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun,  5 Jul 2020 01:32:34 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id z5so16765299pgb.6
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sat, 04 Jul 2020 18:32:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=59VxMmgeT9KxBaJVCFw1M3O2KmYJOpHc2AYpI19GAYA=;
 b=HSX7QgEPS6LoqylMa5IacECE4VnR35/Vx+maHYSJHGTCQcCzRIkD4U7zkpsFkh2bHy
 SVufEof2RP8fvcPSDBbLgp9y7TNnDpBL2UvMPyzzm0PxsHggABDbCVrySBllbgIfjRpm
 ohcBzWP7H0su5mbxwpPYthNv0bWIVhRanJVtg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=59VxMmgeT9KxBaJVCFw1M3O2KmYJOpHc2AYpI19GAYA=;
 b=OtbnpQpSW04iPJE8vv3X0KmD4ClJJGsGxWLtlmRpXpaRfU6XvPix0OWRsAMLcrRo9q
 MiRNbXqslCM5swmr3WLrM7jSFBXTPU+k1/b/IUB2BfQqfZXZl3S9WQQiWmh12uNLumMG
 ubEPNt0fEQIJ6JUcG4+6F71a5WrJJJYuF9PPombLHIPPUd8rc7o6PI2PaZvpB7w7g5bu
 EaDH3NFYjNwGhdCNHYS7MjBirWXUFa3CvrmejTQ/scw0kYSPM4gDl5UJ+V+BTkqDHwwV
 C0h56/pFcjeojupE2Wp8YINvkgzNZjiiqbv3nEZIgf7QRW1vMmqawPaEp4XiespMGOan
 aekg==
X-Gm-Message-State: AOAM532I9lExAorgNwAUWwXK+IJIQdRsw4XaBpgrN+05Xs4PF2vWbFsD
 UfEHCQDdyGcplmfwQv9KLmRQuw==
X-Google-Smtp-Source: ABdhPJydgdPeV3xrmm7Cro5fgXstCUAh4/jRr0i8EJMDzDXeuUqNuh3g1Nsudc/hVo0x7aydTHTxlQ==
X-Received: by 2002:a63:e24d:: with SMTP id y13mr29777761pgj.248.1593912754183; 
 Sat, 04 Jul 2020 18:32:34 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id t2sm14531744pja.1.2020.07.04.18.32.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Jul 2020 18:32:33 -0700 (PDT)
Date: Sat, 4 Jul 2020 18:32:32 -0700
From: Kees Cook <keescook@chromium.org>
To: Dave Airlie <airlied@gmail.com>
Message-ID: <202007041811.45236EE598@keescook>
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 <1593897917.7058.11.camel@HansenPartnership.com>
 <CAPM=9tyjdzU-O2nAWFngGSE=aSfUsaRer9x3bk8hpyhCOX0Bew@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPM=9tyjdzU-O2nAWFngGSE=aSfUsaRer9x3bk8hpyhCOX0Bew@mail.gmail.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 tech-board-discuss@lists.linuxfoundation.org,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 Chris Mason <clm@fb.clm>
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

On Sun, Jul 05, 2020 at 09:39:29AM +1000, Dave Airlie wrote:
> I don't totally agree on that, because like the CoC discussion, people
> need concrete examples. People need reasons, saying simply "be
> inclusive" doesn't work.
> 
> You say "be inclusive" people don't think about it, they just go "I'm
> inclusive" and proceed, never questioning what it means to be
> inclusive, they normalise inclusivity to their self image and within
> their lives where they might never confront anything like this.
> 
> I don't doubt we get the American/Ottoman/Barbery coast people and the
> correct answer to those people is to tell them to examine why they
> suddenly care about Barbery slavery now when they have never even
> heard or worried about it before. Why haven't they submitted patches
> removing slavery terminology from the kernel before?

Right; this part of the patch provides a temporal explanation for "but
why now?" and acts as an internal reference, instead of pointing to
external[1] sources, which lack the Linux-specific contextualization.

Additionally, I think it provides rebuttals to many of the specious
arguments against inclusive terminology (and it could perhaps gain
more, as we've already seen in this thread, against slippery slope
arguments). It also attempts to acknowledge what this change in the
kernel processes provides to the world in general: it's a fairly local
change to make our development community less disruptive to those that
would seek to join it -- it does not, and cannot, solve global racism
(though that would be nice).

[1] https://tools.ietf.org/id/draft-knodel-terminology-01.html

-- 
Kees Cook
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
