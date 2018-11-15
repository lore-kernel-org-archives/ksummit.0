Return-Path: <dan.j.williams@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BC7E4ACD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Nov 2018 05:05:15 +0000 (UTC)
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9251A8B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Nov 2018 05:05:14 +0000 (UTC)
From: Dan Williams <dan.j.williams@intel.com>
To: linux-kernel@vger.kernel.org
Date: Wed, 14 Nov 2018 20:53:25 -0800
Message-ID: <154225760492.2499188.14152986544451112930.stgit@dwillia2-desk3.amr.corp.intel.com>
In-Reply-To: <154225759358.2499188.15268218778137905050.stgit@dwillia2-desk3.amr.corp.intel.com>
References: <154225759358.2499188.15268218778137905050.stgit@dwillia2-desk3.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Cc: vishal.l.verma@intel.com, ksummit-discuss@lists.linuxfoundation.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-nvdimm@lists.01.org, Dmitry Vyukov <dvyukov@google.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Steve French <stfrench@microsoft.com>, "Tobin C. Harding" <me@tobin.cc>
Subject: [Ksummit-discuss] [RFC PATCH 2/3] MAINTAINERS,
	Handbook: Subsystem Profile
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

As presented at the 2018 Linux Plumbers conference [1], the Subsystem
Profile is proposed as a way to reduce friction between committers and
maintainers and perhaps encourage conversations amongst maintainers
about best practice policies.

The profile contains short answers to some of the common policy
questions a contributor might have, or that a maintainer might consider
formalizing. The current list of maintenance policies is:

Overview: General introduction to maintaining the subsystem
Core: List of source files considered core
Leaf: List of source files that consume core functionality
Patches or Pull requests: Simple statement of expected submission format
Last -rc for new feature submissions: Expected lead time for submissions
Last -rc to merge features: Deadline for merge decisions
Non-author Ack / Review Tags Required: Patch review economics
Test Suite: Pass this suite before requesting inclusion
Resubmit Cadence: When to ping the maintainer
Trusted Reviewers: Help for triaging patches
Time Zone / Office Hours: When might a maintainer be available
Checkpatch / Style Cleanups: Policy on pure cleanup patches
Off-list review: Request for review gates
TODO: Potential development tasks up for grabs, or active focus areas

The goal of the Subsystem Profile is to set expectations for
contributors and interim or replacement maintainers for a subsystem.

See Documentation/maintainer/subsystem-profile.rst for more details, and
a follow-on example profile for the libnvdimm subsystem.

[1]: https://linuxplumbersconf.org/event/2/contributions/59/

Cc: Jonathan Corbet <corbet@lwn.net>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Steve French <stfrench@microsoft.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Tobin C. Harding <me@tobin.cc>
Cc: Olof Johansson <olof@lixom.net>
Cc: Martin K. Petersen <martin.petersen@oracle.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Joe Perches <joe@perches.com>
Cc: Dmitry Vyukov <dvyukov@google.com>
Signed-off-by: Dan Williams <dan.j.williams@intel.com>
---
 Documentation/maintainer/index.rst             |    1 
 Documentation/maintainer/subsystem-profile.rst |  145 ++++++++++++++++++++++++
 MAINTAINERS                                    |    4 +
 3 files changed, 150 insertions(+)
 create mode 100644 Documentation/maintainer/subsystem-profile.rst

diff --git a/Documentation/maintainer/index.rst b/Documentation/maintainer/index.rst
index 2a14916930cb..1e6b1aaa6024 100644
--- a/Documentation/maintainer/index.rst
+++ b/Documentation/maintainer/index.rst
@@ -11,4 +11,5 @@ additions to this manual.
 
    configure-git
    pull-requests
+   subsystem-profile
 
diff --git a/Documentation/maintainer/subsystem-profile.rst b/Documentation/maintainer/subsystem-profile.rst
new file mode 100644
index 000000000000..a74b624e0972
--- /dev/null
+++ b/Documentation/maintainer/subsystem-profile.rst
@@ -0,0 +1,145 @@
+.. _subsystemprofile:
+
+Subsystem Profile
+=================
+
+The Subsystem Profile is a collection of policy positions that a
+maintainer or maintainer team establishes for the their subsystem. While
+there is a wide range of technical nuance on maintaining disparate
+sections of the kernel, the Subsystem Profile documents a known set of
+major process policies that vary between subsystems.  What follows is a
+list of policy questions a maintainer can answer and include a document
+in the kernel, or on an external website. It advertises to other
+maintainers and contributors the local policy of the subsystem. Some
+sections are optional like "Overview", "Off-list review", and "TODO".
+The others are recommended for all subsystems to address, but no section
+is mandatory. In addition there are no wrong answers, just document how
+a subsystem typically operates. Note that the profile follows the
+subsystem not the maintainer, i.e. there is no expectation that a
+maintainer of multiple subsystems deploys the same policy across those
+subsystems.
+
+
+Overview
+--------
+In this optional section of the profile provide a free form overview of
+the subsystem written as a hand-off document. In other words write a
+note to someone that would receive the “keys to the castle” in the event
+of extended or unexpected absence. “So, you have recently become the
+maintainer of the XYZ subsystem, condolences, it is a thankless job,
+here is the lay of the land.” Details to consider are the extended
+details that are not included in MAINTAINERS, and not addressed by the
+other profile questions below. For example details like, who has access
+to the git tree, branches that are pulled into -next, relevant
+specifications, issue trackers, and sensitive code areas. If available
+the Overview should link to other subsystem documentation that may
+clarify, re-iterate, emphasize / de-emphasize portions of the global
+process documentation for contributors (CodingStyle, SubmittingPatches,
+etc...).
+
+
+Core
+----
+A list of F: tags (as described by MAINTAINERS) listing what the
+maintainer considers to be core files. The review and lead time
+constraints for 'core' code may be stricter given the increased
+sensitivity and risk of change.
+
+
+Patches or Pull requests
+------------------------
+Some subsystems allow contributors to send pull requests, most require
+mailed patches. State “Patches only”, or “Pull requests accepted”.
+
+
+Last -rc for new feature submissions
+------------------------------------
+New feature submissions targeting the next merge window should have
+their first posting for consideration before this point. Patches that
+are submitted after this point should be clear that they are targeting
+the NEXT+1 merge window, or should come with sufficient justification
+why they should be considered on an expedited schedule. A general
+guideline is to set expectation with contributors that new feature
+submissions should appear before -rc5. The answer may be different for
+'Core:' files, include a second entry prefixed with 'Core:' if so.
+
+
+Last -rc to merge features
+--------------------------
+Indicate to contributors the point at which an as yet un-applied patch
+set will need to wait for the NEXT+1 merge window. Of course there is no
+obligation to ever except any given patchset, but if the review has not
+concluded by this point the expectation the contributor should wait and
+resubmit for the following merge window. The answer may be different for
+'Core:' files, include a second entry prefixed with 'Core:' if so.
+
+
+Non-author Ack / Review Tags Required
+-------------------------------------
+Let contributors and other maintainers know whether they can expect to
+see the maintainer self-commit patches without 3rd-party review. Some
+subsystem developer communities are so small as to make this requirement
+impractical. Others may have been bootstrapped by a submission of
+self-reviewed code at the outset, but have since moved to a
+non-author review-required stance. This section sets expectations on the
+code-review economics in the subsystem. For example, can a contributor
+trade review of a maintainer's, or other contributor's patches in
+exchange for consideration of their own.
+
+
+Test Suite
+----------
+Indicate the test suite all patches are expected to pass before being
+submitted for inclusion consideration.
+
+
+Resubmit Cadence
+----------------
+Define a rate at which a contributor should wait to resubmit a patchset
+that has not yet received comments. A general guideline is to try to
+meet a deadline of 1 - 2 weeks to acknowledge starting consideration for
+a patch set.
+
+
+Trusted Reviewers
+-----------------
+While a maintainer / maintainer-team is expected to be reviewer of last
+resort the review load is less onerous when distributed amongst
+contributors and or a trusted set of individuals.  This section is
+distinct from the R: tag (Designated Reviewer). Whereas R: identifies
+reviewers that should always be copied on a patch submission, the
+trusted reviewers here are individuals contributors can reach out to if
+a few 'Resubmit Cadence' intervals have gone by without maintainer
+action, or to otherwise consult for advice.
+
+
+Time Zone / Office Hours
+------------------------
+Let contributors know the time of day when one or more maintainers are
+usually actively monitoring the mailing list.
+
+
+Checkpatch / Style Cleanups
+---------------------------
+For subsystems with long standing code bases it is reasonable to decline
+to accept pure coding-style fixup patches. This is where you can let
+contributors know “Standalone style-cleanups are welcome”,
+“Style-cleanups to existing code only welcome with other feature
+changes”, or “Standalone style-cleanups to existing code are not
+welcome”.
+
+
+Off-list review
+---------------
+A maintainer may optionally require that contributors seek prior review
+of patches before initial submission for upstream. For example,
+“Developers from organization X, please seek internal review before
+requesting upstream review”. This policy identifies occasions where a
+maintainer wants to reflect some of the review load back to an
+organization.
+
+
+TODO
+----
+In this optional section include a list of work items that might be
+suitable for onboarding a new developer to the subsystem.
diff --git a/MAINTAINERS b/MAINTAINERS
index 83b7b3943a12..bb4a83a7684d 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -99,6 +99,10 @@ Descriptions of section entries:
 	   Obsolete:	Old code. Something tagged obsolete generally means
 			it has been replaced by a better system and you
 			should be using that.
+	P: Subsystem Profile document for the maintainer entry.  This
+	   is either an in-tree file or a URI to a document.  The
+	   contents of a Subsystem Profile are described in
+	   Documentation/maintainer/subsystem-profile.rst.
 	F: Files and directories with wildcard patterns.
 	   A trailing slash includes all files and subdirectory files.
 	   F:	drivers/net/	all files in and below drivers/net
