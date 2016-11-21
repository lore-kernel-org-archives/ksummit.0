Return-Path: <mchehab@osg.samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 16E46902
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 21 Nov 2016 19:27:12 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C6FE01EE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 21 Nov 2016 19:27:10 +0000 (UTC)
From: Mauro Carvalho Chehab <mchehab@s-opensource.com>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>,
	"Jonathan Corbet" <corbet@lwn.net>
Date: Mon, 21 Nov 2016 17:27:04 -0200
Message-Id: <923b7099f6dbf193f5b13e15c6d303e8ef073538.1479756387.git.mchehab@s-opensource.com>
In-Reply-To: <4d2770fcc7a65dd1ad05387317bc1fb5c4b879be.1479756387.git.mchehab@s-opensource.com>
References: <4d2770fcc7a65dd1ad05387317bc1fb5c4b879be.1479756387.git.mchehab@s-opensource.com>
In-Reply-To: <4d2770fcc7a65dd1ad05387317bc1fb5c4b879be.1479756387.git.mchehab@s-opensource.com>
References: <4d2770fcc7a65dd1ad05387317bc1fb5c4b879be.1479756387.git.mchehab@s-opensource.com>
Sender: Mauro Carvalho Chehab <mchehab@osg.samsung.com>
Cc: Mauro Carvalho Chehab <mchehab@s-opensource.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: [Ksummit-discuss] [PATCH v2 2/2] docs-rst: add documentation about
	how to insert images
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Inserting images with Sphinx is tricky, due to its limited
image support. So, the Kernel building system needs to
provide some help for it to work.

Document how to do it.

Signed-off-by: Mauro Carvalho Chehab <mchehab@s-opensource.com>
---

v2: Add the text fixes proposed by Daniel Vetter.

 Documentation/doc-guide/images.rst | 81 ++++++++++++++++++++++++++++++++++++++
 Documentation/doc-guide/index.rst  |  1 +
 2 files changed, 82 insertions(+)
 create mode 100644 Documentation/doc-guide/images.rst

diff --git a/Documentation/doc-guide/images.rst b/Documentation/doc-guide/images.rst
new file mode 100644
index 000000000000..87516248f7c2
--- /dev/null
+++ b/Documentation/doc-guide/images.rst
@@ -0,0 +1,81 @@
+Inserting images
+================
+
+The Kernel documentation new build system is prepared for two types of
+images: `Graphviz <http://www.graphviz.org/>`__ (``*.dot``) diagrams
+and Scalable Vector Graphics (``*.svg``). While Sphinx also supports a few
+bitmap formats, please don't use it, as it may not work on all output formats.
+
+If you want to add an image on either Graphviz or SVG format, you should
+use Sphinx ``figure``, where the name of the image file should end with
+``.*``, like::
+
+	.. figure::  pipeline.*
+		:alt:    pipeline.pdf / pipeline.svg
+		:align:  center
+
+		Image Format Negotiation on Pipelines
+
+Using ``.*`` makes Sphinx to look at the right image extension for
+the actual image file, which is converted by the building system.
+
+Scalable Vector Graphics images
+-------------------------------
+
+Sphinx has support for SVG only for html and epub outputs. For LaTeX
+and PDF, the images need to be converted to PDF. The Kernel build
+system does the needed conversion. For that to happen, you need to
+add a ``Makefile`` at the ``Documentation`` subdirectory, and include it
+at ``Documentation/Makefile.sphinx``.
+
+For example, if you want to add ``foo.svg`` image inside a ``bar`` directory,
+you should create a ``bar/Makefile`` directory with::
+
+	IMAGES += bar/foo.svg
+
+Please notice that the path for the file should be relative to the
+``Documentation/`` directory. For the Makefile to be parsed, it should
+be included at the ``Documentation/Makefile.sphinx`` file with::
+
+	include Documentation/bar/Makefile
+
+Please notice that the path for the file should be relative to the
+kernel's root directory.
+
+With that, when generating either a LaTeX or PDF output, the build
+system will automatically convert the image output to ``*.pdf``::
+
+	GENPDF  Documentation/bar/foo.svg
+
+Graphviz diagrams
+-----------------
+
+Sphinx doesn't support Graphviz directly. So, the Kernel building system
+has to convert it first to Scalable Vector Graphics, before calling
+Sphinx to handle the diagram. Also, for LaTeX and PDF, the image also
+needs to be converted to PDF. For that to happen, you need to add a
+``Makefile`` at the ``Documentation`` subdirectory, and include it at
+``Documentation/Makefile.sphinx``.
+
+For example, if you want to add ``foobar.dot`` image inside a ``bar``
+directory, you should create a ``bar/Makefile`` directory with::
+
+	DOTS += bar/foobar.svg
+
+Please notice that the path for the file should be relative to the
+``Documentation/`` directory. For the Makefile to be parsed, it should
+be included at the ``Documentation/Makefile.sphinx`` file with::
+
+	include Documentation/bar/Makefile
+
+Please notice that the path for the file should be relative to the
+kernel's root directory.
+
+With that, before calling Sphinx, the Kernel's build system will generate
+a SVG file using Graphviz::
+
+	DOT     Documentation/bar/foobar.dot
+
+And, if the output is either LaTeX or PDF, it will also convert it to PDF::
+
+	GENPDF  Documentation/bar/foobar.svg
diff --git a/Documentation/doc-guide/index.rst b/Documentation/doc-guide/index.rst
index 6fff4024606e..a7080d44105c 100644
--- a/Documentation/doc-guide/index.rst
+++ b/Documentation/doc-guide/index.rst
@@ -8,6 +8,7 @@ How to write kernel documentation
    :maxdepth: 1
 
    sphinx.rst
+   images.rst
    kernel-doc.rst
    parse-headers.rst
    docbook.rst
-- 
2.9.3
