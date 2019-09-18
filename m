Return-Path: <SRS0=pgec=XN=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.3 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_2 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1B23C4CEC9
	for <ksummit-discuss@archiver.kernel.org>; Wed, 18 Sep 2019 18:48:39 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B919921897
	for <ksummit-discuss@archiver.kernel.org>; Wed, 18 Sep 2019 18:48:39 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="EDDezYMT"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B919921897
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5B3A2D80;
	Wed, 18 Sep 2019 18:48:39 +0000 (UTC)
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9E695CC9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 18 Sep 2019 18:48:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E33097DB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 18 Sep 2019 18:48:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:
	From:Date:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=PBBtbqpYMc3SV4/N67obPM3pOil0PpXusiVnILer9sg=;
	b=EDDezYMT/vuvbSwimMaQUhtO/
	9Pe/8lutQO/QquX8yVvldD5dsxUWqP1Ba46bh3w6qm+Q7M5VNELvMMsM3dTnWoN1GdTxXaCZIsw9s
	KC/lsuJ16wpwQxH9cpU0BP3pTio/s2T6ul2gtQDyPMM7hw3hfPrDgd2kC2/SPoqCwdWZ7AKZREvXe
	4DK+XFVFAXAv3iD3lFSFVCa7IgNOz5ve58udkSBut7HsgjTsob3GkXEsST0USkTBKWxCRYs20ArpO
	zDUPfBHwqYvQKg2GRBjiBxc/54ql0DorKj1ld5vvs0MscIRbVxxJPAdJwiFfLRmJgwXtYWB7jYi+z
	bbR/7eTxw==;
Received: from 177.96.192.152.dynamic.adsl.gvt.net.br ([177.96.192.152]
	helo=coco.lan)
	by bombadil.infradead.org with esmtpsa (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAf0E-0003VS-T8; Wed, 18 Sep 2019 18:48:35 +0000
Date: Wed, 18 Sep 2019 15:48:31 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20190918154831.3dd0d040@coco.lan>
In-Reply-To: <20190918172705.GC4734@pendragon.ideasonboard.com>
References: <156821693963.2951081.11214256396118531359.stgit@dwillia2-desk3.amr.corp.intel.com>
	<434c05bddd2b364e607e565227487910a8dd9793.1568391461.git.mchehab+samsung@kernel.org>
	<20190918123620.GA6306@pendragon.ideasonboard.com>
	<20190918105728.24e7eb48@coco.lan>
	<20190918172705.GC4734@pendragon.ideasonboard.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: Re: [Ksummit-discuss] [PATCH] media: add a subsystem profile
 documentation
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

Em Wed, 18 Sep 2019 20:27:05 +0300
Laurent Pinchart <laurent.pinchart@ideasonboard.com> escreveu:

> > Anyway, not sure if the other sub-maintainers see the same way. From my side,
> > I prefer not to be c/c, as this is just more noise, as I just rely on
> > patchwork for media patches. What about changing this to:
> > 
> > 	Patches for the media subsystem should be sent to the media mailing list
> > 	at linux-media@vger.kernel.org as plain text only e-mail. Emails with
> > 	HTML will be automatically rejected by the mail server. It could be wise 
> > 	to also copy the sub-maintainer(s).  
> 
> That works for me. As this is really a personal preference, is there a
> way it could be encoded in MAINTAINERS in a per-person fashion ?
> Something that would allow you to opt-out from CC from linux-media (but
> possibly opt-in for other parts of the kernel), and allow me to opt-in
> for the drivers I maintain ?

I don't think so. Perhaps we could add, instead, something like that at the
sub-maintainers section of the profile.

> > > > +Submit Checklist Addendum
> > > > +-------------------------
> > > > +
> > > > +There is a set of compliance tools at https://git.linuxtv.org/v4l-utils.git/
> > > > +that should be used in order to check if the drivers are properly
> > > > +implementing the media APIs.
> > > > +
> > > > +Those tests need to be passed before the patches go upstream.    
> > > 
> > > s/need to be passed/need to pass/
> > >   
> > > > +
> > > > +Also, please notice that we build the Kernel with::
> > > > +
> > > > +	make CF=-D__CHECK_ENDIAN__ CONFIG_DEBUG_SECTION_MISMATCH=y C=1 W=1 CHECK=check_script
> > > > +
> > > > +Where the check script is::
> > > > +
> > > > +	#!/bin/bash
> > > > +	/devel/smatch/smatch -p=kernel $@ >&2
> > > > +	/devel/sparse/sparse $@ >&2
> > > > +
> > > > +Be sure to not introduce new warnings on your patches.    
> > > 
> > > While static analysers deliver value, I fear this is a high barrier to
> > > entry for new contributors.  
> > 
> > Will change this to:
> > 
> > 	Be sure to not introduce new warnings on your patches without a 
> > 	very good reason.
> > 
> > Especially for new contributors, I really expect patches to not introduce
> > new warnings, as it is usually a lot more painful to fix them later than
> > to ask devs to do things right at the first place.  
> 
> I fully agree with the goal, but asking a drive-by contributor, who
> usually has to go through issues with sending patches through e-mail
> already, to install smatch and sparse and use them, is setting the bar
> high. I think automating those checks is the way to go.

Yeah, I have plans to automate it, the same way we did for pull
requests. I'm planning to do that later, after upgrading patchwork
to the current upstream version (with requires upgrading some libraries
too at the server).

In any case, having this at the profile is a reminder for whomever is 
submitting a patch that it should be clean for static analyzers too.

> > > > +Coding Style Addendum
> > > > +---------------------
> > > > +
> > > > +Media development uses checkpatch on strict mode to verify the code style, e. g.::
> > > > +
> > > > +	$ ./script/checkpatch.pl --strict    
> > > 
> > > But we still accept some warnings. I think this should be documented.  
> > 
> > True, but not sure if we should enter into too specific details here.
> > 
> > What about adding something like:
> > 
> > 	Please notice that the goal here is to improve code readability. On a few 
> > 	cases, checkpatch may actually point to	something that would look worse. 
> > 
> > 	So, you	should use good	send sense here, being prepared to justify any   
> 
> s/send sense/sense/

Gah... where this "send" came from??? :-p

> 
> > 	coding style decision.  
> 
> "being prepared to justify" sounds a bit harsh :-) But the general
> message is good.

Any suggestions for a lighter text with similar meaning? :-)

> > 	Please also notice that, on some cases,	when you fix one issue,	you may
> > 	receive	warnings about lines longer than 80 columns. It	is fine	to have
> > 	longer lines if	this means that	other warnings will be fixed by	that.
> > 
> > 	Yet, if	you're having more than	80 columns on a	line, please consider 
> > 	simplifying the	code - if too idented -	or to use shorter names	for 
> > 	variables.  
> 
> That's already quite specific for my taste. We can keep it as-is if you
> think it's fine, but we clearly shouldn't go into more details.

Yeah, I see. Yet, IMHO, we should either not add anything about checkpatch
warnings that might not be relevant or add something similar like the above.

Thanks,
Mauro
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
