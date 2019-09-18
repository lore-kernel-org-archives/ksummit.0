Return-Path: <SRS0=pgec=XN=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.3 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_2 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67F14C4CEC9
	for <ksummit-discuss@archiver.kernel.org>; Wed, 18 Sep 2019 11:23:33 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3E123214AF
	for <ksummit-discuss@archiver.kernel.org>; Wed, 18 Sep 2019 11:23:33 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="nnU7WIin"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3E123214AF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id A3239CC0;
	Wed, 18 Sep 2019 11:23:32 +0000 (UTC)
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 724E1C03
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 18 Sep 2019 11:23:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E2CAC876
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 18 Sep 2019 11:23:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:
	From:Date:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=t0QzdYXoFpP0e7VCW5HdOQ2MGUfEADSAd4kzwTTpSdU=;
	b=nnU7WIinQ8o6BSH6dEFCRFjdF
	OzCZk1sJskPk0hhWb8mQHQqtzuIq1Ujeen50ISIC60Rh+CgogYOFG2zU3DfJn6bc3sEr+n8XPl9+4
	ACFF8AU44fr39WB6gTbonir+5XPfG/PQT7ohpmXeNw3ZIwd2iS9pVAYclu+7Wk9NWEbAZCa/vVaOR
	ofC3AbZ0NUazEKcLaoVy3dV9hLIIv4FOs2Y87qS0zDJsUDLMk4+gLfxALWY4G9MvgTuMBOp1SgtLI
	2ldZ+rmHUEdZivcDQLi902HEFwOgBtln+u3xYBGNS9qo4OWOAU9uXrPN8qLvqq7pLYG70diH9WnC4
	qfxOzkr3Q==;
Received: from 177.96.192.152.dynamic.adsl.gvt.net.br ([177.96.192.152]
	helo=coco.lan)
	by bombadil.infradead.org with esmtpsa (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAY3V-0007Xh-I9; Wed, 18 Sep 2019 11:23:29 +0000
Date: Wed, 18 Sep 2019 08:23:26 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Kees Cook <keescook@chromium.org>
Message-ID: <20190918082326.49a19a24@coco.lan>
In-Reply-To: <201909170930.B8AD840@keescook>
References: <156821693963.2951081.11214256396118531359.stgit@dwillia2-desk3.amr.corp.intel.com>
	<434c05bddd2b364e607e565227487910a8dd9793.1568391461.git.mchehab+samsung@kernel.org>
	<201909162032.F4462D3@keescook> <20190917102817.263517b5@coco.lan>
	<201909170930.B8AD840@keescook>
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

Em Tue, 17 Sep 2019 09:33:11 -0700
Kees Cook <keescook@chromium.org> escreveu:

> On Tue, Sep 17, 2019 at 10:28:17AM -0300, Mauro Carvalho Chehab wrote:
> > No matter where the profiles will physically be stored, its contents belong 
> > to subsystem-specific documentation, and should be visible at the same index 
> > file as the kAPI docs is located, as anyone interested on submitting patches
> > for a subsystem should be aware about the subsystem specific policies and
> > details.  
> 
> That's a good point. I think your other suggestions below address my
> "find them all" case...
> 
> > So, my vote is to store them at Documentation/*/<subsystem> (together
> > with the kAPI book).
> >   
> > > since there are
> > > two ways someone would want to read profiles:
> > > 
> > > 1) a single profile, based on a MAINTAINERS entry which includes the path  
> > 
> > That is the common case. The problem is that the MAINTAINERS file
> > currently doesn't generate html output. This is not a problem for
> > "old school" devs, but a newbie wanting to collaborate to a single
> > specific subsystem may not notice - or understand - the importance
> > of the MAINTAINERS file[1].
> > 
> > [1] btw, that's why I submitted a RFC, several years ago, a patch
> > converting it to ReST - and later - another patch that would be parsing
> > its contents and producing a ReST output.
> > 
> > That's, by far, the most relevant usecase for the profiles, as the
> > audience is the ~4k Kernel developers.  
> 
> Oh yes, having a .rst of the MAINTAINERS file would be pretty great.
> Seems like it could just be a build target (and then dependency) for the
> sphinx targets?

You can't simply rename MAINTAINERS to .rst and let Sphinx handle it,
as:

	- The instructions at the top will be badly parsed;
	- It will also parse wrong the entries.

On the patches I wrote several years ago, I fixed the instructions
to make them to produce something that would produce a good output.
That's the easiest part.

For the entries contents, the simplest solution would be something like:

	diff --git a/MAINTAINERS b/MAINTAINERS
	index 6b4bc320e6ab..ae2afb14ae01 100644
	--- a/MAINTAINERS
	+++ b/MAINTAINERS
	@@ -147,4 +147,4 @@ F:	drivers/net/ethernet/3com/3c59x.c
	-M:	David Dillow <dave@thedillows.org>
	-L:	netdev@vger.kernel.org
	-S:	Maintained
	-F:	drivers/net/ethernet/3com/typhoon*
	+:M:	David Dillow <dave@thedillows.org>
	+:L:	netdev@vger.kernel.org
	+:S:	Maintained
	+:F:	drivers/net/ethernet/3com/typhoon*

A trivial change for a normal file, but doing this at MAINTAINERS
will be really painful, as it will cause lots of conflicts.

So, IMO, the best way to do it is to have a script (or to teach
get_maintainers.pl) to produce a ReST output that would do the
above.

The latest RFC about that with I sent was this one:

	https://www.mail-archive.com/linux-kernel@vger.kernel.org/msg1238576.html

I would probably address this on a different way those days.

A simple/lazy solution would be to apply the enclosed patch - or a
variant of it that would place the contents of MAINTAINERS outside
process/index.html, and add instructions about how to use
get_maintainers.pl.

Jon,

Please let me know if you're willing to accept something like that.

Thanks,
Mauro

[PATCH RFC] docs: process: add MAINTAINERS file contents

Anyone working with the Kernel need to consider the contents of the
MAINTAINERS file. So, add it to the ReST output.

Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>

diff --git a/Documentation/process/index.rst b/Documentation/process/index.rst
index e2c9ffc682c5..22e5b42b8470 100644
--- a/Documentation/process/index.rst
+++ b/Documentation/process/index.rst
@@ -59,6 +59,9 @@ lack of a better place.
    volatile-considered-harmful
    clang-format
 
+.. include:: ../../MAINTAINERS
+   :literal:
+
 .. only::  subproject and html
 
    Indices
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
