Return-Path: <fengguang.wu@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8EE638D5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 16 Aug 2014 01:32:13 +0000 (UTC)
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id E66E920215
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 16 Aug 2014 01:32:12 +0000 (UTC)
Date: Sat, 16 Aug 2014 09:32:17 +0800
From: Fengguang Wu <fengguang.wu@intel.com>
To: Christoph Lameter <cl@linux.com>
Message-ID: <20140816013217.GA4753@localhost>
References: <5370DB7B.2040706@fb.com> <20140512235430.GA16440@thin>
	<1399941081.2648.51.camel@buesod1.americas.hpqcorp.net>
	<20140814150152.GA4597@localhost>
	<alpine.DEB.2.11.1408141216180.26922@gentwo.org>
	<20140815041312.GB15844@localhost>
	<alpine.DEB.2.11.1408150907260.27785@gentwo.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="VS++wcV0S1rZb1Fb"
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.11.1408150907260.27785@gentwo.org>
Cc: Daniel Borkmann <dborkman@redhat.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: [Ksummit-discuss] 0day kernel performance/power test service
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--VS++wcV0S1rZb1Fb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Aug 15, 2014 at 09:07:47AM -0500, Christoph Lameter wrote:
> On Fri, 15 Aug 2014, Fengguang Wu wrote:
> 
> > On Thu, Aug 14, 2014 at 12:17:38PM -0500, Christoph Lameter wrote:
> > > On Thu, 14 Aug 2014, Fengguang Wu wrote:
> > >
> > > > The proc-vmstat, perf-profile, cpuidle, turbostat etc. "monitors" are
> > > > inspired by Mel Gorman's mmtests suite and they are really helpful in
> > > > catching&analyzing the subtle impacts a patch might bring to the system.
> > >
> > > Mel also has some interesting tests in the suite like the page fault test
> > > and aim9 among numerous others. Could those also be added?
> >
> > Sure. I just added aim9 to the TODO list.
> >
> > pft is already included in lkp-tests:
> >
> > % ls */pft
> > jobs/pft.yaml  pack/pft  pack/pft.patch  stats/pft  tests/pft
> 
> Are the test results somewhere publicly available?

Not available yet.. Sorry! For now I'm afraid I can only send tar
balls of raw results on your request.

btw, we'll offer an experimental 0day performance/power testing
service for the core maintainer trees. Just send me a lkp-tests patch
(attached an example for ext4:dev) to selectively run a set of test
jobs on a set of machines for your tree:branch. Future git push will
then trigger the test set and you'll receive the report that compares
the branch BASE:HEAD performance in 24 hours.

The patch is basically selecting a combination of test jobs and machines.
All the available test jobs and machines are included in lkp-tests. You
are also welcome to add new jobs to the pool.

wfg /c/lkp-tests% ls hosts
bay         ivb43     lkp-nex04  lkp-sb03   lkp-t410   loslunas   vm-kbuild-2G          vm-kbuild-yocto-x86_64  vm-vp-quantal-x86_64  xps2
bens        ivb44     lkp-nex05  lkp-sbx04  lkp-ws02   nhm4       vm-kbuild-4G          vm-vp-1G                wsm
brickland1  lkp-ne02  lkp-nex06  lkp-snb01  lkp-wsx01  nhm-white  vm-kbuild-yocto-i386  vm-vp-2G                xbm
brickland3  lkp-ne04  lkp-sb02   lkp-st02   lkp-wsx02  snb-drag   vm-kbuild-yocto-ia32  vm-vp-quantal-i386      xps

wfg /c/lkp-tests% ls jobs
blogbench.yaml           dd-write.yaml                          hackbench-8.yaml       netperf.yaml                tbench.yaml
boot.yaml                debug.yaml                             hackbench-cpuset.yaml  nfs-iozone.yaml             tcrypt.yaml
borrow-1d.yaml           DEFAULTS                               hackbench-perf.yaml    nuttcp.yaml                 thrulay.yaml
borrow-1h.yaml           ebizzy.yaml                            hackbench.yaml         oltp.yaml                   tlbflush.yaml
dbench.yaml              fileio.yaml                            idle.yaml              packetdrill.yaml            unixbench.yaml
dd-write-11hdd.yaml      fio-jbod-12hdd-randwrite-sync-4k.yaml  iozone.yaml            perf-bench-numa-mem.yaml    vm-scalability-numa.yaml
dd-write-1hdd-fuse.yaml  fio-jbod-12hdd.yaml                    iperf.yaml             perf-bench-sched-pipe.yaml  vm-scalability.yaml
dd-write-1hdd.yaml       fsmark.yaml                            kbuild.yaml            pft.yaml                    will-it-scale.yaml
dd-write-1ssd.yaml       ftq.yaml                               kernel_selftests.yaml  piglit.yaml                 xfstests-btrfs.yaml
dd-write-4hdd-fuse.yaml  fwq.yaml                               linpack.yaml           pigz.yaml                   xfstests-ext4.yaml
dd-write-4hdd.yaml       glbenchmark.yaml                       ltp.yaml               qperf.yaml                  xfstests-generic.yaml
dd-write-hdd-usb.yaml    hackbench-6.yaml                       nepim.yaml             sockperf.yaml               xfstests-xfs.yaml

Thanks,
Fengguang

--VS++wcV0S1rZb1Fb
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="0001-define-0day-performance-test-set-for-ext4-dev.patch"

>From 8cd384c2f34f593d829457e7043ee6cca204bda3 Mon Sep 17 00:00:00 2001
From: Fengguang Wu <fengguang.wu@intel.com>
Date: Sat, 16 Aug 2014 09:12:35 +0800
Subject: [PATCH] define 0day performance test set for ext4/dev

This set of test jobs will be auto triggered by git push and
email report should be sent to the committer in 1 day.

CC: Theodore Ts'o <tytso@mit.edu>
Signed-off-by: Fengguang Wu <fengguang.wu@intel.com>
---
 allot/ext4:dev/lkp-ne04/fsmark-ext4.yaml           | 27 ++++++++++++++++++++++
 allot/ext4:dev/lkp-st02/dd-write-11hdd-ext4.yaml   | 27 ++++++++++++++++++++++
 .../vm-kbuild-2G/xfstests-generic-ext4.yaml        | 16 +++++++++++++
 allot/ext4:dev/vm-vp-1G/xfstests-ext4.yaml         |  1 +
 4 files changed, 71 insertions(+)
 create mode 100644 allot/ext4:dev/lkp-ne04/fsmark-ext4.yaml
 create mode 100644 allot/ext4:dev/lkp-st02/dd-write-11hdd-ext4.yaml
 create mode 100644 allot/ext4:dev/vm-kbuild-2G/xfstests-generic-ext4.yaml
 create mode 120000 allot/ext4:dev/vm-vp-1G/xfstests-ext4.yaml

diff --git a/allot/ext4:dev/lkp-ne04/fsmark-ext4.yaml b/allot/ext4:dev/lkp-ne04/fsmark-ext4.yaml
new file mode 100644
index 0000000..ca2e3ea
--- /dev/null
+++ b/allot/ext4:dev/lkp-ne04/fsmark-ext4.yaml
@@ -0,0 +1,27 @@
+testcase: fsmark
+
+iterations: 1x
+nr_threads: 32t
+
+disk: 1HDD
+fs:
+- ext4
+
+fsmark:
+  filesize: 16MB
+  test_size: 60G
+  sync_method:
+  - NoSync
+  - fsyncBeforeClose
+  nr_directories: 16d
+  nr_files_per_directory: 256f
+
+---
+fsmark:
+  filesize:
+  - 8K
+  - 9B
+  test_size: 400M
+  sync_method: fsyncBeforeClose
+  nr_directories: 16d
+  nr_files_per_directory: 256f
diff --git a/allot/ext4:dev/lkp-st02/dd-write-11hdd-ext4.yaml b/allot/ext4:dev/lkp-st02/dd-write-11hdd-ext4.yaml
new file mode 100644
index 0000000..d59f3dd
--- /dev/null
+++ b/allot/ext4:dev/lkp-st02/dd-write-11hdd-ext4.yaml
@@ -0,0 +1,27 @@
+testcase: dd-write
+
+runtime: 5m
+
+disk: 11HDD
+md:
+- JBOD
+- RAID5
+iosched:
+- cfq
+fs:
+- ext4
+
+monitors:
+  perf-stat:
+  perf-profile:
+  ftrace:
+  - events:
+      balance_dirty_pages
+      bdi_dirty_ratelimit
+      global_dirty_state
+      writeback_single_inode
+
+nr_threads:
+- 100dd
+
+dd:
diff --git a/allot/ext4:dev/vm-kbuild-2G/xfstests-generic-ext4.yaml b/allot/ext4:dev/vm-kbuild-2G/xfstests-generic-ext4.yaml
new file mode 100644
index 0000000..2561003
--- /dev/null
+++ b/allot/ext4:dev/vm-kbuild-2G/xfstests-generic-ext4.yaml
@@ -0,0 +1,16 @@
+testcase: xfstests
+
+default_monitors:
+
+disk: 4HDD
+
+fs:
+- ext4
+
+xfstests:
+  test:
+  - generic-113
+  - generic-slow1
+  - generic-slow2
+  - generic-mid
+  - generic-quick
diff --git a/allot/ext4:dev/vm-vp-1G/xfstests-ext4.yaml b/allot/ext4:dev/vm-vp-1G/xfstests-ext4.yaml
new file mode 120000
index 0000000..e3ea5c2
--- /dev/null
+++ b/allot/ext4:dev/vm-vp-1G/xfstests-ext4.yaml
@@ -0,0 +1 @@
+../../../jobs/xfstests-ext4.yaml
\ No newline at end of file
-- 
2.1.0.rc1


--VS++wcV0S1rZb1Fb--
