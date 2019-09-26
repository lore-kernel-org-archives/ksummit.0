Return-Path: <SRS0=WLkl=XV=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70B4CC4360C
	for <ksummit-discuss@archiver.kernel.org>; Thu, 26 Sep 2019 15:14:16 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4AEF621D80
	for <ksummit-discuss@archiver.kernel.org>; Thu, 26 Sep 2019 15:14:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4AEF621D80
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=perches.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B24DDCAE;
	Thu, 26 Sep 2019 15:14:15 +0000 (UTC)
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 27214CA6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 26 Sep 2019 15:14:14 +0000 (UTC)
X-Greylist: delayed 21:52:03 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0094.hostedemail.com
	[216.40.44.94])
	by smtp2.linuxfoundation.org (Postfix) with ESMTPS id 89C7D1DDD9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 26 Sep 2019 15:14:13 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave04.hostedemail.com (Postfix) with ESMTP id 66D8618015491
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 26 Sep 2019 15:14:11 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
	[216.40.38.60])
	by smtprelay02.hostedemail.com (Postfix) with ESMTP id D0F52127B;
	Thu, 26 Sep 2019 15:14:08 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-HE-Tag: jeans59_7b1a000bfa110
X-Filterd-Recvd-Size: 3533
Received: from XPS-9350 (unknown [113.22.183.150])
	(Authenticated sender: joe@perches.com)
	by omf05.hostedemail.com (Postfix) with ESMTPA;
	Thu, 26 Sep 2019 15:14:05 +0000 (UTC)
Message-ID: <4eca5297a213357995c05b90c74a8bc638f54f02.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Kees Cook <keescook@chromium.org>
Date: Thu, 26 Sep 2019 08:14:03 -0700
In-Reply-To: <201909251127.D0C517171E@keescook>
References: <156821693963.2951081.11214256396118531359.stgit@dwillia2-desk3.amr.corp.intel.com>
	<434c05bddd2b364e607e565227487910a8dd9793.1568391461.git.mchehab+samsung@kernel.org>
	<20190918123620.GA6306@pendragon.ideasonboard.com>
	<20190918105728.24e7eb48@coco.lan> <20190919065447.GF2959@kadam>
	<5d71311232fd6d4aa0fab038512eab933c13a722.camel@perches.com>
	<201909251127.D0C517171E@keescook>
User-Agent: Evolution 3.32.1-2 
MIME-Version: 1.0
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org,
	Dan Carpenter <dan.carpenter@oracle.com>,
	Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: Re: [Ksummit-discuss] [PATCH] media: add a subsystem profile
 documentation
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

On Wed, 2019-09-25 at 11:40 -0700, Kees Cook wrote:
> On Wed, Sep 25, 2019 at 10:13:37AM -0700, Joe Perches wrote:
> > On Thu, 2019-09-19 at 09:56 +0300, Dan Carpenter wrote:
> > > When I sent a patch, I use get_maintainer.pl then I add whoever the
> > > wrote the commit from the Fixes tag.  Then I remove Colin King and Kees
> > > Cook from the CC list because they worked all over the tree and I know
> > > them.  I also normally remove LKML if there is another mailing list but
> > > at least one subsystem uses LKML for patchwork so this isn't safe.
> > > 
> > > So the safest instructions are "Use get_matainer.pl and add the person
> > > who wrote the commit in the Fixes tag".
> > 
> > Maybe add this:
> > 
> > Add the signers of any commit referenced in a "Fixes: <commit>" line
> > of a patch description.
> 
> Oh yes please! I've always done this manually, so that's a nice bit of
> automation. :)
> 
> Is "6" a safe lower bound here? I thought 12 was the way to go?
[]
> $ git log | egrep 'Fixes: [a-f0-9]{1,40}' | col2 | awk '{print length }' | sort | uniq -c | sort -n | tail
>     238 8
>     300 7
>     330 14
>     344 6
>     352 11
>     408 40
>     425 10
>     735 16
>    1866 13
>   31446 12
> 
> Hmpf, 6 is pretty high up there...

Yes, but your grep then col2 isn't right.
You are counting all the 'Fixes: commit <foo>' output
as 6 because that's the length of 'commit'.

I also think the length of the hex commit value doesn't
matter much as it's got to be a specific single commit
SHA1 anyway, otherwise the commit id lookup will fail.

> > > @@ -1031,6 +1040,7 @@ MAINTAINER field selection options:
> >      --roles => show roles (status:subsystem, git-signer, list, etc...)
> >      --rolestats => show roles and statistics (commits/total_commits, %)
> >      --file-emails => add email addresses found in -f file (default: 0 (off))
> > +    --fixes => for patches, add signatures of commits with 'Fixes: <commit>' (default: 1 (on))
> 
> Should "Tested-by" and "Co-developed-by" get added to @signature_tags ?

All "<foo>-by:" signatures are added.

> @commit_authors is unused?

Yes, authors are already required to sign-off so
it's just duplicating already existing signatures.


_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
