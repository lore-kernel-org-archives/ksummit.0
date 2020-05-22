Return-Path: <SRS0=y99e=7E=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59C5CC433E0
	for <ksummit-discuss@archiver.kernel.org>; Fri, 22 May 2020 11:27:17 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 01895206F6
	for <ksummit-discuss@archiver.kernel.org>; Fri, 22 May 2020 11:27:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 01895206F6
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ubuntu.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C741D87995;
	Fri, 22 May 2020 11:27:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2_3KKWJJmxEE; Fri, 22 May 2020 11:27:14 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A0FA98799D;
	Fri, 22 May 2020 11:27:14 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 740EAC088B;
	Fri, 22 May 2020 11:27:14 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1FCF1C0176
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 22 May 2020 11:27:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0EE3C89183
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 22 May 2020 11:27:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GXzAnROQ1B6d
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 22 May 2020 11:27:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 017B98917D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 22 May 2020 11:27:11 +0000 (UTC)
Received: from ip5f5af183.dynamic.kabel-deutschland.de ([95.90.241.131]
 helo=wittgenstein) by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1jc5pU-0004pz-I4; Fri, 22 May 2020 11:27:08 +0000
Date: Fri, 22 May 2020 13:27:07 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Aleksa Sarai <cyphar@cyphar.com>
Message-ID: <20200522112707.zeoynrhxwe7f4w46@wittgenstein>
References: <202005200917.71E6A5B20@keescook>
 <20200520163102.GZ23230@ZenIV.linux.org.uk>
 <202005201104.72FED15776@keescook>
 <CAHk-=wierGOJZhzrj1+R18id-WdfmK=eWT9YfWdCfMvEO+jLLg@mail.gmail.com>
 <202005201151.AFA3C9E@keescook>
 <CAHk-=wgwS8RJNuaLT1zV_bWGiEb3DndfQ3N85WK9aKP5Kurk_A@mail.gmail.com>
 <20200520202401.s22hstao4kzr5uma@wittgenstein>
 <202005201340.ED17EDC@keescook>
 <20200522040606.ec64dvpbldn3ufh3@yavin.dot.cyphar.com>
 <20200522073534.2ebkd6epuezso6sk@wittgenstein>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200522073534.2ebkd6epuezso6sk@wittgenstein>
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

On Fri, May 22, 2020 at 09:35:35AM +0200, Christian Brauner wrote:
> On Fri, May 22, 2020 at 02:06:06PM +1000, Aleksa Sarai wrote:
> > On 2020-05-20, Kees Cook <keescook@chromium.org> wrote:
> > > On Wed, May 20, 2020 at 10:24:01PM +0200, Christian Brauner wrote:
> > > > On Wed, May 20, 2020 at 12:08:52PM -0700, Linus Torvalds wrote:
> > > > > On Wed, May 20, 2020 at 12:04 PM Kees Cook <keescook@chromium.org> wrote:
> > > > > > Perhaps the question is "how deeply does seccomp need to inspect?"
> > > > > > and maybe it does not get to see anything beyond just the "top level"
> > > > > > struct (i.e. struct clone_args) and all pointers within THAT become
> > > > > > opaque? That certainly simplifies the design.
> > > > > 
> > > > > Exactly. I think that's the most common situation by far. Does anybody
> > > > > really really need to care at a deep level, and why?
> > > > 
> > > > We mostly don't and making all second-level pointers opaque is ok imho.
> > > 
> > > That'll make things MUCH easier. :)
> > 
> > To be clear, my insistence on the second-level pointers topic is coming
> > from the view that we should make sure whatever model we use for the
> > first iteration of deep argument inspection can be expanded to
> > second-level pointers if we need them. The jump-table proposal I had was
> > just an example of how we could plan out a design that could be
> > implemented piece-meal (heck, we don't even need jump-tables in the
> > first iteration -- so long as we have an idea for how they'd work).
> > 
> > I also hasten to point out that if we make all second-level pointers
> > opaque then you won't be able to filter clone3() based on ->set_tid.
> 
> That's not an interesting second-level case. Either turn it on or off;
> base it on set_tid_size which tells you whether someone requested it or
> not. There's absolutely no reason to filter around in set_tid size ([1]).
> That was considered when adding this for checkpoint restore. You either
> allow someone that is sufficiently capable in the owning user namespace
> of each pid namespace it wants to select specific pids in or you simply
> deny it. That's not a great strawman.
> 
> Interesting second level pointers are where you have second level
> pointers that can point to differnet things or multiple features at once
> based on an opaque switch. If you're looking for interesting second
> level pointers look at bpf(). One example, is just the
> BPF_OBJ_GET_INFO_BY_FD command wich passes a struct info which contains
> an fd and depending on what type of fd that is, info can be either
> struct bpf_prog_info, struct bpf_map_info, or struct bpf_btf_info some
> of which can have other third level pointers in there.

Other examples include (possibly epoll_ctl's struct epoll_event),
struct iovec in general, {get,set}_robust_list(), kexec_load()'s struct
kexec_segment, and sendmsg()'s and recvmsg()'s sruct msghdr with a large
number of additional substructs passed through passing a struct iovec.
Most of these I reckon are uninteresting and will just in general be not
allowed if there's a problem.

> 
> [1]: There already wouldn't be any point to this if it were a first
>      level pointer because you always need to determine the pid
>      namespace hierarchy of the caller first to know whether or not you
>      want to deny choosing a specific pid in a given namespace. That's
>      nonsense.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
