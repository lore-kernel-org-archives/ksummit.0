Return-Path: <SRS0=9K8a=AS=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EE7CC433E0
	for <ksummit-discuss@archiver.kernel.org>; Tue,  7 Jul 2020 04:09:15 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 164F520684
	for <ksummit-discuss@archiver.kernel.org>; Tue,  7 Jul 2020 04:09:14 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=intel-com.20150623.gappssmtp.com header.i=@intel-com.20150623.gappssmtp.com header.b="aQAWV/vp"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 164F520684
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=intel.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DAD1286816;
	Tue,  7 Jul 2020 04:09:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OfmqrrCfzfIi; Tue,  7 Jul 2020 04:09:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id BCB4086822;
	Tue,  7 Jul 2020 04:09:13 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9B30EC0893;
	Tue,  7 Jul 2020 04:09:13 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4DA89C016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue,  7 Jul 2020 04:09:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3D5D286822
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue,  7 Jul 2020 04:09:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kWmWpdeztohf
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue,  7 Jul 2020 04:09:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com
 [209.85.218.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 53C7E86816
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue,  7 Jul 2020 04:09:10 +0000 (UTC)
Received: by mail-ej1-f66.google.com with SMTP id dp18so45164385ejc.8
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 06 Jul 2020 21:09:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Kd+hagxNLahxDCtppBjRUEK5tAfJnWOu81ahPEztSaE=;
 b=aQAWV/vpjJSXXFpPeSnG+kfh7lIyxfzTTwOYdEKW7QlmmS2VKBfdIeF9N2k88UppGc
 VH/DtzoShRTBp3M4emxE4DHRfm7n7p8p3/C8PU0P5jGTZfgfm9jXg406VhS5VuV+OyyG
 Vfgukri/R8fDyfCAW6m2Htts6MpWlzgluu7z5SNlK+8B8f6+vPR+6WLXT+H21/4hreMU
 3txu3qWPmln0t3uT6YlhutbWPcYqglkwIxNM9z3hrcH5sRnaj9Q6CQR201CUAV9n0yr9
 Tp8f2TzWiK1jcBSaBsZK9aQlMFsuAc7G2hjnbVFnPRDegUd6Z0WtMk280LPV+oIkNjNb
 0TfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Kd+hagxNLahxDCtppBjRUEK5tAfJnWOu81ahPEztSaE=;
 b=Zd9Ovmh8yVPNOqCwI7fy/x+6iqxUaXMcsJ+Pex9Bp/o0ILUdyOXq5kY4IpLB3R6k05
 F5hndkIU25bnI13KwDkv1T6uWlxdf4zsDutbigvEjaACulWZ34DR6lD5OgwhRRZzItoO
 9ogUmGtzpbkIMoM8Y7+TT2+Es8mOZ0iRk4qyLjvT1vpYQbWojjgUfIOhy2iph7VAG+ol
 40m7pV6fxNgZmUM/SfAwvSQ63d3wXeJAV61FyiE/lRqyObPMzzHW9KxEdVCN+b585U7r
 mlXswgXIKLTIQUF0GsxUjtTyrflwDNYhyuXHCfRtd5bsVXulU9XRkIWXUuGxDXXf5lQq
 xQVA==
X-Gm-Message-State: AOAM5315qxpMFNjtm3DYleCqNUE9EL1I1OTaY23aJEurgyksPdw6uRj+
 lxyv21hA7MoqAxNmixkOYs9S9ECL90e0e94h84+NGg==
X-Google-Smtp-Source: ABdhPJyPRqnkRZMh1ri4hzJHg5glOXCDJbyxpChWsHOcw8ODDEd5rTUzWvDESEc9IgnbrZlOqqJb1aAqJeDVIOGl5mY=
X-Received: by 2002:a17:906:1a54:: with SMTP id
 j20mr45158330ejf.455.1594094948779; 
 Mon, 06 Jul 2020 21:09:08 -0700 (PDT)
MIME-Version: 1.0
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 <20200706191555.GD6176@sirena.org.uk>
In-Reply-To: <20200706191555.GD6176@sirena.org.uk>
From: Dan Williams <dan.j.williams@intel.com>
Date: Mon, 6 Jul 2020 21:08:57 -0700
Message-ID: <CAPcyv4iiVvJHPTmgssTvp=jsFCs2r068mPtZ9s0qXfEKFNdVBw@mail.gmail.com>
To: Mark Brown <broonie@kernel.org>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 tech-board-discuss@lists.linuxfoundation.org, Chris Mason <clm@fb.clm>
Subject: Re: [Ksummit-discuss] [Tech-board-discuss] [PATCH] CodingStyle:
	Inclusive Terminology
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

On Mon, Jul 6, 2020 at 12:16 PM Mark Brown <broonie@kernel.org> wrote:
>
> On Sat, Jul 04, 2020 at 01:02:51PM -0700, Dan Williams wrote:
>
> > +'blacklist'. Recommended replacements for 'slave' are: 'secondary',
> > +'subordinate', 'replica', 'responder', 'follower', 'proxy', or
>
> I'd second the suggestion of device as an option here.

Sure, will do. I'm assuming you're thinking of cases where 'slave' is
used in isolation without a paired relative term? If not, please
clarify.

>
> > +Of course it is around this point someone jumps in with an etymological
> > +argument about why people should not be offended. Etymological arguments
> > +do not scale. The scope and pace of Linux to reach new developers
> > +exceeds the ability of historical terminology defenders to describe "no,
>
> More generally etymological arguments are just not super relevant here
> anyway, the issues people have are around current perceptions rather
> than where things came from.
>
> > +not that connotation". The revelation of 2020 was that black voices were
> > +heard on a global scale and the Linux kernel project has done its small
> > +part to answer that call as it wants black voices, among all voices, in
> > +its developer community.
>
> This, especially the bit about "revelation of 2020", sounds a little
> off to me - I think it's that it's worryingly close to the frequently
> derided pattern where people recognise a problem that other people have
> been talking about for a while and treat it as something new.  Perhaps a
> more neutrally worded reference to current events and/or our desire to
> improve instead?

I'd just as soon let this commentary live in the archives if people
need some more background. It's not like we have companion essays on
the other recommendations in coding-style, and we seem to be
converging on just amending coding-style.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
