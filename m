Return-Path: <SRS0=DABM=BG=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=3.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70B1FC433E1
	for <ksummit-discuss@archiver.kernel.org>; Mon, 27 Jul 2020 21:31:58 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2DD582075D
	for <ksummit-discuss@archiver.kernel.org>; Mon, 27 Jul 2020 21:31:58 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=labbott.name header.i=@labbott.name header.b="FanrqO//"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2DD582075D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=labbott.name
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0E7A387F38;
	Mon, 27 Jul 2020 21:31:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hNwDGrSLBBVQ; Mon, 27 Jul 2020 21:31:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5178787E09;
	Mon, 27 Jul 2020 21:31:57 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 20776C0050;
	Mon, 27 Jul 2020 21:31:57 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1C80DC004D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 27 Jul 2020 21:31:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 06E84876C3
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 27 Jul 2020 21:31:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zT7r2r1PY1Or
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 27 Jul 2020 21:31:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
 [209.85.160.171])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EA34F876BB
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 27 Jul 2020 21:31:54 +0000 (UTC)
Received: by mail-qt1-f171.google.com with SMTP id s16so13417937qtn.7
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 27 Jul 2020 14:31:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=labbott.name; s=google;
 h=from:subject:to:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=PZXDxl3tnsooH7FVoXBl3fMcl7z8koIKfGqiVcv4xhI=;
 b=FanrqO//r0Ii9x48h8vHfPMkVa3164p3CR9xlteWzLvdhyfg1AUXqJdm6LmVq8IAA2
 i9cxLEQCgl4DKdDX/eYAYtrkyBA96rND5SljR7hQNqqv06wru9R+D2g7fR/dUCf1gfAY
 XiDjgnGRahZkVUH70DxhGbY2TlCTQTzF2q600=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=PZXDxl3tnsooH7FVoXBl3fMcl7z8koIKfGqiVcv4xhI=;
 b=EQNtJZpn0ycNdPIiuAnwSgkr6DmfIDQjzVld7ZLQ27hRkI5WGutpJyV3TRUwRnsub3
 vRLhtg1C9QHyyz1yVPaChz04FTHDKI9Bi/ZlmoxwHKlnTOlPWroDMArkCvbBnj/IMeKe
 fk8KW+a3yvHiPDKjwxD8RtsYZUjzh6hCwQPDBOBjEmQNtGawP1gtwXkH/vFAdZoWFEuY
 9hRowWGwUFc+wTp9yCBJF61W0g3QeWhtALtyKjym8FHDoTMCrn1sYHn0zbSuff93pS5O
 aYrDYLt98WQjiQ890KNXlO64jyOG4SHgfQOHidl4K/DVCiyDFZ5z2sP0jUjoCM1IGFl9
 gr2A==
X-Gm-Message-State: AOAM532RPe9ECylErEX14V+jyvOXtiQ8K5jzGWB93sC/VqtL1g29XUpR
 q79GBZcqlZGsVUFKUCgMfBKBYQ==
X-Google-Smtp-Source: ABdhPJwm4zhQVD3XZEFaQ29kZt7WrpbLczLhA+m5mzManqqnCKZrElgBfiWR0KqfWL4aH3a73MD0Ew==
X-Received: by 2002:ac8:660f:: with SMTP id c15mr6666249qtp.34.1595885513868; 
 Mon, 27 Jul 2020 14:31:53 -0700 (PDT)
Received: from [192.168.1.168] (pool-74-109-246-95.pitbpa.fios.verizon.net.
 [74.109.246.95])
 by smtp.gmail.com with ESMTPSA id x29sm17316904qtx.74.2020.07.27.14.31.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Jul 2020 14:31:53 -0700 (PDT)
From: Laura Abbott <laura@labbott.name>
To: "tech-board-discuss@lists.linuxfoundation.org"
 <tech-board-discuss@lists.linuxfoundation.org>,
 "ksummit-discuss@lists.linuxfoundation.org"
 <ksummit-discuss@lists.linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Message-ID: <ade3420c-89fd-bed0-52e3-a0396eaeda2d@labbott.name>
Date: Mon, 27 Jul 2020 17:31:53 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
Content-Language: en-US
Subject: [Ksummit-discuss] Linux Foundation Technical Advisory Board
 Elections -- voting procedures
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

On behalf of the Linux Foundation Technical Advisory Board (TAB), I'd
like to announce the voting procedures for the 2020 TAB elections.
The pool of eligible voters will consist of the following:

1) All attendees of the Linux Plumbers conference (i.e. kernel summit)

2) Anyone who is not a kernel summit attendee will also be eligible to
vote if the following criteria are met:
-- There exists three kernel commits in a mainline or stable released
kernel that
--- Have a commit date in the year 2019 or 2020
--- Contain an e-mail address in one of the following tags or merged
tags (e.g. Reviewed-and-tested-by)
---- Signed-off-by
---- Tested-by
---- Reported-by
---- Reviewed-by
---- Acked-by

We will be using the electronic voting method that we used in 2019. All
Linux Plumbers Attendees will automatically receive a ballot. Anyone
who is otherwise eligible to vote should e-mail 
tab-elections@lists.linuxfoundation.org to request a ballot. The deadline
for requesting a ballot is August 17, 00:00 UTC (one week before
Linux Plumbers)

For those who would like to know the thought process behind this:

Last year, we successfully used electronic voting for the TAB
elections. Given the circumstances of this year, we have no other
reasonable option for voting. While we could continue to limit voting to
kernel summit attendees, one of the goals of moving away from in person
voting was to potentially expand the voter pool. Since kernel summit is
not being held in person this year, it makes sense to expand the voting
pool at the same time.

We will be sending a call for nominations and announcements about
when voting will start at a later date.

If you have any questions, feel free to reach out to the tab at
tab@lists.linuxfoundation.org
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
