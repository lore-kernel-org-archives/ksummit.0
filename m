Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9CC446BA2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  6 Oct 2018 21:36:41 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 579A6A3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  6 Oct 2018 21:36:41 +0000 (UTC)
Message-ID: <1538861799.4088.6.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Sat, 06 Oct 2018 14:36:39 -0700
In-Reply-To: <1538861738.4088.5.camel@HansenPartnership.com>
References: <1538861738.4088.5.camel@HansenPartnership.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: linux-kernel <linux-kernel@vger.kernel.org>
Subject: [Ksummit-discuss] [PATCH 1/2] code-of-conduct: Fix the ambiguity
 about collecting email addresses
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

>From 4a614e9440148894207bef5bf69e74071baceb3b Mon Sep 17 00:00:00 2001
From: James Bottomley <James.Bottomley@HansenPartnership.com>
Date: Sat, 6 Oct 2018 14:21:56 -0700
Subject: [PATCH 1/2] code-of-conduct: Fix the ambiguity about collecting email
 addresses

The current code of conduct has an ambiguity in the it considers publishing
private information such as email addresses unacceptable behaviour.  Since
the Linux kernel collects and publishes email addresses as part of the patch
process, add an exception clause for email addresses ordinarily collected by
the project to correct this ambiguity.

Signed-off-by: James Bottomley <James.Bottomley@HansenPartnership.com>
---
 Documentation/process/code-of-conduct.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/process/code-of-conduct.rst b/Documentation/process/code-of-conduct.rst
index ab7c24b5478c..aa40e34e7785 100644
--- a/Documentation/process/code-of-conduct.rst
+++ b/Documentation/process/code-of-conduct.rst
@@ -31,7 +31,7 @@ Examples of unacceptable behavior by participants include:
 * Trolling, insulting/derogatory comments, and personal or political attacks
 * Public or private harassment
 * Publishing others’ private information, such as a physical or electronic
-  address, without explicit permission
+  address not ordinarily collected by the project, without explicit permission
 * Other conduct which could reasonably be considered inappropriate in a
   professional setting
 
-- 
2.13.7
