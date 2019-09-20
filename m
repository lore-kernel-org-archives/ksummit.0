Return-Path: <SRS0=h6UC=XP=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0DCC1C49ED7
	for <ksummit-discuss@archiver.kernel.org>; Fri, 20 Sep 2019 14:59:32 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D9D2920882
	for <ksummit-discuss@archiver.kernel.org>; Fri, 20 Sep 2019 14:59:31 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="eSNEL0Oa"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D9D2920882
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 76D52CC6;
	Fri, 20 Sep 2019 14:59:31 +0000 (UTC)
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AA207CBA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 20 Sep 2019 14:59:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
	[209.85.166.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 26A5C711
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 20 Sep 2019 14:59:29 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id n197so16793795iod.9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 20 Sep 2019 07:59:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=7MWqfk6+lcr5uGGG01MhMZJ03kCPMDZ/BnOM+3NK0mw=;
	b=eSNEL0OajMRxrCCiB/WSHauBh894qG1+JILfEsi/bEs/uK5EDRJdtm7deGAi8d7Wbi
	6BfEWgO9U+kGONqzYZR/FEkjASIZcnN5EFv0WWAmoBnKc7odS/CV3F5bNXexRk3gWjKJ
	s7nTSGD/LsB0Ha/9X82VNTD2nWae7M+Akl8M4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=7MWqfk6+lcr5uGGG01MhMZJ03kCPMDZ/BnOM+3NK0mw=;
	b=fFbBDmLt4P7K0nq/q3icL1/HMRbKs6AHh6oYioPbAsR24QyOnNFSqqzQAwC8YGlxdZ
	491vj/dFtfvJP5yuFMCLKwEzdAEo3MsPSjUm1nCxXzasYWYz/MWtvZdVw4JpFxBcd2pJ
	ILz6JxEFqPqeogIe1Ng0EIm+AUmPqEOkGWXfcJqTkL6R+aWbMz1JbhfB+xD2OblG6RJ4
	5d44zm2MIFUEx0yA9sODN1QovOP2BVWdGP7jaNZQlwWTRDTHmwFi2oUIscFab98C/qyY
	jvJesvQ3Wzk67rNWJ0Z/VbK9tUz5i0VerY33AQ0vISsZb21CtiIuXdM2+2DfdnzqIxff
	LtoA==
X-Gm-Message-State: APjAAAVdwBZFD6WuvqprYTuKdTrkS9MsGXULz01yHEd0brLpOo/nrYE1
	6CMWVkvVP0hc1ZJNE/8YtU/c4jTj+0o=
X-Google-Smtp-Source: APXvYqyJ8RZDBCgb4DincH+SFWBeo/oJ0DqaYMcI/mgmAFgc9icndSTxzHWEqVPDcb18Lv4d5L9HiQ==
X-Received: by 2002:a02:ce5c:: with SMTP id y28mr20332105jar.79.1568991567796; 
	Fri, 20 Sep 2019 07:59:27 -0700 (PDT)
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com.
	[209.85.166.53]) by smtp.gmail.com with ESMTPSA id
	k66sm2440469iof.25.2019.09.20.07.59.26
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 20 Sep 2019 07:59:26 -0700 (PDT)
Received: by mail-io1-f53.google.com with SMTP id v2so16772988iob.10
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 20 Sep 2019 07:59:26 -0700 (PDT)
X-Received: by 2002:a6b:b704:: with SMTP id h4mr2418021iof.218.1568991566249; 
	Fri, 20 Sep 2019 07:59:26 -0700 (PDT)
MIME-Version: 1.0
References: <156821693963.2951081.11214256396118531359.stgit@dwillia2-desk3.amr.corp.intel.com>
	<434c05bddd2b364e607e565227487910a8dd9793.1568391461.git.mchehab+samsung@kernel.org>
	<20190918123620.GA6306@pendragon.ideasonboard.com>
	<20190918105728.24e7eb48@coco.lan> <20190919065447.GF2959@kadam>
	<CAMuHMdU10J5zgQ0r8uoA+LFHRbyLB=AG6xygTmsxwc7T-ffdDw@mail.gmail.com>
	<20190920145352.GI12950@pendragon.ideasonboard.com>
In-Reply-To: <20190920145352.GI12950@pendragon.ideasonboard.com>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 20 Sep 2019 07:59:13 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UjTT04pOf3q3H+ZdG9ixr6RWaRJfNs2Dk7xTTEMi-=xw@mail.gmail.com>
Message-ID: <CAD=FV=UjTT04pOf3q3H+ZdG9ixr6RWaRJfNs2Dk7xTTEMi-=xw@mail.gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	Dan Carpenter <dan.carpenter@oracle.com>,
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

Hi,

On Fri, Sep 20, 2019 at 7:54 AM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> On Thu, Sep 19, 2019 at 09:22:45AM +0200, Geert Uytterhoeven wrote:
> > On Thu, Sep 19, 2019 at 8:57 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
> > > On Wed, Sep 18, 2019 at 10:57:28AM -0300, Mauro Carvalho Chehab wrote:
> > > > > > +Patches for the media subsystem should be sent to the media mailing list
> > > > > > +at linux-media@vger.kernel.org as plain text only e-mail. Emails with
> > > > > > +HTML will be automatically rejected by the mail server. There's no need
> > > > > > +to copy the maintainer or sub-maintainer(s).
> > > > >
> > > > > There's too much traffic on mailing lists for me to follow everything, I
> > > > > much prefer being CC'ed on patches.
> > > >
> > > > Well, by using patchwork, the best is to take a look on it at least for
> > > > the patches that you're interested. You could script something using
> > > > pwclient in order to make it easier.
> > > >
> > > > Anyway, not sure if the other sub-maintainers see the same way. From my side,
> > > > I prefer not to be c/c, as this is just more noise, as I just rely on
> > > > patchwork for media patches. What about changing this to:
> > > >
> > > >       Patches for the media subsystem should be sent to the media mailing list
> > > >       at linux-media@vger.kernel.org as plain text only e-mail. Emails with
> > > >       HTML will be automatically rejected by the mail server. It could be wise
> > > >       to also copy the sub-maintainer(s).
> > >
> > > The documentation should say "Use get_maintainer.pl" and do what it
> > > says.  Everything else is too complicated.
> >
> > +1
> >
> > > When I sent a patch, I use get_maintainer.pl then I add whoever the
> > > wrote the commit from the Fixes tag.  Then I remove Colin King and Kees
> > > Cook from the CC list because they worked all over the tree and I know
> > > them.  I also normally remove LKML if there is another mailing list but
> > > at least one subsystem uses LKML for patchwork so this isn't safe.
> > >
> > > So the safest instructions are "Use get_matainer.pl and add the person
> > > who wrote the commit in the Fixes tag".
> >
> > Better: perhaps get_maintainer.pl can be taught to add the author of the
> > commit pointed to by the Fixes tag, if present?
>
> And remove Kees Cook and Colin King ? :-) Jokes aside, brushing up
> get_maintainer.pl a bit is a good idea. I'm for instance not sure adding
> LKML automatically is a good idea if other mailing lists are already
> CC'ed, as it's a bit of a /dev/null (albeit with logging, so CC'ing it
> when no other mailing list is appropriate certainly makes sense).

Please don't do this, as it means the patch won't be findable on the
"LKML" patchwork instance at:

https://lore.kernel.org/patchwork/project/lkml/list/

Having LKML copied on all patches is also nice because it makes it
easier to respond to a patch that was posted to a list you didn't
subscribe to.  I subscribe to LKML and have it redirected to a folder
that I never look at.  Then if I want to find an email thread I can
search that folder and easily respond from within my normal email
client.

Is there any downside to CCing LKML?

-Doug
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
