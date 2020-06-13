Return-Path: <SRS0=LYn9=72=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EFDF8C433E0
	for <ksummit-discuss@archiver.kernel.org>; Sat, 13 Jun 2020 17:06:26 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C08C820789
	for <ksummit-discuss@archiver.kernel.org>; Sat, 13 Jun 2020 17:06:26 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="eZhNAjbQ"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C08C820789
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3019C203AB;
	Sat, 13 Jun 2020 17:06:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4O1vm93wEe+n; Sat, 13 Jun 2020 17:06:23 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 9BCF220527;
	Sat, 13 Jun 2020 17:06:23 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 77269C0888;
	Sat, 13 Jun 2020 17:06:23 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 28842C016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sat, 13 Jun 2020 17:06:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 17D2289279
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sat, 13 Jun 2020 17:06:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jT1K-q+TvzXZ
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sat, 13 Jun 2020 17:06:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [213.167.242.64])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3210B89271
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sat, 13 Jun 2020 17:06:19 +0000 (UTC)
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 020CE24A;
 Sat, 13 Jun 2020 19:06:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1592067976;
 bh=Yt5dKdW8gEwL8ADsiovfNaOZ6Gz47fMZheSi0VMXod0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eZhNAjbQXQ6l252kOOBHPIkMaR0puuoeX7ih27Wd00HhvCz+hhRlTfOkq0wSFqKRF
 O06ZZMzlZsS6wbSR23T1MavBGWgNU0nEKjiVQlaY2QEqezTX2CTq2MU5hUlwPkL+ni
 urrVteFv5PuRROoUh6qEZ4itwaK/wK2zk9Gizzu0=
Date: Sat, 13 Jun 2020 20:05:54 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <20200613170554.GA14787@pendragon.ideasonboard.com>
References: <20200609145353.628a342d@lwn.net>
 <CACRpkdZOxaA9fpd0zFa_GGo1boOEbOoxNbaUavXbewp=CLbEDg@mail.gmail.com>
 <8f68863a-d04c-4502-f88e-2a8b0e3c7968@linuxfoundation.org>
 <928d6b2c9a8afb4262a0d931bce03987ef002c8f.camel@perches.com>
 <20200612090706.GF2051223@linux.ibm.com>
 <edbf4ead-6f2d-e548-ee40-517b3ee6ba07@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <edbf4ead-6f2d-e548-ee40-517b3ee6ba07@linuxfoundation.org>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Documentation
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

Hi Shuah,

On Fri, Jun 12, 2020 at 10:08:36AM -0600, Shuah Khan wrote:
> On 6/12/20 3:07 AM, Mike Rapoport wrote:
> > On Thu, Jun 11, 2020 at 11:28:09AM -0700, Joe Perches wrote:
> >> On Thu, 2020-06-11 at 12:03 -0600, Shuah Khan wrote:
> >>> People that know the sub-systems well might not
> >>> have time to document and more importantly keeping the documents
> >>> updated.
> >>
> >> So you somehow expect people that do _not_ know the
> >> sub-system well to produce good and useful documentation?
> > 
> > Writing documentation is a way to learn.
> 
> +1
> 
> I find it useful and I also use it as learning tool. When I attempt
> document or explain a concept or an area, I get a deeper understanding
> of that area.

I only partly agree with that. I started the DRM documentation effort
because I had to write a driver, and there was no documentation. Writing
doc was indeed a way to learn, but it's a really high barrier to entry,
more difficult than "just" writing a new driver. You need a very high
level of motivation to do so, I don't think it's a suitable for someone
who has little technical knowledge of the Linux kernel for instance. It
also requires lots of time.

> > Besides, to produce good and usefull documentation it is not necessary
> > to have very deep understanding of all the small details. The writer
> > must capture the large picture and be able to explain it.
> 
> +1.
> 
> I would counter the argument that new developers can't document an area,
> they can and the document can be reviewed by experts.
> 
> A fresh set of eyes bring a new perspective and could help improve the
> code, just like the benefits of having others test your code.

A fresh set of eyes can point to inconsistencies in the code while
writing documentation, but I don't share the view that we can consider
documentation writing as a good learning curve task in general, it
really requires lots of time and a strong incentive in addition to
documentation writing itself.

> I have had some level of success adding documentation tasks in the
> mentoring program. It does require experts spending time reviewing to
> make sure it is correct.

Are those proposed, ongoing or completed tasks ? If some are completed,
could you share information about what has been produced ?

> One thing we could do is creating a list documentation todo and review
> which is part of our development workflow anyway.

-- 
Regards,

Laurent Pinchart
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
