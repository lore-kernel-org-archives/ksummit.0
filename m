Return-Path: <aneesh.kumar@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1F26494A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 16:21:51 +0000 (UTC)
Received: from e23smtp02.au.ibm.com (e23smtp02.au.ibm.com [202.81.31.144])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 14D2616F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 16:21:48 +0000 (UTC)
Received: from /spool/local
	by e23smtp02.au.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use
	Only! Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<aneesh.kumar@linux.vnet.ibm.com>; Tue, 25 Aug 2015 02:21:46 +1000
Received: from d23relay09.au.ibm.com (d23relay09.au.ibm.com [9.185.63.181])
	by d23dlp01.au.ibm.com (Postfix) with ESMTP id 7EF4B2CE802D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Aug 2015 02:21:43 +1000 (EST)
Received: from d23av01.au.ibm.com (d23av01.au.ibm.com [9.190.234.96])
	by d23relay09.au.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
	t7OGLYlb66650318 for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Aug 2015 02:21:43 +1000
Received: from d23av01.au.ibm.com (localhost [127.0.0.1])
	by d23av01.au.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP id
	t7OGLApU014796 for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Aug 2015 02:21:10 +1000
From: "Aneesh Kumar K.V" <aneesh.kumar@linux.vnet.ibm.com>
To: James Morris <jmorris@namei.org>, ksummit-discuss@lists.linuxfoundation.org
In-Reply-To: <alpine.LRH.2.20.1508241335370.1294@namei.org>
References: <alpine.LRH.2.20.1508241335370.1294@namei.org>
Date: Mon, 24 Aug 2015 21:50:47 +0530
Message-ID: <87k2skzmhs.fsf@linux.vnet.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Emily Ratliff <eratliff@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Kernel Hardening
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

James Morris <jmorris@namei.org> writes:

> I'd like to propose a security topic, "Kernel Hardening" (or "Kernel Self 
> Protection"), to discuss how we can better mitigate vulnerabilities 
> arising from kernel bugs.
>
> We have some measures in place, although we are really not doing 
> everything we can, as demonstrated from time to time when vulnerabilities 
> arise which are mitigated by protections in grsecurity (for example), but 
> not by mainline.  Much of the necessary work has already been done in that 
> project, and as many will know, there have been significant challenges 
> involved in past efforts to bring these techniques into mainline.  In some 
> cases, the performance hit has been too high for maintainers to accept, 
> and I wonder if we can re-visit some of these cases, with new approaches 
> or perspectives on cost/benefit.
>
> There are also potentially promising approaches to mitigation with other 
> technologies such as KASan and gcc plugins, as well as evolving hardware 
> features.
>

We also have to make sure that the compiler based approach work with
architectures other than x86. Archs like ppc64 have different memory
layout and features like KASan may not really map easily with the
layout. For example we may not be able to implement inline kasan
instrumentation on ppc64. Also we have issues with stack and
global out of bounds access check.

I would be interested in this discussion, if we are scheduling this for
ksummit. I work mostly on ppc64 memory-management subsystem and can
bring in details of challenges faced with KASan implementation on ppc64.

-aneesh
