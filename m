Return-Path: <jkosina@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B1CE89F2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 20:42:46 +0000 (UTC)
Received: from mail.emea.novell.com (mail.emea.novell.com [130.57.118.101])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 01B2CF7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 20:42:45 +0000 (UTC)
Date: Tue, 7 Jul 2015 22:42:36 +0200 (CEST)
From: Jiri Kosina <jkosina@suse.com>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <alpine.LNX.2.00.1507071340480.10183@pobox.suse.cz>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Subject: [Ksummit-discuss] [TECH TOPIC] giving freezer well-defined semantics
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Currently, the freezer has rather random semantics and there is no 
rigorous definition that would provide clear guidance which kernel threads 
should be freezable (and what rules they have to follow if they are).

The long and complicated history of freezer resulted in the current state, 
where many kernel threads are marked freezable "just because", with 
freezing points randomly sprinkled all over the place, and it really 
complicates any efforts in cleaning up kthreads (which is why I am 
interested in it -- we'd love to have kthreads cleaned up to make live 
patching easier).

There are various possible aproaches to this. One is basically ad-hoc, 
going over all the existing kthreads one by one, and fixing (probably just 
removing, in most cases) its usage of freezer. The obivous disadvantage is 
that this doesn't prevent anyone to abusing it again the same way in the 
future.

Tejun came up with a different aproach at [1] -- basically getting rid of 
the freezer completely, and rather annotating those I/O requests which are 
needed for writing the hibernation image out, so that they make it through 
all the affected subsystems, while other I/O requests would be frozen.

This would be rather dramatic change both in a way how kthreads work, how 
hibernation works, and it'd be necessary to have means to mark I/O 
requests as "needed for hibernation", therefore I think this would be a 
good cross-subsystem topic.

[1] http://lkml.kernel.org/r/20150613232222.GB346@mtj.duckdns.org

-- 
Jiri Kosina
SUSE Labs
