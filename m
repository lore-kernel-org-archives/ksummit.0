Return-Path: <mchehab@osg.samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 40D6D97
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 Oct 2015 12:33:09 +0000 (UTC)
Received: from lists.s-osg.org (lists.s-osg.org [54.187.51.154])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 8CC2A13E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 Oct 2015 12:33:08 +0000 (UTC)
Date: Mon, 19 Oct 2015 10:33:04 -0200
From: Mauro Carvalho Chehab <mchehab@osg.samsung.com>
To: Theodore Ts'o <tytso@mit.edu>
Message-ID: <20151019103304.27e596a5@recife.lan>
In-Reply-To: <20151012190137.GA1992@thunk.org>
References: <20151012190137.GA1992@thunk.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Draft agenda for the kernel summit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Mon, 12 Oct 2015 15:01:37 -0400
Theodore Ts'o <tytso@mit.edu> escreveu:

> This is an initial draft for the upcoming kernel summit.
> 
> It is still very drafty; in particular, just because a topic has been
> listed, it may turn out that the topic has been resolved off-line, or
> otherwise overtaken by events, in which case we will drop it.  In
> addition, we're also in the process of sending queries to the proposed
> topic leaders to see if they are willing to kick off the discussion,
> and so that is subject to change as well.
> 
> I'd appreciate comments about any topics that you think might be
> missing and that would be worth our discussing.  In addition, if you
> have strong opinions moving a topic from the technical session day to
> the core day or vice versa, please make the case for the change.
> 
> There will be some TBD slots which can be scheduled at the last
> minute, but I'd like to get at least one full track of the technical
> sessions and most of the core sessions scheduled.
> 
> Many thanks,
> 
> 					- Ted
> 
> 
> 			  Kernel Summit Agenda
> 			   October 26-28, 2015
> 				 DRAFT
> 
> Web Version Agenda:		
> 
> * Monday: Workshops and break out sessions (overlap with Korea Linux Forum)
> * Tuesday: Dual-track technical sessions
> * Wednesday: Invite-only core attendees' plenary sessions
> 
> Dual-Track Technical sessions (Oct. 27th)
> =========================================
> 
> 9:00    - Welcome and agenda bashing
> 9:30	- Topic A1                   | Topic B1
> 10:00   - Topic A2                   | Topic B2
> 10:30   - Break
> 11:00	- Topic A3                   | Topic B3
> 11:30   - Topic A4                   | Topic B4
> 12:00   - Topic A5                   | Topic B5
> 12:30   - Lunch
> 1:30    - Topic A6                   | Topic B6
> 2:00    - Topic A7                   | Topic B7
> 2:30    - Break
> 3:00    - Topic A8                   | Topic B8
> 3:30    - Topic A9                   | Topic B9
> 4:00    - Topic A10                  | Topic B10
> 4:30    - Break
> 5:00    - Kernel Summit Tech Day -- What went well, what can we do better? 
> 5:30    - Group Photograph (for core day attendees)
> 6:30    - Dinner
> 
> Potential Tech topics
> =====================
> 
> 1. Mainline kernel on a cellphone (need someone to lead?)
> 2. Semantics of MMIO mapping attributes across archs (Benjamin Herrenschmidt)
> 3. GPIO API/ABI discussion (need someone to lead?)
> 4. System-wide interface to specify the level of PM tuning (Rafael J. Wysocki)
> 5. Giving freezer well-defined semantics (Jiri Kosina)
> 6. IRQ affinity (Christoph Hellwig)
> 7. benchmarking and performance trends (Chris Mason)
> 8. FPGAs and how to program them from kernel (need somone to lead?
> 9. Overlays and file(system) unioning issues (David Howells)
> 10. Firmware signing (David Howells)
> 11. Context tracking / nohz / RCU state (Andy Lutomirski)
> 12. userspace infrastructure services (Stephen Hemminger)
> 13. Kernel support for compute-offload devices (Joerg Roedel)
> 14. Improving Kernel Security 
> 15. Developer Workflow Security (Panel)

Could you please add a new topic:

16. The Next Generation of the Media Controller (Mauro Carvalho Chehab)

Along the years, we've been developing a mechanism at the Kernel to store
and present graphs to userspace, called Media Controller. The original
scope of the Media Controller were to store and represent pipeline
connections between hardware components on complex streaming devices,
like the ones that are used for webcams on cell phones, where there are
typically two camera sensors, and lots of processing units to enhance
the image and to convert it into different formats.

Since the beginning, we found that it would be useful to use it some day
on other subsystems, but we were too busy doing it at V4L2.

At the end of the last year, we added support for the Media Controller
on DVB, using the existing API, in order to represent hybrid TV devices
with radio, analog TV (video and audio) and digital TV.  However, as it
didn't fit quite well, the DVB MC support was marked as broken before
reaching upstream, and we designed and implemented a next generation of
the API, together with userspace applications to test it.

The ultimate goal will be to support the pipelines on a TV set and Set
Top Boxes. On such devices, the streaming data pipeline can cover camera
sensors, analog TV, digital TV, crypto/decrypto modules, audio and GPU.
Also, they may have network interfaces that may be provided via DVB
(with is very useful on Cable TV).

So, as we want/need to represent and control the full pipeline, the media
controller has to have support on different subsystems: V4L2, DVB, ALSA,
DRM and Network. It also needs a way to share a common struct between
those subsystems without making them depend on each other. So, it should
use devres.

We did a Media Controller Summit in July. During the summit, it was
pointed that other subsystems like IIO (Linux Industrial I/O) have
similar needs and also need to track complex pipelines. 

The goal of this tech topic is to present the MC next generation
concepts and how the patches to support MC was written, showing some
pipeline examples. 

The next gen support patches were written in August, with some 
additional patches written after that, and it has support for DVB
and for one ALSA driver (snd-usb-audio).

The patches are not merged yet at the media development tree and
at -next, as one of the core developers of the media controller
is missing time to review patches. So, while it was originally
targeted to be merged on Kernel 4.4, it is likely that this will be 
merged only for Kernel 4.5, in order to give him more time to
review the patchset.

PS.: I send already a [TECH TOPIC] about that on Aug, 6, and some
people seemed to be interested.
