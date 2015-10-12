Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2EFEF279
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 Oct 2015 19:01:40 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 77F9D182
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 Oct 2015 19:01:39 +0000 (UTC)
Date: Mon, 12 Oct 2015 15:01:37 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20151012190137.GA1992@thunk.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [Ksummit-discuss] Draft agenda for the kernel summit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

This is an initial draft for the upcoming kernel summit.

It is still very drafty; in particular, just because a topic has been
listed, it may turn out that the topic has been resolved off-line, or
otherwise overtaken by events, in which case we will drop it.  In
addition, we're also in the process of sending queries to the proposed
topic leaders to see if they are willing to kick off the discussion,
and so that is subject to change as well.

I'd appreciate comments about any topics that you think might be
missing and that would be worth our discussing.  In addition, if you
have strong opinions moving a topic from the technical session day to
the core day or vice versa, please make the case for the change.

There will be some TBD slots which can be scheduled at the last
minute, but I'd like to get at least one full track of the technical
sessions and most of the core sessions scheduled.

Many thanks,

					- Ted


			  Kernel Summit Agenda
			   October 26-28, 2015
				 DRAFT

Web Version Agenda:		

* Monday: Workshops and break out sessions (overlap with Korea Linux Forum)
* Tuesday: Dual-track technical sessions
* Wednesday: Invite-only core attendees' plenary sessions

Dual-Track Technical sessions (Oct. 27th)
=========================================

9:00    - Welcome and agenda bashing
9:30	- Topic A1                   | Topic B1
10:00   - Topic A2                   | Topic B2
10:30   - Break
11:00	- Topic A3                   | Topic B3
11:30   - Topic A4                   | Topic B4
12:00   - Topic A5                   | Topic B5
12:30   - Lunch
1:30    - Topic A6                   | Topic B6
2:00    - Topic A7                   | Topic B7
2:30    - Break
3:00    - Topic A8                   | Topic B8
3:30    - Topic A9                   | Topic B9
4:00    - Topic A10                  | Topic B10
4:30    - Break
5:00    - Kernel Summit Tech Day -- What went well, what can we do better? 
5:30    - Group Photograph (for core day attendees)
6:30    - Dinner

Potential Tech topics
=====================

1. Mainline kernel on a cellphone (need someone to lead?)
2. Semantics of MMIO mapping attributes across archs (Benjamin Herrenschmidt)
3. GPIO API/ABI discussion (need someone to lead?)
4. System-wide interface to specify the level of PM tuning (Rafael J. Wysocki)
5. Giving freezer well-defined semantics (Jiri Kosina)
6. IRQ affinity (Christoph Hellwig)
7. benchmarking and performance trends (Chris Mason)
8. FPGAs and how to program them from kernel (need somone to lead?
9. Overlays and file(system) unioning issues (David Howells)
10. Firmware signing (David Howells)
11. Context tracking / nohz / RCU state (Andy Lutomirski)
12. userspace infrastructure services (Stephen Hemminger)
13. Kernel support for compute-offload devices (Joerg Roedel)
14. Improving Kernel Security 
15. Developer Workflow Security (Panel)

Core Day (Oct. 28th)
====================

9:00    - Welcome and agenda bashing
9:30	- Live patching (still needed?)
10:00   - Testing (Masahami, Shuah)
10:30   - Break
11:00	- Kernel Security - Readout and further discussion
11:30   - Recruitment; Outreach Programmes (Greg K-H)
12:00   - Lightweight per-cpu locks / restartable sequences (Andy Lutomirski)
12:30   - Lunch
1:30    - TBD
2:00    - TBD
2:30    - Break
3:00    - Kernel Development Process (Is Linus happy?)
3:30    - Issues with stable process (Sasha Levin)
4:00    - TBD
4:30    - Break
5:00    - Kernel Summit Core Day -- What went well, what can we do better? 
5:30    - Group Photograph (for core day attendees)
6:30    - Dinner
