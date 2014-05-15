Return-Path: <jack@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 27BD548E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 21:14:58 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 848211F977
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 21:14:57 +0000 (UTC)
Received: from relay1.suse.de (charybdis-ext.suse.de [195.135.220.254])
	by mx2.suse.de (Postfix) with ESMTP id C9247ACCB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 21:14:55 +0000 (UTC)
Date: Thu, 15 May 2014 23:14:55 +0200
From: Jan Kara <jack@suse.cz>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20140515211455.GA9632@quack.suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [Ksummit-discuss] [TECH TOPIC] Printk softlockups
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

  Hello,

  for about an year I'm trying to upstream patches which allow booting of
large machines with serial console attached. The problem is that there are
lots of messages printed during boot (e.g. during device discovery - think
of tens or even hundreds or disks, ...). Currently, console_unlock() prints
messages from kernel printk buffer to console while the buffer is
non-empty. When serial console is attached, printing is slow and thus other
CPUs in the system have plenty of time to append new messages to the buffer
while one CPU is printing. Thus the CPU can spend theoretically unbounded
amount of time (in practice tens of seconds) doing printing in
console_unlock() leading to softlockups, RCU stalls, lost interrupts and
effectively the system dies.

Now over the year I've tried several approaches and the scenario is always
the same - I submit patches, then someone comes, complains he doesn't like
it and possibly suggests another way to do it. So I do it another way,
someone comes and doesn't like it *that* way... Now I've done 8 or so
iterations of the patchset and I'm getting frustrated I have to say.

In the last iteration Alan Cox suggested [1] that I should implement a
buffering console using tty layer and stick it on top of serial console. So
printing would happen only to another buffer, would be fast and the problem
won't appear. Frankly I don't see a big advantage of this approach to just
simply stopping printing of kernel log buffer early and it seems to me
modifying of serial drivers which work in putchar, poll-until-ready style
to work with buffering would be rather complex.

So I would really like as much involved people as possible to sit down in
one room and think over what guarantees do we want from printk, which
complexity is acceptable, and hopefully we can agree on a way accepted by
all parties to resolve the issue.

People involved in the discussion:
Jan Kara <jack@suse.cz>
Andrew Morton <akpm@linux-foundation.org>
Steven Rosted <rostedt@goodmis.org>
Alan Cox <gnomes@lxorguk.ukuu.org.uk>

[1] https://lkml.org/lkml/2014/4/22/251, https://lkml.org/lkml/2014/4/23/647

								Honza
-- 
Jan Kara <jack@suse.cz>
SUSE Labs, CR
