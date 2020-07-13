Return-Path: <SRS0=zbo2=AY=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=3.0 tests=BAYES_00,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A84DC433E1
	for <ksummit-discuss@archiver.kernel.org>; Mon, 13 Jul 2020 09:40:11 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6911C2075B
	for <ksummit-discuss@archiver.kernel.org>; Mon, 13 Jul 2020 09:40:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6911C2075B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=inria.fr
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E523023120;
	Mon, 13 Jul 2020 09:40:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ypcMCA6VzwZy; Mon, 13 Jul 2020 09:40:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 69EE3227D1;
	Mon, 13 Jul 2020 09:40:08 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3D2DDC0888;
	Mon, 13 Jul 2020 09:40:08 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 898CCC0733;
 Mon, 13 Jul 2020 09:40:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 776818758A;
 Mon, 13 Jul 2020 09:40:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YTbf4_YuRwnS; Mon, 13 Jul 2020 09:40:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail2-relais-roc.national.inria.fr
 (mail2-relais-roc.national.inria.fr [192.134.164.83])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1ABDE87490;
 Mon, 13 Jul 2020 09:40:05 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.75,347,1589234400"; d="scan'208";a="459564921"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
 by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jul 2020 11:39:56 +0200
Date: Mon, 13 Jul 2020 11:39:56 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Takashi Iwai <tiwai@suse.de>
In-Reply-To: <s5hft9vzrgt.wl-tiwai@suse.de>
Message-ID: <alpine.DEB.2.22.394.2007131137330.2322@hadrien>
References: <159423201991.2466245.8461410729774664077.stgit@dwillia2-desk3.amr.corp.intel.com>
 <s5hlfjnzvu7.wl-tiwai@suse.de>
 <alpine.DEB.2.22.394.2007131043070.2322@hadrien>
 <s5hft9vzrgt.wl-tiwai@suse.de>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
 ksummit-discuss@lists.linuxfoundation.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 SeongJae Park <sjpark@amazon.de>, linux-kernel@vger.kernel.org,
 tech-board-discuss@lists.linuxfoundation.org, Dave Airlie <airlied@redhat.com>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [PATCH v3] CodingStyle: Inclusive Terminology
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



On Mon, 13 Jul 2020, Takashi Iwai wrote:

> On Mon, 13 Jul 2020 10:43:28 +0200,
> Julia Lawall wrote:
> >
> >
> >
> > On Mon, 13 Jul 2020, Takashi Iwai wrote:
> >
> > > On Wed, 08 Jul 2020 20:14:27 +0200,
> > > Dan Williams wrote:
> > > >
> > > > +Recommended replacements for 'blacklist/whitelist' are:
> > > > +    'denylist / allowlist'
> > > > +    'blocklist / passlist'
> > >
> > > I started looking through the tree now and noticed there are lots of
> > > patterns like "whitelisted" or "blacklisted".  How can the words fit
> > > for those?  Actually, there are two cases like:
> > >
> > > - Foo is blacklisted
> > > - Allow to load the non-whitelisted cards
> > >
> > > Currently I'm replacing the former with "Foo is in denylist", but not
> >
> > In the denylist?
>
> Not really, only the allowlist exists in this case.

I'm not sure to understand.  in denylist is not grammatical.  It needs "a"
or "the".

Maybe it has to be foo is denylisted?  foo is in the implicit denyList?
foo is not in the allowList?

julia
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
