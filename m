Return-Path: <SRS0=ua7e=IV=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=3.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16F5EC433C1
	for <ksummit-discuss@archiver.kernel.org>; Tue, 23 Mar 2021 15:01:29 +0000 (UTC)
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4550D60232
	for <ksummit-discuss@archiver.kernel.org>; Tue, 23 Mar 2021 15:01:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4550D60232
Authentication-Results: mail.kernel.org; dmarc=pass (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E47D160843;
	Tue, 23 Mar 2021 15:01:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lhgHJVptMS_Z; Tue, 23 Mar 2021 15:01:27 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2B72160837;
	Tue, 23 Mar 2021 15:01:26 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EEAFAC000B;
	Tue, 23 Mar 2021 15:01:25 +0000 (UTC)
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8DB44C0001
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 23 Mar 2021 15:01:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7C88B402C3
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 23 Mar 2021 15:01:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Uk_eqE2imYjp
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 23 Mar 2021 15:01:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qv1-xf2d.google.com (mail-qv1-xf2d.google.com
 [IPv6:2607:f8b0:4864:20::f2d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 865F1400AE
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 23 Mar 2021 15:01:23 +0000 (UTC)
Received: by mail-qv1-xf2d.google.com with SMTP id 30so10582893qva.9
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 23 Mar 2021 08:01:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Zgh8aUOKNTyxThPCr85/xxGDpm9eLgZzd2NlgtKpAo4=;
 b=AFRXisxkAPOvvYt9/IY+qLGdtY3Dmt9QINj0Pct5q2rZAjY/MZbqCDqlX7+4p3LmXS
 g652Xu6Bk0hfGxFHwsgmBYrgdkkPm8A6LNZR0j/44/764LiFUp/Dhqq4OjII7cdUC+Hi
 oPfb0teemlv6lGp2bBB0ayURMEhw21Y2qe+Oo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Zgh8aUOKNTyxThPCr85/xxGDpm9eLgZzd2NlgtKpAo4=;
 b=LPv+ihhFwHwZ4g7K5JlMg9yiulTUn2uzC31MutNUMgyCpfJ6IEnZ53CV8EF2JLhLXD
 jnOZMAVbRXTK8g5uV7khyJTTs2QDJh/L//TUMMMxixTeYU38Gn9WmE8hI0bhImuOajlm
 un2ots6IrUXhkH69W70YN8ANGeRlKZHz0J6is7m51CdNkDdNEThb7xZ0ikBsCZM1C82J
 EWcegoa2sk1lP6z20b5cEe16Xk4zOVQaphSUZNXs4oCwT+Yb1D3v6PRvAxo125jksFyw
 oo+e+LrwLamjs+/46RV1oFlpittht2oaBEgRpfvwG6l/PzV0nuCPHZlboceKFUwpBaDS
 94MA==
X-Gm-Message-State: AOAM533eGz9bimmaxCvlOG6Cmn/ub2JqxyBofeoHid11+BrKJxjpExXU
 FgqfYARs4Qa1Gan2lzqPCiHcE+jolMAGl5JwXA2tSdhU
X-Google-Smtp-Source: ABdhPJzkQ2Gi2C+hfzbXqYhepfMG6MP1FewNMuW/XTE0FfXwpv7iVI3G3PN3KkRNcKWkiBfe3LgGwCVlQEQ+YKBzIUQ=
X-Received: by 2002:a05:6214:1424:: with SMTP id
 o4mr5249801qvx.34.1616511678087; 
 Tue, 23 Mar 2021 08:01:18 -0700 (PDT)
MIME-Version: 1.0
References: <613fe50d-fc9c-6282-f1f3-34653acb2ee9@leemhuis.info>
 <CAHk-=wgiYqqLzsb9-UpfH+=ktk7ra-2fOsdc_ZJ7WF47wS73CA@mail.gmail.com>
 <62b60247-7838-a624-706e-b1a54785b2a5@leemhuis.info>
 <YFkSqIN90S4a3HiF@mit.edu>
 <54aeb1f7-ffc7-74e1-a731-8970d44ff852@leemhuis.info>
In-Reply-To: <54aeb1f7-ffc7-74e1-a731-8970d44ff852@leemhuis.info>
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Date: Tue, 23 Mar 2021 11:01:06 -0400
Message-ID: <CAMwyc-Sqbkg=VxCWcfRazkGG7vkwEQ43m9Dov_Nawia5MN_oUQ@mail.gmail.com>
To: Thorsten Leemhuis <linux@leemhuis.info>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 workflows@vger.kernel.org
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

On Tue, 23 Mar 2021 at 04:58, Thorsten Leemhuis <linux@leemhuis.info> wrote:
> >  If we can
> > actually get users to *read* it, I think it's going to save kernel
> > developers a huge amount of time and frustration.
>
> And users hopefully as well. But yes, making them read it is the
> problem. :-/

I've added a very visible admonition on the front of
bugzilla.kernel.org. Hopefully, it will help direct some users to
their distro bug trackers first.

> > I wonder if it might be useful to have a form which users could be
> > encouraged to fill out so that (a) the information is available in a
> > structured format so it's easier for developers to find the relevant
> > information, (b) so it is easier for programs to parse, for easier
> > reporting or indexing, and (c) as a nudge so that users remember to
> > report critical bits of information such as the hardware
> > configuration, the exact kernel version, which distribution userspace
> > was in use, etc.
> >
> > There could also be something in the text form which would make it
> > easier for lore.kernel.org searches to identify bug reports.  (e.g.,
> > "LINUX KERNEL BUG REPORTER TEMPLATE")
>
> Hmmm, yeah, I like that idea. I'll keep it in mind for later: I would
> prefer to get reporting-issues.rst officially blessed and
> reporting-bugs.rst gone before working on further enhancements.

To my knowledge, git project uses a tool for that:
https://git-scm.com/docs/git-bugreport

Theoretically, a similar tool could exist for the kernel.

-K
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
