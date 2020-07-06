Return-Path: <SRS0=iFvq=AR=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B36D2C433E0
	for <ksummit-discuss@archiver.kernel.org>; Mon,  6 Jul 2020 07:54:12 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 67EB12073E
	for <ksummit-discuss@archiver.kernel.org>; Mon,  6 Jul 2020 07:54:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 67EB12073E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3B34C87EB0;
	Mon,  6 Jul 2020 07:54:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QCmAkKwVQEa4; Mon,  6 Jul 2020 07:54:11 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0194087E9C;
	Mon,  6 Jul 2020 07:54:10 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C1693C0888;
	Mon,  6 Jul 2020 07:54:10 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BAF66C016F;
 Mon,  6 Jul 2020 07:54:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A28C288442;
 Mon,  6 Jul 2020 07:54:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cdBG7j7QTtcw; Mon,  6 Jul 2020 07:54:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9B7DA8843B;
 Mon,  6 Jul 2020 07:54:08 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id 95so20359919otw.10;
 Mon, 06 Jul 2020 00:54:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4LD+h1ou7CMJWkRCFX30pCtLbgBWxfUAHgmEH8FmfFc=;
 b=Pr7Dir41/I5XIS1d1VWqKzrL/qt7vFew+rw4nPw7v9cR0S2on9hOZ7i+Dwh+QkXSgr
 ftATcOMxn5tVBuslr4aAMlneHWFcaQEe61R6FfW4OmZVfM4buOcYoDH502R9/xjp4MB+
 Ure27/kWN++TtjrywoPChVsTnjMf8OFi9KRYpsiDMXNUqVnuPREiRU4mHXC/VX2HGnco
 bMfdi+rGGi3LGFy3rXc4c3C8EoQJHNH9gaY2sPekfAZ47Zti+NwCeF9Vzr8Yz4GP/nS2
 Z1X43Ca+yzDLsKElIAHzo3/R/kpmeeddgc9aZQH/cu3AHeOttD6cOL5LJv5BBDqrdMCw
 BG1g==
X-Gm-Message-State: AOAM531zUiEbLDntOY6LfgN0Zs9ncuqC3r5tBc6bZGHr6EeIm/8SpHsG
 SAlsdrsB33sMCPTwFkHqPNeuI+jefSo0KIWWRtY=
X-Google-Smtp-Source: ABdhPJyDOZ21sDaaK43TlEvNWaB21raXUjSfvE1nLN0SOasbrMzZp2l0MTob81KSQ7yvXH6iW8pjFalfbAoIiPAkjrI=
X-Received: by 2002:a05:6830:1451:: with SMTP id
 w17mr28084181otp.250.1594022047849; 
 Mon, 06 Jul 2020 00:54:07 -0700 (PDT)
MIME-Version: 1.0
References: <159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com>
 <CAFhKne_ZVWVhZX5hNEbeGBfU6BMRN9JKQeTsVYOcMmEH1cd3xg@mail.gmail.com>
 <87h7ul15le.fsf@notabene.neil.brown.name> <20200706072221.GA1947246@kroah.com>
In-Reply-To: <20200706072221.GA1947246@kroah.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 6 Jul 2020 09:53:55 +0200
Message-ID: <CAMuHMdWj2d5GF1ZkuhzQxg9teA51zjF0oQQPWcphzK=kJ6-x9Q@mail.gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Chris Mason <clm@fb.clm>, tech-board-discuss@lists.linuxfoundation.org,
 ksummit <ksummit-discuss@lists.linuxfoundation.org>,
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

On Mon, Jul 6, 2020 at 9:22 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
> On Mon, Jul 06, 2020 at 05:10:37PM +1000, NeilBrown wrote:
> > On Sat, Jul 04 2020, Matthew Wilcox wrote:
> > > Another suggestion for "slave" replacement should be "device". This is in
> > > the context of the w1 bus which is by far the largest user of the
> > > master/slave terminology in the kernel.

W1 the largest? Really?

> >
> > Ugh.  Please, no.  "device" doesn't mean anything, in that you can use
> > it to refer to any thing.  (i.e. it is almost semantically equivalent to
> > "thing").
>
> Context is everything, you can have a "controller" and a "device" that
> the controller controls.  These are common terms in many specs today,

A "controller" is also any block of electronics that performs a function
involving a state machine.
So for SPI and I2C, we'll have Linux drivers talking to an "SPI controller
controller", an "SPI device controller", an "I2C controller controller",
and an "I2C device controller".
For W1, Linux is still limited to supporting "W1 controller controllers",
but supporting "W1 device controllers" might be just beyond the horizon...

> look at the USB spec for an example of these terms being used in this
> way for many decades.

And when does the "gadget" enter the show? ;-)

P.S. In Dutch, we just assimilate all English technical words, and
     they'll only have that specific meaning.  E.g. if someone
     talks about the "cloud", even lay people know they're not talking
     about those things that may ruin your holiday outside.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
