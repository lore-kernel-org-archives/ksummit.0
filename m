Return-Path: <SRS0=EED1=XQ=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_2
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 414C2C4740C
	for <ksummit-discuss@archiver.kernel.org>; Sat, 21 Sep 2019 19:45:18 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 162792184C
	for <ksummit-discuss@archiver.kernel.org>; Sat, 21 Sep 2019 19:45:17 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="IXIiEj+r"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 162792184C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id AF965B1F;
	Sat, 21 Sep 2019 19:45:17 +0000 (UTC)
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 797CEAE0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 21 Sep 2019 19:45:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 04D22711
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 21 Sep 2019 19:45:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:
	From:Date:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=zVemiHyFftuWLyJCi32mOapZtlhRvSsGykZ2Z/1kXzs=;
	b=IXIiEj+rZR00eqhwUMnToxBSN
	Tu/E0LEIqM9AGqEv9vyADQhcvKvYPpqCfxv9zh90QHQRt5Ueg8NSPPnSt/XkOuPXr9KhQV+yynYCA
	InBy+eWhNTtqv481wEeo8NJVIk3PND940oSyFfOxAMIN8rIUSYTWM+uf0EfCBzf9fLx5Mujmh4SAc
	BH5xaQadn70LSx+gENl+qxCwl+iYpKh8d3TXPBy+ziSiQy1rJ7bEFHqEE4eioIIBh8UyMoSI5LWkw
	tRmpp03CCpx44THBBJJ53YPf8Nw4VNKUrvFWFDMZG2IXvOEcWkSLzKVyZPTsNcfaeW6JVscKdBiLR
	HQ+H62Vrg==;
Received: from 177.206.132.221.dynamic.adsl.gvt.net.br ([177.206.132.221]
	helo=coco.lan)
	by bombadil.infradead.org with esmtpsa (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBlJi-0003Vw-5h; Sat, 21 Sep 2019 19:45:14 +0000
Date: Sat, 21 Sep 2019 16:45:10 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Jonathan Corbet <corbet@lwn.net>
Message-ID: <20190921164510.3e52af21@coco.lan>
In-Reply-To: <20190921131307.77d01ebb@lwn.net>
References: <156821693963.2951081.11214256396118531359.stgit@dwillia2-desk3.amr.corp.intel.com>
	<434c05bddd2b364e607e565227487910a8dd9793.1568391461.git.mchehab+samsung@kernel.org>
	<201909162032.F4462D3@keescook> <20190917102817.263517b5@coco.lan>
	<201909170930.B8AD840@keescook> <20190918082326.49a19a24@coco.lan>
	<20190921131307.77d01ebb@lwn.net>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: Re: [Ksummit-discuss] single maintainer profile directory (was Re:
 [PATCH] media: add a subsystem profile documentation)
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

Em Sat, 21 Sep 2019 13:13:07 -0600
Jonathan Corbet <corbet@lwn.net> escreveu:

> On Wed, 18 Sep 2019 08:23:26 -0300
> Mauro Carvalho Chehab <mchehab+samsung@kernel.org> wrote:
> 
> > A simple/lazy solution would be to apply the enclosed patch - or a
> > variant of it that would place the contents of MAINTAINERS outside
> > process/index.html, and add instructions about how to use
> > get_maintainers.pl.
> > 
> > Jon,
> > 
> > Please let me know if you're willing to accept something like that.  
> 
> [Sorry for the slowness, I'm kind of tuned out this week]
> 
> I guess we could do that as a short-term thing.
> 
> In truth, though, this thing is a database; printing it out linearly is
> perhaps not the best thing we could do.  There should be better ways we
> could provide access to it.

Yeah, as this is a database, instead of just outputting it on a
formatted way, it is possible to generate other types of output.

We could, for example, have an extension with would implement something like:

	.. maintainers:: <subdir>

Which would call get-maintainers in order to parse a subsystem-specific
set of entries and printing the maintainership details.

This could be added at the subsystem-specific profile, for the subsystems
that have it.

> 
> Also, that file is nearly 18K lines long.  If some unsuspecting person
> generates a PDF and prints it, they're going to get something along the
> lines of 300 pages of MAINTAINERS, which may not quite be what they had
> in mind.  It costs (almost) nothing to put that into HTML output, but
> other formats could be painful.

Even if we go for adding a Sphinx tag that would produce a parsed
output for a system-specific profile, we'll still have several other
subsystems that won't have a profile for a while, so I would still 
consider having somewhere an output with its contents. Yeah, someone
might be tempted to print it, but we could place it on a separate PDF,
in order to minimize the risks of someone printing the 300+ pages.

> 
> So I dunno, we need to think this through a bit...


> 
> jon



Thanks,
Mauro
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
