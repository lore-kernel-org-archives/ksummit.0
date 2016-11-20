Return-Path: <mchehab@osg.samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B1616259
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 20 Nov 2016 16:08:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3EEDE1A5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 20 Nov 2016 16:08:52 +0000 (UTC)
From: Mauro Carvalho Chehab <mchehab@s-opensource.com>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>,
	"Jonathan Corbet" <corbet@lwn.net>
Date: Sun, 20 Nov 2016 14:08:40 -0200
Message-Id: <f0158a5d70e9af867311d055005df989bb7e4057.1479656706.git.mchehab@s-opensource.com>
In-Reply-To: <cover.1479656706.git.mchehab@s-opensource.com>
References: <cover.1479656706.git.mchehab@s-opensource.com>
In-Reply-To: <cover.1479656706.git.mchehab@s-opensource.com>
References: <cover.1479656706.git.mchehab@s-opensource.com>
Sender: Mauro Carvalho Chehab <mchehab@osg.samsung.com>
Cc: Mauro Carvalho Chehab <mchehab@s-opensource.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: [Ksummit-discuss] [PATCH 9/9] docs-rst: fix media cleandocs target
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

The builddir prefix was missing on make cleandocs. Fix it.

Signed-off-by: Mauro Carvalho Chehab <mchehab@s-opensource.com>
---
 Documentation/Makefile.sphinx | 2 +-
 Documentation/media/Makefile  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/Makefile.sphinx b/Documentation/Makefile.sphinx
index a23d3c8b4848..707c65337ebf 100644
--- a/Documentation/Makefile.sphinx
+++ b/Documentation/Makefile.sphinx
@@ -98,7 +98,7 @@ installmandocs:
 
 cleandocs:
 	$(Q)rm -rf $(BUILDDIR)
-	$(Q)$(MAKE) -C Documentation/media clean
+	$(Q)$(MAKE) BUILDDIR=$(abspath $(BUILDDIR)) -C Documentation/media clean
 
 endif # HAVE_SPHINX
 
diff --git a/Documentation/media/Makefile b/Documentation/media/Makefile
index ab05323b779b..4d8e2ff378c4 100644
--- a/Documentation/media/Makefile
+++ b/Documentation/media/Makefile
@@ -105,7 +105,7 @@ xml: all
 latex: $(IMGPDF) all
 
 clean:
-	-rm -f $(DOTTGT) $(IMGTGT) $(patsubst %,$(SRC_DIR)/%,${TARGETS}) 2>/dev/null
+	-rm -f $(DOTTGT) $(IMGTGT) ${TARGETS} 2>/dev/null
 
 $(BUILDDIR):
 	$(Q)mkdir -p $@
-- 
2.7.4
