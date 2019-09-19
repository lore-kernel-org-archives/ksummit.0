Return-Path: <SRS0=kjsK=XO=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3D91C49ED7
	for <ksummit-discuss@archiver.kernel.org>; Thu, 19 Sep 2019 07:23:00 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B1266217D6
	for <ksummit-discuss@archiver.kernel.org>; Thu, 19 Sep 2019 07:23:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B1266217D6
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 540F6F01;
	Thu, 19 Sep 2019 07:23:00 +0000 (UTC)
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 34E75AE7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 19 Sep 2019 07:22:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
	[209.85.210.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 90B1476D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 19 Sep 2019 07:22:57 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id k32so2211744otc.4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 19 Sep 2019 00:22:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=3sG+3s1s6lDcclslDZn6hgAJ4oiqNYT+viVoed7uT0g=;
	b=m4i5mkN1+FsiOOH6APp105mhRkr6XCqWByXYcCnBGJ8ITIkNyAiPVimwS2JaZQ5fRF
	wGR2uTgs9yXb8QZK+suD1hcDOjZlZFNI84X65TW6RJD1ybkDfrIBQGOsd+WZH3IP8TF+
	A6S1X1tGcACc4iafFe4n+2W71Vf/KWpDVVth53ZF5YKkNimyZh7A16LoVgtQJN1dploz
	rQEJZPKVib7xoKpksB+cPBv7FbRQinUPjsllJ5/Pg6+vmF4Mf1HlhsuzdC8OxLhkRH++
	4HJjPlEsMVvnj/U5cmFTomK18liUA5Hq3iNPexRAAPSbsL9ktiPbE59Qm8sqptrDNAXi
	euqg==
X-Gm-Message-State: APjAAAX3Vi95hmx3DSVemLo5R0upEm5jcAQplntUxXtWemLWzWLNdsNL
	tgWGHCcT/pGHvzGFgnwnmhpEIREaqPy3g2//15c=
X-Google-Smtp-Source: APXvYqwnGjVAeK3BoOff9zuxt0f65jyCajeOlN4Y8YbB0ntuD7h/XG1+2B/UoqaBx0su9BGY3NzCiwDFK2oWAxvRmrk=
X-Received: by 2002:a9d:5784:: with SMTP id q4mr5331426oth.107.1568877776771; 
	Thu, 19 Sep 2019 00:22:56 -0700 (PDT)
MIME-Version: 1.0
References: <156821693963.2951081.11214256396118531359.stgit@dwillia2-desk3.amr.corp.intel.com>
	<434c05bddd2b364e607e565227487910a8dd9793.1568391461.git.mchehab+samsung@kernel.org>
	<20190918123620.GA6306@pendragon.ideasonboard.com>
	<20190918105728.24e7eb48@coco.lan> <20190919065447.GF2959@kadam>
In-Reply-To: <20190919065447.GF2959@kadam>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 19 Sep 2019 09:22:45 +0200
Message-ID: <CAMuHMdU10J5zgQ0r8uoA+LFHRbyLB=AG6xygTmsxwc7T-ffdDw@mail.gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
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

On Thu, Sep 19, 2019 at 8:57 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
> On Wed, Sep 18, 2019 at 10:57:28AM -0300, Mauro Carvalho Chehab wrote:
> > > > +Patches for the media subsystem should be sent to the media mailing list
> > > > +at linux-media@vger.kernel.org as plain text only e-mail. Emails with
> > > > +HTML will be automatically rejected by the mail server. There's no need
> > > > +to copy the maintainer or sub-maintainer(s).
> > >
> > > There's too much traffic on mailing lists for me to follow everything, I
> > > much prefer being CC'ed on patches.
> >
> > Well, by using patchwork, the best is to take a look on it at least for
> > the patches that you're interested. You could script something using
> > pwclient in order to make it easier.
> >
> > Anyway, not sure if the other sub-maintainers see the same way. From my side,
> > I prefer not to be c/c, as this is just more noise, as I just rely on
> > patchwork for media patches. What about changing this to:
> >
> >       Patches for the media subsystem should be sent to the media mailing list
> >       at linux-media@vger.kernel.org as plain text only e-mail. Emails with
> >       HTML will be automatically rejected by the mail server. It could be wise
> >       to also copy the sub-maintainer(s).
>
> The documentation should say "Use get_maintainer.pl" and do what it
> says.  Everything else is too complicated.

+1

> When I sent a patch, I use get_maintainer.pl then I add whoever the
> wrote the commit from the Fixes tag.  Then I remove Colin King and Kees
> Cook from the CC list because they worked all over the tree and I know
> them.  I also normally remove LKML if there is another mailing list but
> at least one subsystem uses LKML for patchwork so this isn't safe.
>
> So the safest instructions are "Use get_matainer.pl and add the person
> who wrote the commit in the Fixes tag".

Better: perhaps get_maintainer.pl can be taught to add the author of the
commit pointed to by the Fixes tag, if present?

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
