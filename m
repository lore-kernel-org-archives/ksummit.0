Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7ACE326C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  8 Jul 2016 22:43:43 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C5055193
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  8 Jul 2016 22:43:42 +0000 (UTC)
Received: from relay2.suse.de (charybdis-ext.suse.de [195.135.220.254])
	by mx2.suse.de (Postfix) with ESMTP id D3E41AAB7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  8 Jul 2016 22:31:33 +0000 (UTC)
Date: Sat, 9 Jul 2016 00:31:33 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <alpine.LNX.2.00.1607082030470.24757@cbobk.fhfr.pm>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Subject: [Ksummit-discuss] [CORE TOPIC] cleaning up kthread freezer hell,
	part 2
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On last year's kernel summit, I've been talking about why I consider 
kthread freezer harmful and why it ultimately should be removed. LWN 
coverage of that session is here:

	https://lwn.net/Articles/662703/

During the past year, I've invested a bit of a time into actually looking 
deeper into the dark corners of kernel sources to see how kthread freezer 
is used throughout the codebase, with the intent to ultimately fix all the 
buggy places. While doing that, I was petrified by two facts:

- there are a *lot* of places where kthread freezer is used in a 
  completely buggy (or useless) way

- one of the obstacles fixing it are maintainers who actually don't 
  understand the purpose of the kthread freezer (the usual pattern is that 
  the main kthread loop has been copy/pasted from different code, which 
  already used freezer, and so disease spreads)

Therefore I'd propose a v2 of the last year's session; first summarizing 
the horrible experience I've done on this kthread freezer journey, and as 
a followup, try to (re-)explain the issue and the way I think it should be 
resolved.

The idea is to get as much coverage among high-profile maintainers as 
possible, in a hope that this will result in ultimate tree-wide cleanup of 
the current mess. That's why I propose this as a core topic rather than 
tech topic, although it might sound like a rather bordeline one.

Thanks,

-- 
Jiri Kosina
SUSE Labs
