Return-Path: <SRS0=TU90=AU=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_2
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 37DCBC433E1
	for <ksummit-discuss@archiver.kernel.org>; Thu,  9 Jul 2020 11:11:42 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F12452076A
	for <ksummit-discuss@archiver.kernel.org>; Thu,  9 Jul 2020 11:11:41 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="ylOe5/KH"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F12452076A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 94D4087EDD;
	Thu,  9 Jul 2020 11:11:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 285njeUrfma1; Thu,  9 Jul 2020 11:11:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EDD1787EDA;
	Thu,  9 Jul 2020 11:11:40 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BBC33C077B;
	Thu,  9 Jul 2020 11:11:40 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5301DC016F;
 Thu,  9 Jul 2020 11:11:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3C01D87EDB;
 Thu,  9 Jul 2020 11:11:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ml-sltHoNOY6; Thu,  9 Jul 2020 11:11:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8BC3987EDA;
 Thu,  9 Jul 2020 11:11:38 +0000 (UTC)
Received: from coco.lan (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C16B92076A;
 Thu,  9 Jul 2020 11:11:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1594293098;
 bh=vny+SWwydOWXgQEpMtX94zFAywVQ53nMMZrFLu+KCfE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ylOe5/KHwchiM+tEwXVN+LYL6Znb1MK7HBpvsQgqLWOOmVnaquIrHYwDMyFldYkk2
 oejy8Ava9G1TXJPWjaj9zMjIDGrPwZWzJp+MkdY/tDNoHp62PAKRJbHEpJBOhOWqd4
 5rBr9E10yVPBow0R8ZjriiSvK7fXmljt/q79n2OY=
Date: Thu, 9 Jul 2020 13:11:33 +0200
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Joe Perches <joe@perches.com>
Message-ID: <20200709131133.1bbb9c63@coco.lan>
In-Reply-To: <10eeae911ab653036554f5599ba34406572acaa9.camel@perches.com>
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 <CAFhKne_ZVWVhZX5hNEbeGBfU6BMRN9JKQeTsVYOcMmEH1cd3xg@mail.gmail.com>
 <87h7ul15le.fsf@notabene.neil.brown.name>
 <20200706072221.GA1947246@kroah.com>
 <CAMuHMdWj2d5GF1ZkuhzQxg9teA51zjF0oQQPWcphzK=kJ6-x9Q@mail.gmail.com>
 <CAFhKne9vswg3Q4mTOz4WP6QWJ8tDH+SNx1Pu7LotLagoNURKgw@mail.gmail.com>
 <d6f56f5f5e0790ee9c7579eb05c7d92e071ee15a.camel@perches.com>
 <CAFhKne_p_rKN4adhsuyUyBfrS0YwCtoNFNn-x4aFajPmnkR6iQ@mail.gmail.com>
 <10eeae911ab653036554f5599ba34406572acaa9.camel@perches.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 tech-board-discuss@lists.linuxfoundation.org, Chris Mason <clm@fb.clm>
Subject: Re: [Ksummit-discuss] [PATCH] CodingStyle: Inclusive Terminology
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

Em Mon, 06 Jul 2020 06:30:01 -0700
Joe Perches <joe@perches.com> escreveu:

> On Mon, 2020-07-06 at 09:04 -0400, Matthew Wilcox wrote:
> > On Mon, Jul 6, 2020 at 8:59 AM Joe Perches <joe@perches.com> wrote:  
> > > On Mon, 2020-07-06 at 08:51 -0400, Matthew Wilcox wrote:  
> > > > In terms of number of lines of code using the word, it's only seventh
> > > > in drivers/:
> > > > 
> > > > $ for i in drivers/*; do c=$(find $i -type f |xargs grep slave |wc
> > > > -l); echo "$c $i"; done |sort -rn |head
> > > > 5218 drivers/net
> > > > 1341 drivers/dma
> > > > 988 drivers/i2c
> > > > 695 drivers/gpu
> > > > 666 drivers/soundwire
> > > > 665 drivers/spi
> > > > 559 drivers/w1
> > > > 461 drivers/infiniband
> > > > 389 drivers/media
> > > > 301 drivers/scsi  
> > > 
> > > I get rather different and much lower numbers
> > > 
> > > $ git grep -i -w slave drivers | \
> > >   cut -f1,2 -d/ | uniq -c | sort -rn | head -20 | cat -n  
> > 
> > That's because you're using grep -w which excludes, for example,
> > slave_configure in drivers/scsi.  
> 
> upper/lower case uses too...  (anyway, there are a lot)
> 
> $ git grep -i -w -P '\w*slave\w*' drivers | \
>   cut -f1,2 -d/ | uniq -c | sort -rn | head -20 | cat -n
>      1	   5683 drivers/net
>      2	   2118 drivers/gpu
>      3	   1807 drivers/dma
>      4	   1389 drivers/i2c
>      5	    866 drivers/interconnect
>      6	    835 drivers/soundwire
>      7	    821 drivers/spi
>      8	    698 drivers/w1
>      9	    508 drivers/media
>     10	    481 drivers/infiniband
>     11	    440 drivers/ata
>     12	    317 drivers/scsi
>     13	    267 drivers/fsi
>     14	    240 drivers/tty
>     15	    225 drivers/vme
>     16	    223 drivers/staging
>     17	    157 drivers/mmc
>     18	    155 drivers/usb
>     19	    141 drivers/video
>     20	    140 drivers/char

It sounds that, as soon after this patch gets merged, the mailing lists
will be flooded by lots of patches replacing such terms with something
else :-(

Doing a quick look at the media subsystem, it sounds that most terms
come from I2C master/slave and DiSEqC terminology, as defined by their
specs (and the others seem to be derived from some hardware vendor 
specific terminology).

As they're all supported by the current specs, if one would want
to replace them, it should first ensure that the supporting specs
should be using a different terminology, as otherwise replacing
them would just make harder for anyone trying to understand the
code.

Thanks,
Mauro
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
