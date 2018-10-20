Return-Path: <SRS0=0QPY=NA=linuxfoundation.org=gregkh@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 95FBC5AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 20 Oct 2018 13:52:01 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 145FE713
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 20 Oct 2018 13:52:01 +0000 (UTC)
Date: Sat, 20 Oct 2018 15:50:21 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel <linux-kernel@vger.kernel.org>
Message-ID: <20181020135021.GD32218@kroah.com>
References: <20181020134908.GA32218@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181020134908.GA32218@kroah.com>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Mishi Choudhary <mishi@linux.com>
Subject: [Ksummit-discuss] [PATCH 3/7] Code of Conduct Interpretation:
 Properly reference the TAB correctly
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

We use the term "TAB" before defining it later in the document.  Fix
that up by defining it at the first location.

Reported-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Acked-by: Chris Mason <clm@fb.com>
Acked-by: Olof Johansson <olof@lixom.net>
Acked-by: Theodore Ts'o <tytso@mit.edu>
Acked-by: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 .../process/code-of-conduct-interpretation.rst   | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/Documentation/process/code-of-conduct-interpretation.rst b/Documentation/process/code-of-conduct-interpretation.rst
index b14441711f7b..ecf84cd29735 100644
--- a/Documentation/process/code-of-conduct-interpretation.rst
+++ b/Documentation/process/code-of-conduct-interpretation.rst
@@ -45,11 +45,11 @@ regarding conduct issues.
 
 Maintainers should be willing to help when problems occur, and work with
 others in the community when needed.  Do not be afraid to reach out to
-the TAB or other maintainers if you're uncertain how to handle
-situations that come up.  It will not be considered a violation report
-unless you want it to be.  If you are uncertain about approaching the
-TAB or any other maintainers, please reach out to our conflict mediator,
-Mishi Choudhary <mishi@linux.com>.
+the Technical Advisory Board (TAB) or other maintainers if you're
+uncertain how to handle situations that come up.  It will not be
+considered a violation report unless you want it to be.  If you are
+uncertain about approaching the TAB or any other maintainers, please
+reach out to our conflict mediator, Mishi Choudhary <mishi@linux.com>.
 
 In the end, "be kind to each other" is really what the end goal is for
 everybody.  We know everyone is human and we all fail at times, but the
@@ -125,9 +125,9 @@ are listed at <URL>.  Members can not access reports made before they
 joined or after they have left the committee.
 
 The initial Code of Conduct Committee consists of volunteer members of
-the Technical Advisory Board (TAB), as well as a professional mediator
-acting as a neutral third party.  The first task of the committee is to
-establish documented processes, which will be made public.
+the TAB, as well as a professional mediator acting as a neutral third
+party.  The first task of the committee is to establish documented
+processes, which will be made public.
 
 Any member of the committee, including the mediator, can be contacted
 directly if a reporter does not wish to include the full committee in a
-- 
2.19.1
