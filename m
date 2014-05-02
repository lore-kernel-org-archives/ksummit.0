Return-Path: <jkosina@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 03F144C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 19:42:07 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8BC961FC59
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 19:42:06 +0000 (UTC)
Received: from relay2.suse.de (charybdis-ext.suse.de [195.135.220.254])
	by mx2.suse.de (Postfix) with ESMTP id 519A7AD24
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 19:42:05 +0000 (UTC)
Date: Fri, 2 May 2014 21:42:04 +0200 (CEST)
From: Jiri Kosina <jkosina@suse.cz>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <alpine.LNX.2.00.1405022113300.29834@pobox.suse.cz>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Subject: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

I am a responsible maintainer of kernels for SUSE enterprise products. As 
such, I am dealing with -stable trees on a regular basis. Hence, if there 
is any discussion related to -stable tree process going to happen, I am 
highly interested in that discussion.

I'd like to re-iterate my usual question / discussion topic of 
responsibility distribution for -stable patches; my proposal again would 
be to align the -stable tree workflow with Linus' tree workflow -- i.e. 
subsystem maintainers preparing 'for-stable' branches and sending pull 
requests to the stable team, instead of rather random cherry-picking of 
the patches from the air as they fly by the stable team members.

Suggested participants: stable team, major distro kernel maintainers

-- 
Jiri Kosina
SUSE Labs
