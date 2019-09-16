Return-Path: <SRS0=iitZ=XL=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 45E0BC49ED7
	for <ksummit-discuss@archiver.kernel.org>; Mon, 16 Sep 2019 17:43:52 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 209F62067D
	for <ksummit-discuss@archiver.kernel.org>; Mon, 16 Sep 2019 17:43:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 209F62067D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=zeniv.linux.org.uk
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 7DEA81A66;
	Mon, 16 Sep 2019 17:43:51 +0000 (UTC)
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 075AF1925
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 16 Sep 2019 17:43:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from ZenIV.linux.org.uk (zeniv.linux.org.uk [195.92.253.2])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 78D9581A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 16 Sep 2019 17:43:15 +0000 (UTC)
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92.2 #3 (Red Hat
	Linux)) id 1i9v1r-0002aB-CN; Mon, 16 Sep 2019 17:43:11 +0000
Date: Mon, 16 Sep 2019 18:43:11 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Doug Anderson <dianders@chromium.org>
Message-ID: <20190916174311.GC1131@ZenIV.linux.org.uk>
References: <CAD=FV=WrGcfV-_0taGHB-LMZV8zN8oV3KMy=j09dor+hKRLPSg@mail.gmail.com>
	<CAD=FV=WgbREZd5EiytrEOxQ+GQ33q+ohKqb-T6e3mhFJzWtpXA@mail.gmail.com>
	<20190826230206.GC28066@mit.edu>
	<CAD=FV=UGX0L+HdGO5ZHvmMMR8ZBUDhMdYdfYSn7csc+cPg+KFw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=FV=UGX0L+HdGO5ZHvmMMR8ZBUDhMdYdfYSn7csc+cPg+KFw@mail.gmail.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
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

On Mon, Aug 26, 2019 at 04:11:12PM -0700, Doug Anderson wrote:

> Sigh.  Email is so hard to communicate over.  I'm not intending to
> include the Message-Id in the commit.  I'm intending to use the
> Change-Id _in_ the Message-Id.  The Message-Id already has a bunch of
> random characters in it.  Why not make them useful for something?

*blink*

I must be misreading you; are you *really* suggesting to update
every MUA people are using?  Or researching and documenting
the ways to control said MUAs to achieve the effect.

I don't know how to get that in mutt(1), TBH.  And then there are
poor sods who use browsers/evolution/pine/whatnot for that...
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
