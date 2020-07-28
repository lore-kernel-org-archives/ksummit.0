Return-Path: <SRS0=6XWG=BH=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DEA56C433E0
	for <ksummit-discuss@archiver.kernel.org>; Tue, 28 Jul 2020 13:56:35 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A2B4F2074F
	for <ksummit-discuss@archiver.kernel.org>; Tue, 28 Jul 2020 13:56:35 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=ffwll.ch header.i=@ffwll.ch header.b="FqmzxzkD"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A2B4F2074F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ffwll.ch
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5D91A2265B;
	Tue, 28 Jul 2020 13:56:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XNkTQLjiV5+M; Tue, 28 Jul 2020 13:56:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 0CB5F221FB;
	Tue, 28 Jul 2020 13:56:34 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DECCCC004F;
	Tue, 28 Jul 2020 13:56:33 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A5603C004D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 28 Jul 2020 13:56:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8D1B922253
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 28 Jul 2020 13:56:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QLEirecRad6H
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 28 Jul 2020 13:56:31 +0000 (UTC)
X-Greylist: delayed 00:06:29 by SQLgrey-1.7.6
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com
 [209.85.167.173])
 by silver.osuosl.org (Postfix) with ESMTPS id 190D6221FB
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 28 Jul 2020 13:56:31 +0000 (UTC)
Received: by mail-oi1-f173.google.com with SMTP id v13so891285oiv.13
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 28 Jul 2020 06:56:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iDN77Lrfz/4eRA2yxskplNqAM1qbrVrjlOL5wSU34FU=;
 b=FqmzxzkD8IClJdHk+HR2T0YqIbe0lvvgqv4SYRe+hCCjsQVDU5W/C00IiVTzClet+Y
 yQ314AlPyT4f0d/uhKD/sz2iD17msEkspp0yj8Jg0gqeF6kdPx/vOay9gKBXfKfCo9m/
 7luHR8a0QlCBqxilJBBTLxDwdB+dHpzPDs12M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iDN77Lrfz/4eRA2yxskplNqAM1qbrVrjlOL5wSU34FU=;
 b=ovdNXL2Ion0w0IQwBqByHZdB0cimXXbFnynLXah4rFLuAF0N76DMIAR1vcJcH6QPDk
 KFWB8OoCGMEqv5ElTNqhirHPm9c00DDftBsme8DbBfedyElwahHumF7HkFjmFWcd4H9+
 xBR0XNbsLGOwtEDavFYsvMeYm6qSHSU5NV5cBMAM3+ZO382KDSoAkqQ/qzbQrBrqt8x0
 KvrLKNE4yRp24DAeSHHHvtAJtuVx8u4kbhqf8pfzmqlfUSyrqiIbXMfaSWq18DvHRAYV
 CyoLVYPWBI7k3mIa/1+2Y1EiHc22MxAkWF35jo/dwPd8N5VbVXyd6CymTrVaKFwNDleC
 edCQ==
X-Gm-Message-State: AOAM5329Ecg0l/joGVZPgvTJe3HFClPF/yQe5s7Au7uZcf+xoUokBo6K
 gPGxS59bjWpBoBYuEOFC2VHZ6a7s3NuOQ3F+Bg046Vff
X-Google-Smtp-Source: ABdhPJwv1l0B9a9dsp3grX1uTbpQJkbhMbzTu5vflZR4A++OnC2EeBD4DP1gOya0hOOxGlSmmGux6JtPIJKLJaA2uMY=
X-Received: by 2002:a05:6808:88:: with SMTP id
 s8mr3296613oic.101.1595944201037; 
 Tue, 28 Jul 2020 06:50:01 -0700 (PDT)
MIME-Version: 1.0
References: <ade3420c-89fd-bed0-52e3-a0396eaeda2d@labbott.name>
 <CY4PR13MB1175DCFB41F2FB2F47E43A9CFD720@CY4PR13MB1175.namprd13.prod.outlook.com>
In-Reply-To: <CY4PR13MB1175DCFB41F2FB2F47E43A9CFD720@CY4PR13MB1175.namprd13.prod.outlook.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 28 Jul 2020 15:49:49 +0200
Message-ID: <CAKMK7uFqDej_qfd3ANHx3FS4_QSvoB3j=424uNKjs28FK6PppQ@mail.gmail.com>
To: "Bird, Tim" <Tim.Bird@sony.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
 <ksummit-discuss@lists.linuxfoundation.org>,
 "tech-board-discuss@lists.linuxfoundation.org"
 <tech-board-discuss@lists.linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] Linux Foundation Technical Advisory Board
 Elections -- voting procedures
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

On Tue, Jul 28, 2020 at 12:44 AM Bird, Tim <Tim.Bird@sony.com> wrote:
>
> > -----Original Message-----
> > From:  Laura Abbott
> >
> > On behalf of the Linux Foundation Technical Advisory Board (TAB), I'd
> > like to announce the voting procedures for the 2020 TAB elections.
> > The pool of eligible voters will consist of the following:
> >
> > 1) All attendees of the Linux Plumbers conference (i.e. kernel summit)
> >
> > 2) Anyone who is not a kernel summit attendee will also be eligible to
> > vote if the following criteria are met:
> > -- There exists three kernel commits in a mainline or stable released
> > kernel that
> > --- Have a commit date in the year 2019 or 2020
> > --- Contain an e-mail address in one of the following tags or merged
> > tags (e.g. Reviewed-and-tested-by)
> > ---- Signed-off-by
> > ---- Tested-by
> > ---- Reported-by
> > ---- Reviewed-by
> > ---- Acked-by
> >
> > We will be using the electronic voting method that we used in 2019. All
> > Linux Plumbers Attendees will automatically receive a ballot. Anyone
> > who is otherwise eligible to vote should e-mail
> > tab-elections@lists.linuxfoundation.org to request a ballot. The deadline
> > for requesting a ballot is August 17, 00:00 UTC (one week before
> > Linux Plumbers)
> >
> > For those who would like to know the thought process behind this:
> >
> > Last year, we successfully used electronic voting for the TAB
> > elections. Given the circumstances of this year, we have no other
> > reasonable option for voting. While we could continue to limit voting to
> > kernel summit attendees, one of the goals of moving away from in person
> > voting was to potentially expand the voter pool. Since kernel summit is
> > not being held in person this year, it makes sense to expand the voting
> > pool at the same time.
> >
> > We will be sending a call for nominations and announcements about
> > when voting will start at a later date.
> >
> > If you have any questions, feel free to reach out to the tab at
> > tab@lists.linuxfoundation.org
>
> I know it's a lot of work to put this together.  Thanks very much for this
> new process.  I think it's a great change.

Same here, I think this is excellent.

I do think the big masses of contributors have fairly different pain
points and issues from what makes maintainer's lifes hard, so for the
imo very unlikely outcome that this will shift the TAB to be one-sided
representing contributors only, no maintainers, we can easily fix that
by formalizing a subset of the maintainer summit as a permanent thing.
De facto this is how things work anyway, can't merge stuff without
maintainers :-)

Cheers, Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
