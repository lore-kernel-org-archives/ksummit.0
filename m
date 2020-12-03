Return-Path: <SRS0=QNS2=FH=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD39DC63777
	for <ksummit-discuss@archiver.kernel.org>; Thu,  3 Dec 2020 10:41:00 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 32DE422268
	for <ksummit-discuss@archiver.kernel.org>; Thu,  3 Dec 2020 10:41:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 32DE422268
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B9C898794F;
	Thu,  3 Dec 2020 10:40:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0drvJnQwttXZ; Thu,  3 Dec 2020 10:40:55 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 586DA87597;
	Thu,  3 Dec 2020 10:40:55 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1C43CC0FA8;
	Thu,  3 Dec 2020 10:40:55 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id EDDB7C0FA7
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  3 Dec 2020 10:40:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D3B34879A3
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  3 Dec 2020 10:40:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fJDOLHh-An6w
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  3 Dec 2020 10:40:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1B869876EB
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Thu,  3 Dec 2020 10:40:53 +0000 (UTC)
Date: Thu, 3 Dec 2020 12:40:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1606992052;
 bh=dD1tNfbjy4g7n5/kwWrtw2G3dq9qRPl92SifAh9QCfs=;
 h=From:To:Cc:Subject:References:In-Reply-To:From;
 b=E5dDR8xOCaYy4R6xs3EFeMHJBUtGRGTOCDCYgSGR7zJz20/fUXrV9h7EBQiD1Hqn2
 AKb6Ftvub1dVIEx+Ijsei3q+M52I4JVgMNj2XFvFRaBtqNjOxuM3fTWRIC37Nn0TwS
 Ocw/tN8Olc+TZmdc+tR636MJTzmzRHxBWtzTGbEjdNrbaScIxNY+gbMZ51Ikq3MKVc
 s6KEoKn+P9hlDOj/EOxhW64+B7zpBjO95UHH607GHnt0Ia1C8McZUEhxWRFvKIKSj3
 ZsDmP0u1P0LvVkWzBWrrWsikwvgg2kGbx0jschderVlJBAYAg/YvmuyA4BOWHkkYTg
 ZK/KyF3cSfpJA==
From: Leon Romanovsky <leon@kernel.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20201203104047.GD16543@unreal>
References: <ea32eb02-5e44-0469-772b-34b5cb882543@suse.cz>
 <CAPcyv4jDHMt4PpR2Htvw27rn5i5sCkwXtoZH-rFbtG8Hj7x1sg@mail.gmail.com>
 <20201203093458.GA16543@unreal>
 <CAMuHMdVcPELarE=eJEc-=AdyfmhhZQsYtUggWCaetuEdk=VpMQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdVcPELarE=eJEc-=AdyfmhhZQsYtUggWCaetuEdk=VpMQ@mail.gmail.com>
Cc: Vlastimil Babka <vbabka@suse.cz>, LKML <linux-kernel@vger.kernel.org>,
 "ksummit-discuss@lists.linuxfoundation.org"
 <ksummit-discuss@lists.linuxfoundation.org>
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

On Thu, Dec 03, 2020 at 10:36:56AM +0100, Geert Uytterhoeven wrote:
> On Thu, Dec 3, 2020 at 10:35 AM Leon Romanovsky <leon@kernel.org> wrote:
> > On Wed, Dec 02, 2020 at 08:02:27PM -0800, Dan Williams wrote:
> > > On Wed, Dec 2, 2020 at 3:44 PM Vlastimil Babka <vbabka@suse.cz> wrote:
> > > > there was a bit of debate on Twitter about this, so I thought I would bring it
> > > > here. Imagine a scenario where patch sits as a commit in -next and there's a bug
> > > > report or fix, possibly by a bot or with some static analysis. The maintainer
> > > > decides to fold it into the original patch, which makes sense for e.g.
> > > > bisectability. But there seem to be no clear rules about attribution in this
> > > > case, which looks like there should be, probably in
> > > > Documentation/maintainer/modifying-patches.rst
> > > >
> > > > The original bug fix might include a From: $author, a Reported-by: (e.g.
> > > > syzbot), Fixes: $next-commit, some tag such as Addresses-Coverity: to credit the
> > > > static analysis tool, and an SoB. After folding, all that's left might be a line
> > > > as "include fix from $author" in the SoB area. This is a loss of
> > > > metadata/attribution just due to folding, and might make contributors unhappy.
> > > > Had they sent the fix after the original commit was mainline and immutable, all
> > > > the info above would "survive" in the form of new commit.
> > > >
> > > > So I think we could decide what the proper format would be, and document it
> > > > properly. I personally wouldn't mind just copy/pasting the whole commit message
> > > > of the fix (with just a short issue description, no need to include stacktraces
> > > > etc if the fix is folded), we could just standardize where, and how to delimit
> > > > it from the main commit message. If it's a report (person or bot) of a bug that
> > > > the main author then fixed, preserve the Reported-by in the same way (making
> > > > clear it's not a Reported-By for the "main thing" addressed by the commit).
> > > >
> > > > In the debate one less verbose alternatve proposed was a SoB with comment
> > > > describing it's for a fix and not whole patch, as some see SoB as the main mark
> > > > of contribution, that can be easily found and counted etc. I'm not so sure about
> > > > it myself, as AFAIK SoB is mainly a DCO thing, and for a maintainer it means
> > > > something else ("passed through my tree") than for a patch author. And this
> > > > approach would still lose the other tags.
> > > >
> > > > Thoughts?
> > >
> > > How about a convention to add a Reported-by: and a Link: to the
> > > incremental fixup discussion? It's just polite to credit helpful
> > > feedback, not sure it needs a more formal process.
> >
> > Maybe "Fixup-Reported-by:" and "Fixup-Link:"?
>
> And "Earlier-Review-Comments-Provided-by:"?
>
> How far do we want to go?

I don't want to overload existing meaning of "Reported-by:" and "Link:",
so anything else is fine by me.

I imagine that all those who puts their own Reviewed-by, Signed-off-by
and Tested-by in the same patch will be happy to use something like you
are proposing - "Co-developed-Signed-Reviewed-Tested-by:" tag.

Thanks

>
> Gr{oetje,eeting}s,
>
>                         Geert
>
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
>
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
