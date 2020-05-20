Return-Path: <SRS0=2co7=7C=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2B9A1C433DF
	for <ksummit-discuss@archiver.kernel.org>; Wed, 20 May 2020 20:52:38 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EB81A20756
	for <ksummit-discuss@archiver.kernel.org>; Wed, 20 May 2020 20:52:37 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="nFBSt/FD"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EB81A20756
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A3004251BB;
	Wed, 20 May 2020 20:52:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g+myogA+oExO; Wed, 20 May 2020 20:52:36 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 0106625043;
	Wed, 20 May 2020 20:52:35 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C1373C088A;
	Wed, 20 May 2020 20:52:35 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6F37FC0176
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 20:52:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5DF9B25043
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 20:52:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JIbR-HCotsI2
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 20:52:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 50F9C2280C
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 20:52:33 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id f15so1848496plr.3
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 13:52:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=vnQUW5CK1pS7+Sn9xKj2wpfOKK3Ind/d2FMT+TOwiXc=;
 b=nFBSt/FD6k2Zulxh/4n1iPmDFkyRuv7AB6nqa/vy+rUEeRNSK6aIGCtxlnyjwJHPYG
 PfQ5fdjs6KITfvt68F28I/8hwA+5pMoPriJ7sdJI51jRXZUMEqXYN3vFxfROW1beb0Gs
 LVstTU6TTwtgGqtvqSsRdWwbnBhH5RULK6sPw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=vnQUW5CK1pS7+Sn9xKj2wpfOKK3Ind/d2FMT+TOwiXc=;
 b=eVm1inorJh6TPY9t008GyCHA2/IILF5rE1c0uBJp+p4snAaPaNX8T8wU35k2MXB5Ah
 hDu0DJKk1bqoSVHbNzxQj/hdfEFDVDXHVxH8ZSAYjFrPI+b5Huhtcy8mwZ4mlaS75jJJ
 ojJErcy9k/Ym9zJDWS0pp9GieeeZHU5s3V6AGuEONTLEDhMzVwz3F9/up5hU7BPtNEKN
 1Is/Q4GdSyysSIghfg7EvjGzb/cPOIQVYLXGQ7XHnr9+qvqm6nbEYG9YySCFncI//4sc
 3fwJGOA68BMej1oycjsWnPwa9j3WPGTSxaLnWUO53Gd4lMw5tQ6A/0AJkfzqswHWONFp
 Bqow==
X-Gm-Message-State: AOAM533Y8+MqIrIMzj0pheW0nDFlVYOQ2j+5VJ6IdR6sqe9+mEp0pix0
 z4vnN36YbtoF6oz8iWeh4LJGwymBpcErVQ==
X-Google-Smtp-Source: ABdhPJxBF6oeKERDxYBGVdpGyrVqr000Fx7x6OnIvfL3rrCYhKpE9qGgRDjqjTjqMt5tzlj8rAiR9Q==
X-Received: by 2002:a17:90a:2a0d:: with SMTP id
 i13mr7294058pjd.94.1590007952804; 
 Wed, 20 May 2020 13:52:32 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id d18sm2835131pjv.34.2020.05.20.13.52.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 13:52:31 -0700 (PDT)
Date: Wed, 20 May 2020 13:52:30 -0700
From: Kees Cook <keescook@chromium.org>
To: Aleksa Sarai <cyphar@cyphar.com>,
 Christian Brauner <christian.brauner@ubuntu.com>
Message-ID: <202005201340.ED17EDC@keescook>
References: <202005200917.71E6A5B20@keescook>
 <20200520163102.GZ23230@ZenIV.linux.org.uk>
 <202005201104.72FED15776@keescook>
 <CAHk-=wierGOJZhzrj1+R18id-WdfmK=eWT9YfWdCfMvEO+jLLg@mail.gmail.com>
 <202005201151.AFA3C9E@keescook>
 <CAHk-=wgwS8RJNuaLT1zV_bWGiEb3DndfQ3N85WK9aKP5Kurk_A@mail.gmail.com>
 <20200520202401.s22hstao4kzr5uma@wittgenstein>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520202401.s22hstao4kzr5uma@wittgenstein>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] seccomp feature development
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

On Wed, May 20, 2020 at 10:24:01PM +0200, Christian Brauner wrote:
> On Wed, May 20, 2020 at 12:08:52PM -0700, Linus Torvalds wrote:
> > On Wed, May 20, 2020 at 12:04 PM Kees Cook <keescook@chromium.org> wrote:
> > > Perhaps the question is "how deeply does seccomp need to inspect?"
> > > and maybe it does not get to see anything beyond just the "top level"
> > > struct (i.e. struct clone_args) and all pointers within THAT become
> > > opaque? That certainly simplifies the design.
> > 
> > Exactly. I think that's the most common situation by far. Does anybody
> > really really need to care at a deep level, and why?
> 
> We mostly don't and making all second-level pointers opaque is ok imho.

That'll make things MUCH easier. :)

> But I think that we need some documented consensus on all that stuff
> which I stressed in other mails before. I'll hand something in about
> this, if that's ok than we can hash this out.

Aleksa, I know you had an entire presentation[1] on the extensible
argument syscalls, but was there any text-based design doc that you made?

It would be really nice to update Documentation/process/adding-syscalls.rst
with the specifics[2], and to (now) include the "no nested flags"
requirement. What do you think?

-Kees

[1] https://github.com/cyphar/talks/tree/master/2020/01-linux-conf-au/syscall-extensions
    https://www.youtube.com/watch?v=ggD-eb3yPVs
[2] https://www.kernel.org/doc/html/latest/process/adding-syscalls.html?highlight=syscall#designing-the-api-planning-for-extension

-- 
Kees Cook
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
