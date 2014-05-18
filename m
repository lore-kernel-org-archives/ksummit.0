Return-Path: <m.chehab@samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 49D712FA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 18 May 2014 16:38:48 +0000 (UTC)
Received: from usmailout4.samsung.com (mailout4.w2.samsung.com
	[211.189.100.14])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 690491F950
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 18 May 2014 16:38:47 +0000 (UTC)
Received: from uscpsbgm1.samsung.com
	(u114.gpu85.samsung.co.kr [203.254.195.114]) by usmailout4.samsung.com
	(Oracle Communications Messaging Server 7u4-24.01(7.0.4.24.0) 64bit
	(built Nov
	17 2011)) with ESMTP id <0N5S00MEK3KLRS70@usmailout4.samsung.com> for
	ksummit-discuss@lists.linuxfoundation.org; Sun,
	18 May 2014 12:38:45 -0400 (EDT)
Date: Sun, 18 May 2014 13:38:39 -0300
From: Mauro Carvalho Chehab <m.chehab@samsung.com>
To: monstr@monstr.eu
Message-id: <20140518133839.487d811a.m.chehab@samsung.com>
In-reply-to: <53706EAB.7010601@monstr.eu>
References: <20140509170709.GA9747@redhat.com> <20140511111034.GA6400@katana>
	<53706EAB.7010601@monstr.eu>
MIME-version: 1.0
Content-type: text/plain; charset=US-ASCII
Content-transfer-encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] coverity, static checking etc.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Mon, 12 May 2014 08:48:11 +0200
Michal Simek <monstr@monstr.eu> escreveu:

> The part of this discussion
> should be also kernel-doc format checking because a lot of patches
> are trying to use kernel-doc format but it is just broken - even checker
> is in the kernel.

There are several drivers still using other styles for documenting functions.

I can be partially blamed for accepting such patches, but, I don't feel
it is fair to refuse merging a patchset just because they're following some
other documentation style. We have some really big drivers at media
ported from another OS using Doxygen style. Fixing them would likely
require hundreds of hours that could otherwise be used implementing
new stuff or fixing real bugs.

So, I would rather prefer to have a (semi-)automated tool capable of
converting from Doxygen and other styles into kernel-doc style that
would make such conversion an easy task.

Regards,
Mauro
