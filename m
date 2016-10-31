Return-Path: <mcgrof@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 25A9D95D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 31 Oct 2016 18:36:20 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.136])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CCB3212C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 31 Oct 2016 18:36:19 +0000 (UTC)
Received: from mail.kernel.org (localhost [127.0.0.1])
	by mail.kernel.org (Postfix) with ESMTP id D6CD220165
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 31 Oct 2016 18:36:18 +0000 (UTC)
Received: from mail-vk0-f46.google.com (mail-vk0-f46.google.com
	[209.85.213.46])
	(using TLSv1.2 with cipher AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B207B20131
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 31 Oct 2016 18:36:14 +0000 (UTC)
Received: by mail-vk0-f46.google.com with SMTP id p9so9995452vkd.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 31 Oct 2016 11:36:14 -0700 (PDT)
MIME-Version: 1.0
From: "Luis R. Rodriguez" <mcgrof@kernel.org>
Date: Mon, 31 Oct 2016 11:35:53 -0700
Message-ID: <CAB=NE6Wo-mWdJF8k9yGcsORatpNtiiug+jXdGP60xhd0F+jydg@mail.gmail.com>
To: ksummit-discuss@lists.linuxfoundation.org
Content-Type: text/plain; charset=UTF-8
Subject: [Ksummit-discuss] Addressing Complex Dependencies - Tuesday 9:30am
	- Coronado/Devargas
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

[ Note: Plumbers attendees are welcomed to participate in KS tech topics ]

The tech topic thread of addressing complex dependencies was pretty
broad, I've gone over most of the thread and have tried to condense
most ideas discussed into categories. There were four related work
items I had originally noted but Andrzej Hajda also had mentioned his
own work, below they are all together:

  * Functional dependencies (now merged on Greg's tree)
  * Resource tracking / allocation framework
  * Media controller feature graph
  * Linker tables
  * Async probe

Other topics brought up:

  * Probe ordering
  * Generic drivers

And lastly these related subjects were also mentioned which have a
direct impact to dependency relationships:

  * Device hierarchy (just not a tree but a graph)
  * Handling cycles on the graph
  * Graph Cycle solution proposals

There was some overlap in interest between a bit of Audio workshop
folks and this session so we've made arrangements to address only the
shared topics of interest together with the Audio folks at the Audio
workshop first at Sweeney Ballroom CDE, and then move on to address
the rest of the topics in the room assigned for addressing complex
dependencies, Coronado/Devargas.

The shared topics then we will address first at 9:30am are:

  * Generic drivers
  * Device hierarchy (just not a tree but a graph)
  * Handling cycles on the graph
  * Graph Cycle solution proposals

After this is covered we can move on to Coronado/Devargas to adress
the rest of the remaining topics:

  * Functional dependencies (now merged on Greg's tree)
  * Resource tracking / allocation framework
  * Media controller feature graph
  * Linker tables
  * Async probe

  Luis
