Return-Path: <SRS0=h6UC=XP=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 438B1C4CEC9
	for <ksummit-discuss@archiver.kernel.org>; Fri, 20 Sep 2019 14:10:00 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 13EA220644
	for <ksummit-discuss@archiver.kernel.org>; Fri, 20 Sep 2019 14:10:00 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=ffwll.ch header.i=@ffwll.ch header.b="IUsghact"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 13EA220644
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ffwll.ch
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 868F9C7F;
	Fri, 20 Sep 2019 14:09:59 +0000 (UTC)
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8566DC7D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 20 Sep 2019 14:09:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
	[209.85.210.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D0FCD81A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 20 Sep 2019 14:09:55 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id c10so6274070otd.9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 20 Sep 2019 07:09:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=6mjOvNkyDJoUSFzKGpJ6UrFxyHGBEfjS8CehN7hW8uc=;
	b=IUsghactGUSl6Ol/d/2VhnjvoAr+YlQHUC/c0qe9PMfYqT/ISK8Di3bYPBxeT7ocb/
	pcyy5OqOHXmhr9Xp8301d0Ue7pRfI3C296ej3asCopooKDJpLTJlUF25tP+Ir04wV3DG
	dxFA5D0I2DSAn/F5tbfQf2htRtrgS7CeFVHgI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=6mjOvNkyDJoUSFzKGpJ6UrFxyHGBEfjS8CehN7hW8uc=;
	b=b8sEsRBymKVXP8ZsA0olF3EbJTvZAFFxmm45xxl1rUCHmcHmtHbx+Lkw+XWVXGI1v0
	4qsLGKpboftysA4avYZZ94asv54LftHpJzn2Wfn6SPEn1b401pdgIkcFWy3F9hmmQ+1D
	WtC31qkWrdl+oBiBng6If70yY+/7aL7eZzPVqwhgmev57+0pO1B7pSyt9KCMCDd8FSXi
	52qwUlCAc9GZR4uwnEMyfrvxi1Nugdbh9YqnaFRSAls0FnWo+D1pTG6KdXsQyi/1G7BT
	+sm2yShxR8s4KHbcEKiR37D19GHo4MdO3mewRsulR1YmZWWZWziYK/PklE4VprshZ7sT
	Ggwg==
X-Gm-Message-State: APjAAAXI1Z2DohCODE28gnAATypmhSiqXF5YD7augj8sUBH/AhYjgWd0
	prHNJ22VxFcPcMEEbjSnOtkrsg2fhPAik36zW6lj0A==
X-Google-Smtp-Source: APXvYqw8acnX2GcC9Dyed1nYa3MJdYIi+Pq96RFyfi7GNbQ3fX6lT8nIXYdzYEjXqDhGkzFqiYjWRtzFCinQgM/+wKA=
X-Received: by 2002:a9d:7006:: with SMTP id k6mr11469082otj.303.1568988595029; 
	Fri, 20 Sep 2019 07:09:55 -0700 (PDT)
MIME-Version: 1.0
References: <156821693963.2951081.11214256396118531359.stgit@dwillia2-desk3.amr.corp.intel.com>
	<434c05bddd2b364e607e565227487910a8dd9793.1568391461.git.mchehab+samsung@kernel.org>
	<20190918123620.GA6306@pendragon.ideasonboard.com>
	<20190918105728.24e7eb48@coco.lan>
	<20190918172705.GC4734@pendragon.ideasonboard.com>
	<20190918154831.3dd0d040@coco.lan> <20190919070856.GG2959@kadam>
	<cfbe9a092f60f1ce5d1fb3ab5260dd56193bd8fb.camel@perches.com>
In-Reply-To: <cfbe9a092f60f1ce5d1fb3ab5260dd56193bd8fb.camel@perches.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 20 Sep 2019 16:09:43 +0200
Message-ID: <CAKMK7uFrvjMDng7Ko17CPLFfiNhTw5jABi52w7P9v_3qj3350A@mail.gmail.com>
To: Joe Perches <joe@perches.com>
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

On Fri, Sep 20, 2019 at 1:27 PM Joe Perches <joe@perches.com> wrote:
>
> On Thu, 2019-09-19 at 10:08 +0300, Dan Carpenter wrote:
> > On Wed, Sep 18, 2019 at 03:48:31PM -0300, Mauro Carvalho Chehab wrote:
> > > Em Wed, 18 Sep 2019 20:27:05 +0300
> > > Laurent Pinchart <laurent.pinchart@ideasonboard.com> escreveu:
> > >
> > > > > Anyway, not sure if the other sub-maintainers see the same way. From my side,
> > > > > I prefer not to be c/c, as this is just more noise, as I just rely on
> > > > > patchwork for media patches. What about changing this to:
> > > > >
> > > > >         Patches for the media subsystem should be sent to the media mailing list
> > > > >         at linux-media@vger.kernel.org as plain text only e-mail. Emails with
> > > > >         HTML will be automatically rejected by the mail server. It could be wise
> > > > >         to also copy the sub-maintainer(s).
> > > >
> > > > That works for me. As this is really a personal preference, is there a
> > > > way it could be encoded in MAINTAINERS in a per-person fashion ?
> > > > Something that would allow you to opt-out from CC from linux-media (but
> > > > possibly opt-in for other parts of the kernel), and allow me to opt-in
> > > > for the drivers I maintain ?
> > >
> > > I don't think so. Perhaps we could add, instead, something like that at the
> > > sub-maintainers section of the profile.
> >
> > Of course there is a way to add yourself as a maintainer for a specific
> > .c file...  Maybe people feel like MAINTAINERS is too crowded?
> >
> > We could update get_maintainer.pl to grep the .c files for a specific
> > tag instead of putting everything in a centralized MAINTAINERS file.
>
> Another option is to split the MAINTAINERS file into multiple
> distributed files.  get_maintainer.pl already supports that.
>
> https://lwn.net/Articles/730509/
> https://lore.kernel.org/lkml/1501350403.5368.65.camel@perches.com/

Oh I missed that entirely. Can we roll this out now in subsystems? I'd
really like to move all the gpu related MAINTAINERS entries into
drivers/gpu. The one file in the root is unmangeable big and git blame
takes forever. Ofc splitting it isn't an immediate fix, but long term
should be easier. I thought Linus planned to just do that split (at
least the first level or so) after an -rc1?
-Daniel

> > But it doesn't make sense to try store that information MY BRAIN!  I
> > can't remember anything from one minute to the next so I have no idea
> > who maintains media submodules...
>
> Nor I.  Nor should I have to.
>
>
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss



-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
