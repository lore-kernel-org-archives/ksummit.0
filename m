Return-Path: <SRS0=8FPo=I2=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=3.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E17CFC433DB
	for <ksummit-discuss@archiver.kernel.org>; Sun, 28 Mar 2021 10:04:04 +0000 (UTC)
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8C4D4617ED
	for <ksummit-discuss@archiver.kernel.org>; Sun, 28 Mar 2021 10:04:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8C4D4617ED
Authentication-Results: mail.kernel.org; dmarc=pass (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 489FF83A65;
	Sun, 28 Mar 2021 10:04:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BfPcZRj0Ivdq; Sun, 28 Mar 2021 10:04:03 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3124283323;
	Sun, 28 Mar 2021 10:04:02 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EA7A1C000C;
	Sun, 28 Mar 2021 10:04:01 +0000 (UTC)
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0B3E0C000A
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 28 Mar 2021 10:04:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E5C80402C1
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 28 Mar 2021 10:04:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F38unxZqWnFW
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 28 Mar 2021 10:03:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A9ADC402B3
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 28 Mar 2021 10:03:51 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id E58B1617ED;
 Sun, 28 Mar 2021 10:03:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1616925826;
 bh=hCcz/Ooj3nWB+/PcEjVt64iF8JDVLdfoSqVoYjD5mn8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FX5J4oWCc+cXRZrMqvD4SJzskFNy+k3ZmeXp006X3dUAOkzrEwuWpXPJN1JTtQ+Pm
 uRI4KD3yIKnNpL9q6mnlNApUqJ2Lg+1pb8ch5u+fMYOZ3SQkRBd6HhX/bXd/6lO5qA
 rCjyCC6O+sjNRi/DeSJZU+VpLHJI4aq+Usw01sSk=
Date: Sun, 28 Mar 2021 12:03:43 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Thorsten Leemhuis <linux@leemhuis.info>
Message-ID: <YGBUf6aQhlBzP+a+@kroah.com>
References: <c396c91f-27c2-de36-7b05-099e03c213f4@leemhuis.info>
 <6a220d2c-568e-2e41-53a4-0800e206d0a6@leemhuis.info>
 <14d9b8a3-94ce-00a6-a17b-934ffd999697@leemhuis.info>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <14d9b8a3-94ce-00a6-a17b-934ffd999697@leemhuis.info>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 linux-doc@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
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

On Sun, Mar 28, 2021 at 11:23:30AM +0200, Thorsten Leemhuis wrote:
> On 26.03.21 07:15, Thorsten Leemhuis wrote:
> > On 26.03.21 07:13, Thorsten Leemhuis wrote:
> >>
> >> Lo! Since a few months mainline in
> >> Documentation/admin-guide/reporting-issues.rst contains a text written
> >> to obsolete the good old reporting-bugs text. For now, the new document
> >> still contains a warning at the top that basically says "this is WIP".
> >> But I'd like to remove that warning and delete reporting-bugs.rst in the
> >> next merge window to make reporting-issues.rst fully official. With this
> >> mail I want to give everyone a chance to take a look at the text and
> >> speak up if you don't want me to move ahead for now.
> >>
> >> For easier review I'll post the text of reporting-issues.rst in reply to
> >> this mail. I'll do that in a few chunks, as if this was a cover letter
> >> for a patch-set. 
> > Here we go:
> > [...]
> > Reporting issues
> > ++++++++++++++++
> > 
> > The short guide (aka TL;DR)
> > ===========================
> > 
> > [...]
> 
> 
> FWIW, on another channel someone mentioned the process in the TLDR is
> quite complicated when it comes to regressions in stable and longterm
> kernels. I looked at the text and it seemed like a valid complaint, esp.
> as those regressions are something we really care about.
> 
> To solve this properly I sadly had to shake up the text in this section
> completely and rewrite parts of it. Find the result below. I'm quite
> happy with it, as it afaics is more straight forward and easier to
> understand. And it matches the step-by-step guide better. And the best
> thing: it's a bit shorter than the old TLDR.
> 
> I'll wait a day or two and then will send it through the regular review
> together with a few small other fixes that piled up for the text, just
> wanted to add it here for completeness.
> 
> ---
> The short guide (aka TL;DR)
> ===========================
> 
> Are you facing a regression with vanilla kernels from the same stable or
> longterm series? One still supported? Then search the `LKML
> <https://lore.kernel.org/lkml/>`_ and the `Linux stable mailing list
> <https://lore.kernel.org/stable/>_` archives for matching reports to
> join. If you don't find any, install `the latest release from that
> series <https://kernel.org/>`_. If it still shows the issue, report it
> to the stable mailing list and the stable maintainers.
> 
> In all other cases try your best guess which kernel part might be
> causing the issue. Check the :ref:`MAINTAINERS <maintainers>` file for
> how its developers expect to be told about problems, which most of the
> time will be by email with a mailing list in CC. Check the destination's
> archives for matching reports; search the `LKML
> <https://lore.kernel.org/lkml/>`_ and the web, too. If you don't find
> any to join, install `the latest mainline kernel
> <https://kernel.org/>`_. If the issue is present there, send a report.
> 
> If you would like to see the issue also fixed in a still supported
> stable or longterm series, install its latest release. If it shows the
> problem, search for the change that fixed it in mainline and check if
> backporting is in the works or was discarded; if it's neither, ask those
> who handled the change for it.
> 
> **General remarks**: When installing and testing a kernel as outlined
> above, ensure it's vanilla (IOW: not patched and not using add-on
> modules). Also make sure it's built and running in a healthy environment
> and not already tainted before the issue occurs.
> 
> While writing your report, include all information relevant to the
> issue, like the kernel and the distro used. In case of a regression try
> to include the commit-id of the change causing it, which a bisection can
> find. If you're facing multiple issues with the Linux kernel at once,
> report each separately.
> 
> Once the report is out, answer any questions that come up and help where
> you can. That includes keeping the ball rolling by occasionally
> retesting with newer releases and sending a status update afterwards.
> 
> ---

The above looks good to me, thanks for doing this work.

greg k-h
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
