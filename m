Return-Path: <mchehab@osg.samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 513E540D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 20 Nov 2016 16:08:56 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A04A11AC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 20 Nov 2016 16:08:52 +0000 (UTC)
From: Mauro Carvalho Chehab <mchehab@s-opensource.com>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>,
	"Jonathan Corbet" <corbet@lwn.net>
Date: Sun, 20 Nov 2016 14:08:35 -0200
Message-Id: <a650b3c26bac3defd822d8c7e1ffeed2ccc8ab6b.1479656706.git.mchehab@s-opensource.com>
In-Reply-To: <cover.1479656706.git.mchehab@s-opensource.com>
References: <cover.1479656706.git.mchehab@s-opensource.com>
In-Reply-To: <cover.1479656706.git.mchehab@s-opensource.com>
References: <cover.1479656706.git.mchehab@s-opensource.com>
Sender: Mauro Carvalho Chehab <mchehab@osg.samsung.com>
Cc: Markus Heiser <markus.heiser@darmarIT.de>,
	ksummit-discuss@lists.linuxfoundation.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Mauro Carvalho Chehab <mchehab@s-opensource.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [Ksummit-discuss] [PATCH 4/9] [media] docs-rst: convert pipeline to
	SVG format
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

The pipeline image was produced from some dot file that has
long missed. Create a pipeline.dot with the graph and convert
it to SVG. As we're planning to add future support for graphviz
graphics, also store the .dot file on the tree, as this will
make easier when we add such Sphinx extension.

Signed-off-by: Mauro Carvalho Chehab <mchehab@s-opensource.com>
---
 Documentation/media/Makefile                |   1 +
 Documentation/media/uapi/v4l/dev-subdev.rst |   4 +-
 Documentation/media/uapi/v4l/pipeline.dot   |  12 +++++
 Documentation/media/uapi/v4l/pipeline.png   | Bin 12130 -> 0 bytes
 Documentation/media/uapi/v4l/pipeline.svg   |  68 ++++++++++++++++++++++++++++
 5 files changed, 83 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/media/uapi/v4l/pipeline.dot
 delete mode 100644 Documentation/media/uapi/v4l/pipeline.png
 create mode 100644 Documentation/media/uapi/v4l/pipeline.svg

diff --git a/Documentation/media/Makefile b/Documentation/media/Makefile
index ec95286e556c..fff8e3b73e25 100644
--- a/Documentation/media/Makefile
+++ b/Documentation/media/Makefile
@@ -19,6 +19,7 @@ IMAGES = \
 	uapi/v4l/fieldseq_tb.svg \
 	uapi/v4l/nv12mt.svg \
 	uapi/v4l/nv12mt_example.svg \
+	uapi/v4l/pipeline.svg \
 	uapi/v4l/subdev-image-processing-full.svg \
 	uapi/v4l/subdev-image-processing-scaling-multi-source.svg \
 	uapi/v4l/subdev-image-processing-crop.svg \
diff --git a/Documentation/media/uapi/v4l/dev-subdev.rst b/Documentation/media/uapi/v4l/dev-subdev.rst
index c18e9c5427ee..cd2870180208 100644
--- a/Documentation/media/uapi/v4l/dev-subdev.rst
+++ b/Documentation/media/uapi/v4l/dev-subdev.rst
@@ -99,8 +99,8 @@ the video sensor and the host image processing hardware.
 
 .. _pipeline-scaling:
 
-.. figure::  pipeline.png
-    :alt:    pipeline.png
+.. figure::  pipeline.*
+    :alt:    pipeline.pdf / pipeline.svg
     :align:  center
 
     Image Format Negotiation on Pipelines
diff --git a/Documentation/media/uapi/v4l/pipeline.dot b/Documentation/media/uapi/v4l/pipeline.dot
new file mode 100644
index 000000000000..02d7fcf12b26
--- /dev/null
+++ b/Documentation/media/uapi/v4l/pipeline.dot
@@ -0,0 +1,12 @@
+digraph board {
+	rankdir=TB
+	colorscheme=x11
+	scaler [label="{<scaler_0> 0} | Host\nScaler | {<scaler_1> 1} ", shape=Mrecord, style=filled, fillcolor=lightblue]
+	frontend [label="{<frontend_0> 0} | Host\nFrontend | {<frontend_1> 1}", shape=Mrecord, style=filled, fillcolor=lightblue]
+	sensor [label="Sensor | {<sensor_0> 0}", shape=Mrecord, style=filled, fillcolor=aquamarine]
+	io [label="{<io_0> 0} | V4L I/O", shape=Mrecord, style=filled, fillcolor=aquamarine]
+
+	sensor:sensor_0 -> frontend:frontend_0 [color=blue, label="HQ: 2592x1968\nHS: 1296x984"]
+	frontend:frontend_1 -> scaler:scaler_0 [color=blue, label="HQ: 2592x1968\nHS: 1296x984"]
+	scaler:scaler_1 -> io:io_0 [color=blue, label="HQ: 1280x720\nHS: 1280x720"]
+}
diff --git a/Documentation/media/uapi/v4l/pipeline.png b/Documentation/media/uapi/v4l/pipeline.png
deleted file mode 100644
index f19b86c2c24d07d5ae437820944d25489a447d7a..0000000000000000000000000000000000000000
GIT binary patch
literal 0
HcmV?d00001

literal 12130
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
B;b8y(

diff --git a/Documentation/media/uapi/v4l/pipeline.svg b/Documentation/media/uapi/v4l/pipeline.svg
new file mode 100644
index 000000000000..70f4c1b23ca1
--- /dev/null
+++ b/Documentation/media/uapi/v4l/pipeline.svg
@@ -0,0 +1,68 @@
+<?xml version="1.0" encoding="UTF-8" standalone="no"?>
+<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN"
+ "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">
+<!-- Generated by graphviz version 2.38.0 (20140413.2041)
+ -->
+<!-- Title: board Pages: 1 -->
+<svg width="317pt" height="358pt"
+ viewBox="0.00 0.00 317.00 358.00" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
+<g id="graph0" class="graph" transform="scale(1 1) rotate(0) translate(4 354)">
+<title>board</title>
+<polygon fill="white" stroke="none" points="-4,4 -4,-354 313,-354 313,4 -4,4"/>
+<!-- scaler -->
+<g id="node1" class="node"><title>scaler</title>
+<path fill="lightblue" stroke="black" d="M154,-103.5C154,-103.5 226,-103.5 226,-103.5 232,-103.5 238,-109.5 238,-115.5 238,-115.5 238,-129.5 238,-129.5 238,-135.5 232,-141.5 226,-141.5 226,-141.5 154,-141.5 154,-141.5 148,-141.5 142,-135.5 142,-129.5 142,-129.5 142,-115.5 142,-115.5 142,-109.5 148,-103.5 154,-103.5"/>
+<text text-anchor="middle" x="153.5" y="-118.8" font-family="Times,serif" font-size="14.00">0</text>
+<polyline fill="none" stroke="black" points="165,-103.5 165,-141.5 "/>
+<text text-anchor="middle" x="190" y="-126.3" font-family="Times,serif" font-size="14.00">Host</text>
+<text text-anchor="middle" x="190" y="-111.3" font-family="Times,serif" font-size="14.00">Scaler</text>
+<polyline fill="none" stroke="black" points="215,-103.5 215,-141.5 "/>
+<text text-anchor="middle" x="226.5" y="-118.8" font-family="Times,serif" font-size="14.00">1</text>
+</g>
+<!-- io -->
+<g id="node4" class="node"><title>io</title>
+<path fill="aquamarine" stroke="black" d="M228,-0.5C228,-0.5 290,-0.5 290,-0.5 296,-0.5 302,-6.5 302,-12.5 302,-12.5 302,-24.5 302,-24.5 302,-30.5 296,-36.5 290,-36.5 290,-36.5 228,-36.5 228,-36.5 222,-36.5 216,-30.5 216,-24.5 216,-24.5 216,-12.5 216,-12.5 216,-6.5 222,-0.5 228,-0.5"/>
+<text text-anchor="middle" x="227.5" y="-14.8" font-family="Times,serif" font-size="14.00">0</text>
+<polyline fill="none" stroke="black" points="239,-0.5 239,-36.5 "/>
+<text text-anchor="middle" x="270.5" y="-14.8" font-family="Times,serif" font-size="14.00">V4L I/O</text>
+</g>
+<!-- scaler&#45;&gt;io -->
+<g id="edge3" class="edge"><title>scaler:scaler_1&#45;&gt;io:io_0</title>
+<path fill="none" stroke="blue" d="M227,-103C227,-77.3333 227,-68.5104 227,-47.0547"/>
+<polygon fill="blue" stroke="blue" points="230.5,-47 227,-37 223.5,-47 230.5,-47"/>
+<text text-anchor="middle" x="268" y="-73.8" font-family="Times,serif" font-size="14.00">HQ: 1280x720</text>
+<text text-anchor="middle" x="268" y="-58.8" font-family="Times,serif" font-size="14.00">HS: 1280x720</text>
+</g>
+<!-- frontend -->
+<g id="node2" class="node"><title>frontend</title>
+<path fill="lightblue" stroke="black" d="M65.5,-208.5C65.5,-208.5 152.5,-208.5 152.5,-208.5 158.5,-208.5 164.5,-214.5 164.5,-220.5 164.5,-220.5 164.5,-234.5 164.5,-234.5 164.5,-240.5 158.5,-246.5 152.5,-246.5 152.5,-246.5 65.5,-246.5 65.5,-246.5 59.5,-246.5 53.5,-240.5 53.5,-234.5 53.5,-234.5 53.5,-220.5 53.5,-220.5 53.5,-214.5 59.5,-208.5 65.5,-208.5"/>
+<text text-anchor="middle" x="65" y="-223.8" font-family="Times,serif" font-size="14.00">0</text>
+<polyline fill="none" stroke="black" points="76.5,-208.5 76.5,-246.5 "/>
+<text text-anchor="middle" x="109" y="-231.3" font-family="Times,serif" font-size="14.00">Host</text>
+<text text-anchor="middle" x="109" y="-216.3" font-family="Times,serif" font-size="14.00">Frontend</text>
+<polyline fill="none" stroke="black" points="141.5,-208.5 141.5,-246.5 "/>
+<text text-anchor="middle" x="153" y="-223.8" font-family="Times,serif" font-size="14.00">1</text>
+</g>
+<!-- frontend&#45;&gt;scaler -->
+<g id="edge2" class="edge"><title>frontend:frontend_1&#45;&gt;scaler:scaler_0</title>
+<path fill="none" stroke="blue" d="M153,-208C153,-182.333 153,-173.51 153,-152.055"/>
+<polygon fill="blue" stroke="blue" points="156.5,-152 153,-142 149.5,-152 156.5,-152"/>
+<text text-anchor="middle" x="197" y="-178.8" font-family="Times,serif" font-size="14.00">HQ: 2592x1968</text>
+<text text-anchor="middle" x="197" y="-163.8" font-family="Times,serif" font-size="14.00">HS: 1296x984</text>
+</g>
+<!-- sensor -->
+<g id="node3" class="node"><title>sensor</title>
+<path fill="aquamarine" stroke="black" d="M12,-313.5C12,-313.5 64,-313.5 64,-313.5 70,-313.5 76,-319.5 76,-325.5 76,-325.5 76,-337.5 76,-337.5 76,-343.5 70,-349.5 64,-349.5 64,-349.5 12,-349.5 12,-349.5 6,-349.5 0,-343.5 0,-337.5 0,-337.5 0,-325.5 0,-325.5 0,-319.5 6,-313.5 12,-313.5"/>
+<text text-anchor="middle" x="26.5" y="-327.8" font-family="Times,serif" font-size="14.00">Sensor</text>
+<polyline fill="none" stroke="black" points="53,-313.5 53,-349.5 "/>
+<text text-anchor="middle" x="64.5" y="-327.8" font-family="Times,serif" font-size="14.00">0</text>
+</g>
+<!-- sensor&#45;&gt;frontend -->
+<g id="edge1" class="edge"><title>sensor:sensor_0&#45;&gt;frontend:frontend_0</title>
+<path fill="none" stroke="blue" d="M65,-313C65,-287.333 65,-278.51 65,-257.055"/>
+<polygon fill="blue" stroke="blue" points="68.5001,-257 65,-247 61.5001,-257 68.5001,-257"/>
+<text text-anchor="middle" x="109" y="-283.8" font-family="Times,serif" font-size="14.00">HQ: 2592x1968</text>
+<text text-anchor="middle" x="109" y="-268.8" font-family="Times,serif" font-size="14.00">HS: 1296x984</text>
+</g>
+</g>
+</svg>
-- 
2.7.4
