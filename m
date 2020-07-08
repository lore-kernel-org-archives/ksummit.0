Return-Path: <SRS0=cq3z=AT=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 11D55C433E0
	for <ksummit-discuss@archiver.kernel.org>; Wed,  8 Jul 2020 18:30:51 +0000 (UTC)
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E104320672
	for <ksummit-discuss@archiver.kernel.org>; Wed,  8 Jul 2020 18:30:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E104320672
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=intel.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8F26E8908E;
	Wed,  8 Jul 2020 18:30:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1-IlGnUV1Hjh; Wed,  8 Jul 2020 18:30:49 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id DFF6189071;
	Wed,  8 Jul 2020 18:30:48 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B0C0FC1798;
	Wed,  8 Jul 2020 18:30:48 +0000 (UTC)
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 71102C016F;
 Wed,  8 Jul 2020 18:30:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 57B6B87B7C;
 Wed,  8 Jul 2020 18:30:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9knlEpl-TyHP; Wed,  8 Jul 2020 18:30:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 070C687B7B;
 Wed,  8 Jul 2020 18:30:45 +0000 (UTC)
IronPort-SDR: 3FZTHayRTw+/VVxIG/CfEQBey+A22choxoCcJM8FjPgKkZ0nSKEfr6vpIz4kj9EdfjI+dOtWFU
 sScu1y827IoA==
X-IronPort-AV: E=McAfee;i="6000,8403,9676"; a="127469358"
X-IronPort-AV: E=Sophos;i="5.75,328,1589266800"; d="scan'208";a="127469358"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2020 11:30:44 -0700
IronPort-SDR: M68QhvymFMKrag4yBhuycjyu6hH2hf8RGYnkGb9dCguMfPLnnxtoUpQAsvkVpFOWazkcG6vkmi
 xq0HaLrt/aJg==
X-IronPort-AV: E=Sophos;i="5.75,328,1589266800"; d="scan'208";a="388897428"
Received: from dwillia2-desk3.jf.intel.com (HELO
 dwillia2-desk3.amr.corp.intel.com) ([10.54.39.16])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2020 11:30:43 -0700
From: Dan Williams <dan.j.williams@intel.com>
To: corbet@lwn.net
Date: Wed, 08 Jul 2020 11:14:27 -0700
Message-ID: <159423201991.2466245.8461410729774664077.stgit@dwillia2-desk3.amr.corp.intel.com>
User-Agent: StGit/0.18-3-g996c
MIME-Version: 1.0
Cc: ksummit-discuss@lists.linuxfoundation.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 SeongJae Park <sjpark@amazon.de>, linux-kernel@vger.kernel.org,
 tech-board-discuss@lists.linuxfoundation.org,
 James Bottomley <James.Bottomley@HansenPartnership.com>,
 Dave Airlie <airlied@redhat.com>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Subject: [Ksummit-discuss] [PATCH v3] CodingStyle: Inclusive Terminology
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.15
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
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

Linux maintains a coding-style and its own idiomatic set of terminology.
Update the style guidelines to recommend replacements for the terms
master/slave and blacklist/whitelist.

Link: http://lore.kernel.org/r/159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com
Acked-by: Randy Dunlap <rdunlap@infradead.org>
Acked-by: Dave Airlie <airlied@redhat.com>
Acked-by: SeongJae Park <sjpark@amazon.de>
Acked-by: Christian Brauner <christian.brauner@ubuntu.com>
Acked-by: James Bottomley <James.Bottomley@HansenPartnership.com>
Reviewed-by: Mark Brown <broonie@kernel.org>
Signed-off-by: Theodore Ts'o <tytso@mit.edu>
Signed-off-by: Shuah Khan <skhan@linuxfoundation.org>
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Olof Johansson <olof@lixom.net>
Signed-off-by: Jonathan Corbet <corbet@lwn.net>
Signed-off-by: Chris Mason <clm@fb.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Dan Williams <dan.j.williams@intel.com>
---
Changes since v2 [1]:
- Pick up missed sign-offs and acks from Jon, Shuah, and Christian
  (sorry about missing those earlier).

- Reformat the replacement list to make it easier to read.

- Add 'controller' as a suggested replacement (Kees and Mark)

- Fix up the paired term for 'performer' to be 'director' (Kees)

- Collect some new acks, reviewed-by's, and sign-offs for v2.

- Fix up Chris's email

[1]: http://lore.kernel.org/r/159419296487.2464622.863943877093636532.stgit@dwillia2-desk3.amr.corp.intel.com


 Documentation/process/coding-style.rst |   20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/Documentation/process/coding-style.rst b/Documentation/process/coding-style.rst
index 2657a55c6f12..1bee6f8affdb 100644
--- a/Documentation/process/coding-style.rst
+++ b/Documentation/process/coding-style.rst
@@ -319,6 +319,26 @@ If you are afraid to mix up your local variable names, you have another
 problem, which is called the function-growth-hormone-imbalance syndrome.
 See chapter 6 (Functions).
 
+For symbol names and documentation, avoid introducing new usage of
+'master / slave' (or 'slave' independent of 'master') and 'blacklist /
+whitelist'.
+
+Recommended replacements for 'master / slave' are:
+    '{primary,main} / {secondary,replica,subordinate}'
+    '{initiator,requester} / {target,responder}'
+    '{controller,host} / {device,worker,proxy}'
+    'leader / follower'
+    'director / performer'
+
+Recommended replacements for 'blacklist/whitelist' are:
+    'denylist / allowlist'
+    'blocklist / passlist'
+
+Exceptions for introducing new usage is to maintain a userspace ABI/API,
+or when updating code for an existing (as of 2020) hardware or protocol
+specification that mandates those terms. For new specifications
+translate specification usage of the terminology to the kernel coding
+standard where possible.
 
 5) Typedefs
 -----------

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
