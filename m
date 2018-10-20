Return-Path: <SRS0=0QPY=NA=linuxfoundation.org=gregkh@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3E29D7B3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 20 Oct 2018 13:52:06 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E557F712
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 20 Oct 2018 13:52:05 +0000 (UTC)
Date: Sat, 20 Oct 2018 15:50:58 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel <linux-kernel@vger.kernel.org>
Message-ID: <20181020135058.GF32218@kroah.com>
References: <20181020134908.GA32218@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181020134908.GA32218@kroah.com>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Mishi Choudhary <mishi@linux.com>
Subject: [Ksummit-discuss] [PATCH 5/7] Code of Conduct Interpretation: Put
 in the proper URL for the committee
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

There was a blank <URL> reference for how to find the Code of Conduct
Committee.  Fix that up by pointing it to the correct kernel.org website
page location.

Acked-by: Chris Mason <clm@fb.com>
Acked-by: Olof Johansson <olof@lixom.net>
Acked-by: Theodore Ts'o <tytso@mit.edu>
Acked-by: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 Documentation/process/code-of-conduct-interpretation.rst | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/process/code-of-conduct-interpretation.rst b/Documentation/process/code-of-conduct-interpretation.rst
index 4d4e2cc94b5e..e899f14a4ba2 100644
--- a/Documentation/process/code-of-conduct-interpretation.rst
+++ b/Documentation/process/code-of-conduct-interpretation.rst
@@ -123,8 +123,9 @@ Enforcement
 
 The address listed in the Code of Conduct goes to the Code of Conduct
 Committee.  The exact members receiving these emails at any given time
-are listed at <URL>.  Members can not access reports made before they
-joined or after they have left the committee.
+are listed at https://kernel.org/code-of-conduct.html.  Members can not
+access reports made before they joined or after they have left the
+committee.
 
 The initial Code of Conduct Committee consists of volunteer members of
 the TAB, as well as a professional mediator acting as a neutral third
-- 
2.19.1
