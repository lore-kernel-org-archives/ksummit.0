Return-Path: <SRS0=mR8n=46=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C19FC2BB1D
	for <ksummit-discuss@archiver.kernel.org>; Fri, 13 Mar 2020 10:17:50 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7BEE620746
	for <ksummit-discuss@archiver.kernel.org>; Fri, 13 Mar 2020 10:17:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7BEE620746
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6834787A34;
	Fri, 13 Mar 2020 10:16:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m3uLqnA6IHZJ; Fri, 13 Mar 2020 10:16:51 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id A360487874;
	Fri, 13 Mar 2020 10:16:51 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 79E9AC18D3;
	Fri, 13 Mar 2020 10:16:51 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B3178C0177;
 Fri, 13 Mar 2020 10:16:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9B6BA88A44;
 Fri, 13 Mar 2020 10:16:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vh-cotbsipXz; Fri, 13 Mar 2020 10:16:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8F6B688A3F;
 Fri, 13 Mar 2020 10:16:48 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id i12so4232322otp.4;
 Fri, 13 Mar 2020 03:16:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Jua92NQloJZLKybkpufWAYb9BLz9N/qiUngHkqkKW74=;
 b=hF3nTaCmCF3/mxS9BlZQo/gLTtYrPsPzl1K/Tk6nayZUqZma6UA4mtnGebv7nHwfyU
 vig/+xJEYIHsd2H+fUyEZI/Qa7lDJVipSgds4cNB9QziYGHPblr3XRDfOW4cOp8R6D1x
 KdPTcqRkNhNJj2LtueiKqE1mK75e40MUNyV+7+aclvh8Xw7VNmE2aBvKWKJyszdJ8s3G
 wiNZFG9kOqk7vnUjqZ5QwLaeExZvy9/6UNh1y8H1+fNjR1/Mh09lh4tRJtTIzPisnFW2
 HP/XDXThCxZ/1E08Wo54zUVu9vybryJ6uz2+ZryWRXTATMODSKfhwEv6maHp55hZjyB1
 7pTA==
X-Gm-Message-State: ANhLgQ29R6W7YX/vq+Gc73dE5KjgNNKtzWJ+YFY0tJJoGMOg05g5vtnD
 yZFM6CPt+NWKuTae6fUwXSOQBO+hxRs6CvrxHCI=
X-Google-Smtp-Source: ADFU+vtPD5EjMs8XWjMLmd1y66lVZWhosnYNobYGDQsn++67Rqv2tj1vpKQAPtjj2I9seOiikClZpaGzcgYTR/O4YBQ=
X-Received: by 2002:a9d:b89:: with SMTP id 9mr10423838oth.297.1584094607744;
 Fri, 13 Mar 2020 03:16:47 -0700 (PDT)
MIME-Version: 1.0
References: <6d6dd6fa-880f-01fe-6177-281572aed703@labbott.name>
 <20200312003436.GF1639@pendragon.ideasonboard.com>
 <MWHPR13MB0895E133EC528ECF50A22100FDFD0@MWHPR13MB0895.namprd13.prod.outlook.com>
 <20200313031947.GC225435@mit.edu> <87d09gljhj.fsf@intel.com>
 <20200313093548.GA2089143@kroah.com>
 <24c64c56-947b-4267-33b8-49a22f719c81@suse.cz>
 <20200313100755.GA2161605@kroah.com>
In-Reply-To: <20200313100755.GA2161605@kroah.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 13 Mar 2020 11:16:36 +0100
Message-ID: <CAMuHMdVSxS1R2osYJh29aKGaqMw3NkTRgqgRWuhu4euygAAXVg@mail.gmail.com>
To: Greg KH <greg@kroah.com>
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

Hi Greg,

On Fri, Mar 13, 2020 at 11:08 AM Greg KH <greg@kroah.com> wrote:
> On Fri, Mar 13, 2020 at 10:41:57AM +0100, Vlastimil Babka wrote:
> > On 3/13/20 10:35 AM, Greg KH wrote:
> > >> Not that I'm saying there's an easy solution, but obviously kernel.org
> > >> account is not as problem free as you might think.
> > >
> > > We are not saying it is "problem free", but what really is the problem
> > > with it?
> >
> > IIUC there is no problem for its current use, but it would be rather restrictive
> > if it was used as the only criterion for being able to vote for TAB remotely.
>
> Given that before now, there has not be any way to vote for the TAB
> remotely, it's less restrictive :)

But people without kernel.org accounts could still vote in person before,
right?

Obviously the next step beyond "has a kernel.org account" is "is listed
in MAINTAINERS".  All of these can be assumed to be real humans, too.
However, that's still more restrictive than before, as it rules out people
who are not maintainers.

So next step would be developers/maintainers with an SoB.  I think it's still
safe to assume they are real humans, too.
Add a minimum number of commits[*] to raise the bar a little bit, and avoid
the whitespace-fixers who just want to vote.

[*] And e.g. count commits more than one year ago half, more than N years
    ago 1/2^N.  Perhaps add another penalty for staging cleanups ;-)

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
