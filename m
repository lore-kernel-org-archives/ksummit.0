Return-Path: <SRS0=aJ5E=FG=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=3.0 tests=BAYES_00,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A0C5C6369E
	for <ksummit-discuss@archiver.kernel.org>; Wed,  2 Dec 2020 23:44:01 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2516F21D93
	for <ksummit-discuss@archiver.kernel.org>; Wed,  2 Dec 2020 23:43:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2516F21D93
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=suse.cz
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8D8B6878BC;
	Wed,  2 Dec 2020 23:43:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5enqoP30WwMd; Wed,  2 Dec 2020 23:43:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9CBC38786E;
	Wed,  2 Dec 2020 23:43:58 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7B193C0FA8;
	Wed,  2 Dec 2020 23:43:58 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6BF57C0FA7
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  2 Dec 2020 23:43:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5A69086B77
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  2 Dec 2020 23:43:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tRGzxCuXgOTN
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  2 Dec 2020 23:43:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4BC1F86B03
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed,  2 Dec 2020 23:43:55 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id E9B8EAB63;
 Wed,  2 Dec 2020 23:43:52 +0000 (UTC)
From: Vlastimil Babka <vbabka@suse.cz>
To: "ksummit-discuss@lists.linuxfoundation.org"
 <ksummit-discuss@lists.linuxfoundation.org>
Message-ID: <ea32eb02-5e44-0469-772b-34b5cb882543@suse.cz>
Date: Thu, 3 Dec 2020 00:43:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
Content-Language: en-US
Cc: LKML <linux-kernel@vger.kernel.org>
Subject: [Ksummit-discuss] crediting bug reports and fixes folded into
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

Hi,

there was a bit of debate on Twitter about this, so I thought I would bring it
here. Imagine a scenario where patch sits as a commit in -next and there's a bug
report or fix, possibly by a bot or with some static analysis. The maintainer
decides to fold it into the original patch, which makes sense for e.g.
bisectability. But there seem to be no clear rules about attribution in this
case, which looks like there should be, probably in
Documentation/maintainer/modifying-patches.rst

The original bug fix might include a From: $author, a Reported-by: (e.g.
syzbot), Fixes: $next-commit, some tag such as Addresses-Coverity: to credit the
static analysis tool, and an SoB. After folding, all that's left might be a line
as "include fix from $author" in the SoB area. This is a loss of
metadata/attribution just due to folding, and might make contributors unhappy.
Had they sent the fix after the original commit was mainline and immutable, all
the info above would "survive" in the form of new commit.

So I think we could decide what the proper format would be, and document it
properly. I personally wouldn't mind just copy/pasting the whole commit message
of the fix (with just a short issue description, no need to include stacktraces
etc if the fix is folded), we could just standardize where, and how to delimit
it from the main commit message. If it's a report (person or bot) of a bug that
the main author then fixed, preserve the Reported-by in the same way (making
clear it's not a Reported-By for the "main thing" addressed by the commit).

In the debate one less verbose alternatve proposed was a SoB with comment
describing it's for a fix and not whole patch, as some see SoB as the main mark
of contribution, that can be easily found and counted etc. I'm not so sure about
it myself, as AFAIK SoB is mainly a DCO thing, and for a maintainer it means
something else ("passed through my tree") than for a patch author. And this
approach would still lose the other tags.

Thoughts?
Vlastimil
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
