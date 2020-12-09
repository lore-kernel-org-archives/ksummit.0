Return-Path: <SRS0=vIOH=FN=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=3.0 tests=BAYES_00,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3146FC4361B
	for <ksummit-discuss@archiver.kernel.org>; Wed,  9 Dec 2020 09:18:48 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 84508238A0
	for <ksummit-discuss@archiver.kernel.org>; Wed,  9 Dec 2020 09:18:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 84508238A0
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 04341867AA;
	Wed,  9 Dec 2020 09:18:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XaOVJXz5XaFV; Wed,  9 Dec 2020 09:18:43 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8B8DF8671F;
	Wed,  9 Dec 2020 09:18:43 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4A471C0893;
	Wed,  9 Dec 2020 09:18:43 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0BC8CC013B
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  9 Dec 2020 09:18:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0708086099
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  9 Dec 2020 09:18:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vqEqUXrzknHM
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  9 Dec 2020 09:18:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 394FB86088
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  9 Dec 2020 09:18:41 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id b62so683010otc.5
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 09 Dec 2020 01:18:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=a4nn+85WfZz1IIZTvFFrEl51XM3m+HvNSslhv6pMm04=;
 b=r5R4UnSvWuPS2a4URd9H5PzhmZR93I28Oer4NRpMct5Eeq6osKTPWAPl9PsuQvt8H0
 0+Tvz4IIgda0bqv+Vma+JKKGE0jGkpbaSXa1KwkPpfqRIJLXMngzjm66dLQvcteS8Wqq
 CqS/T5obOCVOuHSsyGGEG+CiNk+6hjbZHu87WS6qBWqF1VxiBLe+OA4WkokQOMD1rI/R
 c9Pluyq+YvrwNNTx2g2vCEMzge5W4F9oiMaEeaxh5ADzDdI48lYwzlDjEHXNp6i8wOiG
 hKzUWaPnLk5sffLvtrDpqcdIneKjTfKDNnrOsiIyaJdQdKBAQESHK9ATIuO9rWjmoOSR
 CCJA==
X-Gm-Message-State: AOAM531nR9J+ZDqhp2tAY62l0OHpqg/lUvXYWJBfJOgFpApCo/zcbJlG
 YCEanK6oQNIVBIn3w/HbQLAf3+DBDQU8uhP8lyA=
X-Google-Smtp-Source: ABdhPJyaQvoIu2F0E+occhOnj1kS4x9aI1lKpD2DaqLRfZGiwoY1S4sSlQagNnAEnx7OXKB6oGOa0N6DV+/mxrLEIXQ=
X-Received: by 2002:a9d:2203:: with SMTP id o3mr935809ota.107.1607505520523;
 Wed, 09 Dec 2020 01:18:40 -0800 (PST)
MIME-Version: 1.0
References: <ea32eb02-5e44-0469-772b-34b5cb882543@suse.cz>
 <CAPcyv4jDHMt4PpR2Htvw27rn5i5sCkwXtoZH-rFbtG8Hj7x1sg@mail.gmail.com>
 <20201203093458.GA16543@unreal>
 <CAMuHMdVcPELarE=eJEc-=AdyfmhhZQsYtUggWCaetuEdk=VpMQ@mail.gmail.com>
 <20201203104047.GD16543@unreal> <X8ku1MmZeeIaMRF4@kroah.com>
 <202012081619.6593C87D3@keescook>
 <13d04c4cc769ebd1dd58470f4d22ada5c9cd28e7.camel@perches.com>
 <20201209075849.GD2767@kadam> <a6dfe760-c3b4-8bc4-3c7f-cc1208b626fa@suse.cz>
In-Reply-To: <a6dfe760-c3b4-8bc4-3c7f-cc1208b626fa@suse.cz>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 9 Dec 2020 10:18:29 +0100
Message-ID: <CAMuHMdWtJnkK5LP+_YLWvZ5knnd+i72h60PA+Z-EqjNYdEN3SA@mail.gmail.com>
To: Vlastimil Babka <vbabka@suse.cz>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
 <ksummit-discuss@lists.linuxfoundation.org>,
 Greg KH <gregkh@linuxfoundation.org>, LKML <linux-kernel@vger.kernel.org>,
 Colin Ian King <colin.king@canonical.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] crediting bug reports and fixes folded into
 original patch
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

On Wed, Dec 9, 2020 at 9:45 AM Vlastimil Babka <vbabka@suse.cz> wrote:
> On 12/9/20 8:58 AM, Dan Carpenter wrote:
> > On Tue, Dec 08, 2020 at 09:01:49PM -0800, Joe Perches wrote:
> >> On Tue, 2020-12-08 at 16:34 -0800, Kees Cook wrote:
> >>
> >> > If not "Adjusted-by", what about "Tweaked-by", "Helped-by",
> >> > "Corrected-by"?
> >>
> >> Improved-by: / Enhanced-by: / Revisions-by:
> >>
> >
> > I don't think we should give any credit for improvements or enhancements,
>
> Well, some are actually useful and not about reviewer's preferred style :) But
> if an author redoes the patch as a result, it's their choice to mention useful
> improvements in the next version's change log.
>
> > only for fixes.  Complaining about style is its own reward.
>
> Right, let's focus on fixes and reports of bugs, that would have resulted in a
> standalone commit, but don't.
>
> > Having to redo a patch is already a huge headache.  Normally, I already
> > considered the reviewer's prefered style and decided I didn't like it.
> > Then to make me redo the patch in an ugly style and say thankyou on
> > top of that???  Forget about it.  Plus, as a reviewer I hate reviewing
> > patches over and over.
> >
> > I've argued for years that we should have a Fixes-from: tag.  The zero
>
> Standardizing the Fixes-from: tag (or any better name) would be a forward
> progress, yes.
>
> > day bot is already encouraging people to add Reported-by tags for this
> > and a lot of people do.
>
> "Reported-by:" becomes ambiguous once the bugfix for the reported issue in the
> patch is folded, as it's no longer clear whether the bot reported the original
> issue the patch is fixing, or a bug in the fix. So we should have a different
> variant. "Fixes-reported-by:" so it has the same prefix?

Taken-into-account-comments-from:

Any terse English word for that?

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
