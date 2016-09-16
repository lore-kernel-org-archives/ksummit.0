Return-Path: <paolo.valente@linaro.org>
From: Paolo Valente <paolo.valente@linaro.org>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Date: Fri, 16 Sep 2016 09:55:45 +0200
Message-Id: <E9D83DEA-B8D1-4E51-AF9C-8C67CFEDCE39@linaro.org>
To: ksummit-discuss@lists.linux-foundation.org
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Cc: b.zolnierkie@samsung.com, Jens Axboe <axboe@fb.com>, hare@suse.de,
	Tejun Heo <tj@kernel.org>, osandov@osandov.com, hch@lst.de
Subject: [Ksummit-discuss] [TECH TOPIC] Addressing long-standing
	high-latency problems related to I/O
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Linux systems suffers from long-standing high-latency problems, at
system and application level, related to I/O.  For example, they
usually suffer from poor responsiveness--or even starvation, depending
on the workload--while, e.g., one or more files are being
read/written/copied.  On a similar note, background workloads may
cause audio/video playback/streaming to stutter, even with long gaps.
A lot of test results on this problem can be found here [1] (I'm
citing only this resource just because I'm familiar with it, but
evidence can be found in countless technical reports, scientific
papers, forum discussions, and so on).

These problems are caused mainly by poor I/O scheduling, although I/O
schedulers are not the only culprit.  To address these issues, eight
years ago I started to work on a new I/O scheduler, named BFQ [1], with
other researchers and developers.  Since then, we have improved
and fine-tuned BFQ rather constantly.  In particular we have
tested it extensively, especially on desktop system.  In our
easily-repeatable experiments, BFQ proves to be able to solve latency
issues in many, if not most, use cases [2].  For example, regardless of
the background workload considered in [2], application start-up times
are about the same as when the storage device is idle.  Similarly,
audio/video playback is always perfectly smooth.  The feedback
received so far confirms our results.  In this respect, BFQ is, e.g.,
the default I/O scheduler in a few distributions, including Sabayon
and Arch Linux ARM, as well as in CyanoGenMod for several devices.

BFQ has been submitted several times on lkml over the last eight
years, the last times by me.  But it has not made it, for (apparently)
other reasons than how serious the latency problem is, or how
effectively BFQ solves it.  In short, the problem with the first
patchsets was that they added a new scheduler, while it was decided
that they should have replaced CFQ instead [3].  Then time passed in
various submit&revise rounds.  Meanwhile blk-mq has entered mainline,
and a new objection has been raised: it is not sensible to touch code
(blk) that will eventually be deprecated [4].

In view of these facts, I would like to propose a discussion on this
topic, and, in particular on the following points:

1) If blk will still be used in a considerable number of systems for
at least one or two more years, as many thinks it is the case, is it
sensible to prevent a lot of users from enjoying a responsive and
smooth system?  It does not seem a good idea, also because having
BFQ, or an even better variant of it, in blk would imply having a
strong reference benchmark to drive the development of effective I/O
scheduling also in blk-mq.

2) Work is going on in blk-mq to add I/O scheduling, but IMHO current
approaches and ideas may not be sufficient to solve the above latency
problems.  So, still IMO, latency issues may get even worse for low-
and medium-speed single-queue devices in the transition to blk-mq, as
there is no I/O scheduling yet in blk-mq, and these issues may remain
there if no accurate-enough scheduler is added.  In contrast, solving
latency issues, and not only improving throughput, is probably quite
important to speed up the transition to blk-mq for these devices.

3) Can we join forces to solve latency problems in blk-mq?  By working
on BFQ, I should have gained some experience on I/O scheduling
and on providing strong service guarantees (low latency, accurate
bandwidth distribution, ...), yet I'm all but an expert of bulk-mq's
inner workings and issues.  I'm willing to help on all areas in this
regard, including tasks related to the previous point.

Thanks,
Paolo

[1] http://algogroup.unimore.it/people/paolo/disk_sched/
[2] http://algogroup.unimore.it/people/paolo/disk_sched/results.php
[3] =
https://lists.linux-foundation.org/pipermail/containers/2014-June/034704.h=
tml
[4] https://lkml.org/lkml/2016/8/8/207
