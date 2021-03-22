Return-Path: <SRS0=ZpVE=IU=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_INVALID,DKIM_SIGNED,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE556C433C1
	for <ksummit-discuss@archiver.kernel.org>; Mon, 22 Mar 2021 16:55:20 +0000 (UTC)
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3D05161990
	for <ksummit-discuss@archiver.kernel.org>; Mon, 22 Mar 2021 16:55:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3D05161990
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D87E440325;
	Mon, 22 Mar 2021 16:55:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rjKUaz8JkcBa; Mon, 22 Mar 2021 16:55:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTP id D1F5040339;
	Mon, 22 Mar 2021 16:55:17 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8DAFEC000A;
	Mon, 22 Mar 2021 16:55:17 +0000 (UTC)
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7E73AC0001
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 22 Mar 2021 16:55:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6C77883134
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 22 Mar 2021 16:55:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2RTGKbBnkHEc
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 22 Mar 2021 16:55:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-il1-x131.google.com (mail-il1-x131.google.com
 [IPv6:2607:f8b0:4864:20::131])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D5A4283096
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 22 Mar 2021 16:55:14 +0000 (UTC)
Received: by mail-il1-x131.google.com with SMTP id u10so15471017ilb.0
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 22 Mar 2021 09:55:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ngARvZf0Hr9eoT5wywWQfkd9nJk4dz1wJXXtIU4BmYk=;
 b=htInPnZg4vA+r7OCPDFJS5+IlPc32tImgeocBgZqDXhlQuU7p+XXJBReMc1MYJti4O
 Ut1bxDZCaEWVUImDpMrOHozfrOuDFW0XbytfEtkVQ6sHUNkdHsm+HRfsTghbR10Hy2zR
 gux3CXoHNFlrQ/woLzePzXIXyTbVKcN9Rd/JaLQtAPScMbH9cTjrF2vLFIrkV2/m0nUM
 a4Jb0G30nFUQ4hqO1RF1lctYzuVEhS9Cwrh/u/D7i1+vxXJSoO29Slngf/5QM3Tso+Sr
 GfqASeS7M6XS3DnKDDN4yDiK4eKyIAadNYth7mLi7gMkyfnVtSThMeDYjzOIb8XWqoZn
 owVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ngARvZf0Hr9eoT5wywWQfkd9nJk4dz1wJXXtIU4BmYk=;
 b=jrFr4qE9xxhdxdmcyOmfTT+t3JLW2p2JObahy9OoG/aL2Al3ISaEjSu0z98ERG4IVH
 24Uu+Sq9rnBtaux/B+pwqE3GWhzKlfqB6xc5oezh1j85Um71lBng8xDUrKvWUrmMx8h9
 /584tdUmz6bwxgWQNlqqIBT51yNPCrHggN5znn14U3TfzwAMOKHvPUUMOOfPet5rYwF8
 xncnkGWglBfr3zsZO5xQMYajSyy8cYgiNyzIN/RqinsUvBRSCgVtkoQoV+13tpr++IrZ
 a6JugJQN+flSipEp7ZGwfjqjtfvhLGGCTY5uoJTIKIrfQr63Njgv6qtPpOCaGbYNHfqz
 oUZQ==
X-Gm-Message-State: AOAM533fYr5LzR4dbZQiAHm5U5nl5+F1fKEn81lc1qapa+eZpTKJG23J
 lir0P6cQqO71B+q6EbefOADGAKl15c1h/2z4iLg=
X-Google-Smtp-Source: ABdhPJyuJC5hVCu0FCRaN9RV2YxF9x8kaHOn+ZjQHGxHWHv3o0Td39BXmxSaDgG62GosSCT8X7bL+vwO2jxcpkFsiSA=
X-Received: by 2002:a05:6e02:1049:: with SMTP id
 p9mr790208ilj.125.1616432113856; 
 Mon, 22 Mar 2021 09:55:13 -0700 (PDT)
MIME-Version: 1.0
References: <613fe50d-fc9c-6282-f1f3-34653acb2ee9@leemhuis.info>
In-Reply-To: <613fe50d-fc9c-6282-f1f3-34653acb2ee9@leemhuis.info>
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Date: Mon, 22 Mar 2021 17:55:05 +0100
Message-ID: <CAKXUXMw7kHBPov23kF1HUBrW9DL+huqAG8ZRLJwGgU67nCOPeg@mail.gmail.com>
To: Thorsten Leemhuis <linux@leemhuis.info>
Cc: ksummit-discuss@lists.linuxfoundation.org,
 Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 workflows@vger.kernel.org,
 Konstantin Ryabitsev <konstantin@linuxfoundation.org>
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

On Mon, Mar 22, 2021 at 4:38 PM Thorsten Leemhuis <linux@leemhuis.info> wrote:
>
>
> Lo! I want to provide users with an easier way to search our multitude
> of mailing lists for reports about issues (aka bugs), as reporting the
> same kernel problem multiple times has known downsides for everyone
> involved. That's why I propose to create this new mailing list:
>
> linux-issues@lists.linux.dev
>
> Developers and users reporting or handling issues then can CC it or
> search it via lore. But this will only fly if the idea has buy-in from
> at least the core kernel maintainers, to make sure they and the
> developers actually use it. That's why I'm looking for feedback with
> this mail and also CCed ksummit-discuss, as that's the easiest way to
> make sure maintainers get aware of this idea and can raise their voice.
>
>
> Note, there is a second reason why ksummit-discuss is CCed: another
> reason why I want to create this new list is making it easier to find
> and track regressions reported to our various mailing lists (often
> without LKML in CC, as for some subsystems it's seems to be custom to
> not CC it). Back on the maintainers summit in 2017 it was agreed to
> create a dedicated list for this purpose
> (https://lwn.net/Articles/738216/). I even requested a
> "linux-regressions@vger.kernel.org" a while later, but didn't hear
> anything back; and, sadly, about the same time I started having trouble
> finding spare time for working on regression tracking. :-/
>
> But I soon will get back into that area:
> https://linux-regtracking.leemhuis.info/post/hello-world/ Hence it's a
> good time to prepare some groundwork for that. But these days I think
> having something like linux-regressions@lists.linux.dev might be over
> engineered, at least for now: a linux-issues@lists.linux.dev with a
> simple "[regressions]" in the subject will suffice, as that tag is
> something a lot of people are used to already. And if we think we need
> that list we can still create it in the future. Or what do you folks
> think about it?
>

Thorsten, I generally support this initiative. I am just wondering:

What is the definition of an issue for you?

Just four examples that come to my mind:

- all the warnings that Stephen Rothwell reports on linux-next, such
as https://lore.kernel.org/linux-next/20210322170452.726525e8@canb.auug.org.au/
or https://lore.kernel.org/linux-next/20210322075108.3967d5d1@canb.auug.org.au/?
- all the issues that the kernel test robot reports?
- all the errors and warnings that kernel ci reports? Basically, each
"issue" that is already aggregated in this email,
https://lore.kernel.org/linux-next/6058787c.1c69fb81.d3f10.8c6d@mx.google.com/?
- all the syzbot reports?

Are you including all those automatic testing and checking efforts as
reporting valid "issues"? Or would you like to keep this list only for
reports from single individual human users that need to detect the
"issue" without using one of the tools above?

Lukas
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
