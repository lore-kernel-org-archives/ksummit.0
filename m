Return-Path: <SRS0=WLkl=XV=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 584A2C47E48
	for <ksummit-discuss@archiver.kernel.org>; Thu, 26 Sep 2019 10:25:55 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 34586207FF
	for <ksummit-discuss@archiver.kernel.org>; Thu, 26 Sep 2019 10:25:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 34586207FF
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id DC6D81239;
	Thu, 26 Sep 2019 10:25:54 +0000 (UTC)
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 20E1A122F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 26 Sep 2019 10:25:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
	[209.85.210.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 85BBD87D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 26 Sep 2019 10:25:53 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id s22so1517220otr.6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 26 Sep 2019 03:25:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=9205qtO5rgO+Mc9mMWRmhXHMcT/ZxeEQONhYJXwNaFs=;
	b=kpQrLjTxqd536cIxyK7e6Yfw3gM+UZ+OlSpTSm4GQBajuaEYrit12Icx6/hiFAw17x
	qFYXHed54swIQ72why3l3+5NCRRG+qJySYlZVfwliXMSmwjKXZUSPJYf21KsXvYHuiod
	7Qfi7mBt44L+LeVmVKWpF9bVIKShD1fgQ6sNHRs4ONson1/KOZG1mq6RzlDw2Vrf10yO
	zIeg880X7Hq+btOfRaUcB29V3XGQ2OJJQNoaZI2F4sg75+JF57MsKv25hZHNKuiTD+ZK
	RWQ9ucyU2IkDMlDnCILTgnnIP7LFzu6ZIoL/uWMLK8PJalpmB8MilNRbLsaB/VdSih2E
	+0HQ==
X-Gm-Message-State: APjAAAUC5mjbMuiTi8NZYUb7oHfQjE901nJqHTtgP6Qr60W+hUSqOuZF
	GNsjdCziTAx3anCUgcYHVPbu6h8IMEa/hAFbXQU=
X-Google-Smtp-Source: APXvYqwHxy2CYz+AYJ5n9ZsnqqBlqfBnV5GpDthBdqi4SizNdhD/pAKBLd8d7hDV5Sa3/oi6FfEcqewcyRUD0Cc8bps=
X-Received: by 2002:a9d:193:: with SMTP id e19mr1917568ote.107.1569493552703; 
	Thu, 26 Sep 2019 03:25:52 -0700 (PDT)
MIME-Version: 1.0
References: <156821693963.2951081.11214256396118531359.stgit@dwillia2-desk3.amr.corp.intel.com>
	<434c05bddd2b364e607e565227487910a8dd9793.1568391461.git.mchehab+samsung@kernel.org>
	<20190918123620.GA6306@pendragon.ideasonboard.com>
	<20190918105728.24e7eb48@coco.lan> <20190919065447.GF2959@kadam>
	<5d71311232fd6d4aa0fab038512eab933c13a722.camel@perches.com>
In-Reply-To: <5d71311232fd6d4aa0fab038512eab933c13a722.camel@perches.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 26 Sep 2019 12:25:41 +0200
Message-ID: <CAMuHMdUcTKFmfFm_S+PXWVeS=pnFag832_W7asyvZ+TxP1yGAg@mail.gmail.com>
To: Joe Perches <joe@perches.com>
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
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

Hi Joe,

On Wed, Sep 25, 2019 at 7:32 PM Joe Perches <joe@perches.com> wrote:
> On Thu, 2019-09-19 at 09:56 +0300, Dan Carpenter wrote:
> > When I sent a patch, I use get_maintainer.pl then I add whoever the
> > wrote the commit from the Fixes tag.  Then I remove Colin King and Kees
> > Cook from the CC list because they worked all over the tree and I know
> > them.  I also normally remove LKML if there is another mailing list but
> > at least one subsystem uses LKML for patchwork so this isn't safe.
> >
> > So the safest instructions are "Use get_matainer.pl and add the person
> > who wrote the commit in the Fixes tag".
>
> Maybe add this:
>
> Add the signers of any commit referenced in a "Fixes: <commit>" line
> of a patch description.
>
> ---
>  scripts/get_maintainer.pl | 38 +++++++++++++++++++++++++++++++++++++-
>  1 file changed, 37 insertions(+), 1 deletion(-)

Thanks! I gave it a quick try for my first fix after returning from ER, and it
did the right thing.

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
