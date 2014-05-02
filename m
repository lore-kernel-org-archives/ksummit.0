Return-Path: <jkosina@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 56A07875
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 19:42:22 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 099DD1FC59
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 19:42:21 +0000 (UTC)
Received: from relay1.suse.de (charybdis-ext.suse.de [195.135.220.254])
	by mx2.suse.de (Postfix) with ESMTP id B9417AD24
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 19:42:20 +0000 (UTC)
Date: Fri, 2 May 2014 21:42:20 +0200 (CEST)
From: Jiri Kosina <jkosina@suse.cz>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <alpine.LNX.2.00.1405022123320.29834@pobox.suse.cz>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Subject: [Ksummit-discuss] [CORE TOPIC] [TECH TOPIC] live kernel patching
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Runtime/live kernel patching is becoming a topic these days. There are 
several parallel implementations currently evolving in parallel (kpatch, 
kgraft, criu-based solution, ksplice to some extent), all of them having 
their pros and cons. 

It's clear that what is going to get merged at the end of the day would 
have to be some super-position of the currently existing solutions. 

Finding a reasonable compromise might be challenging. Having discussion 
between the groups working on those solutions (tech topic) and with 
"general maintainer audience" to face the flame^W^W^Wobtain feedback 
(core topic) would be very valuable step in converging to unified 
solution.

Suggested participants: see the list of "competing" projects above

-- 
Jiri Kosina
SUSE Labs
