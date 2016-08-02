Return-Path: <rdunlap@infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 63FDA2C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 04:40:45 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C5271AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 04:40:44 +0000 (UTC)
To: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <0e76826b-6552-e880-42fc-17be0c5bf3fe@infradead.org>
Date: Mon, 1 Aug 2016 20:46:05 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Cc: Michal Marek <mmarek@suse.cz>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Jiri Olsa <jolsa@kernel.org>, Arjan van de Ven <arjan@linux.intel.com>,
	Ingo Molnar <mingo@kernel.org>
Subject: [Ksummit-discuss] [TECH TOPIC] tools/Makefile: Fix Many Many
 problems and inconsistencies
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

and subdir Makefiles.

Examples:

Use/honor O=outputdir consistently instead of building in <kerneltree>/tools.
(check/compare kernel commit bf35182ffcd00d8b36d56210ffdac110e5624d7d)

Honor MAKEFLAGS (well, they aren't even passed to tools/Makefile AFAICT.
from an execution log:
make LDFLAGS= MAKEFLAGS="" O=/local/lnx/kernel/lnx-47/TOOLS subdir=tools -C ../tools/ all

Use make's "findstring" correctly (see patch below)

There are lots of other problems unless I have just had too much too drink tonight,
so here's the TECH TOPIC:

In a 1.5 hour code crunch session, get a bunch of interested people together to fix
a lot of problems quickly.  Then I will be a guinea pig tester.  :)


Self-nomination: /me.
Others interested:
Arnaldo (acme); Michal Marek.


Thanks.
---

From: Randy Dunlap <rdunlap@infradead.org>

Use GCC make's "findstring findthis,instring" correctly;
i.e., reverse its arguments in tools/scripts/Makefiles.include.

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
---
 tools/scripts/Makefile.include |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

This never worked, right?  because of the argument ordering
and because MAKEFLAGS=""!

--- lnx-47.orig/tools/scripts/Makefile.include
+++ lnx-47/tools/scripts/Makefile.include
@@ -40,7 +40,7 @@ EXTRA_WARNINGS += -Wundef
 EXTRA_WARNINGS += -Wwrite-strings
 EXTRA_WARNINGS += -Wformat
 
-ifneq ($(findstring $(MAKEFLAGS), w),w)
+ifneq ($(findstring w,$(MAKEFLAGS)),w)
 PRINT_DIR = --no-print-directory
 else
 NO_SUBDIR = :
@@ -58,7 +58,7 @@ descend = \
 QUIET_SUBDIR0  = +$(MAKE) $(COMMAND_O) -C # space to separate -C and subdir
 QUIET_SUBDIR1  =
 
-ifneq ($(findstring $(MAKEFLAGS),s),s)
+ifneq ($(findstring s,$(MAKEFLAGS)),s)
   ifneq ($(V),1)
 	QUIET_CC       = @echo '  CC       '$@;
 	QUIET_CC_FPIC  = @echo '  CC FPIC  '$@;
