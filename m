Return-Path: <SRS0=CRNu=XI=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 611B8C4CEC8
	for <ksummit-discuss@archiver.kernel.org>; Fri, 13 Sep 2019 17:58:09 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3E3022084F
	for <ksummit-discuss@archiver.kernel.org>; Fri, 13 Sep 2019 17:58:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3E3022084F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 975D4E1C;
	Fri, 13 Sep 2019 17:58:08 +0000 (UTC)
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5F1A0D85
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Sep 2019 17:58:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
	[209.85.210.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2A7957D2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Sep 2019 17:58:05 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id g13so315640otp.8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Sep 2019 10:58:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Fc8ArwY2yHMv3VLGfSx43u0p3YGfGGpe4m6tepZiINk=;
	b=tE+yHhjRfOxuzUQz7bpe+hrwWuocHfmLdOdXdOwol81ELJz7ypwgNT6tEKY4wBWpIQ
	lMV9abxBnsYnCQWv7ih0ttGP20z5pK41mn6p9TYvx19gL7Hxh7+8J6IVCZwNAB6gQIHd
	gGUCBLtZ86aECfMvSQmDSqCreVV0/mdLzr2s2q+dLOBxb/exIYmUkE75/N4hciMBaSy9
	lc0SXTDirmOOgjqRCeY6HcyadZsPi7vKhPENO4XOde5YQ/8GKA9ybN/wr4vv5MiQxAz4
	G8xdzaOhFDeGoSBu2ZYsKhNGI4BMOf0nSX4inNTOOQd1e0bSJnKH9QjqxiAL+8+LKnMY
	zA3g==
X-Gm-Message-State: APjAAAXBY/ffWBwTdvO585xQLLfgji1nDfDub7XTlgp6pPZ0NOYY5gCb
	4r6Mz00QzfjPBpG7W0W7LGtGnIsyAByxuwLuc4Y=
X-Google-Smtp-Source: APXvYqzyImSnQNT/1nq0D+U2KoEgWBUwap3ooX9gDEXxtzeKquL0nJSL5mI7pRuhD9SS70qXmVNHPZNrhoiX0dxj2SU=
X-Received: by 2002:a05:6830:1196:: with SMTP id
	u22mr1341707otq.39.1568397484322; 
	Fri, 13 Sep 2019 10:58:04 -0700 (PDT)
MIME-Version: 1.0
References: <156821692280.2951081.18036584954940423225.stgit@dwillia2-desk3.amr.corp.intel.com>
	<156821693963.2951081.11214256396118531359.stgit@dwillia2-desk3.amr.corp.intel.com>
	<20190911184332.GL20699@kadam>
	<9132e214-9b57-07dc-7ee2-f6bc52e960c5@kernel.dk>
	<20190913010937.7fc20d93@lwn.net> <20190913114849.GP20699@kadam>
	<b579153b-3f6d-722c-aea8-abc0d026fa0d@infradead.org>
In-Reply-To: <b579153b-3f6d-722c-aea8-abc0d026fa0d@infradead.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 13 Sep 2019 19:57:52 +0200
Message-ID: <CAMuHMdWZyJ-z6dLFMOdCLotP8J114hGX9C7+bGgxk9ReQ-Si=w@mail.gmail.com>
To: Randy Dunlap <rdunlap@infradead.org>
Cc: Dave Jiang <dave.jiang@intel.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	"linux-nvdimm@lists.01.org" <linux-nvdimm@lists.01.org>,
	Vishal Verma <vishal.l.verma@intel.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	bpf <bpf@vger.kernel.org>, Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [PATCH v2 3/3] libnvdimm,
 MAINTAINERS: Maintainer Entry Profile
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

Hi Randy,

On Fri, Sep 13, 2019 at 5:00 PM Randy Dunlap <rdunlap@infradead.org> wrote:
> On 9/13/19 4:48 AM, Dan Carpenter wrote:
> >> So I'm expecting to take this kind of stuff into Documentation/.  My own
> >> personal hope is that it can maybe serve to shame some of these "local
> >> quirks" out of existence.  The evidence from this brief discussion suggests
> >> that this might indeed happen.
> >
> > I don't think it's shaming, I think it's validating.  Everyone just
> > insists that since it's written in the Book of Rules then it's our fault
> > for not reading it.  It's like those EULA things where there is more
> > text than anyone can physically read in a life time.
>
> Yes, agreed.
>
> > And the documentation doesn't help.  For example, I knew people's rules
> > about capitalizing the subject but I'd just forget.  I say that if you
> > can't be bothered to add it to checkpatch then it means you don't really
> > care that strongly.
>
> If a subsystem requires a certain spelling/capitalization in patch email
> subjects, it should be added to MAINTAINERS IMO.  E.g.,
> E:      NuBus

Oh, I understood the question differently.  I thought it was about
"sub: system: Fix foo" vs. "sub: system: fix foo".

For simple and trivial things, I tend to make changes while applying, as that's
usually less work than complaining, and verifying that it's been fixed in the
next (if any) version n days/weeks/months later.

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
