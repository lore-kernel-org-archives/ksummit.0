Return-Path: <jkosina@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8A3BABBC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 20:43:16 +0000 (UTC)
Received: from mail.emea.novell.com (mail.emea.novell.com [130.57.118.101])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CC43114F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 20:43:15 +0000 (UTC)
Date: Tue, 7 Jul 2015 22:42:45 +0200 (CEST)
From: Jiri Kosina <jkosina@suse.com>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <alpine.LNX.2.00.1507071253390.10183@pobox.suse.cz>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Subject: [Ksummit-discuss] [CORE TOPIC] live patching
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

[ I was wondering whether to tag this "CORE TOPIC" or "TECH TOPIC", as I 
  really see it on the bordeline; let's see ]

As people are probably aware, the basic infrastructure for live patching 
of the kernel has been merged and there are still quite some loose ends to 
tie up.

On top of original agreement by the two teams working at live kernel 
patching at Red Hat and SUSE, there has been quite some feedback raised 
during upstream review by people not being directly involved in the 
development itself [1].

Tangentially related topics have been spawned in the discussion, namely:

- stack unwinding has so far been deemed purely debugging facility, with 
  no correctness guarantees whatsoever. One of the possible aproaches to
  improving the coverage of live patching infrastructure would assume
  100% reliability of in-kernel stack unwinding.

  Is this something that should be pursued further? Especially opinions 
  and comments from various arch maintainers would be welcome

- it would be beneficial for live patching if kernel threads could be 
  cleaned up; currently it's a mess, with freezer points, signal handling 
  etc. spewed randomly all over the main loop. Generalizing the API (such
  as improving kthread_worker and migrating kthreads to use that) would 
  be beneficial if there are no major objections. See my related TECH 
  TOPIC submission

- Ingo proposed a "checkpoint"-based way for live patching, i.e. forcing 
  all the processess out of kernel to serliaze on a well-defined execution
  point, perform the patching, and resume the execution.

  I see several issues with this aproach, but Ingo seems to be really 
  insisting on this to be the way to go.

I could give a short introduction to how the current in-kernel live 
patching facility looks like and what are the things that are currently 
missing (either because they were considered too controversial by some 
(such as the stack unwinding reliability or lazy-migration) or because 
they just have not been implemented yet) and hopefully create a basis for 
a discussion that would result in more defined opinions on how this 
facility should work to be widely acceptable.

Suggested attendance: folks working on live patching and anyone else 
who's not directly involved, but has strong opinions on how things should 
be done.

[1] http://lkml.kernel.org/r/20150220104418.GD25076@gmail.com

Thanks,

-- 
Jiri Kosina
SUSE Labs
