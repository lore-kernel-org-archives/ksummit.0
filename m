Return-Path: <SRS0=lEje=AV=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=3.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 605FFC433E0
	for <ksummit-discuss@archiver.kernel.org>; Fri, 10 Jul 2020 21:46:50 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 31C23206E2
	for <ksummit-discuss@archiver.kernel.org>; Fri, 10 Jul 2020 21:46:50 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=intel-com.20150623.gappssmtp.com header.i=@intel-com.20150623.gappssmtp.com header.b="ouw7PqH/"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 31C23206E2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=intel.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 516CC88A69;
	Fri, 10 Jul 2020 21:46:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id grxylL-AKWH4; Fri, 10 Jul 2020 21:46:48 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B281B88A2A;
	Fri, 10 Jul 2020 21:46:48 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 846F8C0890;
	Fri, 10 Jul 2020 21:46:48 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D0657C016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 10 Jul 2020 21:46:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BED4C888EB
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 10 Jul 2020 21:46:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DjRWhJZTvI1w
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 10 Jul 2020 21:46:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com
 [209.85.218.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0D3E18887B
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 10 Jul 2020 21:46:45 +0000 (UTC)
Received: by mail-ej1-f66.google.com with SMTP id dp18so7557597ejc.8
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 10 Jul 2020 14:46:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=A4VTlerwbUNoSt2XThLD+6dlusu4El/U42eSnUsX6n4=;
 b=ouw7PqH/fd8RGpSOHN4Mf9hQW5R4Y18NG0VUofEAKvSp8zxVfLxlcyWHs6/BawgCtQ
 Wu9E+0/yRuuOxqZBIymVEUbDrr7izwaHEnnrSOzaYCCakeKdQXptNiTmqjGnvoQ/j7aZ
 Y5DsRdkkGJRcE9gYVv2USPQcehf0mDfFbQ1Nw8kcBHf5+d4OvU+Gc0/4/nZlfSshnh77
 pAe4uFiIoeXSGaPPnlJszgorOVd/NkWtv+XzqK5VwrCbxx/3QIFTRWcMyGHXHKVs7fhM
 vJU4VuUZ8O+RUPgjoLvIsLIwmXPZQEH0MwDrplvv70LdG6KC6ooH26ncHDvoGNbd9PJE
 50UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=A4VTlerwbUNoSt2XThLD+6dlusu4El/U42eSnUsX6n4=;
 b=SkZ9D206QI9MGY2/6jOhACMvNobE5HkII6eqG7qU4rBty/pefJ7sGmttrIbf9lLtnT
 ZoAE9o/VnfqIa5o5xwQl07rtMyOgzAsmnBnP5ydtS3utpUeHmA76+tNBgRegS4Hq76Gi
 aWXBbp2HIiM1TPE3XM3FHZYiUIxfCLZ/KXwTo3qKPiUP0i9e4E51oRAZGzVERX2ITTeW
 mUHlXfbABo962kw4dRrElIRvtNpHP3Fv45NH8vpY/CiVw1EVQ6Y6e4l3AH0jEPq9SnPS
 QvmXeGHAbkCVAHGvSOVUK91BwhPAYDUxxu2/PMQF/+Cg29am/lhFaVBaJ6TMbBTOtMxn
 rZRA==
X-Gm-Message-State: AOAM530eCz0/VB2uFVPSEFkFCq5J+Hk+ZtHNXsSKAJxd4qyvFM7kNW58
 /Kxiep0LzhxFOWgQCJOfinN0WWB4Go92a8M74ENMrw==
X-Google-Smtp-Source: ABdhPJxLaVOXj7Cfq7OFeW3FAbbjCqcQic4yp5DelaumYpXwZLQLJubKiaDXlv2Z7to/Tyc2BK9z0MZe48Rnok/Xx4c=
X-Received: by 2002:a17:906:b888:: with SMTP id
 hb8mr62470722ejb.124.1594417604353; 
 Fri, 10 Jul 2020 14:46:44 -0700 (PDT)
MIME-Version: 1.0
References: <159423201991.2466245.8461410729774664077.stgit@dwillia2-desk3.amr.corp.intel.com>
 <CALCETrVufhJTh3LweQqqH1OHc2rTsGkMcmTzCq6kKh1ETY0arw@mail.gmail.com>
In-Reply-To: <CALCETrVufhJTh3LweQqqH1OHc2rTsGkMcmTzCq6kKh1ETY0arw@mail.gmail.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Fri, 10 Jul 2020 14:46:33 -0700
Message-ID: <CAPcyv4iCJfzggmOXpmWUWcFPay5DauWzzBWjECYr2f9vCxLZWg@mail.gmail.com>
To: Andy Lutomirski <luto@amacapital.net>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 SeongJae Park <sjpark@amazon.de>, LKML <linux-kernel@vger.kernel.org>,
 tech-board-discuss@lists.linuxfoundation.org,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 Dave Airlie <airlied@redhat.com>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [PATCH v3] CodingStyle: Inclusive Terminology
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

On Fri, Jul 10, 2020 at 2:12 PM Andy Lutomirski <luto@amacapital.net> wrote:
>
> On Wed, Jul 8, 2020 at 11:30 AM Dan Williams <dan.j.williams@intel.com> wrote:
> >
> > Linux maintains a coding-style and its own idiomatic set of terminology.
> > Update the style guidelines to recommend replacements for the terms
> > master/slave and blacklist/whitelist.
>
> Acked-by: Andy Lutomirski <luto@kernel.org>

Thanks, Andy.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
