Return-Path: <SRS0=mR8n=46=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2DAEBC2BB1D
	for <ksummit-discuss@archiver.kernel.org>; Fri, 13 Mar 2020 10:37:27 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EA0AB206EB
	for <ksummit-discuss@archiver.kernel.org>; Fri, 13 Mar 2020 10:37:26 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kroah.com header.i=@kroah.com header.b="lzQ/lS1q";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="MP0TEiCh"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EA0AB206EB
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=kroah.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7EDA887D97;
	Fri, 13 Mar 2020 10:37:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hz5l8DNpL7cX; Fri, 13 Mar 2020 10:37:25 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8AA8987CB9;
	Fri, 13 Mar 2020 10:37:25 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 64A6FC18D3;
	Fri, 13 Mar 2020 10:37:25 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CA20BC0177;
 Fri, 13 Mar 2020 10:37:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C63FD87CB9;
 Fri, 13 Mar 2020 10:37:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SdmyH0GbmcQl; Fri, 13 Mar 2020 10:37:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
 [66.111.4.27])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 070F987C99;
 Fri, 13 Mar 2020 10:37:24 +0000 (UTC)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.nyi.internal (Postfix) with ESMTP id 239A022337;
 Fri, 13 Mar 2020 06:37:23 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Fri, 13 Mar 2020 06:37:23 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=iQRh4eWM++JNjavkQy3NxO8uOXQ
 yom1KZ3YZTJwPkxI=; b=lzQ/lS1qe7uZPnrF5YWmsnvju776pv12bynxDRMiheA
 OzN3R99YwGEqWLpTYj0ORsxhIJgdD3YFoIxNHUSgicn+EUSNe8ECGI2GFBD1457R
 2bV7EtiLfMAgMk0Cu9nMevpX6n8ZESSX7I5CBF9ZDVXmd0q/8db6+gSwN6D8WAEM
 bP+qJtyF1OG4QmVW+vP5L87UWTIlDGDcVQd0Vbd5KlaeKXXHGCbAFYPOCa8Bwg+p
 QHIovt5LDfWthmWEmNvJc7DzwhV5uW+HpWjFhq3uESNtVC7klUdIFQlHJh7UXcyV
 f4Jf2Wg2CX7DMf6/u85hAfUAYRjt8g59bRoBej5+S3g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=iQRh4e
 WM++JNjavkQy3NxO8uOXQyom1KZ3YZTJwPkxI=; b=MP0TEiCh7GrMo2MvtbLpOV
 sOkaoxgO3Dx+ZmY5EroCz8w9BZjqAIPbQ8g8T2Ol47eURkCSAbEK3xemNC10pQQg
 yFJOMTnHxqePhTM/6dKCqcXOzPCx6Gc8yHjZ009LfOvnjcd5cDIbxr/W8Giuhx+a
 ycQscjQmokbY1O+uBQYC+5CaTn5fQKIOcpGNzglEpBeHcto0a6searLilgTb60a5
 fXm72hk5Dc71o2rd8NE+uDEOHHd/RcBNSLNJ/sS6kWOajkhdEuPGz1zxeooAZDLo
 0EJc3EuQZPy+cu2WQ/0W0N7A7TuSaIC7hw/3miZLoWLW5bRYBMlNmCD1O7BbZJTA
 ==
X-ME-Sender: <xms:YmJrXqmnV7dgTQ7NExCZLT7VR-pBRj5r_cPduE69p4nnGNolPZbVBw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedruddvjedgudejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefirhgvghcu
 mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucffohhmrghinhepkhgvrhhnvghlrd
 horhhgnecukfhppeekfedrkeeirdekledruddtjeenucevlhhushhtvghrufhiiigvpedt
 necurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhhdrtghomh
X-ME-Proxy: <xmx:YmJrXueEXCsnkO7KMjjjngO7hpL45J6dPVQGiDgmeGRNgsHduDPKNg>
 <xmx:YmJrXvCF4BAB6uPoYt1qsQQCZbjhatVQlDWH3e3GK77nvJNJqtofOA>
 <xmx:YmJrXoc9vF6T3jf2SCSo5Mtmzo2z4_nNp7tg6PcKThQmmD82YiMUlQ>
 <xmx:Y2JrXif5p_Bo6PedF2Avo_yRN8u1Ec4FOh6bi3_aOLM9LXhILI33IA>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 by mail.messagingengine.com (Postfix) with ESMTPA id 581BF328005E;
 Fri, 13 Mar 2020 06:37:22 -0400 (EDT)
Date: Fri, 13 Mar 2020 11:37:20 +0100
From: Greg KH <greg@kroah.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20200313103720.GA2215823@kroah.com>
References: <6d6dd6fa-880f-01fe-6177-281572aed703@labbott.name>
 <20200312003436.GF1639@pendragon.ideasonboard.com>
 <MWHPR13MB0895E133EC528ECF50A22100FDFD0@MWHPR13MB0895.namprd13.prod.outlook.com>
 <20200313031947.GC225435@mit.edu> <87d09gljhj.fsf@intel.com>
 <20200313093548.GA2089143@kroah.com>
 <24c64c56-947b-4267-33b8-49a22f719c81@suse.cz>
 <20200313100755.GA2161605@kroah.com>
 <CAMuHMdVSxS1R2osYJh29aKGaqMw3NkTRgqgRWuhu4euygAAXVg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdVSxS1R2osYJh29aKGaqMw3NkTRgqgRWuhu4euygAAXVg@mail.gmail.com>
Cc: "Bird, Tim" <Tim.Bird@sony.com>,
 "tech-board-discuss@lists.linuxfoundation.org"
 <tech-board-discuss@lists.linuxfoundation.org>,
 "ksummit-discuss@lists.linuxfoundation.org"
 <ksummit-discuss@lists.linuxfoundation.org>, Vlastimil Babka <vbabka@suse.cz>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] [Tech-board-discuss] Linux Foundation
 Technical Advisory Board Elections -- Change to charter
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

On Fri, Mar 13, 2020 at 11:16:36AM +0100, Geert Uytterhoeven wrote:
> Hi Greg,
> 
> On Fri, Mar 13, 2020 at 11:08 AM Greg KH <greg@kroah.com> wrote:
> > On Fri, Mar 13, 2020 at 10:41:57AM +0100, Vlastimil Babka wrote:
> > > On 3/13/20 10:35 AM, Greg KH wrote:
> > > >> Not that I'm saying there's an easy solution, but obviously kernel.org
> > > >> account is not as problem free as you might think.
> > > >
> > > > We are not saying it is "problem free", but what really is the problem
> > > > with it?
> > >
> > > IIUC there is no problem for its current use, but it would be rather restrictive
> > > if it was used as the only criterion for being able to vote for TAB remotely.
> >
> > Given that before now, there has not be any way to vote for the TAB
> > remotely, it's less restrictive :)
> 
> But people without kernel.org accounts could still vote in person before,
> right?

Yes, and they still can today, this is expanding the pool, not
restricting it.

thanks,

greg k-h
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
