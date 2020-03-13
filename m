Return-Path: <SRS0=mR8n=46=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0D1AFC10DCE
	for <ksummit-discuss@archiver.kernel.org>; Fri, 13 Mar 2020 09:35:55 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C2E7C2074A
	for <ksummit-discuss@archiver.kernel.org>; Fri, 13 Mar 2020 09:35:54 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kroah.com header.i=@kroah.com header.b="OjOAr+rc";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="gvLUyjpA"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C2E7C2074A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=kroah.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8547589515;
	Fri, 13 Mar 2020 09:35:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id blMr61p6TopD; Fri, 13 Mar 2020 09:35:53 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id C1327894D0;
	Fri, 13 Mar 2020 09:35:53 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 901A3C089F;
	Fri, 13 Mar 2020 09:35:53 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CEC26C0177;
 Fri, 13 Mar 2020 09:35:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B92E1894D6;
 Fri, 13 Mar 2020 09:35:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xenmdDd80k7S; Fri, 13 Mar 2020 09:35:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
 [66.111.4.27])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D8F4B894D0;
 Fri, 13 Mar 2020 09:35:51 +0000 (UTC)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.nyi.internal (Postfix) with ESMTP id C416522651;
 Fri, 13 Mar 2020 05:35:50 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute1.internal (MEProxy); Fri, 13 Mar 2020 05:35:50 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=4cvIqCPlZ1xEDgbaZiR2YWeDjPs
 At/ZNURBlpwOqIAU=; b=OjOAr+rccJlzOQ1KOUhlTdkUn48hIYnjGG0OWLKiUNk
 CLD82NW7rWwkLXz7BUdmolRgIe/QNGhtgpZWIaAUeRDcwHBgRUWtVh3y1Nstyeph
 ZIIDC8ml26TsYnmQOpWBiQQpvneBHMGN/oni2TN5kEdWSqx8NaIR1egC0deoXnmp
 h06A/kXVptapTlOms0ygp/Rq2C9oEv5SfNiLVk2A90wouGlndbNnT0rSU2b1eb60
 IdN6Sk4ClntlCTvwOIQKTrDwucDDYeENOHyKbjgFbDO3lnNdP6pZqIV1rmMvgJQW
 +TF5JcOB7pGvI7EDETqygiJzMLlPUMCt7X8gLMAxHCA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=4cvIqC
 PlZ1xEDgbaZiR2YWeDjPsAt/ZNURBlpwOqIAU=; b=gvLUyjpARPBP77DHPsudCJ
 ZCm0565nVJbDiMj5STbf3tb4o/9tYf+QJeZcLe/MG33evCyqDbr0oxbGFaNiAraO
 C08ZyFL4ioHfE5D61Jvy6hSEuwAeDMyLXa2WiMAK3sBkmvjVvpDMORgth47i/iN/
 6ddm3ujA7E0nmxAGl8WhJZkIsoR113n/JbB3v/85TKf3oJapUJcAs4LVabLMucu6
 WgMOvhnkbRGGTYz/scjOPbbgzsOAHzztPW3x8vFt0ef34X/Vz81qdERNmBO4onAh
 AfIHUeYUjcfmkj1joHBxZB/MsX5obUPjaTjol5GbdQLZMYSSiqGml+W9ZxVRCqjw
 ==
X-ME-Sender: <xms:9lNrXvtBoB6NTEMVnsWFCbyhQyFhZ0t4eBroPV69T_5fLaAlemjpAg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedruddvjedgtdehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefirhgvghcu
 mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucffohhmrghinhepkhgvrhhnvghlrd
 horhhgnecukfhppeekfedrkeeirdekledruddtjeenucevlhhushhtvghrufhiiigvpedt
 necurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhhdrtghomh
X-ME-Proxy: <xmx:9lNrXqR0N9HwYTe7fcggnFo0rJmrBEGbg4je67zd4HJxUCmBRkSeTQ>
 <xmx:9lNrXuP-WnqRYp-xjOJK4pu6MfK8sfwGcO4dvmy1XhVxcZthlEyvkw>
 <xmx:9lNrXqkDuMnGDeDY7dCNacSPchzZnG5DdRIf1zLAJ60IniEhRSd6tQ>
 <xmx:9lNrXkhuEN2Ii-Q6SY0esMAZb6rqjdt99pdOrv2iNM-zNiPwlfDfVA>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 by mail.messagingengine.com (Postfix) with ESMTPA id C5EE83060F09;
 Fri, 13 Mar 2020 05:35:49 -0400 (EDT)
Date: Fri, 13 Mar 2020 10:35:48 +0100
From: Greg KH <greg@kroah.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200313093548.GA2089143@kroah.com>
References: <6d6dd6fa-880f-01fe-6177-281572aed703@labbott.name>
 <20200312003436.GF1639@pendragon.ideasonboard.com>
 <MWHPR13MB0895E133EC528ECF50A22100FDFD0@MWHPR13MB0895.namprd13.prod.outlook.com>
 <20200313031947.GC225435@mit.edu> <87d09gljhj.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87d09gljhj.fsf@intel.com>
Cc: "Bird, Tim" <Tim.Bird@sony.com>,
 "tech-board-discuss@lists.linuxfoundation.org"
 <tech-board-discuss@lists.linuxfoundation.org>,
 "ksummit-discuss@lists.linuxfoundation.org"
 <ksummit-discuss@lists.linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] [Tech-board-discuss] Linux Foundation
 Technical Advisory Board Elections -- Change to charter
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

On Fri, Mar 13, 2020 at 10:58:00AM +0200, Jani Nikula wrote:
> On Thu, 12 Mar 2020, "Theodore Y. Ts'o" <tytso@mit.edu> wrote:
> > So that means we need to be smart about how we pick the criteria.
> > Using a kernel.org account might be a good approach, since it would be
> > a lot harder for a huge number of sock puppet accounts to meet that
> > criteria.
> 
> Per [1] and [2], kernel.org accounts "are usually reserved for subsystem
> maintainers or high-profile developers", but apparently it's at the
> kernel.org admins discretion to decide whether one is ultimately
> eligible or not. Do we want the kernel.org admin to have the final say
> on who gets to vote? Do we want to encourage people to have kernel.org
> accounts for no other reason than to vote?

We are using the "kernel.org account" as a way to verify that you really
are part of our developer/maintainer community and that you are part of
the "web of trust" and an actual person.

That is the goal here, if you know of some other way to determine this,
please let us know.  We went through many iterations of this and at the
moment, it is the best we can come up with.

Also, note that the "kernel.org admin" is really a team of people who
have been doing this for 9 years, it's not a single person responsible
for giving out new accounts to people that do not meet the obvious
requirement levels as published on kernel.org

> Furthermore, having a kernel.org account imposes the additional
> requirement that you're part of the kernel developers web of trust,

That is exactly what we want.

> i.e. that you've met other kernel developers in person. Which is a kind
> of awkward requirement for enabling electronic voting to be inclusive to
> people who can't attend in person.

Yes, we know that, but it does mean that you are "known" to someone
else, which is the key here.

> Seems like having a kernel.org account is just a proxy for the criteria,
> and one that also lacks transparency, and has problems of its own.

What is not transparent about how to get a kernel.org account?

> Not that I'm saying there's an easy solution, but obviously kernel.org
> account is not as problem free as you might think.

We are not saying it is "problem free", but what really is the problem
with it?

thanks,

greg k-h
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
