Return-Path: <SRS0=i5gH=7Z=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E370C433E0
	for <ksummit-discuss@archiver.kernel.org>; Fri, 12 Jun 2020 08:19:21 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 30DB5208B3
	for <ksummit-discuss@archiver.kernel.org>; Fri, 12 Jun 2020 08:19:21 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="k9N59oGf"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 30DB5208B3
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 254EC221F8;
	Fri, 12 Jun 2020 08:19:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id marpbyO0tqr8; Fri, 12 Jun 2020 08:19:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 98D30203DC;
	Fri, 12 Jun 2020 08:19:18 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6426AC0881;
	Fri, 12 Jun 2020 08:19:18 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EEAFAC016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 12 Jun 2020 08:19:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D7D63893C4
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 12 Jun 2020 08:19:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ix1trKW6vTzB
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 12 Jun 2020 08:19:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [213.167.242.64])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 18840893C0
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 12 Jun 2020 08:19:16 +0000 (UTC)
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id D825224F;
 Fri, 12 Jun 2020 10:19:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1591949953;
 bh=2nC9yq3k6UY4D6hk6zhXDMnjUf6Xk9fEmR/cuAhgyqk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=k9N59oGfIMaCG78Kp7w40kmHC8WTARfsVW02+cudzbNABmB7k0GVgeliEkKYPAlqq
 2KxL2/UWqyqgS/1PJZGw/6N5gSiiBu+a5KaG8D8CK2hJNUFM1jU1BuhcUrQhhDcLOf
 zpUj5YywmkI/lAgJj8nnNTU3CG5TnHcuq5YF8QkI=
Date: Fri, 12 Jun 2020 11:18:52 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <20200612081852.GC5957@pendragon.ideasonboard.com>
References: <20200609145353.628a342d@lwn.net>
 <CACRpkdZOxaA9fpd0zFa_GGo1boOEbOoxNbaUavXbewp=CLbEDg@mail.gmail.com>
 <8f68863a-d04c-4502-f88e-2a8b0e3c7968@linuxfoundation.org>
 <928d6b2c9a8afb4262a0d931bce03987ef002c8f.camel@perches.com>
 <eba85749-0db4-56f6-d61b-54ad061ef979@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <eba85749-0db4-56f6-d61b-54ad061ef979@linuxfoundation.org>
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

H Shuah,

On Thu, Jun 11, 2020 at 01:44:45PM -0600, Shuah Khan wrote:
> On 6/11/20 12:28 PM, Joe Perches wrote:
> > On Thu, 2020-06-11 at 12:03 -0600, Shuah Khan wrote:
> >> People that know the sub-systems well might not
> >> have time to document and more importantly keeping the documents
> >> updated.
> > 
> > So you somehow expect people that do _not_ know the
> > sub-system well to produce good and useful documentation?
> 
> I didn't suggest anything like that. I merely mentioned that
> lack of bandwidth is a reason for outdated documentation.

I think it may be more of a priority issue than a bandwidth issue. Most
subsystems have traditionally not put lots of effort in documenting
designs and APIs, and very few of them, even today, enforce
documentation rules. I don't disagree that some area of the kernel have
little available bandwidth, we have some very small subsystems, or niche
areas where only a handful of people would be able to understand what's
going on (and if you ask me, that's a reason to have more documentation,
not less :-)). We also have large subsystems where policies have been
put in place over time to get developers to write documentation. I'm
thinking about V4L2 or DRM for instance, where the former has extensive
documentation of the userspace API, and the latter extensive
documentation of the in-kernel API. I believe other subsystems could
follow if maintainers considered lack of documentation to be a blocker
on patch submission.

This would however leave some developers in an uncomfortable situation.
While writing documentation is no fun for most of us, it gets much worse
for developers who are less fluent in English. Learning how to write
good documentation is hard enough without having to also learn a new
language. I think this is a problem that needs to be addressed on its
own.

Another issue that I also believe is important is where to put the bar
when it comes to documentation quality. I've reviewed many documentation
patches where I wasn't completely happy with the proposal (as I'm prone
to nit-picking during review I'll take blames here). Something that is
clear to the author of the code won't be to someone who has less
knowledge in that area, and more often that not patch authors don't
write documentation from the point of view of the reader. This is
something that can be learnt though, and I believe the kernel would
benefit from involving more technical writers who could help reviewing
documentation submissions and point out inconsistencies. There's a
matter of budget there though, it may be difficult to attract technical
writers who would help just for the fun of it.

> As for solutions, I am hoping one or two viable options will
> bubble up as we talk about the issue on this thread and at
> the kernel summit.

-- 
Regards,

Laurent Pinchart
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
