Return-Path: <SRS0=9K8a=AS=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0C2AC433DF
	for <ksummit-discuss@archiver.kernel.org>; Tue,  7 Jul 2020 18:04:20 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9C308206E2
	for <ksummit-discuss@archiver.kernel.org>; Tue,  7 Jul 2020 18:04:20 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NqfQJx9/"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9C308206E2
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=alum.mit.edu
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D612489730;
	Tue,  7 Jul 2020 18:04:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i2rq5xLx6TPW; Tue,  7 Jul 2020 18:04:15 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4BD0F8778E;
	Tue,  7 Jul 2020 18:04:15 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 20C02C07FF;
	Tue,  7 Jul 2020 18:04:15 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 27489C016F;
 Mon,  6 Jul 2020 15:22:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 159CA893BE;
 Mon,  6 Jul 2020 15:22:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Kti3mQraIHoZ; Mon,  6 Jul 2020 15:22:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
 [209.85.160.171])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5ECD5893BC;
 Mon,  6 Jul 2020 15:22:13 +0000 (UTC)
Received: by mail-qt1-f171.google.com with SMTP id b25so7793633qto.2;
 Mon, 06 Jul 2020 08:22:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=YjNPcHVR4dZuQjAwnCbOyRb8wX3jJIQelGpEqdSOhmU=;
 b=NqfQJx9/UQmjQac/3kK3ryP3Ko5MWUYbBlwCF+RmRpbkWFVZ0OBhlP9iLwKySU2Kr7
 4YwhOirQlU/zrt1k4wYgOru1DTP/o1cDcnX4o/ZVYu1l82SW3zbDdDImbGTuinS91+aV
 6J8BTh9+ARLSbdr3/rzRwJCq6omJxniJGg/hwi8cAnK2FoJXf0pmlSKRPeaRemduopAQ
 Z8AlOxO4tvCv4sJeQukxQbM66db7a+ukkzccWYWZLVv/dxETk6068p2rBguHU/jiki9z
 w4fs6al0Rbh8HkEHDSek9eMhk215nfX/3Y+uYm6dxOshAj1i+hRnGN0uSlIHRMFkTSFr
 gMLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=YjNPcHVR4dZuQjAwnCbOyRb8wX3jJIQelGpEqdSOhmU=;
 b=JbFqE+fUsVM19cZyfqsgudsVswN0SKTOG3a3eFM/nyYTG+CwuoaKT46o5UsGrFj2L4
 /mcH61AYy9QVrv07gxDuA3TPdpvO7fXcyexzFZHiQ9Jep80KxIl5BSMiKfwlWdUTCwtf
 uhr+aZi1B8EHg+S0wL/xIKg8pje8wiLmSKLDg8aHaMguZm1Eeacw1otrTHyUiPZP10yL
 RpMpY4kvDsKPpyNEUCsmFChPglGiBTCQ2NfLGoD1uw30LfQgm5pU2ixCKmfL+PtRCqKX
 cmL0hv/2vCzE3tXNF/zLFmyBgU7M3g6nbFP8lbVyq6QLyiNzBftn0bNOTOfqfx2E5RWy
 o+tA==
X-Gm-Message-State: AOAM530MfEljt49g2vKXDAyy8JVliyyTLgU6Jn+IkSK2V8c+/6FWxYD+
 V8TOPgem9t4ADW+AueU8yZs=
X-Google-Smtp-Source: ABdhPJxkw84cvwqy/ty3RHScHDPgFI+Ze/xwqDPdTLEQrrz9k21XHGj8t3xRVdxIZLky0+sRkhPHBA==
X-Received: by 2002:aed:3bb8:: with SMTP id r53mr25496151qte.58.1594048932165; 
 Mon, 06 Jul 2020 08:22:12 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
 by smtp.gmail.com with ESMTPSA id m26sm21257149qtc.83.2020.07.06.08.22.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jul 2020 08:22:11 -0700 (PDT)
From: Arvind Sankar <nivedita@alum.mit.edu>
X-Google-Original-From: Arvind Sankar <arvind@rani.riverdale.lan>
Date: Mon, 6 Jul 2020 11:22:10 -0400
To: Willy Tarreau <w@1wt.eu>
Message-ID: <20200706152210.GA53508@rani.riverdale.lan>
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 <20200705045505.GA2962@1wt.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200705045505.GA2962@1wt.eu>
X-Mailman-Approved-At: Tue, 07 Jul 2020 18:04:13 +0000
Cc: ksummit-discuss@lists.linuxfoundation.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 tech-board-discuss@lists.linuxfoundation.org, Chris Mason <clm@fb.clm>
Subject: Re: [Ksummit-discuss] [PATCH] CodingStyle: Inclusive Terminology
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

On Sun, Jul 05, 2020 at 06:55:05AM +0200, Willy Tarreau wrote:
> On Sat, Jul 04, 2020 at 01:02:51PM -0700, Dan Williams wrote:
> > +Non-inclusive terminology has that same distracting effect which is why
> > +it is a style issue for Linux, it injures developer efficiency.
> 
> I'm personally thinking that for a non-native speaker it's already
> difficult to find the best term to describe something, but having to
> apply an extra level of filtering on the found words to figure whether
> they are allowed by the language police is even more difficult. *This*
> injures developers efficiency. What could improve developers efficiency
> is to take care of removing *all* idiomatic or cultural words then. For
> example I've been participating to projects using the term "blueprint",
> I didn't understand what that meant. It was once explained to me and
> given that it had no logical reason for being called this way, I now
> forgot. If we follow your reasoning, Such words should be banned for
> exactly the same reasons. Same for colors that probably don't mean
> anything to those born blind.

While I agree that using terms that can only be understood given a
cultural context that not everyone may share, I would think that better
examples would be references to movies/novels etc.

Though I'm not sure if blueprint translates literally into other
languages, it did actually have a logical reason, viz engineering
drawings used to be blue/white. But logical reasons don't have to exist.
In the case of colors, for example, using red-black tree doesn't exclude
blind people, precisely because there is no logical reason for using the
colors red and black, or even colors at all, so it's not as if you gain
any additional insight into the structure if you are able to see the
colors. It just needs _some_ arbitrary labels for distinguishing two
classes of nodes, it could just as well have been named A-B tree or 0-1
tree or whatever. I don't think there is any concise way to label them
that conveys anything useful about how they're used in the data
structure -- you just have to learn about the structure and how it's
used. This isn't the case with whitelist/blacklist, where those colors
actually have connotations about what the two lists mean.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
