Return-Path: <SRS0=5ifu=XG=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.0 required=3.0
	tests=HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C637C49ED6
	for <ksummit-discuss@archiver.kernel.org>; Wed, 11 Sep 2019 16:04:09 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3691B20838
	for <ksummit-discuss@archiver.kernel.org>; Wed, 11 Sep 2019 16:04:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3691B20838
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=intel.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id BA9C5E24;
	Wed, 11 Sep 2019 16:03:19 +0000 (UTC)
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BD644DB9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Sep 2019 16:03:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 21EBA8B0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Sep 2019 16:03:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	11 Sep 2019 09:03:17 -0700
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="385744126"
Received: from dwillia2-desk3.jf.intel.com (HELO
	dwillia2-desk3.amr.corp.intel.com) ([10.54.39.16])
	by fmsmga006-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	11 Sep 2019 09:03:17 -0700
From: Dan Williams <dan.j.williams@intel.com>
To: linux-kernel@vger.kernel.org
Date: Wed, 11 Sep 2019 08:48:59 -0700
Message-ID: <156821693963.2951081.11214256396118531359.stgit@dwillia2-desk3.amr.corp.intel.com>
In-Reply-To: <156821692280.2951081.18036584954940423225.stgit@dwillia2-desk3.amr.corp.intel.com>
References: <156821692280.2951081.18036584954940423225.stgit@dwillia2-desk3.amr.corp.intel.com>
User-Agent: StGit/0.18-2-gc94f
MIME-Version: 1.0
Cc: Vishal Verma <vishal.l.verma@intel.com>, Dave Jiang <dave.jiang@intel.com>,
	ksummit-discuss@lists.linuxfoundation.org, linux-nvdimm@lists.01.org
Subject: [Ksummit-discuss] [PATCH v2 3/3] libnvdimm,
	MAINTAINERS: Maintainer Entry Profile
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

Document the basic policies of the libnvdimm subsystem and provide a first
example of a Maintainer Entry Profile for others to duplicate and edit.

Cc: Vishal Verma <vishal.l.verma@intel.com>
Cc: Dave Jiang <dave.jiang@intel.com>
Signed-off-by: Dan Williams <dan.j.williams@intel.com>
---
 Documentation/nvdimm/maintainer-entry-profile.rst |   64 +++++++++++++++++++++
 MAINTAINERS                                       |    4 +
 2 files changed, 68 insertions(+)
 create mode 100644 Documentation/nvdimm/maintainer-entry-profile.rst

diff --git a/Documentation/nvdimm/maintainer-entry-profile.rst b/Documentation/nvdimm/maintainer-entry-profile.rst
new file mode 100644
index 000000000000..c102950f2257
--- /dev/null
+++ b/Documentation/nvdimm/maintainer-entry-profile.rst
@@ -0,0 +1,64 @@
+LIBNVDIMM Maintainer Entry Profile
+==================================
+
+Overview
+--------
+The libnvdimm subsystem manages persistent memory across multiple
+architectures. The mailing list, is tracked by patchwork here:
+https://patchwork.kernel.org/project/linux-nvdimm/list/
+...and that instance is configured to give feedback to submitters on
+patch acceptance and upstream merge. Patches are merged to either the
+'libnvdimm-fixes', or 'libnvdimm-for-next' branch. Those branches are
+available here:
+https://git.kernel.org/pub/scm/linux/kernel/git/nvdimm/nvdimm.git/
+
+In general patches can be submitted against the latest -rc, however if
+the incoming code change is dependent on other pending changes then the
+patch should be based on the libnvdimm-for-next branch. However, since
+persistent memory sits at the intersection of storage and memory there
+are cases where patches are more suitable to be merged through a
+Filesystem or the Memory Management tree. When in doubt copy the nvdimm
+list and the maintainers will help route.
+
+Submissions will be exposed to the kbuild robot for compile regression
+testing. It helps to get a success notification from that infrastructure
+before submitting, but it is not required.
+
+
+Submit Checklist Addendum
+-------------------------
+There are unit tests for the subsystem via the ndctl utility:
+https://github.com/pmem/ndctl
+Those tests need to be passed before the patches go upstream, but not
+necessarily before initial posting. Contact the list if you need help
+getting the test environment set up.
+
+
+Key Cycle Dates
+---------------
+New submissions can be sent at any time, but if they intend to hit the
+next merge window they should be sent before -rc4, and ideally
+stabilized in the libnvdimm-for-next branch by -rc6. Of course if a
+patch set requires more than 2 weeks of review -rc4 is already too late
+and some patches may require multiple development cycles to review.
+
+
+Coding Style Addendum
+---------------------
+libnvdimm expects multi-line statements to be double indented. I.e.
+
+        if (x...
+                        && ...y) {
+
+
+Review Cadence
+--------------
+In general, please wait up to one week before pinging for feedback. A
+private mail reminder is preferred. Alternatively ask for other
+developers that have Reviewed-by tags for libnvdimm changes to take a
+look and offer their opinion.
+
+
+Style Cleanup Patches
+---------------------
+Standalone style-cleanups are welcome.
diff --git a/MAINTAINERS b/MAINTAINERS
index e5d111a86e61..2be1e18a368e 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -9185,6 +9185,7 @@ M:	Dan Williams <dan.j.williams@intel.com>
 M:	Vishal Verma <vishal.l.verma@intel.com>
 M:	Dave Jiang <dave.jiang@intel.com>
 L:	linux-nvdimm@lists.01.org
+P:	Documentation/nvdimm/maintainer-entry-profile.rst
 Q:	https://patchwork.kernel.org/project/linux-nvdimm/list/
 S:	Supported
 F:	drivers/nvdimm/blk.c
@@ -9195,6 +9196,7 @@ M:	Vishal Verma <vishal.l.verma@intel.com>
 M:	Dan Williams <dan.j.williams@intel.com>
 M:	Dave Jiang <dave.jiang@intel.com>
 L:	linux-nvdimm@lists.01.org
+P:	Documentation/nvdimm/maintainer-entry-profile.rst
 Q:	https://patchwork.kernel.org/project/linux-nvdimm/list/
 S:	Supported
 F:	drivers/nvdimm/btt*
@@ -9204,6 +9206,7 @@ M:	Dan Williams <dan.j.williams@intel.com>
 M:	Vishal Verma <vishal.l.verma@intel.com>
 M:	Dave Jiang <dave.jiang@intel.com>
 L:	linux-nvdimm@lists.01.org
+P:	Documentation/nvdimm/maintainer-entry-profile.rst
 Q:	https://patchwork.kernel.org/project/linux-nvdimm/list/
 S:	Supported
 F:	drivers/nvdimm/pmem*
@@ -9223,6 +9226,7 @@ M:	Dave Jiang <dave.jiang@intel.com>
 M:	Keith Busch <keith.busch@intel.com>
 M:	Ira Weiny <ira.weiny@intel.com>
 L:	linux-nvdimm@lists.01.org
+P:	Documentation/nvdimm/maintainer-entry-profile.rst
 Q:	https://patchwork.kernel.org/project/linux-nvdimm/list/
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/nvdimm/nvdimm.git
 S:	Supported

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
