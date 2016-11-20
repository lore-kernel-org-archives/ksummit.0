Return-Path: <mchehab@osg.samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C5D27259
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 20 Nov 2016 16:08:52 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 563501A6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 20 Nov 2016 16:08:52 +0000 (UTC)
From: Mauro Carvalho Chehab <mchehab@s-opensource.com>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>,
	"Jonathan Corbet" <corbet@lwn.net>
Date: Sun, 20 Nov 2016 14:08:39 -0200
Message-Id: <7fe7bb76f6af16f2e1459256a287a4b7ef2b78bb.1479656706.git.mchehab@s-opensource.com>
In-Reply-To: <cover.1479656706.git.mchehab@s-opensource.com>
References: <cover.1479656706.git.mchehab@s-opensource.com>
In-Reply-To: <cover.1479656706.git.mchehab@s-opensource.com>
References: <cover.1479656706.git.mchehab@s-opensource.com>
Sender: Mauro Carvalho Chehab <mchehab@osg.samsung.com>
Cc: Mauro Carvalho Chehab <mchehab@s-opensource.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: [Ksummit-discuss] [PATCH 8/9] doc-rst: media/Makefile: reorganize
	the rules
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Better organize the media/Makefile, in order to better
split what's related to image conversion from the ones
related to parse-headers.pl.

Signed-off-by: Mauro Carvalho Chehab <mchehab@s-opensource.com>
---
 Documentation/media/Makefile | 45 +++++++++++++++++++++++---------------------
 1 file changed, 24 insertions(+), 21 deletions(-)

diff --git a/Documentation/media/Makefile b/Documentation/media/Makefile
index 547b4105f826..ab05323b779b 100644
--- a/Documentation/media/Makefile
+++ b/Documentation/media/Makefile
@@ -1,15 +1,7 @@
-# Generate the *.h.rst files from uAPI headers
+# Rules to convert DOT and SVG to Sphinx images
 
-PARSER = $(srctree)/Documentation/sphinx/parse-headers.pl
-UAPI = $(srctree)/include/uapi/linux
-KAPI = $(srctree)/include/linux
 SRC_DIR=$(srctree)/Documentation/media
 
-FILES = audio.h.rst ca.h.rst dmx.h.rst frontend.h.rst net.h.rst video.h.rst \
-	  videodev2.h.rst media.h.rst cec.h.rst lirc.h.rst
-
-TARGETS := $(addprefix $(BUILDDIR)/, $(FILES))
-
 DOTS = \
 	uapi/v4l/pipeline.dot \
 
@@ -52,21 +44,16 @@ quiet_cmd_gendot = DOT     $2
 %.svg: %.dot
 	@$(call cmd,gendot,$<,$@)
 
-.PHONY: all html epub xml latex
+# Rules to convert a .h file to inline RST documentation
 
-all: $(IMGDOT) $(BUILDDIR) ${TARGETS}
-html: all
-epub: all
-xml: all
-latex: $(IMGPDF) all
+PARSER = $(srctree)/Documentation/sphinx/parse-headers.pl
+UAPI = $(srctree)/include/uapi/linux
+KAPI = $(srctree)/include/linux
 
-clean:
-	-rm -f $(DOTTGT) $(IMGTGT) $(patsubst %,$(SRC_DIR)/%,${TARGETS}) 2>/dev/null
+FILES = audio.h.rst ca.h.rst dmx.h.rst frontend.h.rst net.h.rst video.h.rst \
+	  videodev2.h.rst media.h.rst cec.h.rst lirc.h.rst
 
-$(BUILDDIR):
-	$(Q)mkdir -p $@
-
-# Rule to convert a .h file to inline RST documentation
+TARGETS := $(addprefix $(BUILDDIR)/, $(FILES))
 
 gen_rst = \
 	echo ${PARSER} $< $@ $(SRC_DIR)/$(notdir $@).exceptions; \
@@ -106,3 +93,19 @@ $(BUILDDIR)/cec.h.rst: ${KAPI}/cec.h ${PARSER} $(SRC_DIR)/cec.h.rst.exceptions
 
 $(BUILDDIR)/lirc.h.rst: ${UAPI}/lirc.h ${PARSER} $(SRC_DIR)/lirc.h.rst.exceptions
 	@$($(quiet)gen_rst)
+
+# Media build rules
+
+.PHONY: all html epub xml latex
+
+all: $(IMGDOT) $(BUILDDIR) ${TARGETS}
+html: all
+epub: all
+xml: all
+latex: $(IMGPDF) all
+
+clean:
+	-rm -f $(DOTTGT) $(IMGTGT) $(patsubst %,$(SRC_DIR)/%,${TARGETS}) 2>/dev/null
+
+$(BUILDDIR):
+	$(Q)mkdir -p $@
-- 
2.7.4
