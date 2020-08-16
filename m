Return-Path: <SRS0=dGYf=B2=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=3.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 515E9C433DF
	for <ksummit-discuss@archiver.kernel.org>; Sun, 16 Aug 2020 22:20:45 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 00DF12063A
	for <ksummit-discuss@archiver.kernel.org>; Sun, 16 Aug 2020 22:20:44 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=labbott.name header.i=@labbott.name header.b="BXIXQBsC"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 00DF12063A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=labbott.name
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B8D9587F02;
	Sun, 16 Aug 2020 22:20:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m0sDGBxGtd2n; Sun, 16 Aug 2020 22:20:43 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id E310987EF9;
	Sun, 16 Aug 2020 22:20:43 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id AC7A7C088B;
	Sun, 16 Aug 2020 22:20:43 +0000 (UTC)
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0FFBEC07FF
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 16 Aug 2020 22:20:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E26BF2077C
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 16 Aug 2020 22:20:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id keWqZUOVehGE
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 16 Aug 2020 22:20:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
 [209.85.160.171])
 by silver.osuosl.org (Postfix) with ESMTPS id 35983204F9
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 16 Aug 2020 22:20:40 +0000 (UTC)
Received: by mail-qt1-f171.google.com with SMTP id f19so6613560qtp.2
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Sun, 16 Aug 2020 15:20:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=labbott.name; s=google;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=SX7G8ehdDcBrqW7hZKs8HUeUNjXYJNhoV7xWUTuvRfg=;
 b=BXIXQBsCjdNe5JZhBu8ai8ELqekHWWpaCXYCr9vPZrMCzgQgr/pqGkQSJyqLIkdt5z
 pgezbC9M6l17ByTsNVwJKO5yGvi30Wej+HWIZCOU8Kw2e+CEgX+pyU6xrIAjGkVVim/2
 7SAiPtHYAG/Sm68HW5Zko5wEHXav0aQOnXgK4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=SX7G8ehdDcBrqW7hZKs8HUeUNjXYJNhoV7xWUTuvRfg=;
 b=Yg9IDKBwqBLWui+PRD0E5jk004b/BPW0TsCyk22wk+gS1ArfVNfOC2FPitCgMU7qJf
 edXBxqjedjmKvwbs9cbHDY/CvTVXHqqP+PbWtqZmeamFnV1hahIGZXBF6WXhZupJ6b7C
 USdgTm5Aq1SsmMqdzKfVgZwhpsRi4S9IYkOzUxfeCQcttpD3dPe1AnYcDx4yY3bIfqXH
 d0utUYvu5dBx1UCZQg/7PcdWnI3lxUWGmEgxYhzxyR8AWb+WGuYevUswjVAVHMdsLal8
 mpAFfMFR1BYtNoOoDrwR0YNUSQnVox6bapJN3XzSwlnf+8psPWhW2aRfLEwOUMbBFj0j
 SFOg==
X-Gm-Message-State: AOAM5329H0lIVnwgFlPJOjaapV8O5FsDggDqOLG6TXgClK3TblIQW8sC
 BYm4ghGymksoXLHIYhEh2jlSYA==
X-Google-Smtp-Source: ABdhPJz3ZFYqhjxZmwhe/Pi5mQHhlNbk1o6J+hSSeJJMbOyzFdzSDza6JUXk1aiDfORKo7UZGY+EpA==
X-Received: by 2002:aed:27de:: with SMTP id m30mr10711745qtg.98.1597616439088; 
 Sun, 16 Aug 2020 15:20:39 -0700 (PDT)
Received: from [192.168.1.155] (pool-74-109-246-95.pitbpa.fios.verizon.net.
 [74.109.246.95])
 by smtp.gmail.com with ESMTPSA id o39sm17762067qtj.0.2020.08.16.15.20.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 16 Aug 2020 15:20:38 -0700 (PDT)
To: ksummit-discuss@lists.linuxfoundation.org,
 tech-board-discuss@lists.linuxfoundation.org
From: Laura Abbott <laura@labbott.name>
Message-ID: <e861adbb-5cf2-9e0b-3b4c-4268570c6401@labbott.name>
Date: Sun, 16 Aug 2020 18:20:37 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:68.0)
 Gecko/20100101 Thunderbird/68.11.0
MIME-Version: 1.0
Content-Language: en-US
Subject: [Ksummit-discuss] Self-nomination for 2020 TAB election
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

Hi,

I would like to nominate myself for re-election to the Technical
Advisory Board. During my past two years on the TAB I've done
a lot of work on elections. My focus has been on making sure that
the TAB is representative of as much of the kernel community as
possible. I've gotten to learn a lot of the history of the TAB
and the problems its worked on in the past.

My past kernel work has included everything from Android to pieces
related to the Kernel Self-Protection Project. While no longer a
kernel maintainer in my day job, I still support the kernel community
and plan to continue participating in the future.

I've also served as chair for the online version for Linux Plumbers
2020. Bringing Plumbers online has been a unique experience and
I hope to continue working with the TAB to support Plumbers into
whatever 2021 decides to bring.

My goal for the future is to help make sure the TAB is focusing on
the right problems and to support the kernel community as it
continues to change and grow.

Thanks,
Laura
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
