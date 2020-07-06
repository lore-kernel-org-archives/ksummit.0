Return-Path: <SRS0=iFvq=AR=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=3.0 tests=DKIM_ADSP_CUSTOM_MED,
	DKIM_INVALID,DKIM_SIGNED,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 639FBC433DF
	for <ksummit-discuss@archiver.kernel.org>; Mon,  6 Jul 2020 12:51:18 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2948720720
	for <ksummit-discuss@archiver.kernel.org>; Mon,  6 Jul 2020 12:51:18 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="K/TCBF0a"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2948720720
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EB527888CE;
	Mon,  6 Jul 2020 12:51:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qUJZL-oxzT-z; Mon,  6 Jul 2020 12:51:17 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 170E28878C;
	Mon,  6 Jul 2020 12:51:17 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EE1CBC0891;
	Mon,  6 Jul 2020 12:51:16 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D0819C016F;
 Mon,  6 Jul 2020 12:51:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BE4658878C;
 Mon,  6 Jul 2020 12:51:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7poJizGgJlSa; Mon,  6 Jul 2020 12:51:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1B8B588763;
 Mon,  6 Jul 2020 12:51:15 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id t4so14062166oij.9;
 Mon, 06 Jul 2020 05:51:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6K/gQHllEjKG6V7YEHC6mXh/d0A0514HaiYTu/7w0KE=;
 b=K/TCBF0arGBnub2yuM3Ys+hpRCXziFaidd7zsSp0WfPRRm5JlDOr69c3fBFCg5UIag
 wTtJovMb5C34s9ydSrtWByPa7OEyJjEegho979Fh3aHsI1Mlo+GInoBSmQwLYp7wioKP
 k4nd3QBJKNtxBZRp7fOUa7db9ylyf785/kjfROQUsra4S0o5e9gzyF47ChDRGtDYbxcz
 xTPAZ4W2+lmxklAYq6/nGvfZttv807MlTfemY76Qr/K9e7Pd503oOVddnMSOZ0TI+AqO
 9RA/nQ9uBGeeXxYxveVhEK40dDHAyicI3EZitQ4KEkPb9rrbx20Oz5MU3cxyAbM9xulV
 ZBxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6K/gQHllEjKG6V7YEHC6mXh/d0A0514HaiYTu/7w0KE=;
 b=bE+BH1Jip+1seeHUiPt2ru0NWIq4EAFLg9AS3h80vQux4Owfga8E+8B2L7SBPUgafF
 BL+GdKMmUQbOfiEFl67eRh6K98V4HHwllvYSEgk/4ofjMtpHjCNjOivW7XPMPVKx+vM1
 as0wyS+kG+U0gFJ1fAk0wgdx5mMrrKl4xCx74VoER33kH7LkLmFIqhsreS407evfYGUH
 swENHnuQy6H4xgGP7fcq9c8LU6QqczimaSqcNcfW24kMgkj611BPrvSyz+znMVmIs4uo
 uaMNeJule5ORoVyLSfvb5Gzp8QNMRwnWdwLmk4zLYGkY9RV7X/t9xA/yVDjPCcpr0Ztv
 MzQw==
X-Gm-Message-State: AOAM530LQZjqvW9hloxgpzu058YXoDJ4YTA9e4GxWQOpf+IvZL9/+V0W
 2qvcWkw355jyAa5ZOtIyJpPrUhTwiubSmhEHLN0=
X-Google-Smtp-Source: ABdhPJzypBqvNsr8B06CaWYR9FFAwMjmPnbqqe1yxbcFNniqNgggV9UZ+VA+lxsoXy6uTDCrXRDhksKauqBsaNFyPO0=
X-Received: by 2002:aca:e0d6:: with SMTP id
 x205mr25402446oig.176.1594039874235; 
 Mon, 06 Jul 2020 05:51:14 -0700 (PDT)
MIME-Version: 1.0
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 <CAFhKne_ZVWVhZX5hNEbeGBfU6BMRN9JKQeTsVYOcMmEH1cd3xg@mail.gmail.com>
 <87h7ul15le.fsf@notabene.neil.brown.name> <20200706072221.GA1947246@kroah.com>
 <CAMuHMdWj2d5GF1ZkuhzQxg9teA51zjF0oQQPWcphzK=kJ6-x9Q@mail.gmail.com>
In-Reply-To: <CAMuHMdWj2d5GF1ZkuhzQxg9teA51zjF0oQQPWcphzK=kJ6-x9Q@mail.gmail.com>
From: Matthew Wilcox <willy6545@gmail.com>
Date: Mon, 6 Jul 2020 08:51:03 -0400
Message-ID: <CAFhKne9vswg3Q4mTOz4WP6QWJ8tDH+SNx1Pu7LotLagoNURKgw@mail.gmail.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Chris Mason <clm@fb.clm>,
 ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 tech-board-discuss@lists.linuxfoundation.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
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

On Mon, Jul 6, 2020 at 3:54 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> On Mon, Jul 6, 2020 at 9:22 AM Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> > On Mon, Jul 06, 2020 at 05:10:37PM +1000, NeilBrown wrote:
> > > On Sat, Jul 04 2020, Matthew Wilcox wrote:
> > > > Another suggestion for "slave" replacement should be "device". This is in
> > > > the context of the w1 bus which is by far the largest user of the
> > > > master/slave terminology in the kernel.
>
> W1 the largest? Really?

I should have said "most obnoxious".  They managed to put that terminology in
filenames, eg drivers/w1/slaves and Documentation/w1/slaves

In terms of number of lines of code using the word, it's only seventh
in drivers/:

$ for i in drivers/*; do c=$(find $i -type f |xargs grep slave |wc
-l); echo "$c $i"; done |sort -rn |head
5218 drivers/net
1341 drivers/dma
988 drivers/i2c
695 drivers/gpu
666 drivers/soundwire
665 drivers/spi
559 drivers/w1
461 drivers/infiniband
389 drivers/media
301 drivers/scsi
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
