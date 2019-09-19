Return-Path: <SRS0=kjsK=XO=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B425BC49ED7
	for <ksummit-discuss@archiver.kernel.org>; Thu, 19 Sep 2019 08:58:31 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9123B21907
	for <ksummit-discuss@archiver.kernel.org>; Thu, 19 Sep 2019 08:58:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9123B21907
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id DFBE7B88;
	Thu, 19 Sep 2019 08:58:30 +0000 (UTC)
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4F4683EE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 19 Sep 2019 08:58:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
	[209.85.210.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 323BC108
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 19 Sep 2019 08:58:28 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id 41so2357410oti.12
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 19 Sep 2019 01:58:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Vsvei9Y5VfaEXgSwWw7qKH7EiWeYE55XBf3/hgO9R6k=;
	b=jqnEkEPIwLOT3BXhDVJ8gClTSETEdXpNk9uBkxtmH6IGdZOgoVSiVy2xMCvzeKpFyX
	nOSike70I3fGZi079sCiLX2JLNJ5JfZi9U137IZvqfoweZMUgnxQpFX0L/1G5tymqOeR
	ffwktwiY7askpfZvhKPgRMks2+uVfPnzzY4heB7JZVcELxxjV7TAeRqDqJ7ZRzoJ6yk1
	wEL6VJUN5qnjarU6nqWN2RFt6nLxJnxLmwDJdz+AIpdGjTzzba6MnmuOARzPsuoLuQA0
	ptK/RK/F1hCOFgJndx7zYMayRMdlLIj+oDBVv+8MZUt1v1+uvQ/evQiCALz0G0LczGgX
	H/Pw==
X-Gm-Message-State: APjAAAUDBWQrhmMo28dXVLmi/FwbMcjIInhoFpKlGwoMKsG9tsyHdZ0+
	DxYTbC9iSI7aTL1yZDNRzaEFRvhZLpQaPMGxk+8=
X-Google-Smtp-Source: APXvYqy8HAcm68+5cz6nJ8t0MturiUiIqhHMZc4iJeGMKPPIRBLSH1Ab2RIUve8U/4TA6LPhJUIfdjgUY82meIYXld8=
X-Received: by 2002:a9d:5a06:: with SMTP id v6mr5887194oth.250.1568883507337; 
	Thu, 19 Sep 2019 01:58:27 -0700 (PDT)
MIME-Version: 1.0
References: <156821693963.2951081.11214256396118531359.stgit@dwillia2-desk3.amr.corp.intel.com>
	<434c05bddd2b364e607e565227487910a8dd9793.1568391461.git.mchehab+samsung@kernel.org>
	<20190918123620.GA6306@pendragon.ideasonboard.com>
	<20190918105728.24e7eb48@coco.lan> <20190919065447.GF2959@kadam>
	<CAMuHMdU10J5zgQ0r8uoA+LFHRbyLB=AG6xygTmsxwc7T-ffdDw@mail.gmail.com>
	<87o8zgwu0m.fsf@intel.com>
In-Reply-To: <87o8zgwu0m.fsf@intel.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 19 Sep 2019 10:58:15 +0200
Message-ID: <CAMuHMdWGhSNu-5U0B5WN6tMRQRaAeFgcN1b=pAcXZPUpSW-ehA@mail.gmail.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dan Carpenter <dan.carpenter@oracle.com>,
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

Hi Jani,

On Thu, Sep 19, 2019 at 10:49 AM Jani Nikula <jani.nikula@intel.com> wrote:
> On Thu, 19 Sep 2019, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > On Thu, Sep 19, 2019 at 8:57 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
> >> On Wed, Sep 18, 2019 at 10:57:28AM -0300, Mauro Carvalho Chehab wrote:
> >> When I sent a patch, I use get_maintainer.pl then I add whoever the
> >> wrote the commit from the Fixes tag.  Then I remove Colin King and Kees
> >> Cook from the CC list because they worked all over the tree and I know
> >> them.  I also normally remove LKML if there is another mailing list but
> >> at least one subsystem uses LKML for patchwork so this isn't safe.
> >>
> >> So the safest instructions are "Use get_matainer.pl and add the person
> >> who wrote the commit in the Fixes tag".
> >
> > Better: perhaps get_maintainer.pl can be taught to add the author of the
> > commit pointed to by the Fixes tag, if present?
>
> The drm maintainer tools [1] have that, with Cc's and reviewers picked
> up, and appropriate Cc: stable added. On a random commit from v5.3:

Thanks, but that's not scripts/get_maintainer.pl, and restricted to one out
of N subsystems.  Not so dissimilar from what Dan was complaining about.

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
