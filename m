Return-Path: <SRS0=WjLQ=B5=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2D6FC433E3
	for <ksummit-discuss@archiver.kernel.org>; Wed, 19 Aug 2020 20:28:56 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AF7CB207FF
	for <ksummit-discuss@archiver.kernel.org>; Wed, 19 Aug 2020 20:28:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AF7CB207FF
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=lwn.net
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 692D284480;
	Wed, 19 Aug 2020 20:28:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LnF60dhAMAqW; Wed, 19 Aug 2020 20:28:54 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BDE5684536;
	Wed, 19 Aug 2020 20:28:54 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C9623C07FF;
	Wed, 19 Aug 2020 20:28:53 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 40823C0051;
 Wed, 19 Aug 2020 20:28:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1FAF521507;
 Wed, 19 Aug 2020 20:28:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DKV1A7yIxWDX; Wed, 19 Aug 2020 20:28:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from ms.lwn.net (ms.lwn.net [45.79.88.28])
 by silver.osuosl.org (Postfix) with ESMTPS id ECD67203D4;
 Wed, 19 Aug 2020 20:28:50 +0000 (UTC)
Received: from lwn.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id 64633536;
 Wed, 19 Aug 2020 20:28:50 +0000 (UTC)
Date: Wed, 19 Aug 2020 14:28:49 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: LKML <linux-kernel@vger.kernel.org>
Message-ID: <20200819142849.3a76172a@lwn.net>
Organization: LWN.net
MIME-Version: 1.0
Cc: tech-board-discuss@lists.linuxfoundation.org,
 ksummit-discuss@lists.linuxfoundation.org
Subject: [Ksummit-discuss] LAST CALL: Linux Foundation Technical Advisory
	Board election 2020
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

The call for candidates to serve on the Linux Foundation Technical
Advisory board for the next two years ends after this weekend.  If you
would like an opportunity to represent the community to the LF, now is the
time to send in your nomination.  Details below; we're looking forward to
hearing from you.

Ballots will go out Monday to all LPC attendees and members of the
community who have explicitly requested on.

Thanks,

jon (on behalf of the LF TAB)

---

The election for the Linux Foundation Technical Advisory Board (TAB) will
be held virtually during the 2020 Kernel Summit and Linux Plumbers
Conference, August 24-28 2020.  Nominations for candidates interested in
serving on the TAB are currently being sought.

The TAB serves as the interface between the kernel development community
and the Linux Foundation, advising the Foundation on kernel-related
matters, helping member companies learn to work with the community, and
working to resolve community-related problems before they get out of hand.
We also support the Code of Conduct committee in their mission.

Over the last year, matters tended to by the TAB include proposals for
developer workflow improvement, overseeing the Linux Plumbers Conference,
moving toward more inclusive terminology in the kernel, and more.  Minutes
from TAB meetings can be found here:

	https://git.kernel.org/pub/scm/docs/tab/tab.git/tree/minutes

The board has ten members, one of whom sits on the Linux Foundation board
of directors.  Half of the board (five members) is elected every year to
serve a two-year term.  The members whose terms are expiring this year are:

	Chris Mason
	Dan Williams
	Kees Cook
	Laura Abbott
	Olof Johansson

The remaining members' terms will expire in 2021:

	Greg Kroah-Hartman
	Jonathan Corbet
	Sasha Levin
	Steven Rostedt
	Ted Ts'o
	
Anyone is eligible to stand for election; simply send your nomination to:

	tech-board-discuss@lists.linux-foundation.org

With your nomination, please include a short (<= 200 words) candidate
statement focusing on why you are running and what you hope to accomplish
on the TAB. We will be collecting these statements and making them publicly
available.

The deadline for receiving nominations is 9:00AM GMT-4 (US/Eastern) on
August 24 (the first day of Kernel Summit). Due to the use of
electronic voting, this will be a hard deadline!

As always, please let us know if you have questions (the TAB can be reached
at tech-board@lists.linuxfoundation.org), and please do consider running.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
