Return-Path: <SRS0=vIOH=FN=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=3.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0D268C433FE
	for <ksummit-discuss@archiver.kernel.org>; Wed,  9 Dec 2020 00:35:02 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8F40A23B28
	for <ksummit-discuss@archiver.kernel.org>; Wed,  9 Dec 2020 00:35:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8F40A23B28
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0018020395;
	Wed,  9 Dec 2020 00:35:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hyM+F-WZLKyv; Wed,  9 Dec 2020 00:34:59 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id BFEB1204BE;
	Wed,  9 Dec 2020 00:34:58 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 81FF8C0893;
	Wed,  9 Dec 2020 00:34:58 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C0F41C013B
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  9 Dec 2020 00:34:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B1346204BE
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  9 Dec 2020 00:34:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 61JO2DlPmX39
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  9 Dec 2020 00:34:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 2EABE20395
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  9 Dec 2020 00:34:55 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id 131so286204pfb.9
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Tue, 08 Dec 2020 16:34:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=yfjcinr47VTzgisqYPUHQArc78spyM/01XXRMjQOugA=;
 b=bAA6ZiGlqR5mqLExQngiv0Z9725AMEo45CvF872+ngYP0+ky00CN7nWbGywFjU1wDV
 /0FwncwTwocCKdmsYcaZdxLo/itUO4VqNMDlxuz3mpsu2EuaLfYzo472Dh02/U1fJFsU
 H2Et+uR7fwhuQLDnAUgjtu84bFHxh/tF6gXjU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=yfjcinr47VTzgisqYPUHQArc78spyM/01XXRMjQOugA=;
 b=S/gstmIA5qiGee6jLhzP11cpu+LinY1jorSkEghL202Is7tKRYD+eXEf6dso0LZP1r
 qANg55wZuw3f4ZfsL5eOejMWCgvI8/Ev/GTEHUPTHhisKDbtxmnEaOWzaXba78SFJ+69
 TS63WYH5wVNQPcwy9YbwuOx62jyX2rj9olv0LjjXpYPSAIT7B1WBjsebcb/mQx5yvSpx
 k/NkYyNy5tkEUk6JYUOVUNY3Lume7Z+0q3vvBL9BcZ/3zjvFQV+tkk7WHRwIKw8jnGtB
 aKQiqzDOGJ2r82e4zqNDP5RnVDXPCrgflMRUA3jpZqO4hPTp34G2/HgK95ORFcBxHXI5
 v5+g==
X-Gm-Message-State: AOAM532XrgtZA4yxM7ybKhOlUQecRRx+TUUb1wjzPOqsokJ457RuBOM0
 Mvq0uQEgQx/8BJxhUjRCCdRVhg==
X-Google-Smtp-Source: ABdhPJxCR3MpbUaRZDBVwELjYtyV6KCW2nNi6pjTX7Hpqbj6e/WfAqBhQxH9M8bnm997LsZPLO+erw==
X-Received: by 2002:a17:90a:a785:: with SMTP id f5mr72418pjq.219.1607474094711; 
 Tue, 08 Dec 2020 16:34:54 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id o11sm44567pjs.36.2020.12.08.16.34.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Dec 2020 16:34:53 -0800 (PST)
Date: Tue, 8 Dec 2020 16:34:52 -0800
From: Kees Cook <keescook@chromium.org>
To: Greg KH <gregkh@linuxfoundation.org>
Message-ID: <202012081619.6593C87D3@keescook>
References: <ea32eb02-5e44-0469-772b-34b5cb882543@suse.cz>
 <CAPcyv4jDHMt4PpR2Htvw27rn5i5sCkwXtoZH-rFbtG8Hj7x1sg@mail.gmail.com>
 <20201203093458.GA16543@unreal>
 <CAMuHMdVcPELarE=eJEc-=AdyfmhhZQsYtUggWCaetuEdk=VpMQ@mail.gmail.com>
 <20201203104047.GD16543@unreal> <X8ku1MmZeeIaMRF4@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <X8ku1MmZeeIaMRF4@kroah.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
 <ksummit-discuss@lists.linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Dan Carpenter <dan.carpenter@oracle.com>,
 Colin Ian King <colin.king@canonical.com>, Vlastimil Babka <vbabka@suse.cz>
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

On Thu, Dec 03, 2020 at 07:30:44PM +0100, Greg KH wrote:
> On Thu, Dec 03, 2020 at 12:40:47PM +0200, Leon Romanovsky wrote:
> > On Thu, Dec 03, 2020 at 10:36:56AM +0100, Geert Uytterhoeven wrote:
> > > On Thu, Dec 3, 2020 at 10:35 AM Leon Romanovsky <leon@kernel.org> wrote:
> > > > On Wed, Dec 02, 2020 at 08:02:27PM -0800, Dan Williams wrote:
> > > > > On Wed, Dec 2, 2020 at 3:44 PM Vlastimil Babka <vbabka@suse.cz> wrote:
> > > > > > there was a bit of debate on Twitter about this, so I thought I would bring it
> > > > > > here. Imagine a scenario where patch sits as a commit in -next and there's a bug
> > > > > > report or fix, possibly by a bot or with some static analysis. The maintainer
> > > > > > decides to fold it into the original patch, which makes sense for e.g.
> > > > > > bisectability. But there seem to be no clear rules about attribution in this
> > > > > > case, which looks like there should be, probably in
> > > > > > Documentation/maintainer/modifying-patches.rst
> > > > > >
> > > > > > The original bug fix might include a From: $author, a Reported-by: (e.g.
> > > > > > syzbot), Fixes: $next-commit, some tag such as Addresses-Coverity: to credit the
> > > > > > static analysis tool, and an SoB. After folding, all that's left might be a line
> > > > > > as "include fix from $author" in the SoB area. This is a loss of
> > > > > > metadata/attribution just due to folding, and might make contributors unhappy.
> > > > > > Had they sent the fix after the original commit was mainline and immutable, all
> > > > > > the info above would "survive" in the form of new commit.
> > > > > >
> > > > > > So I think we could decide what the proper format would be, and document it
> > > > > > properly. I personally wouldn't mind just copy/pasting the whole commit message
> > > > > > of the fix (with just a short issue description, no need to include stacktraces
> > > > > > etc if the fix is folded), we could just standardize where, and how to delimit
> > > > > > it from the main commit message. If it's a report (person or bot) of a bug that
> > > > > > the main author then fixed, preserve the Reported-by in the same way (making
> > > > > > clear it's not a Reported-By for the "main thing" addressed by the commit).
> > > > > >
> > > > > > In the debate one less verbose alternatve proposed was a SoB with comment
> > > > > > describing it's for a fix and not whole patch, as some see SoB as the main mark
> > > > > > of contribution, that can be easily found and counted etc. I'm not so sure about
> > > > > > it myself, as AFAIK SoB is mainly a DCO thing, and for a maintainer it means
> > > > > > something else ("passed through my tree") than for a patch author. And this
> > > > > > approach would still lose the other tags.
> > > > > >
> > > > > > Thoughts?
> > > > >
> > > > > How about a convention to add a Reported-by: and a Link: to the
> > > > > incremental fixup discussion? It's just polite to credit helpful
> > > > > feedback, not sure it needs a more formal process.

To me, "Reported-by:" is associated with "this person reported the
problem being fixed by this commit". For these kinds of larger commits,
that may not be sensible. I.e. it's some larger feature that the "I
found a problem with this commit" author wasn't even involved in.

I think it's important to capture those in some way, even if they're
not considered "copyrightable" or whatever -- that's not the bar I'm
interested in; I want to make sure people are acknowledged for the time
and effort they spent. And whether we like it or not, these kinds of
tags do that. Besides, such fix authors have expressly asked for this,
which should be sufficient reason enough to find a solution.

> > > > Maybe "Fixup-Reported-by:" and "Fixup-Link:"?
> > >
> > > And "Earlier-Review-Comments-Provided-by:"?
> > >
> > > How far do we want to go?
> > 
> > I don't want to overload existing meaning of "Reported-by:" and "Link:",
> > so anything else is fine by me.

Agreed.

> > I imagine that all those who puts their own Reviewed-by, Signed-off-by
> > and Tested-by in the same patch will be happy to use something like you
> > are proposing - "Co-developed-Signed-Reviewed-Tested-by:" tag.
> 
> We already have "Co-developerd-by:" as a valid tag, no need to merge
> more into this :)

"Co-developed-by", to me, has a connotation of significant authorship.
For the "weaker" cases, I tend to use "Suggested-by" or put something
like "Based on a patch by $person[link]" in the body.

For the kinds of fixes mentioned here, and more specifically for the
kinds of fixes that I have received from both Colin Ian King and Dan
Carpenter that fall into this "tiny fix"[1] category, I think something
simply like "Adjusted-by" could be used. I've already tried to include
"Link" tags to things that got folded in, but without the Adjusted-by tag,
it lacks the right kind of searchability and recognition.

"Fixes-by" is too close to "Fixes" (and implies more than one
fix). "Fixup-by" implies singular. "Debugged-by" is like the other
existing high-level tags, in that they speak to the ENTIRE patch.

If not "Adjusted-by", what about "Tweaked-by", "Helped-by",
"Corrected-by"?

Colin, Dan, any thoughts on how you'd like to see stuff?

-Kees

[1] "tiny" in the sense of characters changed, usually. There was very
    much NOT a "tiny" amount of time spent on it, nor do they have "tiny"
    impact -- which is the whole point of calling this out in the
    commit.

-- 
Kees Cook
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
