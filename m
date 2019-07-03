Return-Path: <sashal@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8BF98FC5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Jul 2019 01:35:59 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 32FB9782
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Jul 2019 01:35:59 +0000 (UTC)
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A965B2063F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Jul 2019 01:35:58 +0000 (UTC)
Date: Tue, 2 Jul 2019 21:35:57 -0400
From: Sasha Levin <sashal@kernel.org>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20190703013557.GQ11506@sasha-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
Subject: [Ksummit-discuss] [MAINTAINERS SUMMIT] stable kernel process
	automation and improvement
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi folks,

If there is interest, I'd like to go over the (minor) changes that went
into the -stable kernel process since last year's MS, the various
automations we now have, and how we have addressed some of the pain
points that came up last year. I'd also love to hear from folks about
the issues they're seeing with the process, and if there's anything we
can do to make it better.

Some of the concerns that were raised during last year's MS (both in the
group session as well as in the hallway track) which we've tried to
address are:

 - Commits missing because authors did not respond to Greg's "FAILED:"
   mails.
 - Concerns about how well -stable kernels are tested.
 - "Fixes for fixes" end up being missed.
 - Saner AUTOSEL process.
 - Tracking of dropped commits.

I found last years feedback very valuable and hopefully have addressed
some of it, hoping for the same this year as well.

--
Thanks,
Sasha
