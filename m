Return-Path: <SRS0=9K8a=AS=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.5 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4AC12C433DF
	for <ksummit-discuss@archiver.kernel.org>; Tue,  7 Jul 2020 04:04:44 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1DD69206C3
	for <ksummit-discuss@archiver.kernel.org>; Tue,  7 Jul 2020 04:04:44 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=intel-com.20150623.gappssmtp.com header.i=@intel-com.20150623.gappssmtp.com header.b="Ko2E1qSb"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1DD69206C3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=intel.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 828EB241F9;
	Tue,  7 Jul 2020 04:04:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 91x0WcdRNl7T; Tue,  7 Jul 2020 04:04:39 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id AC7C7254EB;
	Tue,  7 Jul 2020 04:04:39 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7EAF7C0893;
	Tue,  7 Jul 2020 04:04:39 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2416EC016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue,  7 Jul 2020 04:04:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 121C987678
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue,  7 Jul 2020 04:04:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uzAddWHSn6LA
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue,  7 Jul 2020 04:04:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 27BEF87669
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue,  7 Jul 2020 04:04:37 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id dg28so37204976edb.3
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 06 Jul 2020 21:04:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6hAZTl6K9ZZJRuBGIigtyyzN/0NQAjksX5TVG0PUHis=;
 b=Ko2E1qSbx1nPmsdQ2RpYc/VqrXF1Cu5ICoGXOuJxNyDPXqCaBxOcU6CHjE7y2ANaQk
 ecW473NBRf9zCvXHP8VdmnVSI3S0fy8xmnlfCHQIIFB+kmdslLRxVaL7kmIY3gUKmH9V
 mYps5GQuD67dAb2WudLc0YUhIDoscm8t876DSC8TIpELsu4XYL3MtQ6XD35/XEeCoo3P
 8QeiSdT3mRB6rt6zp6/TaWBnnWSzIghx8Ki817lgozICwcVxPHZo2uj+dHRaKpDwwVsJ
 rJHbFemch7qSRQSND4Wsmj48BO7oi+445FvlOZcWTSKl36VCEhSo3Pm/to5hbfAmhpCU
 VZVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6hAZTl6K9ZZJRuBGIigtyyzN/0NQAjksX5TVG0PUHis=;
 b=jen7qIEOEmhlImLpgq3oku558Xa2uNAkGX6G5SpO//yUn2oIoeq3CCB0X7R57YBXcQ
 +0IQXpJ9QxxjtL610Nnbxkeyq9S/ddHUEu22jic706ORrRhDBV8svCTwkwauc0f69s6u
 /NZczpuyaWs/SZEwz3nDZrljNcVDilNppg27zpYHEeptwJPS4Pivsn5tyEVtlsBnymTp
 BJuJxLOF/iANgl4ZLGb0e0iIs1/9tsbCoLXuwrVhHzAFpG3UG+JEneqf58xrR+KwxWi3
 GdatW0FFVCQVRM5ZJ3IAhUVvm5AaQyhPJ50b7EimT/BATlhM8G1TvcTNe5JvjJHDA0NM
 BMxA==
X-Gm-Message-State: AOAM530ZM52YkGZRxUPdt0rTZoelp6xotKZym9zeVbUeHswjsIFp/q5j
 X5ZPCUmOP+Hm+r6rOldxXY3Edrmo1KHS1SxM7s/SXA==
X-Google-Smtp-Source: ABdhPJwzaF51I0jM6b8skPP1l6fWj5clqHzchbKv9dG535YIcTRiQ81iT+YC/Ds98lHb+oxpNTipHjX5FUp2OW28c+I=
X-Received: by 2002:aa7:c24d:: with SMTP id y13mr62007695edo.123.1594094675451; 
 Mon, 06 Jul 2020 21:04:35 -0700 (PDT)
MIME-Version: 1.0
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 <79214066-3886-e0ef-f26e-8cb3d53404be@linuxfoundation.org>
In-Reply-To: <79214066-3886-e0ef-f26e-8cb3d53404be@linuxfoundation.org>
From: Dan Williams <dan.j.williams@intel.com>
Date: Mon, 6 Jul 2020 21:04:24 -0700
Message-ID: <CAPcyv4hOJHazV5UdE_Km4AWTvZvsrNtHR+2LUiOTYsDttRZZ5Q@mail.gmail.com>
To: Shuah Khan <skhan@linuxfoundation.org>
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

On Mon, Jul 6, 2020 at 11:30 AM Shuah Khan <skhan@linuxfoundation.org> wrote:
>
> On 7/4/20 2:02 PM, Dan Williams wrote:
> > Recent events have prompted a Linux position statement on inclusive
> > terminology. Given that Linux maintains a coding-style and its own
> > idiomatic set of terminology here is a proposal to answer the call to
> > replace non-inclusive terminology.
> >
>
> Hi Dan,
>
> Thanks for taking the time to work on this patch and updating the
> coding-style.rst with the with inclusive terminology guidelines and
> adding a new document outlining the scope.
>
> The suggestions you made will help us adapt inclusive terminology
> for the current times, and also help us move toward terms that are
> intuitive and easier to understand keeping our global developer
> community in mind.
>
> Allowlist/denylist terms are intuitive and action based which have a
> globally uniform meaning.
>
> Terms such as "whitelist" etc are contextual, hence assume contextual
> knowledge on the part of the reader.
>
> A couple comments below:
>
> > Cc: Jonathan Corbet <corbet@lwn.net>
> > Cc: Kees Cook <keescook@chromium.org>
> > Signed-off-by: Chris Mason <clm@fb.clm>
> > Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Signed-off-by: Dan Williams <dan.j.williams@intel.com>
> > ---
> >   Documentation/process/coding-style.rst          |   12 ++++
> >   Documentation/process/inclusive-terminology.rst |   64 +++++++++++++++++++++++
> >   Documentation/process/index.rst                 |    1
> >   3 files changed, 77 insertions(+)
> >   create mode 100644 Documentation/process/inclusive-terminology.rst
> >
> > diff --git a/Documentation/process/coding-style.rst b/Documentation/process/coding-style.rst
> > index 2657a55c6f12..4b15ab671089 100644
> > --- a/Documentation/process/coding-style.rst
> > +++ b/Documentation/process/coding-style.rst
> > @@ -319,6 +319,18 @@ If you are afraid to mix up your local variable names, you have another
> >   problem, which is called the function-growth-hormone-imbalance syndrome.
> >   See chapter 6 (Functions).
> >
> > +For symbol names, avoid introducing new usage of the words 'slave' and
> > +'blacklist'. Recommended replacements for 'slave' are: 'secondary',
> > +'subordinate', 'replica', 'responder', 'follower', 'proxy', or
> > +'performer'.  Recommended replacements for blacklist are: 'blocklist' or
> > +'denylist'.
>
> allowlist and blocklist or denylist are lot more intuitive than
> white/black in any case.

Yes, that was interesting to me when I first grappled with this. The
replacements are more direct.

I was going to go with blocklist/passlist as the common shorthand
recommendation, but if a subsystem picks allowlist/denylist as a local
custom that's fine too.

[..]
> Please add my Signed-off-by: Shuah Khan <skhan@linuxfoundation.org>
> or Acked-by: Shuah Khan <skhan@linuxfoundation.org>

Thanks Shuah.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
