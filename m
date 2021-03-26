Return-Path: <SRS0=v+8f=IY=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=3.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1ECEC433DB
	for <ksummit-discuss@archiver.kernel.org>; Fri, 26 Mar 2021 08:58:07 +0000 (UTC)
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 25DE9619FC
	for <ksummit-discuss@archiver.kernel.org>; Fri, 26 Mar 2021 08:58:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 25DE9619FC
Authentication-Results: mail.kernel.org; dmarc=pass (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9417060C08;
	Fri, 26 Mar 2021 08:58:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ezEuBpHaVpE6; Fri, 26 Mar 2021 08:58:05 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTP id 05C9E6062B;
	Fri, 26 Mar 2021 08:58:05 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B524AC000D;
	Fri, 26 Mar 2021 08:58:04 +0000 (UTC)
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EAE79C000A
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 26 Mar 2021 08:58:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C369084A9D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 26 Mar 2021 08:58:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hgcFq0m9jecg
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 26 Mar 2021 08:58:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9CEB084A8D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 26 Mar 2021 08:58:02 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id A6C0C61A18;
 Fri, 26 Mar 2021 08:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1616749080;
 bh=edZqUHw5Z3EONRX9RfghM0Jwz5Bjv21lNtfF9E2D0+I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rNwGEBLQjWWZYnjU+saotsVAj14lGybssYYaAdviMY3V2Amsx5I1bmGPwK1ezyFTE
 eAvONQwAhTy+ueH8s3MQ6DkU2TlfK6qw1nJouRgFJKv1CRRW9wprSpzjKXvbW3rwnD
 APJLJBV1RxVynxbd2aEe5aLAPDRqb0d/KgpTxhkc=
Date: Fri, 26 Mar 2021 09:57:57 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Thorsten Leemhuis <linux@leemhuis.info>
Message-ID: <YF2iFW4/LF6itKFm@kroah.com>
References: <c396c91f-27c2-de36-7b05-099e03c213f4@leemhuis.info>
 <b14050b6-8426-a762-49f1-1565c48a5724@leemhuis.info>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b14050b6-8426-a762-49f1-1565c48a5724@leemhuis.info>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 ksummit <ksummit-discuss@lists.linuxfoundation.org>, linux-doc@vger.kernel.org
Subject: Re: [Ksummit-discuss] [2/5] reporting-issues: step-by-step-guide:
 main and two sub-processes for stable/longterm
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

On Fri, Mar 26, 2021 at 07:16:40AM +0100, Thorsten Leemhuis wrote:
> On 26.03.21 07:13, Thorsten Leemhuis wrote:
> > Lo! Since a few months mainline in
> > Documentation/admin-guide/reporting-issues.rst contains a text written
> > to obsolete the good old reporting-bugs text. For now, the new document
> > still contains a warning at the top that basically says "this is WIP".
> > But I'd like to remove that warning and delete reporting-bugs.rst in the
> > next merge window to make reporting-issues.rst fully official. With this
> > mail I want to give everyone a chance to take a look at the text and
> > speak up if you don't want me to move ahead for now.
> > 
> > For easier review I'll post the text of reporting-issues.rst in reply to
> > this mail. I'll do that in a few chunks, as if this was a cover letter
> > for a patch-set. 
> 
> 
> Step-by-step guide how to report issues to the kernel maintainers

Looks good to me, no objections from my side.  Thanks so much for doing
this!

greg k-h
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
