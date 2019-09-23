Return-Path: <SRS0=cVpD=XS=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1F83C4CECF
	for <ksummit-discuss@archiver.kernel.org>; Mon, 23 Sep 2019 15:58:44 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B19DE20673
	for <ksummit-discuss@archiver.kernel.org>; Mon, 23 Sep 2019 15:58:44 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="AuHOsq9J"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B19DE20673
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 0B353DA6;
	Mon, 23 Sep 2019 15:58:44 +0000 (UTC)
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AE3BCDA5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 23 Sep 2019 15:58:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
	[209.85.166.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A2D698A0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 23 Sep 2019 15:58:41 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id q1so34758967ion.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 23 Sep 2019 08:58:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=fol4ZsNp8Kdo3yO2q1shDBzS/5TjO9ufrtF85Tvjgow=;
	b=AuHOsq9JFSE5Ify7QRYRkbU2pp/wr3ZndsDy6fRR3fze82MYhF7kgsrsTLe+z47AAK
	YhsUYhXAqCQy5Oh4PlGj6lDS0wEhHF+ypGGqhnZBESgJTapMgEypq4cu/aFrqpT6qmtz
	x0VZqOUy4BNlHhiA2hx1YlILYS27L/W8IGf20=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=fol4ZsNp8Kdo3yO2q1shDBzS/5TjO9ufrtF85Tvjgow=;
	b=grrD1xLyUGmrm6Pt6pxc7kuG2cLsM1RbCzdUcLBOFyrVeOPoBcTg9ayUv21Wv0YXz2
	47HwDR5hzs5cB/Bs0e6CcK4+6nw7hnsuEjBGsdiQuMHDbaxADXuAqLKVLriShHBbYOVH
	VB5fp9tstIp8OVuBk3bu9JSEZ1h0bVuMVd63rSZW5B9gDo5cCBSRSm4kdzhAWcRFFBe6
	Ug3se7EakAZ05xsjHEXj8mODg8D/0HJ9ECfskHOOa+jQD/9WqzAFksJeGyQcrTClXH7f
	LULusi6Z/4rMC8TPzlSVL18hGwSx1W54PzcAENbzLKnKgsSeamrnbYyTXnhZ4ukfMODj
	EKWg==
X-Gm-Message-State: APjAAAVVmSOx33ibTROBbJyPbBrYzcJDFC2fI16vZSNknXdl/GpJo10a
	bDMMXqtdIBTjfCDkNtl5+sNH11S2At8=
X-Google-Smtp-Source: APXvYqxSu5IE3pc9X1aChGpvsw/DU8GerjmWJBIrBL/T3WsLYYMXuTGuOIzLyh7oV9JmdA3CDb0Ajg==
X-Received: by 2002:a5d:91c8:: with SMTP id k8mr957ior.232.1569254320580;
	Mon, 23 Sep 2019 08:58:40 -0700 (PDT)
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com.
	[209.85.166.52])
	by smtp.gmail.com with ESMTPSA id x2sm9254868iob.74.2019.09.23.08.58.39
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 23 Sep 2019 08:58:40 -0700 (PDT)
Received: by mail-io1-f52.google.com with SMTP id n197so34660888iod.9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 23 Sep 2019 08:58:39 -0700 (PDT)
X-Received: by 2002:a02:1109:: with SMTP id 9mr121098jaf.90.1569254319004;
	Mon, 23 Sep 2019 08:58:39 -0700 (PDT)
MIME-Version: 1.0
References: <156821693963.2951081.11214256396118531359.stgit@dwillia2-desk3.amr.corp.intel.com>
	<434c05bddd2b364e607e565227487910a8dd9793.1568391461.git.mchehab+samsung@kernel.org>
	<20190918123620.GA6306@pendragon.ideasonboard.com>
	<20190918105728.24e7eb48@coco.lan> <20190919065447.GF2959@kadam>
	<CAMuHMdU10J5zgQ0r8uoA+LFHRbyLB=AG6xygTmsxwc7T-ffdDw@mail.gmail.com>
	<20190920145352.GI12950@pendragon.ideasonboard.com>
	<CAD=FV=UjTT04pOf3q3H+ZdG9ixr6RWaRJfNs2Dk7xTTEMi-=xw@mail.gmail.com>
	<87k1a2yqmx.fsf@intel.com>
In-Reply-To: <87k1a2yqmx.fsf@intel.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 23 Sep 2019 08:58:28 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XNys5BbzrYNnNFSEXOTUGD1LBxJHeuv8YHCcHmRQs28A@mail.gmail.com>
Message-ID: <CAD=FV=XNys5BbzrYNnNFSEXOTUGD1LBxJHeuv8YHCcHmRQs28A@mail.gmail.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
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

Hi,

On Sat, Sep 21, 2019 at 1:56 AM Jani Nikula <jani.nikula@intel.com> wrote:
>
> On Fri, 20 Sep 2019, Doug Anderson <dianders@chromium.org> wrote:
> > On Fri, Sep 20, 2019 at 7:54 AM Laurent Pinchart <laurent.pinchart@ideasonboard.com> wrote:
> >> And remove Kees Cook and Colin King ? :-) Jokes aside, brushing up
> >> get_maintainer.pl a bit is a good idea. I'm for instance not sure adding
> >> LKML automatically is a good idea if other mailing lists are already
> >> CC'ed, as it's a bit of a /dev/null (albeit with logging, so CC'ing it
> >> when no other mailing list is appropriate certainly makes sense).
> >
> > Please don't do this, as it means the patch won't be findable on the
> > "LKML" patchwork instance at:
> >
> > https://lore.kernel.org/patchwork/project/lkml/list/
> >
> > Having LKML copied on all patches is also nice because it makes it
> > easier to respond to a patch that was posted to a list you didn't
> > subscribe to.  I subscribe to LKML and have it redirected to a folder
> > that I never look at.  Then if I want to find an email thread I can
> > search that folder and easily respond from within my normal email
> > client.
> >
> > Is there any downside to CCing LKML?
>
> I think the question becomes, do we want *everything* posted to LKML?

I swear that I was involved in a conversation in the past where
someone suggested to stop CCing LKML on patches and Jonathan Corbet
jumped in and said that he supported CCing LKML on all patches.  I
searched for that conversation and couldn't find it, so it's possible
I dreamed it.  Maybe he can confirm?


> For example, based on the last 30 days, the kernel the monthly addition
> to LKML traffic from my corner of the kernel would be in this ballpark:
>
> $ notmuch count date:30d.. to:intel-gfx@lists.freedesktop.org or to:dri-devel@lists.freedesktop.org and not to linux-kernel@vger.kernel.org and subject:PATCH
> 96904
>
> OTOH LKML is already a firehose that's impossible to drink from, so not
> much difference there...

Right.  At this point I think LKML is just useful as a dumping ground
and not a place to look for patches or conversations without filters.
It feels fine to keep using it that way.  Having another list (like
ksummit-discuss) for conversations with a higher signal-to-noise ratio
seems like a fine way forward to me.


-Doug
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
