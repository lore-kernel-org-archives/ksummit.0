Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CB5C670A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 11 Aug 2014 22:45:06 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 47FC420270
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 11 Aug 2014 22:45:06 +0000 (UTC)
From: Theodore Ts'o <tytso@mit.edu>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Mon, 11 Aug 2014 18:45:04 -0400
Message-ID: <nsxbnrqtzm7.fsf@closure.thunk.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Subject: [Ksummit-discuss] Draft agenda for the kernel summit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi,

Enclosed please find the draft agenda for the kernel summit next week.
Some of the talks haven't been confirmed yet, and there is still one,
maybe two TBD slots.

If you have any thoughts or comments about topics that you think that we
should absolutely cover, either from discussions on the ksummit-discuss
list (Paul McKenney put together a very nice summary here
https://www.kernel.org/pub/linux/kernel/people/paulmck/LKS/LKS2014Topics.html)
or which have come up more recently, please make any suggestions here on
this e-mail thread.

I'm also looking for feedback about whether there is anything left but
tattered horse hide from the "encouraging more reviewers" discussion.
As a program committee member observed to me privately, the problem is
still real, but it's not clear how much more we would get out of having
a face to face discussion that wasn't covered in the e-mail.

Thanks,

                                                - Ted


			  Kernel Summit Agenda
			   August 18-20, 2014
				 DRAFT

Sunday
======

VIP Reception:
   Buses Leave at 6:15pm from the hotel
   Dinner at 6:30pm, at Bellwether (302 E. Illinois St, walking distance)

Monday (core day)
======

8:00	- Breakfast 
9:00    - Welcome, Agenda Bashing
9:30	- IOMMU's and device drivers: error handling / reporting / isolation (David Woodhouse)
10:00   - Stable trees/workflow (Li Zefan, Greg K-H)
10:30   - Break
11:00	- Linux-next tree (Stephen Rothwell)
11:30   - Kernel tinification: shrinking the kernel and avoiding size
	  	 	       regressions (Josh Triplett)
12:00   - What makes Linus happy/unhappy regarding kernel development?
12:30   - Lunch
1:30    - Application Performance Regressions (Chris Mason)
2:00    - Kselftest
2:30    - Lightning Talks
3:00    - Break
3:30    - Reviewing new API/ABI (Andy Lutomirski, Michael Kerrisk)
4:00    - Encouraging more reviewers (*** anything left besides
	  	      badly flogged horseskin?)
4:30    - TBD
5:00    - Kernel Summit Core Day -- What went well, what can we do better? 
	  	 	(Theodore Ts'o)
5:45pm  - Group Photograph (for core day attendees)
6:00pm  - Dinner

Dinner at 6:00pm, Howell and Hood (435 North Michigan, walking distance)

Tuesday
=======

Workshops and Breakout sessions

Wireless:  http://goo.gl/btbKL6
Networking: 	http://goo.gl/Uyp4jL
Energy Aware Scheduling: http://goo.gl/rksyCj
Unconference track:	http://goo.gl/xmeoSd

Possible unconference topics culled from discuss list

* Driver model/resources, ACPI/DT, etc. sigh
* PM dependencies
* Metadata addendum to git commit
* printk softlockups

8:00    - Breakfast
10:30   - Break
12:30   - Lunch
3:00    - Break
4:45    - Group photograph
5:00    - LCNA First Timers Reception (all kernel developers are
                cordially invited)


Wednesday (open day / technical sessions)
=========

9:00    - LCNA Keynote: State of Linux (Jim Zemlin)
9:45    - LCNA Keynote: Linux kernel panel
10:30   - Break
11:15	- Common trends and bug patterns from static tools (Dave Jones,
		Dan Carpenter, Julia Lawall)
12:15   - Introduction to Smatch / Coccenille (Dan Carpenter / Julia Lawall)
1:05    - Lunch
2:30    - 2 factor authentication, Kernel.org update/discussion (Konstantin Ryabitsev)
3:30	- Runtime kernel checking: kmemleak, minimal lockdep, and others
	  	  (Caitlin Marinas, Li Zefan)
4:20    - Break
4:50    - Workshop report-outs (networking, wireless, energy-aware scheduling)
6:05    - Program end
6:30    - Buses depart for Evening Event

Dinner event (shared with LinuxConf NA)
Museum of Science and Industry, 7:00pm to 10:00pm
