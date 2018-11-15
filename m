Return-Path: <dan.j.williams@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D8D9FACD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Nov 2018 05:05:19 +0000 (UTC)
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 52B9D8B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Nov 2018 05:05:19 +0000 (UTC)
From: Dan Williams <dan.j.williams@intel.com>
To: linux-kernel@vger.kernel.org
Date: Wed, 14 Nov 2018 20:53:30 -0800
Message-ID: <154225761038.2499188.1270468803677883744.stgit@dwillia2-desk3.amr.corp.intel.com>
In-Reply-To: <154225759358.2499188.15268218778137905050.stgit@dwillia2-desk3.amr.corp.intel.com>
References: <154225759358.2499188.15268218778137905050.stgit@dwillia2-desk3.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Cc: Dave Jiang <dave.jiang@intel.com>,
	ksummit-discuss@lists.linuxfoundation.org, linux-nvdimm@lists.01.org,
	Vishal Verma <vishal.l.verma@intel.com>, Ross Zwisler <zwisler@kernel.org>
Subject: [Ksummit-discuss] [RFC PATCH 3/3] libnvdimm,
	MAINTAINERS: Subsystem Profile
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Document the basic policies of the libnvdimm subsystem and provide a
first example of a Subsystem Profile for others to duplicate and edit.

Cc: Ross Zwisler <zwisler@kernel.org>
Cc: Vishal Verma <vishal.l.verma@intel.com>
Cc: Dave Jiang <dave.jiang@intel.com>
Signed-off-by: Dan Williams <dan.j.williams@intel.com>
---
 Documentation/nvdimm/subsystem-profile.rst |   86 ++++++++++++++++++++++++++++
 MAINTAINERS                                |    4 +
 2 files changed, 90 insertions(+)
 create mode 100644 Documentation/nvdimm/subsystem-profile.rst

diff --git a/Documentation/nvdimm/subsystem-profile.rst b/Documentation/nvdimm/subsystem-profile.rst
new file mode 100644
index 000000000000..d3428be7528e
--- /dev/null
+++ b/Documentation/nvdimm/subsystem-profile.rst
@@ -0,0 +1,86 @@
+LIBNVDIMM Subsystem Profile
+===========================
+
+Overview
+--------
+So, you have recently become a maintainer of the LIBNVDIMM subsystem,
+condolences, it is a thankless job, here is the lay of the land. The git
+tree, git.kernel.org/pub/scm/linux/kernel/git/nvdimm/nvdimm.git/, is
+writable by all the individuals listed in LIBNVDIMM section of
+MAINTAINERS. Access is granted per the typical kernel.org account
+management policies. Two branches in that tree are regularly pulled into
+-next, libnvdimm-for-next, and libnvdimm-fixes. The submit rate of
+patches is low, usually enough for one person to handle. There is a
+patchwork instance at
+https://patchwork.kernel.org/project/linux-nvdimm/list/, and it
+historically is only used for ingesting patches and collecting
+ack/review tags, i.e. no expectation to update the patch state after it
+has been dispositioned, or merged.
+
+The most sensitive code area is the ACPI DSM (Device Specific Method)
+path. In addition to the general fragility of an ioctl() ABI the ACPI
+DSM scheme allows any vendor to implement any command without any prior
+review by the ACPI committee. For this reason the LIBNVDIMM system seeks
+to constrain the proliferation of vendor commands and at a minimum
+requires any command support to be publicly documented. Over time the
+submission rate of new vendor-specific commands is falling as more
+commands are defined with named methods in the official ACPI
+specification.
+
+LIBNVDIMM sits at the intersection of device-drivers, the block-layer,
+core memory-management, and filesystems. Be sure to re-route memory
+management patches to the -mm tree, and otherwise pull-in fs-devel for
+patches that touch anything related to DAX.
+
+Core
+----
+F: drivers/nvdimm/\*_devs.c
+F: drivers/acpi/nfit/\*.[ch]
+
+
+Patches or Pull requests
+------------------------
+Patches only
+
+
+Last day for new feature submissions
+------------------------------------
+Before -rc5
+
+
+Last day to merge features
+--------------------------
+End of last -rc
+
+
+Non-author Ack / Review Tags Required
+-------------------------------------
+Required
+
+
+Test Suite
+----------
+Run ‘make check’ from https://github.com/pmem/ndctl
+
+
+Trusted Reviewers
+-----------------
+Johannes Thumshirn
+Toshi Kani
+Jeff Moyer
+Robert Elliott
+
+
+Resubmit Cadence
+----------------
+8 business days
+
+
+Time Zone / Office Hours
+------------------------
+8:00am to 5:00pm Pacific Time Zone
+
+
+Checkpatch / Style cleanups
+---------------------------
+Standalone style-cleanups are welcome.
diff --git a/MAINTAINERS b/MAINTAINERS
index bb4a83a7684d..ba2beedd4605 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8439,6 +8439,7 @@ M:	Dan Williams <dan.j.williams@intel.com>
 M:	Vishal Verma <vishal.l.verma@intel.com>
 M:	Dave Jiang <dave.jiang@intel.com>
 L:	linux-nvdimm@lists.01.org
+P:	Documentation/nvdimm/subsystem-profile.rst
 Q:	https://patchwork.kernel.org/project/linux-nvdimm/list/
 S:	Supported
 F:	drivers/nvdimm/blk.c
@@ -8450,6 +8451,7 @@ M:	Dan Williams <dan.j.williams@intel.com>
 M:	Ross Zwisler <zwisler@kernel.org>
 M:	Dave Jiang <dave.jiang@intel.com>
 L:	linux-nvdimm@lists.01.org
+P:	Documentation/nvdimm/subsystem-profile.rst
 Q:	https://patchwork.kernel.org/project/linux-nvdimm/list/
 S:	Supported
 F:	drivers/nvdimm/btt*
@@ -8460,6 +8462,7 @@ M:	Dan Williams <dan.j.williams@intel.com>
 M:	Vishal Verma <vishal.l.verma@intel.com>
 M:	Dave Jiang <dave.jiang@intel.com>
 L:	linux-nvdimm@lists.01.org
+P:	Documentation/nvdimm/subsystem-profile.rst
 Q:	https://patchwork.kernel.org/project/linux-nvdimm/list/
 S:	Supported
 F:	drivers/nvdimm/pmem*
@@ -8478,6 +8481,7 @@ M:	Ross Zwisler <zwisler@kernel.org>
 M:	Vishal Verma <vishal.l.verma@intel.com>
 M:	Dave Jiang <dave.jiang@intel.com>
 L:	linux-nvdimm@lists.01.org
+P:	Documentation/nvdimm/subsystem-profile.rst
 Q:	https://patchwork.kernel.org/project/linux-nvdimm/list/
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/nvdimm/nvdimm.git
 S:	Supported
