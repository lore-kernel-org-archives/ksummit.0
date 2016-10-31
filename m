Return-Path: <mcgrof@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DD547727
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 31 Oct 2016 22:00:45 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.136])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AD85D90
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 31 Oct 2016 22:00:45 +0000 (UTC)
Received: from mail.kernel.org (localhost [127.0.0.1])
	by mail.kernel.org (Postfix) with ESMTP id CA9EE2034E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 31 Oct 2016 22:00:44 +0000 (UTC)
Received: from mail-ua0-f172.google.com (mail-ua0-f172.google.com
	[209.85.217.172])
	(using TLSv1.2 with cipher AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D108B2034A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 31 Oct 2016 22:00:43 +0000 (UTC)
Received: by mail-ua0-f172.google.com with SMTP id 12so115434291uas.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 31 Oct 2016 15:00:43 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAB=NE6Wo-mWdJF8k9yGcsORatpNtiiug+jXdGP60xhd0F+jydg@mail.gmail.com>
References: <CAB=NE6Wo-mWdJF8k9yGcsORatpNtiiug+jXdGP60xhd0F+jydg@mail.gmail.com>
From: "Luis R. Rodriguez" <mcgrof@kernel.org>
Date: Mon, 31 Oct 2016 15:00:22 -0700
Message-ID: <CAB=NE6VBCC6SEzXTJi=HRSDbsCVXcw-1gwjXdgZzw+UGDn9j0A@mail.gmail.com>
To: ksummit-discuss@lists.linuxfoundation.org
Content-Type: text/plain; charset=UTF-8
Subject: Re: [Ksummit-discuss] Addressing Complex Dependencies - Tuesday
	9:30am - Coronado/Devargas
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Update:

We've reduced the topics that will be covered and time that will be
required as follows:

The shared topics with the Audio workshop will take place first at
9:30am-10:30am at Sweeney CDE:

  * Device hierarchy (just not a tree but a graph)
  * Handling cycles on the graph proposals

Then we move to Coronado room 10:30am-12:30pm for:

  * Functional dependencies (now merged on Greg's tree)
  * Resource tracking / allocation framework
  * Media controller feature graph
  * Linker tables
  * Async probe

  Luis
