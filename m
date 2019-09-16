Return-Path: <SRS0=iitZ=XL=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2DA16C49ED7
	for <ksummit-discuss@archiver.kernel.org>; Mon, 16 Sep 2019 18:05:48 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EFD9A20650
	for <ksummit-discuss@archiver.kernel.org>; Mon, 16 Sep 2019 18:05:47 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="RytMO2hh"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EFD9A20650
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id BAB771B1D;
	Mon, 16 Sep 2019 18:05:47 +0000 (UTC)
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 910E0FBC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 16 Sep 2019 18:05:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
	[209.85.166.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 248CF81A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 16 Sep 2019 18:05:21 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id j4so1101398iog.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 16 Sep 2019 11:05:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=5L/0TeIovJbxw3+FusiztMKMYQqBx5hhxMeD4EGd5sE=;
	b=RytMO2hh/8HeIkGIUt7pjdbY4bW61q1zsVtXb1kK3awhHjc3IKFgbgXlLypQj6xLDJ
	WBwP7IfOmD0hZR2ntDYOUzw6L0fVWcEnm5O8MERnGpxUZbQKtg9XUo0IgHofDqJpec/o
	ySynYC3WRtOshveglPI89rIjw0Pk3ngMEmptI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=5L/0TeIovJbxw3+FusiztMKMYQqBx5hhxMeD4EGd5sE=;
	b=rnkVgiz7wbgiHEWuEr7X6c7e2jzdeOQQO9aeUAEm37XLFWLtjgd0fJIspTIh5OQFKW
	nHwgmh29LC1t351S7NS4vfppFIH13WWiHTy5s3qWYULpLTDVnmx/1Ame/hJLGcNuzvJs
	0MzIefHMiuUe2pQX+hwr5AQLLtkOOaPgNNb8ssfIIpEzEwXEdif7qDP122I2jChHf1fO
	0KhKkMjH03/dohnKvr+QougNYLPbZpn0U0wZCNVa82XpXJve0ES0obwhpMw95nliQj+r
	fdEr8Rs5uOYiU4/dkIPUzUFbf4+xas4bugpmJ9XK9Fp/0pTwXSq9GfLuKG0FnJMeer5D
	qpQw==
X-Gm-Message-State: APjAAAUN1Sfv1MAs/byk6mCwrRl16zzp+aNzDlV0cVPpMbxIzt3l3n6/
	JFngajQcjWVdySQOuH2Hw64ml/yBbqg=
X-Google-Smtp-Source: APXvYqxefKktin9e1DtkIsu7RF2UEJ2k39NwpHK36wgEHlBbfj6MCDI1XaCrmvNCHkvdO4EebfWyog==
X-Received: by 2002:a5e:dd4c:: with SMTP id u12mr1191451iop.181.1568657120203; 
	Mon, 16 Sep 2019 11:05:20 -0700 (PDT)
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com.
	[209.85.166.45]) by smtp.gmail.com with ESMTPSA id
	b14sm18950016ioj.39.2019.09.16.11.05.17
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 16 Sep 2019 11:05:18 -0700 (PDT)
Received: by mail-io1-f45.google.com with SMTP id b136so1241231iof.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 16 Sep 2019 11:05:17 -0700 (PDT)
X-Received: by 2002:a5d:9859:: with SMTP id p25mr1278895ios.142.1568657117233; 
	Mon, 16 Sep 2019 11:05:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAD=FV=WrGcfV-_0taGHB-LMZV8zN8oV3KMy=j09dor+hKRLPSg@mail.gmail.com>
	<CAD=FV=WgbREZd5EiytrEOxQ+GQ33q+ohKqb-T6e3mhFJzWtpXA@mail.gmail.com>
	<20190826230206.GC28066@mit.edu>
	<CAD=FV=UGX0L+HdGO5ZHvmMMR8ZBUDhMdYdfYSn7csc+cPg+KFw@mail.gmail.com>
	<20190916174311.GC1131@ZenIV.linux.org.uk>
In-Reply-To: <20190916174311.GC1131@ZenIV.linux.org.uk>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 16 Sep 2019 11:05:05 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XGDxa1BxkSXz1_jZmyLAeKN6R4GqbmF2VAhX11Cd3pew@mail.gmail.com>
Message-ID: <CAD=FV=XGDxa1BxkSXz1_jZmyLAeKN6R4GqbmF2VAhX11Cd3pew@mail.gmail.com>
To: Al Viro <viro@zeniv.linux.org.uk>
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Nieder <jrn@google.com>, Tomasz Figa <tfiga@chromium.org>,
	Han-Wen Nienhuys <hanwen@google.com>, Theodore Tso <tytso@google.com>,
	David Rientjes <rientjes@google.com>, Dmitry Torokhov <dtor@chromium.org>,
	Dmitry Vyukov <dvyukov@google.com>
Subject: Re: [Ksummit-discuss] Allowing something Change-Id (or something
 like it) in kernel commits
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.12
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
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

Hi,

On Mon, Sep 16, 2019 at 10:43 AM Al Viro <viro@zeniv.linux.org.uk> wrote:
>
> On Mon, Aug 26, 2019 at 04:11:12PM -0700, Doug Anderson wrote:
>
> > Sigh.  Email is so hard to communicate over.  I'm not intending to
> > include the Message-Id in the commit.  I'm intending to use the
> > Change-Id _in_ the Message-Id.  The Message-Id already has a bunch of
> > random characters in it.  Why not make them useful for something?
>
> *blink*
>
> I must be misreading you; are you *really* suggesting to update
> every MUA people are using?  Or researching and documenting
> the ways to control said MUAs to achieve the effect.
>
> I don't know how to get that in mutt(1), TBH.  And then there are
> poor sods who use browsers/evolution/pine/whatnot for that...

In general I think most people send patches with git-send-email.  If
you use git-send-email you can simply add a Message-Id into your patch
files before passing them to git-send-email and it'll use that.  If
you use mutt to directly send a patch then, right, it won't get a
message ID like this.  I think expecting 100% adoption is impossible,
so for now I'm hoping to get sufficient adoption that it could be
worth it for someone to do the tools integration.

FYI: I personally use patman to send my patches (which eventually
passes them to git-send-email).  The patman change to setup the
Message-Id is at:

https://patchwork.ozlabs.org/patch/1157266/

Johannes Berg also responded to my patch providing a proof of concept
way to use a git hook.


NOTE: for responses to patches (where it's more likely people will use
mutt) there is no need for magic Message-Id.  There are already plenty
of ways to track responses to emails.

-Doug
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
