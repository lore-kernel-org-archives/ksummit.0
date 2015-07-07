Return-Path: <jkosina@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5A89CBBC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 20:43:16 +0000 (UTC)
Received: from mail.emea.novell.com (mail.emea.novell.com [130.57.118.101])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DFCC3159
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 20:43:15 +0000 (UTC)
Date: Tue, 7 Jul 2015 22:42:49 +0200 (CEST)
From: Jiri Kosina <jkosina@suse.com>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <alpine.LNX.2.00.1507071324090.10183@pobox.suse.cz>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Subject: [Ksummit-discuss] [CORE TOPIC] services needed from kernel.org
	infrastructure
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

I think it'd be useful to have a session where maintainers could come up 
with feature / improvement requests for kernel.org infrastructure and have 
a subsequent discussion about whether they would be generally useful.

Let me start with my personal wish:

I personally would very welcome a facility that'd send out an e-mail if a 
new commit is pushed to a git.kernel.org repo branch (sort of what tip-bot 
and akpm's scripts are doing these days) to automatically notify the patch 
author that the patch has been merged and pushed out.

Suggested attendance: Konstantin, maintainers :)

Thanks,

-- 
Jiri Kosina
SUSE Labs
