Return-Path: <SRS0=2co7=7C=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1C42C433DF
	for <ksummit-discuss@archiver.kernel.org>; Wed, 20 May 2020 18:16:15 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 824F820671
	for <ksummit-discuss@archiver.kernel.org>; Wed, 20 May 2020 18:16:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 824F820671
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=zeniv.linux.org.uk
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1D38A8819D;
	Wed, 20 May 2020 18:16:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id van2D1CeCm-k; Wed, 20 May 2020 18:16:14 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 33E488815D;
	Wed, 20 May 2020 18:16:14 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 031AAC088A;
	Wed, 20 May 2020 18:16:14 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5C1E5C0176
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 18:16:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4AD9888172
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 18:16:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4IqaFUQSw2el
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 18:16:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from ZenIV.linux.org.uk (zeniv.linux.org.uk [195.92.253.2])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2B3248815D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 20 May 2020 18:16:10 +0000 (UTC)
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.93 #3 (Red Hat
 Linux)) id 1jbTG9-00CXSU-I2; Wed, 20 May 2020 18:16:05 +0000
Date: Wed, 20 May 2020 19:16:05 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Kees Cook <keescook@chromium.org>
Message-ID: <20200520181605.GA23230@ZenIV.linux.org.uk>
References: <202005200917.71E6A5B20@keescook>
 <20200520163102.GZ23230@ZenIV.linux.org.uk>
 <202005201104.72FED15776@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202005201104.72FED15776@keescook>
Cc: ksummit-discuss@lists.linuxfoundation.org
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

On Wed, May 20, 2020 at 11:05:58AM -0700, Kees Cook wrote:
> On Wed, May 20, 2020 at 05:31:02PM +0100, Al Viro wrote:
> > On Wed, May 20, 2020 at 09:17:41AM -0700, Kees Cook wrote:
> > > As recently outlined[1], there are are a number of seccomp topics that
> > > need discussion:
> > > 
> > >  - fd passing
> > >  - deep argument inspection
> > >  - changing structure sizes
> > >  - syscall bitmasks
> > > 
> > > Specifically, seccomp needs to grow the ability to inspect Extensible
> > > Argument syscalls, which requires that it inspect userspace memory
> > > without Time-of-Check/Time-of-Use races and without double-copying.
> > > Additionally, since the structures can grow and be nested, there needs
> > > to be a way to
> > 
> > ... catch and kill the bullshit ABI "enhancements" that would attempt that
> > kind of garbage.  I'm not sure why that is seccomp-related, though...
> 
> We already have structs passed to syscalls that contain pointers to yet
> more structs. Do you mean those should be disallowed? (Personally, I
> would love that, but this doesn't seem to match the reality of the
> design considerations of those syscalls.)

We have no chance to kill the existing ones off, but we certainly can stop
accepting new ones.  I would make an exception for struct iovec arrays
passed as an argument, provided that the data they refer to is opaque,
and while pselect6() kind of kludges are bloody revolting, they might
be inevitable in some cases - not without a very good explanation from
their authors, though, and "I wanna have 18 arguments; whaddya mean, don't?!"
is not one.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
