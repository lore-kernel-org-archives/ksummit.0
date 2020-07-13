Return-Path: <SRS0=zbo2=AY=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9255C433E7
	for <ksummit-discuss@archiver.kernel.org>; Mon, 13 Jul 2020 15:55:18 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8C87520663
	for <ksummit-discuss@archiver.kernel.org>; Mon, 13 Jul 2020 15:55:18 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=intel-com.20150623.gappssmtp.com header.i=@intel-com.20150623.gappssmtp.com header.b="k+yaceJB"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8C87520663
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=intel.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 41E38879A5;
	Mon, 13 Jul 2020 15:55:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RlxNAMoFBy0X; Mon, 13 Jul 2020 15:55:17 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2F47787921;
	Mon, 13 Jul 2020 15:55:17 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EFAFDC08A6;
	Mon, 13 Jul 2020 15:55:16 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 08ED6C0888
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 13 Jul 2020 15:55:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 027BB88A83
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 13 Jul 2020 15:55:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qN3IaQvSrl2P
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 13 Jul 2020 15:55:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
 [209.85.208.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B14A588BA9
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 13 Jul 2020 15:55:14 +0000 (UTC)
Received: by mail-ed1-f65.google.com with SMTP id b15so14091709edy.7
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 13 Jul 2020 08:55:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mvFP8C9ElhA+9J4NHbp88icoVdD/LwjeDZ0MuCFKeSs=;
 b=k+yaceJBmAwAdUCCyLHeNdv0mZPyEZbdhlT8pDEeDX6/g/ec0BIgzMl9fL3Lw/BqhS
 U71Pzd9vUppH1ups2mJxxE/r6i/5zwspEzYxTDFn6EsIOjvHm51oI1doIU++tVmZgI27
 BdPB8DMiSWkDIO32gxyEcTiv24z2GypgsanuioeCYCCddPWp3l+gSVV7tETNrNWs0Hk3
 OslOKsF3Nyzu9BRxm6XVDq8yO19LQSOTt+v1oiSw5RP5SbZ55kbkc9drcEVBDv/ly7re
 RJIvU2CS5xZD9bSLFj8kZgqtl8/akOZNwNo8J0GWdIdnCo0JHoUECwa9tFEhidKHsRLp
 YbXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mvFP8C9ElhA+9J4NHbp88icoVdD/LwjeDZ0MuCFKeSs=;
 b=WSqaGbOfjjB87wg0rzVKjDzMjZY5GjFIqlTQnyIdbNLV8pirIZW7094wWLSVrHumOA
 EWVxil3enTCvSe/ast1xuJadPr0nUq9kg/3vSCvLZrBGqfgD/xEhotIv9UlECUoSWsEF
 F9TjjqcZPTqzuBYf2/3+qTlOehVG9vk7Qzgua4i1ru1GJgQ2OuYORdno3Y4FMAp2NzgZ
 hVauC5ShZg+YwAu69nAY1A+6qFfRAtw9W7JYAvODhtc/ULUsPBd3O4nPxMHknUX3JbpT
 iXM0/gGnbzwIasKWoZ1XuejYILOcEPWqnUubvN9jl2MuJlmMqpfRkqIRnE+RFypSpde+
 Vq9g==
X-Gm-Message-State: AOAM531lDDNiJ4uPtgtjsinoMZz3zlXQCUx/Z3sxq0ORGXvSSp0YFn0l
 HgZ1vuW87XcOCnDVqB48SZPeS0sdiu/J1P/+DVIN3w==
X-Google-Smtp-Source: ABdhPJxM5zWHCQaAimbCxxaf2ae+gWBz1Jqgn91MrvD+o+/On1BzJQ/4ijhdDBCqPvzUO6bFSmg/E+5V1W51fg7nUZU=
X-Received: by 2002:a50:d9cb:: with SMTP id x11mr50150edj.93.1594655713140;
 Mon, 13 Jul 2020 08:55:13 -0700 (PDT)
MIME-Version: 1.0
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 <CAFhKne_ZVWVhZX5hNEbeGBfU6BMRN9JKQeTsVYOcMmEH1cd3xg@mail.gmail.com>
 <87h7ul15le.fsf@notabene.neil.brown.name> <20200706072221.GA1947246@kroah.com>
 <CAMuHMdWj2d5GF1ZkuhzQxg9teA51zjF0oQQPWcphzK=kJ6-x9Q@mail.gmail.com>
 <CAFhKne9vswg3Q4mTOz4WP6QWJ8tDH+SNx1Pu7LotLagoNURKgw@mail.gmail.com>
 <d6f56f5f5e0790ee9c7579eb05c7d92e071ee15a.camel@perches.com>
 <CAFhKne_p_rKN4adhsuyUyBfrS0YwCtoNFNn-x4aFajPmnkR6iQ@mail.gmail.com>
 <10eeae911ab653036554f5599ba34406572acaa9.camel@perches.com>
 <20200709131133.1bbb9c63@coco.lan> <20200713042547.GO34333@vkoul-mobl>
In-Reply-To: <20200713042547.GO34333@vkoul-mobl>
From: Dan Williams <dan.j.williams@intel.com>
Date: Mon, 13 Jul 2020 08:55:02 -0700
Message-ID: <CAPcyv4iPWXRQxGQOXO-eCmRn7HeDp0NvSUq-o3eQjFPRkA1eoQ@mail.gmail.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 tech-board-discuss@lists.linuxfoundation.org, Chris Mason <clm@fb.clm>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
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

On Sun, Jul 12, 2020 at 9:26 PM Vinod Koul <vkoul@kernel.org> wrote:
>
> Hi Mauro,
>
> On 09-07-20, 13:11, Mauro Carvalho Chehab wrote:
> > Em Mon, 06 Jul 2020 06:30:01 -0700
> > Joe Perches <joe@perches.com> escreveu:
> > >
> > > $ git grep -i -w -P '\w*slave\w*' drivers | \
> > >   cut -f1,2 -d/ | uniq -c | sort -rn | head -20 | cat -n
> > >      1         5683 drivers/net
> > >      2         2118 drivers/gpu
> > >      3         1807 drivers/dma
> > >      4         1389 drivers/i2c
> > >      5          866 drivers/interconnect
> > >      6          835 drivers/soundwire
> > >      7          821 drivers/spi
> > >      8          698 drivers/w1
> > >      9          508 drivers/media
> > >     10          481 drivers/infiniband
> > >     11          440 drivers/ata
> > >     12          317 drivers/scsi
> > >     13          267 drivers/fsi
> > >     14          240 drivers/tty
> > >     15          225 drivers/vme
> > >     16          223 drivers/staging
> > >     17          157 drivers/mmc
> > >     18          155 drivers/usb
> > >     19          141 drivers/video
> > >     20          140 drivers/char
> >
> > It sounds that, as soon after this patch gets merged, the mailing lists
> > will be flooded by lots of patches replacing such terms with something
> > else :-(
> >
> > Doing a quick look at the media subsystem, it sounds that most terms
> > come from I2C master/slave and DiSEqC terminology, as defined by their
> > specs (and the others seem to be derived from some hardware vendor
> > specific terminology).
> >
> > As they're all supported by the current specs, if one would want
> > to replace them, it should first ensure that the supporting specs
> > should be using a different terminology, as otherwise replacing
> > them would just make harder for anyone trying to understand the
> > code.
>
> I think waiting for specs may result in long delays, we all know how
> 'fast' spec bodies work!
>
> Putting my soundwire maintainer hat, I see more than 1K uses of 'slave'
> in the subsystem due to MIPI defined terms of SoundWire Master/Slave, so
> I am planning to replace that and not wait for MIPI to update the spec.

Sounds good.

> A similar approach where we discuss with relevant stakeholder and arrive
> at replacement terms and swap them would be great

Right, just like any other coding-style cleanup, stage it the way that
makes the most sense for the subsystem you maintain.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
