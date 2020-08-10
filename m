Return-Path: <SRS0=i7h4=BU=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33A57C433DF
	for <ksummit-discuss@archiver.kernel.org>; Mon, 10 Aug 2020 19:39:32 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F21D7207FF
	for <ksummit-discuss@archiver.kernel.org>; Mon, 10 Aug 2020 19:39:31 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=lixom-net.20150623.gappssmtp.com header.i=@lixom-net.20150623.gappssmtp.com header.b="fUXOloVb"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F21D7207FF
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=lixom.net
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8225C2040C;
	Mon, 10 Aug 2020 19:39:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h7E8R+EB7eES; Mon, 10 Aug 2020 19:39:28 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id DD4F420341;
	Mon, 10 Aug 2020 19:39:27 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A9B7EC0864;
	Mon, 10 Aug 2020 19:39:27 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 044B3C004D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 10 Aug 2020 19:39:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E84CD87DA6
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 10 Aug 2020 19:39:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jLmXAPaE3sw8
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 10 Aug 2020 19:39:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
 [209.85.166.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BB7F887DA1
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 10 Aug 2020 19:39:24 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id t15so10188683iob.3
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 10 Aug 2020 12:39:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KG7HkPdgfYza0KKOehXlJf0mICZpLgyaJzR9GuUofuc=;
 b=fUXOloVbCXuF+NPnW17bzh2jLA3H8qu/dOC7TPKOL2QUos/sBzQ5CRoxtQJFb8g3G2
 AYIyYbs0ZfZ6aDIaEoKZNgRRcvbTvgMlsOjLIYpmuy/J3SQhbHXV5dM/VhBeVH8XellB
 6N4elr0PMDoF7N56qBjJa5HD3724dVmbT1YCW1KovZJp2EVcKcAZIlSRmBQ0dOMRG8NV
 gxciGLPqMXMCMBAt0FPiDJwhSVy/LDGoZp0gSnby2PTGC0UM1mVSjd/0MuGwflaH95zs
 j03sj8mSaBzXWRfQq5lyPgMhXF45BsJug4i9aO4ErNTiuPZEXVroBiDBsJAczCMY7u9e
 vg2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KG7HkPdgfYza0KKOehXlJf0mICZpLgyaJzR9GuUofuc=;
 b=WIX6UwyfCGsG0Uvcmw5FGI8SXQguYcDA3i24lGbGkQV9yQHVCYBcpP2n7YB/POoIk7
 GnZ3qB4n7ouzJYJBkGmNh3VWLmd4IsNdU+gKZk7NefXFzocPJWwqQH12QWnY6ORlsgNX
 vnKUHGMzCa7frHq7h3ba0YteYvCIAr0Mn1zN7rzFWtSApTfUDLj+shtpH95itJmOhI/1
 xjG0dTdvNsDRDCTwWIlMXQti6K0MljQ27bhHL/iSARrysh1hrMJTP8Xqhkqgca9boUlu
 r8aBOwg7vBmRQHoCuuz0ttO7teaDEfc7e/CZQcHiWA3Hqdr7DeseGJIqs5VjYnf+cULt
 LlmQ==
X-Gm-Message-State: AOAM53107SUSzwP139MQwIoBV4XrFmqu6JKXGsG6nYJ35MGs1RT+aYFT
 JgdNemrhiirdLgaTgwekQxXz7mTPa0omSfptPGe3Dw==
X-Google-Smtp-Source: ABdhPJyNCjBD+ApAm5EKXSFXpNtiLnuZQXUEji/Nk9r66AH8XDVZRUMie+STAQO5PpX/pDgrcUhz8sHf1IdT/5swGmI=
X-Received: by 2002:a6b:5c17:: with SMTP id z23mr18928874ioh.67.1597088363879; 
 Mon, 10 Aug 2020 12:39:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a2PK_bC5=3wcWm43=y5xk-Dq5-fGPExJMnOrNfGfB1m1A@mail.gmail.com>
 <20200805172629.GA1040@bug>
 <CAMuHMdV20tZSu5gGsjf8h334+0xr1f=N9NvOoxHQGq42GYsj4g@mail.gmail.com>
 <20200805193001.nebwdutcek53pnit@duo.ucw.cz>
In-Reply-To: <20200805193001.nebwdutcek53pnit@duo.ucw.cz>
From: Olof Johansson <olof@lixom.net>
Date: Mon, 10 Aug 2020 12:39:12 -0700
Message-ID: <CAOesGMjaJ=jcdBp7b-DfetUKKF+cC6NcJdHavBXyP49b9Bztwg@mail.gmail.com>
To: Pavel Machek <pavel@denx.de>
Cc: linux-arch <linux-arch@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Planning code obsolescence
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

On Wed, Aug 5, 2020 at 12:30 PM Pavel Machek <pavel@denx.de> wrote:
>
> On Wed 2020-08-05 20:50:43, Geert Uytterhoeven wrote:
> > Hi Pavel,
> >
> > On Wed, Aug 5, 2020 at 7:26 PM Pavel Machek <pavel@ucw.cz> wrote:
> > > > I have submitted the below as a topic for the linux/arch/* MC that Mike
> > > > and I run, but I suppose it also makes sense to discuss it on the
> > > > ksummit-discuss mailing list (cross-posted to linux-arch and lkml) as well
> > > > even if we don't discuss it at the main ksummit track.
> > >
> > > > * Latest kernel in which it was known to have worked
> > >
> > > For some old hardware, I started collecting kernel version, .config and dmesg from
> > > successful boots. github.com/pavelmachek, click on "missy".
> >
> > You mean your complete hardware collection doesn't boot v5.8? ;-)
>
> I need to do some pushing, and yes, maybe some more testing.
>
> But I was wondering if someone sees this as useful and wants to
> contribute more devices? :-).

There's in my opinion a big difference between "the last user of this
device sent it to Pavel and now it will be supported forever in spite
of no users" and "there's a whole group of people using mainline on
these old devices and Pavel makes sure it keeps booting for them".


-Olof
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
