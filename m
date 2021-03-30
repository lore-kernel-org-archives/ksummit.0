Return-Path: <SRS0=Xthy=I4=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=3.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 09C3CC433C1
	for <ksummit-discuss@archiver.kernel.org>; Tue, 30 Mar 2021 05:59:25 +0000 (UTC)
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 660976198A
	for <ksummit-discuss@archiver.kernel.org>; Tue, 30 Mar 2021 05:59:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 660976198A
Authentication-Results: mail.kernel.org; dmarc=pass (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1E08B60822;
	Tue, 30 Mar 2021 05:59:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9iMugB6SA0JZ; Tue, 30 Mar 2021 05:59:23 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3F0EF60802;
	Tue, 30 Mar 2021 05:59:22 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 11F9CC000C;
	Tue, 30 Mar 2021 05:59:22 +0000 (UTC)
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BCC6BC000A
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 30 Mar 2021 05:59:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 959BF40416
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 30 Mar 2021 05:59:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MAyn-iCtt6lb
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 30 Mar 2021 05:59:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 87E5340345
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 30 Mar 2021 05:59:19 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7F76A6191B;
 Tue, 30 Mar 2021 05:59:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1617083958;
 bh=+5DO+lXCL5MeWGlG77YUtf/+D9Bht5ixm4alm8/c6S8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GT+Qc6M4+0XVaboH0yUMU55OBIAmswUaSY+E9CiXcxK8SBW1Bzu5w0ezQWLFTe3Fp
 TQyHYWXLB0uqPQ6x7+4l+XMTSb1a+dGODNC5alxMldDFUeT6lZF3qw6ie0g7A+BKQ7
 0u0Tsm2DR0k286T1aTdwSY7AC4BOimDM+K+4w4vI=
Date: Tue, 30 Mar 2021 07:59:15 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jonathan Corbet <corbet@lwn.net>
Message-ID: <YGK+M66FWJOMC8ky@kroah.com>
References: <c396c91f-27c2-de36-7b05-099e03c213f4@leemhuis.info>
 <6a220d2c-568e-2e41-53a4-0800e206d0a6@leemhuis.info>
 <14d9b8a3-94ce-00a6-a17b-934ffd999697@leemhuis.info>
 <87r1jxpol6.fsf@meer.lwn.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87r1jxpol6.fsf@meer.lwn.net>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 linux-doc@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Thorsten Leemhuis <linux@leemhuis.info>
Subject: Re: [Ksummit-discuss] [1/5] reporting-issues: header and TLDR
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

On Mon, Mar 29, 2021 at 04:44:21PM -0600, Jonathan Corbet wrote:
> Thorsten Leemhuis <linux@leemhuis.info> writes:
> 
> > FWIW, on another channel someone mentioned the process in the TLDR is
> > quite complicated when it comes to regressions in stable and longterm
> > kernels. I looked at the text and it seemed like a valid complaint, esp.
> > as those regressions are something we really care about.
> >
> > To solve this properly I sadly had to shake up the text in this section
> > completely and rewrite parts of it. Find the result below. I'm quite
> > happy with it, as it afaics is more straight forward and easier to
> > understand. And it matches the step-by-step guide better. And the best
> > thing: it's a bit shorter than the old TLDR.
> 
> I think this is much improved - concise is good! :)  I really just have
> one little comment...
> 
> > I'll wait a day or two and then will send it through the regular review
> > together with a few small other fixes that piled up for the text, just
> > wanted to add it here for completeness.
> >
> > ---
> > The short guide (aka TL;DR)
> > ===========================
> >
> > Are you facing a regression with vanilla kernels from the same stable or
> > longterm series? One still supported? Then search the `LKML
> > <https://lore.kernel.org/lkml/>`_ and the `Linux stable mailing list
> > <https://lore.kernel.org/stable/>_` archives for matching reports to
> > join. If you don't find any, install `the latest release from that
> > series <https://kernel.org/>`_. If it still shows the issue, report it
> > to the stable mailing list and the stable maintainers.
> 
> If we really want this to be a short guide that gets people to the
> answer quickly, we might as well put the addresses to report to right
> here rather than making people search for them.

"stable@vger.kernel.org" is good to use here, no need to also cc: any
individuals for this type of thing.

thanks,

greg k-h
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
