Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 55E92285D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 16 Oct 2018 14:59:16 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 03EEF6FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 16 Oct 2018 14:59:15 +0000 (UTC)
Message-ID: <1539701954.2805.9.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Tue, 16 Oct 2018 07:59:14 -0700
In-Reply-To: <1539701820.2805.6.camel@HansenPartnership.com>
References: <1539701820.2805.6.camel@HansenPartnership.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: linux-kernel <linux-kernel@vger.kernel.org>
Subject: [Ksummit-discuss] [PATCH v3 2/3] code-of-conduct: Strip the
 enforcement paragraph pending community discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Significant concern has been expressed about the responsibilities outlined in
the enforcement clause of the new code of conduct.  Since there is concern
that this becomes binding on the release of the 4.19 kernel, strip the
enforcement clauses to give the community time to consider and debate how this
should be handled.

Note, this patch is expected to be the starting point for a discussion not the
end point, so there is an expectation that an Enforcement section will be
added again to our code of conduct once we have sufficient community consensus
on what it should say.

Fixes: 8a104f8b5867c682 ("Code of Conduct: Let's revamp it.")
Acked-by: Shuah Khan <shuah@kernel.org>
Acked-by: Guenter Roeck <linux@roeck-us.net>
Acked-by: Geert Uytterhoeven <geert@linux-m68k.org>
Reviewed-by: Alan Cox <alan@llwyncelyn.cymru>
Signed-off-by: James Bottomley <James.Bottomley@HansenPartnership.com>

---

v2: Added additional commit paragraph clarifying we do expect eventually to
    have an enforcement section (as requested by Shuah)
---
 Documentation/process/code-of-conduct.rst | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/Documentation/process/code-of-conduct.rst b/Documentation/process/code-of-conduct.rst
index aa40e34e7785..4dd90987305b 100644
--- a/Documentation/process/code-of-conduct.rst
+++ b/Documentation/process/code-of-conduct.rst
@@ -59,21 +59,6 @@ address, posting via an official social media account, or acting as an appointed
 representative at an online or offline event. Representation of a project may be
 further defined and clarified by project maintainers.
 
-Enforcement
-===========
-
-Instances of abusive, harassing, or otherwise unacceptable behavior may be
-reported by contacting the Technical Advisory Board (TAB) at
-<tab@lists.linux-foundation.org>. All complaints will be reviewed and
-investigated and will result in a response that is deemed necessary and
-appropriate to the circumstances. The TAB is obligated to maintain
-confidentiality with regard to the reporter of an incident.  Further details of
-specific enforcement policies may be posted separately.
-
-Maintainers who do not follow or enforce the Code of Conduct in good faith may
-face temporary or permanent repercussions as determined by other members of the
-project’s leadership.
-
 Attribution
 ===========
 
-- 
2.13.7
