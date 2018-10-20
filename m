Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3B427AB7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 20 Oct 2018 20:15:17 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B9167716
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 20 Oct 2018 20:15:16 +0000 (UTC)
Message-ID: <1540066514.3464.22.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Andrew Morton <akpm@linux-foundation.org>, Linus Torvalds
	<torvalds@linux-foundation.org>, Greg Kroah-Hartman <greg@kroah.com>
Date: Sat, 20 Oct 2018 13:15:14 -0700
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: linux-kernel <linux-kernel@vger.kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: [Ksummit-discuss] [GIT PULL] code of conduct fixes for 4.19-rc8
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

This is the series of patches which has been discussed on both ksummit-
discuss and linux-kernel for the past few weeks.  As Shuah said when
kicking off the process, it's designed as a starting point for the next
phase of the discussion, not as the end point, so it's only really a
set of minor updates to further that goal.

The merger of the three patches to show the combined effect is attached
below.  However, Greg recently posted the next phase of the discussion,
so people will be asking what the merger of the series looks like. 
Ignoring the non-CoC documents, I think it looks like this

---
diff --git a/Documentation/process/code-of-conduct.rst b/Documentation/process/code-of-conduct.rst
index eec768471a4d..8913851dab89 100644
--- a/Documentation/process/code-of-conduct.rst
+++ b/Documentation/process/code-of-conduct.rst
@@ -59,19 +59,27 @@ address, posting via an official social media account, or acting as an appointed
 representative at an online or offline event. Representation of a project may be
 further defined and clarified by project maintainers.
 
-Reporting
-=========
+Enforcement
+===========
 
 Instances of abusive, harassing, or otherwise unacceptable behavior may be
-reported by contacting the Technical Advisory Board (TAB) at
-<tab@lists.linux-foundation.org>. All complaints will be reviewed and
-investigated and will result in a response that is deemed necessary and
-appropriate to the circumstances. The TAB is obligated to maintain
-confidentiality with regard to the reporter of an incident (except where
-required by law).
+reported by contacting the Code of Conduct Committee at
+<conduct@kernel.org>. All complaints will be reviewed and investigated
+and will result in a response that is deemed necessary and appropriate
+to the circumstances. The Code of Conduct Committee is obligated to
+maintain confidentiality with regard to the reporter of an incident
+(except where required by law). Further details of specific enforcement
+policies may be posted separately.
+
 
 Attribution
 ===========
 
 This Code of Conduct is adapted from the Contributor Covenant, version 1.4,
 available at https://www.contributor-covenant.org/version/1/4/code-of-conduct.html
+
+Interpretation
+==============
+
+See the :ref:`code_of_conduct_interpretation` document for how the Linux
+kernel community will be interpreting this document.
---

And I'm sure it can be rebased to this without disturbing the currently gathered tags.

The patch can be pulled from

git://git.kernel.org/pub/scm/linux/kernel/git/jejb/linux-coc.git coc-fixes

With the diffstat:

 Documentation/process/code-of-conduct.rst | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

With full diff below.

James

---

diff --git a/Documentation/process/code-of-conduct.rst b/Documentation/process/code-of-conduct.rst
index ab7c24b5478c..eec768471a4d 100644
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
 
@@ -59,20 +59,16 @@ address, posting via an official social media account, or acting as an appointed
 representative at an online or offline event. Representation of a project may be
 further defined and clarified by project maintainers.
 
-Enforcement
-===========
+Reporting
+=========
 
 Instances of abusive, harassing, or otherwise unacceptable behavior may be
 reported by contacting the Technical Advisory Board (TAB) at
 <tab@lists.linux-foundation.org>. All complaints will be reviewed and
 investigated and will result in a response that is deemed necessary and
 appropriate to the circumstances. The TAB is obligated to maintain
-confidentiality with regard to the reporter of an incident.  Further details of
-specific enforcement policies may be posted separately.
-
-Maintainers who do not follow or enforce the Code of Conduct in good faith may
-face temporary or permanent repercussions as determined by other members of the
-project’s leadership.
+confidentiality with regard to the reporter of an incident (except where
+required by law).
 
 Attribution
 ===========
