Return-Path: <SRS0=iFvq=AR=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=3.0 tests=DKIM_ADSP_CUSTOM_MED,
	DKIM_INVALID,DKIM_SIGNED,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2604DC433E0
	for <ksummit-discuss@archiver.kernel.org>; Mon,  6 Jul 2020 13:05:01 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F0178206E6
	for <ksummit-discuss@archiver.kernel.org>; Mon,  6 Jul 2020 13:05:00 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DQBaBonQ"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F0178206E6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3BB1125D10;
	Mon,  6 Jul 2020 13:04:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z0U6O6-GxTW5; Mon,  6 Jul 2020 13:04:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 7D16425C95;
	Mon,  6 Jul 2020 13:04:57 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 57896C0891;
	Mon,  6 Jul 2020 13:04:57 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2FB61C016F;
 Mon,  6 Jul 2020 13:04:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1DFA988AEE;
 Mon,  6 Jul 2020 13:04:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cCVuIeo7--Fy; Mon,  6 Jul 2020 13:04:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8FD9788AD3;
 Mon,  6 Jul 2020 13:04:55 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id t18so18757872otq.5;
 Mon, 06 Jul 2020 06:04:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hmLqrXXhVU4dEhpiExA430FqmWSncr+dRol/WcQpdPA=;
 b=DQBaBonQAQTGt198EmZPaGn/UjYlH+cYKBN38YTb53yvhwvC7lKya7ILMRVUbNk+Pv
 uQSNbW4ToO5M3ISD2ehUAPxzJcKs1s3CKF0E0E5DN5AMKNsOwuuokBwlDf/5BnmSOCcu
 hLAMXL3vqozL387spk4aw5oN2aycAc2GISl0OD7IXk/Z91zNt9sQOYahganwqDd4T4UI
 R1p9tsXY9HoUYrNVyHK1ZuMb154HAZBpOY4M4Yv/TcW7TFR1ySbR+MMYilU+xvDNDDiI
 gH1fxOu2aewmQ09ziNON7PdQPUXV4CUbUvpUeOZJd2FlJPZ8YeJdaNZqTssxU4LCTYJy
 9hQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hmLqrXXhVU4dEhpiExA430FqmWSncr+dRol/WcQpdPA=;
 b=dObTiFOtngScDxGCaKvXeYFQNJFmUEVVR2K8Dm2hIkMTM4ngnx36gblBMwevITw9sx
 d3ZRzDusoxtkomjUZevHCdir4qYepzkacfMCWIXtgyyRcOdnEVKOGd5CwlF2LLq7twwt
 MtJXu6paS+CHbISTTepVzKNqvpHCeIZQ8f4vy+R5hzumVAivKZlT/mQi1Y//qQKTGbMP
 uqsSMtUYYaLsTJx/W5JMhvk5bUW3f7+o/gLAFl3LpSp6Ib/RrbXe273YtnXkVKZLyEYr
 +g9K16U3mNZ4oAhfE18ineshlOPYpNU9W+yPGDiNFVIt59s2Ec6c1wsQSe37LIK9XkrO
 CP2g==
X-Gm-Message-State: AOAM530O39HtH2NzpRYQOIFnu3kY2mwqbckjvypypub/vEJQ6UBUArrx
 Z6gewu1xhW126G1rqr9LBYE1bdD8dPZWQ74g3Nc=
X-Google-Smtp-Source: ABdhPJxdi1Sr0McbvvV8tl9DN5sHqNT7r8eLLtsgY9qZMSgz7xaiT6KSI9r8aTgR1lq6vLkRR7bdJQpbqHXUxgsBHn8=
X-Received: by 2002:a05:6830:18f6:: with SMTP id
 d22mr24596505otf.243.1594040694747; 
 Mon, 06 Jul 2020 06:04:54 -0700 (PDT)
MIME-Version: 1.0
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 <CAFhKne_ZVWVhZX5hNEbeGBfU6BMRN9JKQeTsVYOcMmEH1cd3xg@mail.gmail.com>
 <87h7ul15le.fsf@notabene.neil.brown.name> <20200706072221.GA1947246@kroah.com>
 <CAMuHMdWj2d5GF1ZkuhzQxg9teA51zjF0oQQPWcphzK=kJ6-x9Q@mail.gmail.com>
 <CAFhKne9vswg3Q4mTOz4WP6QWJ8tDH+SNx1Pu7LotLagoNURKgw@mail.gmail.com>
 <d6f56f5f5e0790ee9c7579eb05c7d92e071ee15a.camel@perches.com>
In-Reply-To: <d6f56f5f5e0790ee9c7579eb05c7d92e071ee15a.camel@perches.com>
From: Matthew Wilcox <willy6545@gmail.com>
Date: Mon, 6 Jul 2020 09:04:43 -0400
Message-ID: <CAFhKne_p_rKN4adhsuyUyBfrS0YwCtoNFNn-x4aFajPmnkR6iQ@mail.gmail.com>
To: Joe Perches <joe@perches.com>
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

On Mon, Jul 6, 2020 at 8:59 AM Joe Perches <joe@perches.com> wrote:
> On Mon, 2020-07-06 at 08:51 -0400, Matthew Wilcox wrote:
> > In terms of number of lines of code using the word, it's only seventh
> > in drivers/:
> >
> > $ for i in drivers/*; do c=$(find $i -type f |xargs grep slave |wc
> > -l); echo "$c $i"; done |sort -rn |head
> > 5218 drivers/net
> > 1341 drivers/dma
> > 988 drivers/i2c
> > 695 drivers/gpu
> > 666 drivers/soundwire
> > 665 drivers/spi
> > 559 drivers/w1
> > 461 drivers/infiniband
> > 389 drivers/media
> > 301 drivers/scsi
>
> I get rather different and much lower numbers
>
> $ git grep -i -w slave drivers | \
>   cut -f1,2 -d/ | uniq -c | sort -rn | head -20 | cat -n

That's because you're using grep -w which excludes, for example,
slave_configure in drivers/scsi.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
