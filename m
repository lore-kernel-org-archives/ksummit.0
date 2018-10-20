Return-Path: <SRS0=0QPY=NA=linuxfoundation.org=gregkh@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CC5F086A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 20 Oct 2018 13:52:10 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 88944716
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 20 Oct 2018 13:52:10 +0000 (UTC)
Date: Sat, 20 Oct 2018 15:51:39 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel <linux-kernel@vger.kernel.org>
Message-ID: <20181020135139.GH32218@kroah.com>
References: <20181020134908.GA32218@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181020134908.GA32218@kroah.com>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Mishi Choudhary <mishi@linux.com>
Subject: [Ksummit-discuss] [PATCH 7/7] MAINTAINERS: Add an entry for the
	code of conduct
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

As I introduced these files, I'm willing to be the maintainer of them as
well.

Acked-by: Chris Mason <clm@fb.com>
Acked-by: Olof Johansson <olof@lixom.net>
Acked-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
Acked-by: Theodore Ts'o <tytso@mit.edu>
Acked-by: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 MAINTAINERS | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 7f371d372bdd..21faaf4c6161 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3673,6 +3673,12 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/media/coda.txt
 F:	drivers/media/platform/coda/
 
+CODE OF CONDUCT
+M:	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
+S:	Supported
+F:	Documentation/process/code-of-conduct.rst
+F:	Documentation/process/code-of-conduct-interpretation.rst
+
 COMMON CLK FRAMEWORK
 M:	Michael Turquette <mturquette@baylibre.com>
 M:	Stephen Boyd <sboyd@kernel.org>
-- 
2.19.1
