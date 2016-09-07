Return-Path: <leon@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 24266A62
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 Sep 2016 05:03:27 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.136])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B5FBA153
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 Sep 2016 05:03:26 +0000 (UTC)
Received: from mail.kernel.org (localhost [127.0.0.1])
	by mail.kernel.org (Postfix) with ESMTP id A58A1203A1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 Sep 2016 05:03:25 +0000 (UTC)
Received: from mail-yw0-f174.google.com (mail-yw0-f174.google.com
	[209.85.161.174])
	(using TLSv1.2 with cipher AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9299820397
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  7 Sep 2016 05:03:23 +0000 (UTC)
Received: by mail-yw0-f174.google.com with SMTP id s85so2738725ywg.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 06 Sep 2016 22:03:23 -0700 (PDT)
MIME-Version: 1.0
From: Leon Romanovsky <leon@kernel.org>
Date: Wed, 7 Sep 2016 08:03:02 +0300
Message-ID: <CALq1K=L7MWcQVCbQE+QzjMxuUbhwXk=65_T30UThuvaKDo2V-A@mail.gmail.com>
To: ksummit-discuss@lists.linuxfoundation.org
Content-Type: text/plain; charset=UTF-8
Cc: Doug Ledford <dledford@redhat.com>
Subject: [Ksummit-discuss] [CORE TOPIC] (group) maintainership models
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi,

Sorry for my late reply to this thread and I hope that it is not too
late to join this topic.

We are in RDMA subsystem in the process of unifying our user-space
parts of RDMA stack to be similar in structure and schedules to
kernel. There is over all consensus that current kernel maintainer
(Doug Ledford) will take responsibility of this meta-bundle [1]
(initial stage, WIP).

However, in the last year, we saw increasing interest in RDMA
technology and steady stream of new drivers and features, including
ABI redesign. The next year is expecting to be more challenging, so it
is vital to us to rethink our maintainership model, before everything
collapse :).

We (me and Doug, if he didn't register to this yet) would be very
interesting to join and discuss different models to manage RDMA stack.

Thanks

[1] https://github.com/jgunthorpe/rdma-plumbing/
