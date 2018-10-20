Return-Path: <SRS0=0QPY=NA=linuxfoundation.org=gregkh@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B8224723
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 20 Oct 2018 13:52:03 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6F9D3762
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 20 Oct 2018 13:52:03 +0000 (UTC)
Date: Sat, 20 Oct 2018 15:50:43 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel <linux-kernel@vger.kernel.org>
Message-ID: <20181020135043.GE32218@kroah.com>
References: <20181020134908.GA32218@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181020134908.GA32218@kroah.com>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Mishi Choudhary <mishi@linux.com>
Subject: [Ksummit-discuss] [PATCH 4/7] Code of Conduct: Provide links
	between the two documents
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Create a link between the Code of Conduct and the Code of Conduct
Interpretation so that people can see that they are related.

Acked-by: Chris Mason <clm@fb.com>
Acked-by: Olof Johansson <olof@lixom.net>
Acked-by: Theodore Ts'o <tytso@mit.edu>
Acked-by: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 Documentation/process/code-of-conduct-interpretation.rst | 4 +++-
 Documentation/process/code-of-conduct.rst                | 8 ++++++++
 2 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/Documentation/process/code-of-conduct-interpretation.rst b/Documentation/process/code-of-conduct-interpretation.rst
index ecf84cd29735..4d4e2cc94b5e 100644
--- a/Documentation/process/code-of-conduct-interpretation.rst
+++ b/Documentation/process/code-of-conduct-interpretation.rst
@@ -1,7 +1,9 @@
+.. _code_of_conduct_interpretation:
+
 Linux Kernel Contributor Covenant Code of Conduct Interpretation
 ================================================================
 
-The Contributor Covenant Code of Conduct is a general document meant to
+The :ref:`code_of_conduct` is a general document meant to
 provide a set of rules for almost any open source community.  Every
 open-source community is unique and the Linux kernel is no exception.
 Because of this, this document describes how we in the Linux kernel
diff --git a/Documentation/process/code-of-conduct.rst b/Documentation/process/code-of-conduct.rst
index a2641c19cf26..3046664c929e 100644
--- a/Documentation/process/code-of-conduct.rst
+++ b/Documentation/process/code-of-conduct.rst
@@ -1,3 +1,5 @@
+.. _code_of_conduct:
+
 Contributor Covenant Code of Conduct
 ++++++++++++++++++++++++++++++++++++
 
@@ -75,3 +77,9 @@ Attribution
 
 This Code of Conduct is adapted from the Contributor Covenant, version 1.4,
 available at https://www.contributor-covenant.org/version/1/4/code-of-conduct.html
+
+Interpretation
+==============
+
+See the :ref:`code_of_conduct_interpretation` document for how the Linux
+kernel community will be interpreting this document.
-- 
2.19.1
