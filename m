Return-Path: <SRS0=ua7e=IV=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=3.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F1E9C433DB
	for <ksummit-discuss@archiver.kernel.org>; Tue, 23 Mar 2021 21:43:25 +0000 (UTC)
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0F544619CE
	for <ksummit-discuss@archiver.kernel.org>; Tue, 23 Mar 2021 21:43:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0F544619CE
Authentication-Results: mail.kernel.org; dmarc=pass (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AACFF608A3;
	Tue, 23 Mar 2021 21:43:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u6RZ4wIeT3SW; Tue, 23 Mar 2021 21:43:23 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTP id F2E1F6089B;
	Tue, 23 Mar 2021 21:43:22 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BCD8BC000D;
	Tue, 23 Mar 2021 21:43:22 +0000 (UTC)
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A1DE2C000A
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 23 Mar 2021 21:43:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8038E40556
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 23 Mar 2021 21:43:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fh3SQ1vTgD-I
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 23 Mar 2021 21:43:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x72c.google.com (mail-qk1-x72c.google.com
 [IPv6:2607:f8b0:4864:20::72c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8DA9940555
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 23 Mar 2021 21:43:20 +0000 (UTC)
Received: by mail-qk1-x72c.google.com with SMTP id g15so16071695qkl.4
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 23 Mar 2021 14:43:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=9A5rYZcglsBI7NEDlAoTBU4Zl5wr8vyLdFv+U1vnm5o=;
 b=cU2MWXhrmvMJIPPFY+bbxexi0G0jjM8KNFl8VyfkYeVEF1MFNe/fqJxh7GgUPTFflR
 SqPsyfx5OyaVhrGA0H1VHSSGQAZLMkXY+YcBwxP1b7GoFjJYf3XxeaZXnYNHCRj38NDz
 +2sWveYk4PiEK7Ikf0nRgCsW3BPpRdxdvRz2k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=9A5rYZcglsBI7NEDlAoTBU4Zl5wr8vyLdFv+U1vnm5o=;
 b=EMwnbX9xzuZ7dxXDYOqVReXNrRj7cPipHw7vcJoGfwS17oR+ugO/hHdJgXiHqmPjO5
 8VUJi76/kqoKubSZ7JK32ZN/v9rmUFiMgo0fXDCbmtdH/8/ylVN5x57M0APNCA9FCVfz
 smp0O4NcK3+Hel3OS7GDa24VmkqxK9TAo2Qn31ZKx6YqvfOzDnlQNfK2laazftHqJEvy
 ECoTchhRbhs5gp+qpiPIExtxPoMQoyqXxBC+f5WkVYDXTHrzne8be+CFgL2e6IQcW12F
 9F4THCCc++Od+HFp5mOly2NVFhE9mjdYdGYpNJ+Cn5MFR9F4fJcDjhbMcMuQWSAFyGX0
 dntw==
X-Gm-Message-State: AOAM530NW6n2miVfxIvjaI/PorIu/c+zW2r3AL5ZG/6cx//1Us0rfxgH
 VRg7NAvIeE3g7ysbbo2rWxWTOpn0
X-Google-Smtp-Source: ABdhPJxZJb+JsRQXrSlu96XRPInFDlUZede/dKLcYwQmDxWVCkMrvz2KcEfc8dhtyw7wL7Ctm5VKuA==
X-Received: by 2002:a05:620a:819:: with SMTP id
 s25mr79910qks.485.1616535799383; 
 Tue, 23 Mar 2021 14:43:19 -0700 (PDT)
Received: from chatter.i7.local ([89.36.78.230])
 by smtp.gmail.com with ESMTPSA id 79sm163979qki.37.2021.03.23.14.43.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Mar 2021 14:43:18 -0700 (PDT)
Date: Tue, 23 Mar 2021 17:43:17 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Message-ID: <20210323214317.t3igv3nan4lfolgr@chatter.i7.local>
Mail-Followup-To: James Bottomley <James.Bottomley@hansenpartnership.com>,
 Steven Rostedt <rostedt@goodmis.org>,
 Thorsten Leemhuis <linux@leemhuis.info>,
 ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 workflows@vger.kernel.org
References: <613fe50d-fc9c-6282-f1f3-34653acb2ee9@leemhuis.info>
 <CAHk-=wgiYqqLzsb9-UpfH+=ktk7ra-2fOsdc_ZJ7WF47wS73CA@mail.gmail.com>
 <62b60247-7838-a624-706e-b1a54785b2a5@leemhuis.info>
 <20210323122025.77888b49@gandalf.local.home>
 <72f1c67bc8ad21bb1e5a7d77b88e2c3e50065e3b.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <72f1c67bc8ad21bb1e5a7d77b88e2c3e50065e3b.camel@HansenPartnership.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Thorsten Leemhuis <linux@leemhuis.info>, workflows@vger.kernel.org
Subject: Re: [Ksummit-discuss] RFC: create mailing list "linux-issues"
 focussed on issues/bugs and regressions
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

On Tue, Mar 23, 2021 at 09:30:33AM -0700, James Bottomley wrote:
> > I think the bulk of user issues are going to be regressions. Although
> > you may be in a better position to know for sure, but at least for
> > me, wearing my "user" hat, the thing that gets me the most is
> > upgrading to a new kernel and suddenly something that use to work no
> > longer does. And that is the definition of a regression. My test
> > boxes still run old distros (one is running fedora 13). These are the
> > boxes that catch the most issues, and if they do, they are pretty
> > much guaranteed to be a regression.
> > 
> > I like the "linux-regressions" mailing list idea.
> 
> Can't we use the fancy features of public inbox to get the best of both
> worlds?  Have the bug list (or even a collection of lists) but make the
> linux-regressions one a virtual list keying off an imap flag which a
> group of people control.  That way anything that is flagged as a
> regression appears in that public inbox.  I assume the search can be
> quite wide so we could flag a regression on any list indexed by lore?

There's a number of ways we can accomplish this, sure.

However, this functionality is not in production yet, and I'm not sure which
upcoming public-inbox features we'll be implementing as a public
lore.kernel.org service, which ones we'll only offer to kernel.org account
holders, and which ones should really be running locally by developers
themselves.

So, I don't want to say either yes or no to this one for the fear of
over-promising. I guess this is why I'm not in sales. :)

-K
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
