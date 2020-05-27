Return-Path: <SRS0=QQZC=7J=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.5 required=3.0 tests=DKIM_INVALID,DKIM_SIGNED,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08BF6C433DF
	for <ksummit-discuss@archiver.kernel.org>; Wed, 27 May 2020 06:19:24 +0000 (UTC)
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6F0AF207D3
	for <ksummit-discuss@archiver.kernel.org>; Wed, 27 May 2020 06:19:23 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amazon.com header.i=@amazon.com header.b="fbRcGokx"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6F0AF207D3
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=lists.linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1ABFA88689;
	Wed, 27 May 2020 06:19:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YyvYIgcAyYW6; Wed, 27 May 2020 06:19:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 24AF8884D4;
	Wed, 27 May 2020 06:19:22 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id ED36DC088D;
	Wed, 27 May 2020 06:19:21 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 87B75C016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 27 May 2020 06:19:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 779F98647F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 27 May 2020 06:19:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6eTIVtG6wkmU
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 27 May 2020 06:19:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from smtp-fw-4101.amazon.com (smtp-fw-4101.amazon.com [72.21.198.25])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7386A86135
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 27 May 2020 06:19:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1590560359; x=1622096359;
 h=from:to:subject:date:message-id:mime-version;
 bh=VuWaQg1CC/bhu9TLqrNHDupjwyFFlDcSYv3CCfQWgHo=;
 b=fbRcGokx4edaYodaezcnYAQAXFMBpRm5BDYHaNp7aJRsL3Tid5d8O60E
 TWaqhhe3KY0mFseaWOVL8XF0ItHjhxLd8+BZ7G+lcp7F2+65bBZVhnhQf
 qDAGLswz1Pr7IZBJLN/+9nMFRwIhcB/tnrxcV+bdc3I/NTeeZk43GU/dM E=;
IronPort-SDR: A97WUcZ/IfTg/7QPuQAdsJWqmWk+itOdtfHIHvbRHWleZf0rygsZiqvfHqL/MnpnexgjXm4Tpu
 3uAaCbUSyU2A==
X-IronPort-AV: E=Sophos;i="5.73,440,1583193600"; d="scan'208";a="32467840"
Received: from iad12-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-2a-c5104f52.us-west-2.amazon.com) ([10.43.8.6])
 by smtp-border-fw-out-4101.iad4.amazon.com with ESMTP;
 27 May 2020 06:19:06 +0000
Received: from EX13MTAUEA002.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan3.pdx.amazon.com [10.170.41.166])
 by email-inbound-relay-2a-c5104f52.us-west-2.amazon.com (Postfix) with ESMTPS
 id 59738A1782 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 27 May 2020 06:19:06 +0000 (UTC)
Received: from EX13D31EUA001.ant.amazon.com (10.43.165.15) by
 EX13MTAUEA002.ant.amazon.com (10.43.61.77) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Wed, 27 May 2020 06:19:05 +0000
Received: from u886c93fd17d25d.ant.amazon.com (10.43.162.200) by
 EX13D31EUA001.ant.amazon.com (10.43.165.15) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Wed, 27 May 2020 06:19:03 +0000
To: <ksummit-discuss@lists.linuxfoundation.org>
Date: Wed, 27 May 2020 08:18:41 +0200
Message-ID: <20200527061841.9212-1-sjpark@amazon.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.43.162.200]
X-ClientProxiedBy: EX13D08UWC001.ant.amazon.com (10.43.162.110) To
 EX13D31EUA001.ant.amazon.com (10.43.165.15)
Subject: [Ksummit-discuss] [TECH TOPIC] DAMON: Data Access Monitoring
	Framework for Fun and Memory Management Optimizations
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
From: SeongJae Park via Ksummit-discuss
 <ksummit-discuss@lists.linuxfoundation.org>
Reply-To: SeongJae Park <sjpark@amazon.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

Background
==========

In an ideal world, memory management provides the optimal placement of data
objects under accurate predictions of future data access.  Current practical
implementations, however, rely on coarse information and heuristics to keep the
instrumentation overhead minimal.  A number of memory management optimization
works were therefore proposed, based on the finer-grained access information.
Lots of those, however, incur high data access pattern instrumentation
overhead, especially when the target workload is huge.  A few of the others
were able to keep the overhead small by inventing efficient instrumentation
mechanisms for their use case, but such mechanisms are usually applicable to
their use cases only.

We can list up below four requirements for the data access information
instrumentation that must be fulfilled to allow adoption into a wide range of
production environments:

- Accuracy. The instrumented information should be useful for DRAM level memory
  management.  Cache-level accuracy would not highly required, though.
- Light-weight overhead.  The instrumentation overhead should be low enough to
  be applied online while making no impact on the performance of the main
  workload.
- Scalability.  The upper-bound of the instrumentation overhead should be
  controllable regardless of the size of target workloads, to be adopted in
  general environments that could have huge workloads.
- Generality.  The mechanism should be widely applicable.

DAMON: Data Access MONitor
==========================

DAMON is a data access monitoring framework subsystem for the Linux kernel that
designed to mitigate this problem.  The core mechanisms of DAMON called 'region
based sampling' and 'adaptive regions adjustment' make it fulfill the
requirements.  Moreover, its general design and flexible interface allow not
only the kernel code but also the user space can use it.

Using this framework, therefore, the kernel's core memory management mechanisms
including reclamation and THP can be optimized for better memory management.
The memory management optimization works that incurring high instrumentation
overhead will be able to have another try.  In user space, meanwhile, users who
have some special workloads will be able to write personalized tools or
applications for deeper understanding and specialized optimizations of their
systems.

In addition to the basic monitoring, DAMON also provides a feature dedicated
to semi-automated memory management optimizations, called DAMON-based Operation
Schemes (DAMOS).  Using this feature, the DAMON users can implement complex
data access aware optimizations in only a few lines of human-readable schemes
descriptions.

Overhead and Performance
========================

We evaluated DAMON's overhead, monitoring quality, and usefulness using 25
realistic workloads on my QEMU/KVM based virtual machine.

DAMON is lightweight. It increases system memory usage by only -0.39% and
consumes less than 1% CPU time in the typical case.  It slows target workloads
down by only 0.63%.

DAMON is accurate and useful for memory management optimizations.  An
experimental DAMON-based operation scheme for THP removes 69.43% of THP memory
overhead while preserving 37.11% of THP speedup.  Another experimental
DAMON-based reclamation scheme reduces 89.30% of residential sets and 22.40% of
system memory footprint while incurring only 1.98% runtime overhead in the best
case.

Current Status of The Project
=============================

Development of DAMON started in 2019, and several iterations were presented in
academic papers[1,2,3], the kernel summit of last year[4], and an LWN
article[4].  The source code is available[6] for use and modification, the
patchsets[7] are periodically being posted for review.

Agenda
======

I will briefly introduce DAMON and share how it has evolved since last year's
kernel summit talk.  I will introduce some new features, including the
DAMON-based operation schemes.  There will be a live demonstration and I will
show performance evaluation results.  I will outline plans and the roadmap of
this project, leading to a Q&A session to collect feedback with a view on
getting it ready for general use and upstream inclusion.


[1] SeongJae Park, Yunjae Lee, Yunhee Kim, Heon Y. Yeom, Profiling Dynamic Data
    Access Patterns with Bounded Overhead and Accuracy. In IEEE International
    Workshop on Foundations and Applications of Self-* Systems (FAS* 2019),
    June 2019. https://ieeexplore.ieee.org/abstract/document/8791992
[2] SeongJae Park, Yunjae Lee, Heon Y. Yeom, Profiling Dynamic Data Access
    Patterns with Controlled Overhead and Quality. In 20th ACM/IFIP
    International Middleware Conference Industry, December 2019.
    https://dl.acm.org/citation.cfm?id=3368125
[3] Yunjae Lee, Yunhee Kim, and Heon. Y. Yeom, Lightweight Memory Tracing for
    Hot Data Identification, In Cluster computing, 2020. (Accepted but not
    published yet)
[4] SeongJae Park, Tracing Data Access Pattern with Bounded Overhead and
    Best-effort Accuracy. In The Linux Kernel Summit, September 2019.
    https://linuxplumbersconf.org/event/4/contributions/548/
[5] Jonathan Corbet, Memory-management optimization with DAMON. In Linux
    Weekly News, February 2020. https://lwn.net/Articles/812707/
[6] https://github.com/sjp38/linux/tree/damon/master
[7] https://lore.kernel.org/linux-mm/20200525091512.30391-1-sjpark@amazon.com/
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
