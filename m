Return-Path: <jmorris@namei.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8751C486
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 04:20:10 +0000 (UTC)
Received: from namei.org (tundra.namei.org [65.99.196.166])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0C295A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 04:20:08 +0000 (UTC)
Date: Mon, 24 Aug 2015 14:20:01 +1000 (AEST)
From: James Morris <jmorris@namei.org>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <alpine.LRH.2.20.1508241335370.1294@namei.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: Emily Ratliff <eratliff@linuxfoundation.org>
Subject: [Ksummit-discuss] [TECH TOPIC] Kernel Hardening
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

I'd like to propose a security topic, "Kernel Hardening" (or "Kernel Self 
Protection"), to discuss how we can better mitigate vulnerabilities 
arising from kernel bugs.

We have some measures in place, although we are really not doing 
everything we can, as demonstrated from time to time when vulnerabilities 
arise which are mitigated by protections in grsecurity (for example), but 
not by mainline.  Much of the necessary work has already been done in that 
project, and as many will know, there have been significant challenges 
involved in past efforts to bring these techniques into mainline.  In some 
cases, the performance hit has been too high for maintainers to accept, 
and I wonder if we can re-visit some of these cases, with new approaches 
or perspectives on cost/benefit.

There are also potentially promising approaches to mitigation with other 
technologies such as KASan and gcc plugins, as well as evolving hardware 
features.

The aim of this session would be to bring relevant core kernel maintainers 
together with representatives of the research community and figure out a 
way to work together to improve hardening and mitigation in the Linux 
kernel.  We'd discuss what gaps we currently have, and what code or 
techniques already exist that can be incorporated into mainline to close 
them.  We'd identify issues that maintainers may have and try and find 
ways to address those issues.  From this, I'd hope that we'd develop an 
overall picture of what needs to be done and a practical idea of how to 
move forward.  We may not necessarily resolve all issues in this session, 
but we can at least characterize them and go away and think more about 
them.

We could also talk to the Core Infrastructure Initiative folk if we 
discover potentially useful tasks with no owners -- they may be able to 
fund developers for them.  It would likely be useful to provide CII with a 
status report after the session in any case.

I'd recommend Kees Cook be involved, due to his existing efforts in kernel 
hardening.  I think it would be good to invite one or two expert security 
researchers in this area -- Kees would know who.  In terms of core kernel 
folk, I'd suggest Ingo and akpm, as a starting point.

Comments?


-- 
James Morris
<jmorris@namei.org>
