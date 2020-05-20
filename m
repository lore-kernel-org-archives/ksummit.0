Return-Path: <SRS0=2co7=7C=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936CBC433E0
	for <ksummit-discuss@archiver.kernel.org>; Wed, 20 May 2020 21:02:58 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1FC4B2075F
	for <ksummit-discuss@archiver.kernel.org>; Wed, 20 May 2020 21:02:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1FC4B2075F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ubuntu.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CEE1D8718F;
	Wed, 20 May 2020 21:02:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sCQthG2gfZik; Wed, 20 May 2020 21:02:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4C7AA87195;
	Wed, 20 May 2020 21:02:57 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id F2260C088A;
	Wed, 20 May 2020 21:02:56 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BA603C0176
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 21:02:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B5F5287F9A
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 21:02:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZN7zDDDurVl1
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 21:02:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D212987CB0
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 21:02:53 +0000 (UTC)
Received: from ip5f5af183.dynamic.kabel-deutschland.de ([95.90.241.131]
 helo=wittgenstein) by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1jbVrX-0007LP-Qu; Wed, 20 May 2020 21:02:51 +0000
Date: Wed, 20 May 2020 23:02:51 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Kees Cook <keescook@chromium.org>
Message-ID: <20200520210251.goxnb2mq4lkhobms@wittgenstein>
References: <202005200917.71E6A5B20@keescook>
 <20200520163102.GZ23230@ZenIV.linux.org.uk>
 <202005201104.72FED15776@keescook>
 <CAHk-=wierGOJZhzrj1+R18id-WdfmK=eWT9YfWdCfMvEO+jLLg@mail.gmail.com>
 <202005201151.AFA3C9E@keescook>
 <CAHk-=wgwS8RJNuaLT1zV_bWGiEb3DndfQ3N85WK9aKP5Kurk_A@mail.gmail.com>
 <20200520202401.s22hstao4kzr5uma@wittgenstein>
 <202005201340.ED17EDC@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202005201340.ED17EDC@keescook>
Cc: Aleksa Sarai <cyphar@cyphar.com>,
 ksummit <ksummit-discuss@lists.linuxfoundation.org>
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

On Wed, May 20, 2020 at 01:52:30PM -0700, Kees Cook wrote:
> On Wed, May 20, 2020 at 10:24:01PM +0200, Christian Brauner wrote:
> > On Wed, May 20, 2020 at 12:08:52PM -0700, Linus Torvalds wrote:
> > > On Wed, May 20, 2020 at 12:04 PM Kees Cook <keescook@chromium.org> wrote:
> > > > Perhaps the question is "how deeply does seccomp need to inspect?"
> > > > and maybe it does not get to see anything beyond just the "top level"
> > > > struct (i.e. struct clone_args) and all pointers within THAT become
> > > > opaque? That certainly simplifies the design.
> > > 
> > > Exactly. I think that's the most common situation by far. Does anybody
> > > really really need to care at a deep level, and why?
> > 
> > We mostly don't and making all second-level pointers opaque is ok imho.
> 
> That'll make things MUCH easier. :)
> 
> > But I think that we need some documented consensus on all that stuff
> > which I stressed in other mails before. I'll hand something in about
> > this, if that's ok than we can hash this out.
> 
> Aleksa, I know you had an entire presentation[1] on the extensible
> argument syscalls, but was there any text-based design doc that you made?
> 
> It would be really nice to update Documentation/process/adding-syscalls.rst
> with the specifics[2], and to (now) include the "no nested flags"
> requirement. What do you think?

I've sent out:

https://lore.kernel.org/linux-doc/20191002151437.5367-1-christian.brauner@ubuntu.com/

a while back which we drafted together specifically to documented
extensible syscalls. I wanted to resend it this week. I'll update it
with all register based flag arguments should be unsigned int which I
already droned about this week in another thread. The no nested flags
requirement can go in there as well.
Aleksa and I also had a joint session for Plumbers/Ksummit planned hence
the "handing something in".

Christian
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
