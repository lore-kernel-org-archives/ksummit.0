Return-Path: <mchehab@osg.samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8EAA588A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 20 Nov 2016 16:08:58 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B3DB81AE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 20 Nov 2016 16:08:52 +0000 (UTC)
From: Mauro Carvalho Chehab <mchehab@s-opensource.com>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>,
	"Jonathan Corbet" <corbet@lwn.net>
Date: Sun, 20 Nov 2016 14:08:34 -0200
Message-Id: <b3772c3508ca8818bde5fd13078083dd547590c1.1479656706.git.mchehab@s-opensource.com>
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
Subject: [Ksummit-discuss] [PATCH 3/9] [media] docs-rst: nv12mt zigzag
	images: replace by SVG images
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Instead of using bitmap images to show the zigzag macroblock
parsing, replace it by a SVG ones, with is scalable.

Signed-off-by: Mauro Carvalho Chehab <mchehab@s-opensource.com>
---
 Documentation/media/Makefile                    |    2 +
 Documentation/media/uapi/v4l/nv12mt.png         |  Bin 1920 -> 0 bytes
 Documentation/media/uapi/v4l/nv12mt.svg         |  450 +++++++
 Documentation/media/uapi/v4l/nv12mt_example.png |  Bin 5261 -> 0 bytes
 Documentation/media/uapi/v4l/nv12mt_example.svg | 1589 +++++++++++++++++++++++
 Documentation/media/uapi/v4l/pixfmt-nv12mt.rst  |    8 +-
 6 files changed, 2045 insertions(+), 4 deletions(-)
 delete mode 100644 Documentation/media/uapi/v4l/nv12mt.png
 create mode 100644 Documentation/media/uapi/v4l/nv12mt.svg
 delete mode 100644 Documentation/media/uapi/v4l/nv12mt_example.png
 create mode 100644 Documentation/media/uapi/v4l/nv12mt_example.svg

diff --git a/Documentation/media/Makefile b/Documentation/media/Makefile
index d79afe4d27e9..ec95286e556c 100644
--- a/Documentation/media/Makefile
+++ b/Documentation/media/Makefile
@@ -17,6 +17,8 @@ IMAGES = \
 	uapi/v4l/crop.svg \
 	uapi/v4l/fieldseq_bt.svg \
 	uapi/v4l/fieldseq_tb.svg \
+	uapi/v4l/nv12mt.svg \
+	uapi/v4l/nv12mt_example.svg \
 	uapi/v4l/subdev-image-processing-full.svg \
 	uapi/v4l/subdev-image-processing-scaling-multi-source.svg \
 	uapi/v4l/subdev-image-processing-crop.svg \
diff --git a/Documentation/media/uapi/v4l/nv12mt.png b/Documentation/media/uapi/v4l/nv12mt.png
deleted file mode 100644
index 41401860fb737739658c354c0cb7ca12313a0265..0000000000000000000000000000000000000000
GIT binary patch
literal 0
HcmV?d00001

literal 1920
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
JC_3vN^#^QHk<b7D

diff --git a/Documentation/media/uapi/v4l/nv12mt.svg b/Documentation/media/uapi/v4l/nv12mt.svg
new file mode 100644
index 000000000000..21fcccda9723
--- /dev/null
+++ b/Documentation/media/uapi/v4l/nv12mt.svg
@@ -0,0 +1,450 @@
+<?xml version="1.0" encoding="UTF-8" standalone="no"?>
+<svg
+   xmlns:dc="http://purl.org/dc/elements/1.1/"
+   xmlns:cc="http://creativecommons.org/ns#"
+   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
+   xmlns:svg="http://www.w3.org/2000/svg"
+   xmlns="http://www.w3.org/2000/svg"
+   xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"
+   xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape"
+   version="1.2"
+   width="96.282211mm"
+   height="28.282219mm"
+   viewBox="0 0 9628.2211 2828.2219"
+   preserveAspectRatio="xMidYMid"
+   xml:space="preserve"
+   id="svg2"
+   inkscape:version="0.91 r13725"
+   sodipodi:docname="nv12mt.svg"
+   style="fill-rule:evenodd;stroke-width:28.22200012;stroke-linejoin:round"><metadata
+     id="metadata383"><rdf:RDF><cc:Work
+         rdf:about=""><dc:format>image/svg+xml</dc:format><dc:type
+           rdf:resource="http://purl.org/dc/dcmitype/StillImage" /><dc:title></dc:title></cc:Work></rdf:RDF></metadata><sodipodi:namedview
+     pagecolor="#ffffff"
+     bordercolor="#666666"
+     borderopacity="1"
+     objecttolerance="10"
+     gridtolerance="10"
+     guidetolerance="10"
+     inkscape:pageopacity="0"
+     inkscape:pageshadow="2"
+     inkscape:window-width="1920"
+     inkscape:window-height="997"
+     id="namedview381"
+     showgrid="false"
+     fit-margin-top="0"
+     fit-margin-left="0"
+     fit-margin-right="0"
+     fit-margin-bottom="0"
+     inkscape:zoom="4.0919524"
+     inkscape:cx="170.57872"
+     inkscape:cy="50.106293"
+     inkscape:window-x="1920"
+     inkscape:window-y="30"
+     inkscape:window-maximized="1"
+     inkscape:current-layer="svg2" /><defs
+     class="ClipPathGroup"
+     id="defs4"><clipPath
+       id="presentation_clip_path"
+       clipPathUnits="userSpaceOnUse"><rect
+         x="0"
+         y="0"
+         width="28000"
+         height="21000"
+         id="rect7" /></clipPath></defs><defs
+     id="defs9" /><defs
+     id="defs80" /><defs
+     id="defs103" /><defs
+     class="TextShapeIndex"
+     id="defs114" /><defs
+     class="EmbeddedBulletChars"
+     id="defs118" /><defs
+     class="TextEmbeddedBitmaps"
+     id="defs147" /><g
+     class="SlideGroup"
+     id="g177"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="g179"><g
+         id="id1"
+         class="Slide"
+         clip-path="url(#presentation_clip_path)"><g
+           class="Page"
+           id="g182"><g
+             class="com.sun.star.drawing.CustomShape"
+             id="g184"><g
+               id="id6"><rect
+                 class="BoundingBox"
+                 x="3299"
+                 y="3199"
+                 width="2403"
+                 height="1403"
+                 id="rect187"
+                 style="fill:none;stroke:none" /><path
+                 d="m 4500,4600 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+                 id="path189"
+                 inkscape:connector-curvature="0"
+                 style="fill:none;stroke:#3465a4" /><text
+                 class="TextShape"
+                 id="text191"><tspan
+                   class="TextParagraph"
+                   font-size="635px"
+                   font-weight="400"
+                   id="tspan193"
+                   style="font-weight:400;font-size:635px;font-family:sans-serif"><tspan
+                     class="TextPosition"
+                     x="4325"
+                     y="4121"
+                     id="tspan195"><tspan
+                       id="tspan197"
+                       style="fill:#000000;stroke:none">0</tspan></tspan></tspan></text>
+</g></g><g
+             class="com.sun.star.drawing.CustomShape"
+             id="g199"><g
+               id="id7"><rect
+                 class="BoundingBox"
+                 x="5699"
+                 y="3199"
+                 width="2403"
+                 height="1403"
+                 id="rect202"
+                 style="fill:none;stroke:none" /><path
+                 d="m 6900,4600 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+                 id="path204"
+                 inkscape:connector-curvature="0"
+                 style="fill:none;stroke:#3465a4" /></g></g><g
+             class="com.sun.star.drawing.CustomShape"
+             id="g206"><g
+               id="id8"><rect
+                 class="BoundingBox"
+                 x="8099"
+                 y="3199"
+                 width="2403"
+                 height="1403"
+                 id="rect209"
+                 style="fill:none;stroke:none" /><path
+                 d="m 9300,4600 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+                 id="path211"
+                 inkscape:connector-curvature="0"
+                 style="fill:none;stroke:#3465a4" /><text
+                 class="TextShape"
+                 id="text213"><tspan
+                   class="TextParagraph"
+                   font-size="635px"
+                   font-weight="400"
+                   id="tspan215"
+                   style="font-weight:400;font-size:635px;font-family:sans-serif"><tspan
+                     class="TextPosition"
+                     x="9125"
+                     y="4121"
+                     id="tspan217"><tspan
+                       id="tspan219"
+                       style="fill:#000000;stroke:none">6</tspan></tspan></tspan></text>
+</g></g><g
+             class="com.sun.star.drawing.CustomShape"
+             id="g221"><g
+               id="id9"><rect
+                 class="BoundingBox"
+                 x="5699"
+                 y="3199"
+                 width="2403"
+                 height="1403"
+                 id="rect224"
+                 style="fill:none;stroke:none" /><path
+                 d="m 6900,4600 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+                 id="path226"
+                 inkscape:connector-curvature="0"
+                 style="fill:none;stroke:#3465a4" /><text
+                 class="TextShape"
+                 id="text228"><tspan
+                   class="TextParagraph"
+                   font-size="635px"
+                   font-weight="400"
+                   id="tspan230"
+                   style="font-weight:400;font-size:635px;font-family:sans-serif"><tspan
+                     class="TextPosition"
+                     x="6725"
+                     y="4121"
+                     id="tspan232"><tspan
+                       id="tspan234"
+                       style="fill:#000000;stroke:none">1</tspan></tspan></tspan></text>
+</g></g><g
+             class="com.sun.star.drawing.CustomShape"
+             id="g236"><g
+               id="id10"><rect
+                 class="BoundingBox"
+                 x="10499"
+                 y="3199"
+                 width="2403"
+                 height="1403"
+                 id="rect239"
+                 style="fill:none;stroke:none" /><path
+                 d="m 11700,4600 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+                 id="path241"
+                 inkscape:connector-curvature="0"
+                 style="fill:none;stroke:#3465a4" /><text
+                 class="TextShape"
+                 id="text243"><tspan
+                   class="TextParagraph"
+                   font-size="635px"
+                   font-weight="400"
+                   id="tspan245"
+                   style="font-weight:400;font-size:635px;font-family:sans-serif"><tspan
+                     class="TextPosition"
+                     x="11525"
+                     y="4121"
+                     id="tspan247"><tspan
+                       id="tspan249"
+                       style="fill:#000000;stroke:none">7</tspan></tspan></tspan></text>
+</g></g><g
+             class="com.sun.star.drawing.CustomShape"
+             id="g251"><g
+               id="id11"><rect
+                 class="BoundingBox"
+                 x="3299"
+                 y="4599"
+                 width="2403"
+                 height="1403"
+                 id="rect254"
+                 style="fill:none;stroke:none" /><path
+                 d="m 4500,6000 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+                 id="path256"
+                 inkscape:connector-curvature="0"
+                 style="fill:none;stroke:#3465a4" /><text
+                 class="TextShape"
+                 id="text258"><tspan
+                   class="TextParagraph"
+                   font-size="635px"
+                   font-weight="400"
+                   id="tspan260"
+                   style="font-weight:400;font-size:635px;font-family:sans-serif"><tspan
+                     class="TextPosition"
+                     x="4325"
+                     y="5521"
+                     id="tspan262"><tspan
+                       id="tspan264"
+                       style="fill:#000000;stroke:none">2</tspan></tspan></tspan></text>
+</g></g><g
+             class="com.sun.star.drawing.CustomShape"
+             id="g266"><g
+               id="id12"><rect
+                 class="BoundingBox"
+                 x="5699"
+                 y="4599"
+                 width="2403"
+                 height="1403"
+                 id="rect269"
+                 style="fill:none;stroke:none" /><path
+                 d="m 6900,6000 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+                 id="path271"
+                 inkscape:connector-curvature="0"
+                 style="fill:none;stroke:#3465a4" /></g></g><g
+             class="com.sun.star.drawing.CustomShape"
+             id="g273"><g
+               id="id13"><rect
+                 class="BoundingBox"
+                 x="8099"
+                 y="4599"
+                 width="2403"
+                 height="1403"
+                 id="rect276"
+                 style="fill:none;stroke:none" /><path
+                 d="m 9300,6000 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+                 id="path278"
+                 inkscape:connector-curvature="0"
+                 style="fill:none;stroke:#3465a4" /><text
+                 class="TextShape"
+                 id="text280"><tspan
+                   class="TextParagraph"
+                   font-size="635px"
+                   font-weight="400"
+                   id="tspan282"
+                   style="font-weight:400;font-size:635px;font-family:sans-serif"><tspan
+                     class="TextPosition"
+                     x="9125"
+                     y="5521"
+                     id="tspan284"><tspan
+                       id="tspan286"
+                       style="fill:#000000;stroke:none">4</tspan></tspan></tspan></text>
+</g></g><g
+             class="com.sun.star.drawing.CustomShape"
+             id="g288"><g
+               id="id14"><rect
+                 class="BoundingBox"
+                 x="5699"
+                 y="4599"
+                 width="2403"
+                 height="1403"
+                 id="rect291"
+                 style="fill:none;stroke:none" /><path
+                 d="m 6900,6000 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+                 id="path293"
+                 inkscape:connector-curvature="0"
+                 style="fill:none;stroke:#3465a4" /><text
+                 class="TextShape"
+                 id="text295"><tspan
+                   class="TextParagraph"
+                   font-size="635px"
+                   font-weight="400"
+                   id="tspan297"
+                   style="font-weight:400;font-size:635px;font-family:sans-serif"><tspan
+                     class="TextPosition"
+                     x="6725"
+                     y="5521"
+                     id="tspan299"><tspan
+                       id="tspan301"
+                       style="fill:#000000;stroke:none">3</tspan></tspan></tspan></text>
+</g></g><g
+             class="com.sun.star.drawing.CustomShape"
+             id="g303"><g
+               id="id15"><rect
+                 class="BoundingBox"
+                 x="10499"
+                 y="4599"
+                 width="2403"
+                 height="1403"
+                 id="rect306"
+                 style="fill:none;stroke:none" /><path
+                 d="m 11700,6000 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+                 id="path308"
+                 inkscape:connector-curvature="0"
+                 style="fill:none;stroke:#3465a4" /><text
+                 class="TextShape"
+                 id="text310"><tspan
+                   class="TextParagraph"
+                   font-size="635px"
+                   font-weight="400"
+                   id="tspan312"
+                   style="font-weight:400;font-size:635px;font-family:sans-serif"><tspan
+                     class="TextPosition"
+                     x="11525"
+                     y="5521"
+                     id="tspan314"><tspan
+                       id="tspan316"
+                       style="fill:#000000;stroke:none">5</tspan></tspan></tspan></text>
+</g></g><g
+             class="com.sun.star.drawing.LineShape"
+             id="g318"><g
+               id="id16"><rect
+                 class="BoundingBox"
+                 x="5199"
+                 y="3850"
+                 width="1402"
+                 height="301"
+                 id="rect321"
+                 style="fill:none;stroke:none" /><path
+                 d="m 5200,4000 970,0"
+                 id="path323"
+                 inkscape:connector-curvature="0"
+                 style="fill:none;stroke:#ff3333" /><path
+                 d="m 6600,4000 -450,-150 0,300 450,-150 z"
+                 id="path325"
+                 inkscape:connector-curvature="0"
+                 style="fill:#ff3333;stroke:none" /></g></g><g
+             class="com.sun.star.drawing.LineShape"
+             id="g327"><g
+               id="id17"><rect
+                 class="BoundingBox"
+                 x="5000"
+                 y="4299"
+                 width="1202"
+                 height="802"
+                 id="rect330"
+                 style="fill:none;stroke:none" /><path
+                 d="m 6200,4300 -842,561"
+                 id="path332"
+                 inkscape:connector-curvature="0"
+                 style="fill:none;stroke:#ff3333" /><path
+                 d="m 5000,5100 458,-125 -167,-249 -291,374 z"
+                 id="path334"
+                 inkscape:connector-curvature="0"
+                 style="fill:#ff3333;stroke:none" /></g></g><g
+             class="com.sun.star.drawing.LineShape"
+             id="g336"><g
+               id="id18"><rect
+                 class="BoundingBox"
+                 x="5399"
+                 y="5250"
+                 width="1202"
+                 height="301"
+                 id="rect339"
+                 style="fill:none;stroke:none" /><path
+                 d="m 5400,5400 770,0"
+                 id="path341"
+                 inkscape:connector-curvature="0"
+                 style="fill:none;stroke:#ff3333" /><path
+                 d="m 6600,5400 -450,-150 0,300 450,-150 z"
+                 id="path343"
+                 inkscape:connector-curvature="0"
+                 style="fill:#ff3333;stroke:none" /></g></g><g
+             class="com.sun.star.drawing.LineShape"
+             id="g345"><g
+               id="id19"><rect
+                 class="BoundingBox"
+                 x="7599"
+                 y="5250"
+                 width="1202"
+                 height="301"
+                 id="rect348"
+                 style="fill:none;stroke:none" /><path
+                 d="m 7600,5400 770,0"
+                 id="path350"
+                 inkscape:connector-curvature="0"
+                 style="fill:none;stroke:#ff3333" /><path
+                 d="m 8800,5400 -450,-150 0,300 450,-150 z"
+                 id="path352"
+                 inkscape:connector-curvature="0"
+                 style="fill:#ff3333;stroke:none" /></g></g><g
+             class="com.sun.star.drawing.LineShape"
+             id="g354"><g
+               id="id20"><rect
+                 class="BoundingBox"
+                 x="9799"
+                 y="5250"
+                 width="1402"
+                 height="301"
+                 id="rect357"
+                 style="fill:none;stroke:none" /><path
+                 d="m 9800,5400 970,0"
+                 id="path359"
+                 inkscape:connector-curvature="0"
+                 style="fill:none;stroke:#ff3333" /><path
+                 d="m 11200,5400 -450,-150 0,300 450,-150 z"
+                 id="path361"
+                 inkscape:connector-curvature="0"
+                 style="fill:#ff3333;stroke:none" /></g></g><g
+             class="com.sun.star.drawing.LineShape"
+             id="g363"><g
+               id="id21"><rect
+                 class="BoundingBox"
+                 x="9900"
+                 y="4200"
+                 width="1202"
+                 height="802"
+                 id="rect366"
+                 style="fill:none;stroke:none" /><path
+                 d="m 11100,5000 -842,-561"
+                 id="path368"
+                 inkscape:connector-curvature="0"
+                 style="fill:none;stroke:#ff3333" /><path
+                 d="m 9900,4200 291,374 167,-249 -458,-125 z"
+                 id="path370"
+                 inkscape:connector-curvature="0"
+                 style="fill:#ff3333;stroke:none" /></g></g><g
+             class="com.sun.star.drawing.LineShape"
+             id="g372"><g
+               id="id22"><rect
+                 class="BoundingBox"
+                 x="9999"
+                 y="3850"
+                 width="1402"
+                 height="301"
+                 id="rect375"
+                 style="fill:none;stroke:none" /><path
+                 d="m 10000,4000 970,0"
+                 id="path377"
+                 inkscape:connector-curvature="0"
+                 style="fill:none;stroke:#ff3333" /><path
+                 d="m 11400,4000 -450,-150 0,300 450,-150 z"
+                 id="path379"
+                 inkscape:connector-curvature="0"
+                 style="fill:#ff3333;stroke:none" /></g></g></g></g></g></g></svg>
diff --git a/Documentation/media/uapi/v4l/nv12mt_example.png b/Documentation/media/uapi/v4l/nv12mt_example.png
deleted file mode 100644
index 7775f5d7cc4661b7ec082e7ed5542eddb7dc65de..0000000000000000000000000000000000000000
GIT binary patch
literal 0
HcmV?d00001

literal 5261
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
HjxqlNW%-jc

diff --git a/Documentation/media/uapi/v4l/nv12mt_example.svg b/Documentation/media/uapi/v4l/nv12mt_example.svg
new file mode 100644
index 000000000000..d65d989ee73b
--- /dev/null
+++ b/Documentation/media/uapi/v4l/nv12mt_example.svg
@@ -0,0 +1,1589 @@
+<?xml version="1.0" encoding="UTF-8" standalone="no"?>
+<svg
+   xmlns:dc="http://purl.org/dc/elements/1.1/"
+   xmlns:cc="http://creativecommons.org/ns#"
+   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
+   xmlns:svg="http://www.w3.org/2000/svg"
+   xmlns="http://www.w3.org/2000/svg"
+   xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"
+   xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape"
+   version="1.2"
+   width="144.28223mm"
+   height="70.282227mm"
+   viewBox="0 0 14428.222 7028.2226"
+   preserveAspectRatio="xMidYMid"
+   xml:space="preserve"
+   id="svg2"
+   inkscape:version="0.91 r13725"
+   sodipodi:docname="nv12mt_example.svg"
+   style="fill-rule:evenodd;stroke-width:28.22200012;stroke-linejoin:round"><metadata
+     id="metadata953"><rdf:RDF><cc:Work
+         rdf:about=""><dc:format>image/svg+xml</dc:format><dc:type
+           rdf:resource="http://purl.org/dc/dcmitype/StillImage" /><dc:title></dc:title></cc:Work></rdf:RDF></metadata><sodipodi:namedview
+     pagecolor="#ffffff"
+     bordercolor="#666666"
+     borderopacity="1"
+     objecttolerance="10"
+     gridtolerance="10"
+     guidetolerance="10"
+     inkscape:pageopacity="0"
+     inkscape:pageshadow="2"
+     inkscape:window-width="1920"
+     inkscape:window-height="997"
+     id="namedview951"
+     showgrid="false"
+     fit-margin-top="0"
+     fit-margin-left="0"
+     fit-margin-right="0"
+     fit-margin-bottom="0"
+     inkscape:zoom="2.7306359"
+     inkscape:cx="255.61812"
+     inkscape:cy="124.51576"
+     inkscape:window-x="1920"
+     inkscape:window-y="30"
+     inkscape:window-maximized="1"
+     inkscape:current-layer="svg2" /><defs
+     class="ClipPathGroup"
+     id="defs4" /><defs
+     id="defs9" /><defs
+     id="defs84" /><defs
+     id="defs107" /><defs
+     class="TextShapeIndex"
+     id="defs118" /><defs
+     class="EmbeddedBulletChars"
+     id="defs122" /><defs
+     class="TextEmbeddedBitmaps"
+     id="defs151" /><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g188"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id6"><rect
+         class="BoundingBox"
+         x="3299"
+         y="3199"
+         width="2403"
+         height="1403"
+         id="rect191"
+         style="fill:none;stroke:none" /><path
+         d="m 4500,4600 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+         id="path193"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /><text
+         class="TextShape"
+         id="text195"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan197"
+           style="font-weight:400;font-size:635px;font-family:sans-serif"><tspan
+             class="TextPosition"
+             x="4325"
+             y="4121"
+             id="tspan199"><tspan
+               id="tspan201"
+               style="fill:#000000;stroke:none">0</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g203"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id7"><rect
+         class="BoundingBox"
+         x="5699"
+         y="3199"
+         width="2403"
+         height="1403"
+         id="rect206"
+         style="fill:none;stroke:none" /><path
+         d="m 6900,4600 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+         id="path208"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /></g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g210"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id8"><rect
+         class="BoundingBox"
+         x="8099"
+         y="3199"
+         width="2403"
+         height="1403"
+         id="rect213"
+         style="fill:none;stroke:none" /><path
+         d="m 9300,4600 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+         id="path215"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /><text
+         class="TextShape"
+         id="text217"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan219"
+           style="font-weight:400;font-size:635px;font-family:sans-serif"><tspan
+             class="TextPosition"
+             x="9125"
+             y="4121"
+             id="tspan221"><tspan
+               id="tspan223"
+               style="fill:#000000;stroke:none">6</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g225"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id9"><rect
+         class="BoundingBox"
+         x="5699"
+         y="3199"
+         width="2403"
+         height="1403"
+         id="rect228"
+         style="fill:none;stroke:none" /><path
+         d="m 6900,4600 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+         id="path230"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /><text
+         class="TextShape"
+         id="text232"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan234"
+           style="font-weight:400;font-size:635px;font-family:sans-serif"><tspan
+             class="TextPosition"
+             x="6725"
+             y="4121"
+             id="tspan236"><tspan
+               id="tspan238"
+               style="fill:#000000;stroke:none">1</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g240"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id10"><rect
+         class="BoundingBox"
+         x="10499"
+         y="3199"
+         width="2403"
+         height="1403"
+         id="rect243"
+         style="fill:none;stroke:none" /><path
+         d="m 11700,4600 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+         id="path245"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /><text
+         class="TextShape"
+         id="text247"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan249"
+           style="font-weight:400;font-size:635px;font-family:sans-serif"><tspan
+             class="TextPosition"
+             x="11525"
+             y="4121"
+             id="tspan251"><tspan
+               id="tspan253"
+               style="fill:#000000;stroke:none">7</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g255"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id11"><rect
+         class="BoundingBox"
+         x="12899"
+         y="3199"
+         width="2403"
+         height="1403"
+         id="rect258"
+         style="fill:none;stroke:none" /><path
+         d="m 14100,4600 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+         id="path260"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /></g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g262"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id12"><rect
+         class="BoundingBox"
+         x="15299"
+         y="3199"
+         width="2403"
+         height="1403"
+         id="rect265"
+         style="fill:none;stroke:none" /><path
+         d="m 16500,4600 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+         id="path267"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /><text
+         class="TextShape"
+         id="text269"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan271"
+           style="font-weight:400;font-size:635px;font-family:sans-serif"><tspan
+             class="TextPosition"
+             x="16325"
+             y="4121"
+             id="tspan273"><tspan
+               id="tspan275"
+               style="fill:#000000;stroke:none">9</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g277"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id13"><rect
+         class="BoundingBox"
+         x="12899"
+         y="3199"
+         width="2403"
+         height="1403"
+         id="rect280"
+         style="fill:none;stroke:none" /><path
+         d="m 14100,4600 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+         id="path282"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /><text
+         class="TextShape"
+         id="text284"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan286"
+           style="font-weight:400;font-size:635px;font-family:sans-serif"><tspan
+             class="TextPosition"
+             x="13925"
+             y="4121"
+             id="tspan288"><tspan
+               id="tspan290"
+               style="fill:#000000;stroke:none">8</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g292"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id14"><rect
+         class="BoundingBox"
+         x="3299"
+         y="4599"
+         width="2403"
+         height="1403"
+         id="rect295"
+         style="fill:none;stroke:none" /><path
+         d="m 4500,6000 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+         id="path297"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /><text
+         class="TextShape"
+         id="text299"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan301"
+           style="font-weight:400;font-size:635px;font-family:sans-serif"><tspan
+             class="TextPosition"
+             x="4325"
+             y="5521"
+             id="tspan303"><tspan
+               id="tspan305"
+               style="fill:#000000;stroke:none">2</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g307"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id15"><rect
+         class="BoundingBox"
+         x="5699"
+         y="4599"
+         width="2403"
+         height="1403"
+         id="rect310"
+         style="fill:none;stroke:none" /><path
+         d="m 6900,6000 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+         id="path312"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /></g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g314"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id16"><rect
+         class="BoundingBox"
+         x="8099"
+         y="4599"
+         width="2403"
+         height="1403"
+         id="rect317"
+         style="fill:none;stroke:none" /><path
+         d="m 9300,6000 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+         id="path319"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /><text
+         class="TextShape"
+         id="text321"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan323"
+           style="font-weight:400;font-size:635px;font-family:sans-serif"><tspan
+             class="TextPosition"
+             x="9125"
+             y="5521"
+             id="tspan325"><tspan
+               id="tspan327"
+               style="fill:#000000;stroke:none">4</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g329"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id17"><rect
+         class="BoundingBox"
+         x="5699"
+         y="4599"
+         width="2403"
+         height="1403"
+         id="rect332"
+         style="fill:none;stroke:none" /><path
+         d="m 6900,6000 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+         id="path334"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /><text
+         class="TextShape"
+         id="text336"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan338"
+           style="font-weight:400;font-size:635px;font-family:sans-serif"><tspan
+             class="TextPosition"
+             x="6725"
+             y="5521"
+             id="tspan340"><tspan
+               id="tspan342"
+               style="fill:#000000;stroke:none">3</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g344"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id18"><rect
+         class="BoundingBox"
+         x="10499"
+         y="4599"
+         width="2403"
+         height="1403"
+         id="rect347"
+         style="fill:none;stroke:none" /><path
+         d="m 11700,6000 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+         id="path349"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /><text
+         class="TextShape"
+         id="text351"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan353"
+           style="font-weight:400;font-size:635px;font-family:sans-serif"><tspan
+             class="TextPosition"
+             x="11525"
+             y="5521"
+             id="tspan355"><tspan
+               id="tspan357"
+               style="fill:#000000;stroke:none">5</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g359"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id19"><rect
+         class="BoundingBox"
+         x="12899"
+         y="4599"
+         width="2403"
+         height="1403"
+         id="rect362"
+         style="fill:none;stroke:none" /><path
+         d="m 14100,6000 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+         id="path364"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /></g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g366"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id20"><rect
+         class="BoundingBox"
+         x="15299"
+         y="4599"
+         width="2403"
+         height="1403"
+         id="rect369"
+         style="fill:none;stroke:none" /><path
+         d="m 16500,6000 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+         id="path371"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /><text
+         class="TextShape"
+         id="text373"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan375"
+           style="font-weight:400;font-size:635px;font-family:sans-serif"><tspan
+             class="TextPosition"
+             x="16149"
+             y="5521"
+             id="tspan377"><tspan
+               id="tspan379"
+               style="fill:#000000;stroke:none">11</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g381"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id21"><rect
+         class="BoundingBox"
+         x="12899"
+         y="4599"
+         width="2403"
+         height="1403"
+         id="rect384"
+         style="fill:none;stroke:none" /><path
+         d="m 14100,6000 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+         id="path386"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /><text
+         class="TextShape"
+         id="text388"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan390"
+           style="font-weight:400;font-size:635px;font-family:sans-serif"><tspan
+             class="TextPosition"
+             x="13749"
+             y="5521"
+             id="tspan392"><tspan
+               id="tspan394"
+               style="fill:#000000;stroke:none">10</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g396"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id22"><rect
+         class="BoundingBox"
+         x="3299"
+         y="5999"
+         width="2403"
+         height="1403"
+         id="rect399"
+         style="fill:none;stroke:none" /><path
+         d="m 4500,7400 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+         id="path401"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /><text
+         class="TextShape"
+         id="text403"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan405"
+           style="font-weight:400;font-size:635px;font-family:sans-serif"><tspan
+             class="TextPosition"
+             x="4149"
+             y="6921"
+             id="tspan407"><tspan
+               id="tspan409"
+               style="fill:#000000;stroke:none">12</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g411"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id23"><rect
+         class="BoundingBox"
+         x="5699"
+         y="5999"
+         width="2403"
+         height="1403"
+         id="rect414"
+         style="fill:none;stroke:none" /><path
+         d="m 6900,7400 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+         id="path416"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /></g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g418"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id24"><rect
+         class="BoundingBox"
+         x="8099"
+         y="5999"
+         width="2403"
+         height="1403"
+         id="rect421"
+         style="fill:none;stroke:none" /><path
+         d="m 9300,7400 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+         id="path423"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /><text
+         class="TextShape"
+         id="text425"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan427"
+           style="font-weight:400;font-size:635px;font-family:sans-serif"><tspan
+             class="TextPosition"
+             x="8949"
+             y="6921"
+             id="tspan429"><tspan
+               id="tspan431"
+               style="fill:#000000;stroke:none">18</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g433"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id25"><rect
+         class="BoundingBox"
+         x="5699"
+         y="5999"
+         width="2403"
+         height="1403"
+         id="rect436"
+         style="fill:none;stroke:none" /><path
+         d="m 6900,7400 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+         id="path438"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /><text
+         class="TextShape"
+         id="text440"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan442"
+           style="font-weight:400;font-size:635px;font-family:sans-serif"><tspan
+             class="TextPosition"
+             x="6549"
+             y="6921"
+             id="tspan444"><tspan
+               id="tspan446"
+               style="fill:#000000;stroke:none">13</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g448"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id26"><rect
+         class="BoundingBox"
+         x="10499"
+         y="5999"
+         width="2403"
+         height="1403"
+         id="rect451"
+         style="fill:none;stroke:none" /><path
+         d="m 11700,7400 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+         id="path453"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /><text
+         class="TextShape"
+         id="text455"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan457"
+           style="font-weight:400;font-size:635px;font-family:sans-serif"><tspan
+             class="TextPosition"
+             x="11349"
+             y="6921"
+             id="tspan459"><tspan
+               id="tspan461"
+               style="fill:#000000;stroke:none">19</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g463"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id27"><rect
+         class="BoundingBox"
+         x="12899"
+         y="5999"
+         width="2403"
+         height="1403"
+         id="rect466"
+         style="fill:none;stroke:none" /><path
+         d="m 14100,7400 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+         id="path468"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /></g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g470"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id28"><rect
+         class="BoundingBox"
+         x="15299"
+         y="5999"
+         width="2403"
+         height="1403"
+         id="rect473"
+         style="fill:none;stroke:none" /><path
+         d="m 16500,7400 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+         id="path475"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /><text
+         class="TextShape"
+         id="text477"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan479"
+           style="font-weight:400;font-size:635px;font-family:sans-serif"><tspan
+             class="TextPosition"
+             x="16149"
+             y="6921"
+             id="tspan481"><tspan
+               id="tspan483"
+               style="fill:#000000;stroke:none">21</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g485"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id29"><rect
+         class="BoundingBox"
+         x="12899"
+         y="5999"
+         width="2403"
+         height="1403"
+         id="rect488"
+         style="fill:none;stroke:none" /><path
+         d="m 14100,7400 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+         id="path490"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /><text
+         class="TextShape"
+         id="text492"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan494"
+           style="font-weight:400;font-size:635px;font-family:sans-serif"><tspan
+             class="TextPosition"
+             x="13749"
+             y="6921"
+             id="tspan496"><tspan
+               id="tspan498"
+               style="fill:#000000;stroke:none">20</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g500"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id30"><rect
+         class="BoundingBox"
+         x="3299"
+         y="7399"
+         width="2403"
+         height="1403"
+         id="rect503"
+         style="fill:none;stroke:none" /><path
+         d="m 4500,8800 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+         id="path505"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /><text
+         class="TextShape"
+         id="text507"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan509"
+           style="font-weight:400;font-size:635px;font-family:sans-serif"><tspan
+             class="TextPosition"
+             x="4149"
+             y="8321"
+             id="tspan511"><tspan
+               id="tspan513"
+               style="fill:#000000;stroke:none">14</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g515"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id31"><rect
+         class="BoundingBox"
+         x="5699"
+         y="7399"
+         width="2403"
+         height="1403"
+         id="rect518"
+         style="fill:none;stroke:none" /><path
+         d="m 6900,8800 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+         id="path520"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /></g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g522"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id32"><rect
+         class="BoundingBox"
+         x="8099"
+         y="7399"
+         width="2403"
+         height="1403"
+         id="rect525"
+         style="fill:none;stroke:none" /><path
+         d="m 9300,8800 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+         id="path527"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /><text
+         class="TextShape"
+         id="text529"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan531"
+           style="font-weight:400;font-size:635px;font-family:sans-serif"><tspan
+             class="TextPosition"
+             x="8949"
+             y="8321"
+             id="tspan533"><tspan
+               id="tspan535"
+               style="fill:#000000;stroke:none">16</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g537"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id33"><rect
+         class="BoundingBox"
+         x="5699"
+         y="7399"
+         width="2403"
+         height="1403"
+         id="rect540"
+         style="fill:none;stroke:none" /><path
+         d="m 6900,8800 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+         id="path542"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /><text
+         class="TextShape"
+         id="text544"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan546"
+           style="font-weight:400;font-size:635px;font-family:sans-serif"><tspan
+             class="TextPosition"
+             x="6549"
+             y="8321"
+             id="tspan548"><tspan
+               id="tspan550"
+               style="fill:#000000;stroke:none">15</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g552"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id34"><rect
+         class="BoundingBox"
+         x="10499"
+         y="7399"
+         width="2403"
+         height="1403"
+         id="rect555"
+         style="fill:none;stroke:none" /><path
+         d="m 11700,8800 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+         id="path557"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /><text
+         class="TextShape"
+         id="text559"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan561"
+           style="font-weight:400;font-size:635px;font-family:sans-serif"><tspan
+             class="TextPosition"
+             x="11349"
+             y="8321"
+             id="tspan563"><tspan
+               id="tspan565"
+               style="fill:#000000;stroke:none">17</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g567"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id35"><rect
+         class="BoundingBox"
+         x="12899"
+         y="7399"
+         width="2403"
+         height="1403"
+         id="rect570"
+         style="fill:none;stroke:none" /><path
+         d="m 14100,8800 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+         id="path572"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /></g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g574"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id36"><rect
+         class="BoundingBox"
+         x="15299"
+         y="7399"
+         width="2403"
+         height="1403"
+         id="rect577"
+         style="fill:none;stroke:none" /><path
+         d="m 16500,8800 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+         id="path579"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /><text
+         class="TextShape"
+         id="text581"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan583"
+           style="font-weight:400;font-size:635px;font-family:sans-serif"><tspan
+             class="TextPosition"
+             x="16149"
+             y="8321"
+             id="tspan585"><tspan
+               id="tspan587"
+               style="fill:#000000;stroke:none">23</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g589"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id37"><rect
+         class="BoundingBox"
+         x="12899"
+         y="7399"
+         width="2403"
+         height="1403"
+         id="rect592"
+         style="fill:none;stroke:none" /><path
+         d="m 14100,8800 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+         id="path594"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /><text
+         class="TextShape"
+         id="text596"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan598"
+           style="font-weight:400;font-size:635px;font-family:sans-serif"><tspan
+             class="TextPosition"
+             x="13749"
+             y="8321"
+             id="tspan600"><tspan
+               id="tspan602"
+               style="fill:#000000;stroke:none">22</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g604"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id38"><rect
+         class="BoundingBox"
+         x="3299"
+         y="8799"
+         width="2403"
+         height="1403"
+         id="rect607"
+         style="fill:none;stroke:none" /><path
+         d="m 4500,10200 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+         id="path609"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /><text
+         class="TextShape"
+         id="text611"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan613"
+           style="font-weight:400;font-size:635px;font-family:sans-serif"><tspan
+             class="TextPosition"
+             x="4149"
+             y="9721"
+             id="tspan615"><tspan
+               id="tspan617"
+               style="fill:#000000;stroke:none">24</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g619"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id39"><rect
+         class="BoundingBox"
+         x="5699"
+         y="8799"
+         width="2403"
+         height="1403"
+         id="rect622"
+         style="fill:none;stroke:none" /><path
+         d="m 6900,10200 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+         id="path624"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /></g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g626"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id40"><rect
+         class="BoundingBox"
+         x="8099"
+         y="8799"
+         width="2403"
+         height="1403"
+         id="rect629"
+         style="fill:none;stroke:none" /><path
+         d="m 9300,10200 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+         id="path631"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /><text
+         class="TextShape"
+         id="text633"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan635"
+           style="font-weight:400;font-size:635px;font-family:sans-serif"><tspan
+             class="TextPosition"
+             x="8949"
+             y="9721"
+             id="tspan637"><tspan
+               id="tspan639"
+               style="fill:#000000;stroke:none">26</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g641"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id41"><rect
+         class="BoundingBox"
+         x="5699"
+         y="8799"
+         width="2403"
+         height="1403"
+         id="rect644"
+         style="fill:none;stroke:none" /><path
+         d="m 6900,10200 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+         id="path646"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /><text
+         class="TextShape"
+         id="text648"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan650"
+           style="font-weight:400;font-size:635px;font-family:sans-serif"><tspan
+             class="TextPosition"
+             x="6549"
+             y="9721"
+             id="tspan652"><tspan
+               id="tspan654"
+               style="fill:#000000;stroke:none">25</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g656"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id42"><rect
+         class="BoundingBox"
+         x="10499"
+         y="8799"
+         width="2403"
+         height="1403"
+         id="rect659"
+         style="fill:none;stroke:none" /><path
+         d="m 11700,10200 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+         id="path661"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /><text
+         class="TextShape"
+         id="text663"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan665"
+           style="font-weight:400;font-size:635px;font-family:sans-serif"><tspan
+             class="TextPosition"
+             x="11349"
+             y="9721"
+             id="tspan667"><tspan
+               id="tspan669"
+               style="fill:#000000;stroke:none">27</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g671"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id43"><rect
+         class="BoundingBox"
+         x="12899"
+         y="8799"
+         width="2403"
+         height="1403"
+         id="rect674"
+         style="fill:none;stroke:none" /><path
+         d="m 14100,10200 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+         id="path676"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /></g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g678"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id44"><rect
+         class="BoundingBox"
+         x="15299"
+         y="8799"
+         width="2403"
+         height="1403"
+         id="rect681"
+         style="fill:none;stroke:none" /><path
+         d="m 16500,10200 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+         id="path683"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /><text
+         class="TextShape"
+         id="text685"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan687"
+           style="font-weight:400;font-size:635px;font-family:sans-serif"><tspan
+             class="TextPosition"
+             x="16149"
+             y="9721"
+             id="tspan689"><tspan
+               id="tspan691"
+               style="fill:#000000;stroke:none">29</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g693"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id45"><rect
+         class="BoundingBox"
+         x="12899"
+         y="8799"
+         width="2403"
+         height="1403"
+         id="rect696"
+         style="fill:none;stroke:none" /><path
+         d="m 14100,10200 -1200,0 0,-1400 2400,0 0,1400 -1200,0 z"
+         id="path698"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /><text
+         class="TextShape"
+         id="text700"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan702"
+           style="font-weight:400;font-size:635px;font-family:sans-serif"><tspan
+             class="TextPosition"
+             x="13749"
+             y="9721"
+             id="tspan704"><tspan
+               id="tspan706"
+               style="fill:#000000;stroke:none">28</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.LineShape"
+     id="g708"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id46"><rect
+         class="BoundingBox"
+         x="5199"
+         y="3850"
+         width="1402"
+         height="301"
+         id="rect711"
+         style="fill:none;stroke:none" /><path
+         d="m 5200,4000 970,0"
+         id="path713"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#ff3333" /><path
+         d="m 6600,4000 -450,-150 0,300 450,-150 z"
+         id="path715"
+         inkscape:connector-curvature="0"
+         style="fill:#ff3333;stroke:none" /></g></g><g
+     class="com.sun.star.drawing.LineShape"
+     id="g717"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id47"><rect
+         class="BoundingBox"
+         x="5000"
+         y="4299"
+         width="1202"
+         height="802"
+         id="rect720"
+         style="fill:none;stroke:none" /><path
+         d="m 6200,4300 -842,561"
+         id="path722"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#ff3333" /><path
+         d="m 5000,5100 458,-125 -167,-249 -291,374 z"
+         id="path724"
+         inkscape:connector-curvature="0"
+         style="fill:#ff3333;stroke:none" /></g></g><g
+     class="com.sun.star.drawing.LineShape"
+     id="g726"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id48"><rect
+         class="BoundingBox"
+         x="5399"
+         y="5250"
+         width="1202"
+         height="301"
+         id="rect729"
+         style="fill:none;stroke:none" /><path
+         d="m 5400,5400 770,0"
+         id="path731"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#ff3333" /><path
+         d="m 6600,5400 -450,-150 0,300 450,-150 z"
+         id="path733"
+         inkscape:connector-curvature="0"
+         style="fill:#ff3333;stroke:none" /></g></g><g
+     class="com.sun.star.drawing.LineShape"
+     id="g735"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id49"><rect
+         class="BoundingBox"
+         x="7599"
+         y="5250"
+         width="1202"
+         height="301"
+         id="rect738"
+         style="fill:none;stroke:none" /><path
+         d="m 7600,5400 770,0"
+         id="path740"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#ff3333" /><path
+         d="m 8800,5400 -450,-150 0,300 450,-150 z"
+         id="path742"
+         inkscape:connector-curvature="0"
+         style="fill:#ff3333;stroke:none" /></g></g><g
+     class="com.sun.star.drawing.LineShape"
+     id="g744"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id50"><rect
+         class="BoundingBox"
+         x="9799"
+         y="5250"
+         width="1402"
+         height="301"
+         id="rect747"
+         style="fill:none;stroke:none" /><path
+         d="m 9800,5400 970,0"
+         id="path749"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#ff3333" /><path
+         d="m 11200,5400 -450,-150 0,300 450,-150 z"
+         id="path751"
+         inkscape:connector-curvature="0"
+         style="fill:#ff3333;stroke:none" /></g></g><g
+     class="com.sun.star.drawing.LineShape"
+     id="g753"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id51"><rect
+         class="BoundingBox"
+         x="9900"
+         y="4200"
+         width="1202"
+         height="802"
+         id="rect756"
+         style="fill:none;stroke:none" /><path
+         d="m 11100,5000 -842,-561"
+         id="path758"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#ff3333" /><path
+         d="m 9900,4200 291,374 167,-249 -458,-125 z"
+         id="path760"
+         inkscape:connector-curvature="0"
+         style="fill:#ff3333;stroke:none" /></g></g><g
+     class="com.sun.star.drawing.LineShape"
+     id="g762"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id52"><rect
+         class="BoundingBox"
+         x="9999"
+         y="3850"
+         width="1402"
+         height="301"
+         id="rect765"
+         style="fill:none;stroke:none" /><path
+         d="m 10000,4000 970,0"
+         id="path767"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#ff3333" /><path
+         d="m 11400,4000 -450,-150 0,300 450,-150 z"
+         id="path769"
+         inkscape:connector-curvature="0"
+         style="fill:#ff3333;stroke:none" /></g></g><g
+     class="com.sun.star.drawing.LineShape"
+     id="g771"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id53"><rect
+         class="BoundingBox"
+         x="12399"
+         y="3850"
+         width="1202"
+         height="301"
+         id="rect774"
+         style="fill:none;stroke:none" /><path
+         d="m 12400,4000 770,0"
+         id="path776"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#ff3333" /><path
+         d="m 13600,4000 -450,-150 0,300 450,-150 z"
+         id="path778"
+         inkscape:connector-curvature="0"
+         style="fill:#ff3333;stroke:none" /></g></g><g
+     class="com.sun.star.drawing.LineShape"
+     id="g780"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id54"><rect
+         class="BoundingBox"
+         x="14799"
+         y="3850"
+         width="1202"
+         height="301"
+         id="rect783"
+         style="fill:none;stroke:none" /><path
+         d="m 14800,4000 770,0"
+         id="path785"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#ff3333" /><path
+         d="m 16000,4000 -450,-150 0,300 450,-150 z"
+         id="path787"
+         inkscape:connector-curvature="0"
+         style="fill:#ff3333;stroke:none" /></g></g><g
+     class="com.sun.star.drawing.LineShape"
+     id="g789"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id55"><rect
+         class="BoundingBox"
+         x="14400"
+         y="4399"
+         width="1402"
+         height="602"
+         id="rect792"
+         style="fill:none;stroke:none" /><path
+         d="m 15800,4400 -1005,431"
+         id="path794"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#ff3333" /><path
+         d="m 14400,5000 473,-39 -118,-276 -355,315 z"
+         id="path796"
+         inkscape:connector-curvature="0"
+         style="fill:#ff3333;stroke:none" /></g></g><g
+     class="com.sun.star.drawing.LineShape"
+     id="g798"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id56"><rect
+         class="BoundingBox"
+         x="14599"
+         y="5250"
+         width="1402"
+         height="301"
+         id="rect801"
+         style="fill:none;stroke:none" /><path
+         d="m 14600,5400 970,0"
+         id="path803"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#ff3333" /><path
+         d="m 16000,5400 -450,-150 0,300 450,-150 z"
+         id="path805"
+         inkscape:connector-curvature="0"
+         style="fill:#ff3333;stroke:none" /></g></g><g
+     class="com.sun.star.drawing.LineShape"
+     id="g807"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id57"><rect
+         class="BoundingBox"
+         x="5199"
+         y="6550"
+         width="1402"
+         height="301"
+         id="rect810"
+         style="fill:none;stroke:none" /><path
+         d="m 5200,6700 970,0"
+         id="path812"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#ff3333" /><path
+         d="m 6600,6700 -450,-150 0,300 450,-150 z"
+         id="path814"
+         inkscape:connector-curvature="0"
+         style="fill:#ff3333;stroke:none" /></g></g><g
+     class="com.sun.star.drawing.LineShape"
+     id="g816"
+     transform="translate(-3285.889,-3129.4446)"><g
+       id="id58"><rect
+         class="BoundingBox"
+         x="5000"
+         y="6999"
+         width="1202"
+         height="802"
+         id="rect819"
+         style="fill:none;stroke:none" /><path
+         d="m 6200,7000 -842,561"
+         id="path821"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#ff3333" /><path
+         d="m 5000,7800 458,-125 -167,-249 -291,374 z"
+         id="path823"
+         inkscape:connector-curvature="0"
+         style="fill:#ff3333;stroke:none" /></g></g><g
+     class="com.sun.star.drawing.LineShape"
+     id="g825"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id59"><rect
+         class="BoundingBox"
+         x="5399"
+         y="7950"
+         width="1202"
+         height="301"
+         id="rect828"
+         style="fill:none;stroke:none" /><path
+         d="m 5400,8100 770,0"
+         id="path830"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#ff3333" /><path
+         d="m 6600,8100 -450,-150 0,300 450,-150 z"
+         id="path832"
+         inkscape:connector-curvature="0"
+         style="fill:#ff3333;stroke:none" /></g></g><g
+     class="com.sun.star.drawing.LineShape"
+     id="g834"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id60"><rect
+         class="BoundingBox"
+         x="7599"
+         y="7950"
+         width="1202"
+         height="301"
+         id="rect837"
+         style="fill:none;stroke:none" /><path
+         d="m 7600,8100 770,0"
+         id="path839"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#ff3333" /><path
+         d="m 8800,8100 -450,-150 0,300 450,-150 z"
+         id="path841"
+         inkscape:connector-curvature="0"
+         style="fill:#ff3333;stroke:none" /></g></g><g
+     class="com.sun.star.drawing.LineShape"
+     id="g843"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id61"><rect
+         class="BoundingBox"
+         x="9799"
+         y="7950"
+         width="1402"
+         height="301"
+         id="rect846"
+         style="fill:none;stroke:none" /><path
+         d="m 9800,8100 970,0"
+         id="path848"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#ff3333" /><path
+         d="m 11200,8100 -450,-150 0,300 450,-150 z"
+         id="path850"
+         inkscape:connector-curvature="0"
+         style="fill:#ff3333;stroke:none" /></g></g><g
+     class="com.sun.star.drawing.LineShape"
+     id="g852"
+     transform="translate(-3285.889,-3129.4446)"><g
+       id="id62"><rect
+         class="BoundingBox"
+         x="9900"
+         y="6900"
+         width="1202"
+         height="802"
+         id="rect855"
+         style="fill:none;stroke:none" /><path
+         d="m 11100,7700 -842,-561"
+         id="path857"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#ff3333" /><path
+         d="m 9900,6900 291,374 167,-249 -458,-125 z"
+         id="path859"
+         inkscape:connector-curvature="0"
+         style="fill:#ff3333;stroke:none" /></g></g><g
+     class="com.sun.star.drawing.LineShape"
+     id="g861"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id63"><rect
+         class="BoundingBox"
+         x="9999"
+         y="6550"
+         width="1402"
+         height="301"
+         id="rect864"
+         style="fill:none;stroke:none" /><path
+         d="m 10000,6700 970,0"
+         id="path866"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#ff3333" /><path
+         d="m 11400,6700 -450,-150 0,300 450,-150 z"
+         id="path868"
+         inkscape:connector-curvature="0"
+         style="fill:#ff3333;stroke:none" /></g></g><g
+     class="com.sun.star.drawing.LineShape"
+     id="g870"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id64"><rect
+         class="BoundingBox"
+         x="12399"
+         y="6550"
+         width="1202"
+         height="301"
+         id="rect873"
+         style="fill:none;stroke:none" /><path
+         d="m 12400,6700 770,0"
+         id="path875"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#ff3333" /><path
+         d="m 13600,6700 -450,-150 0,300 450,-150 z"
+         id="path877"
+         inkscape:connector-curvature="0"
+         style="fill:#ff3333;stroke:none" /></g></g><g
+     class="com.sun.star.drawing.LineShape"
+     id="g879"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id65"><rect
+         class="BoundingBox"
+         x="14799"
+         y="6550"
+         width="1202"
+         height="301"
+         id="rect882"
+         style="fill:none;stroke:none" /><path
+         d="m 14800,6700 770,0"
+         id="path884"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#ff3333" /><path
+         d="m 16000,6700 -450,-150 0,300 450,-150 z"
+         id="path886"
+         inkscape:connector-curvature="0"
+         style="fill:#ff3333;stroke:none" /></g></g><g
+     class="com.sun.star.drawing.LineShape"
+     id="g888"
+     transform="translate(-3285.889,-3129.4446)"><g
+       id="id66"><rect
+         class="BoundingBox"
+         x="14400"
+         y="7099"
+         width="1402"
+         height="602"
+         id="rect891"
+         style="fill:none;stroke:none" /><path
+         d="m 15800,7100 -1005,431"
+         id="path893"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#ff3333" /><path
+         d="m 14400,7700 473,-39 -118,-276 -355,315 z"
+         id="path895"
+         inkscape:connector-curvature="0"
+         style="fill:#ff3333;stroke:none" /></g></g><g
+     class="com.sun.star.drawing.LineShape"
+     id="g897"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id67"><rect
+         class="BoundingBox"
+         x="14599"
+         y="7950"
+         width="1402"
+         height="301"
+         id="rect900"
+         style="fill:none;stroke:none" /><path
+         d="m 14600,8100 970,0"
+         id="path902"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#ff3333" /><path
+         d="m 16000,8100 -450,-150 0,300 450,-150 z"
+         id="path904"
+         inkscape:connector-curvature="0"
+         style="fill:#ff3333;stroke:none" /></g></g><g
+     class="com.sun.star.drawing.LineShape"
+     id="g906"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id68"><rect
+         class="BoundingBox"
+         x="5399"
+         y="9450"
+         width="1202"
+         height="301"
+         id="rect909"
+         style="fill:none;stroke:none" /><path
+         d="m 5400,9600 770,0"
+         id="path911"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#ff3333" /><path
+         d="m 6600,9600 -450,-150 0,300 450,-150 z"
+         id="path913"
+         inkscape:connector-curvature="0"
+         style="fill:#ff3333;stroke:none" /></g></g><g
+     class="com.sun.star.drawing.LineShape"
+     id="g915"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id69"><rect
+         class="BoundingBox"
+         x="7599"
+         y="9450"
+         width="1202"
+         height="301"
+         id="rect918"
+         style="fill:none;stroke:none" /><path
+         d="m 7600,9600 770,0"
+         id="path920"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#ff3333" /><path
+         d="m 8800,9600 -450,-150 0,300 450,-150 z"
+         id="path922"
+         inkscape:connector-curvature="0"
+         style="fill:#ff3333;stroke:none" /></g></g><g
+     class="com.sun.star.drawing.LineShape"
+     id="g924"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id70"><rect
+         class="BoundingBox"
+         x="9999"
+         y="9450"
+         width="1202"
+         height="301"
+         id="rect927"
+         style="fill:none;stroke:none" /><path
+         d="m 10000,9600 770,0"
+         id="path929"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#ff3333" /><path
+         d="m 11200,9600 -450,-150 0,300 450,-150 z"
+         id="path931"
+         inkscape:connector-curvature="0"
+         style="fill:#ff3333;stroke:none" /></g></g><g
+     class="com.sun.star.drawing.LineShape"
+     id="g933"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id71"><rect
+         class="BoundingBox"
+         x="12399"
+         y="9450"
+         width="1202"
+         height="301"
+         id="rect936"
+         style="fill:none;stroke:none" /><path
+         d="m 12400,9600 770,0"
+         id="path938"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#ff3333" /><path
+         d="m 13600,9600 -450,-150 0,300 450,-150 z"
+         id="path940"
+         inkscape:connector-curvature="0"
+         style="fill:#ff3333;stroke:none" /></g></g><g
+     class="com.sun.star.drawing.LineShape"
+     id="g942"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id72"><rect
+         class="BoundingBox"
+         x="14799"
+         y="9450"
+         width="1202"
+         height="301"
+         id="rect945"
+         style="fill:none;stroke:none" /><path
+         d="m 14800,9600 770,0"
+         id="path947"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#ff3333" /><path
+         d="m 16000,9600 -450,-150 0,300 450,-150 z"
+         id="path949"
+         inkscape:connector-curvature="0"
+         style="fill:#ff3333;stroke:none" /></g></g></svg>
diff --git a/Documentation/media/uapi/v4l/pixfmt-nv12mt.rst b/Documentation/media/uapi/v4l/pixfmt-nv12mt.rst
index c8a77bc79f2f..32d0c8743460 100644
--- a/Documentation/media/uapi/v4l/pixfmt-nv12mt.rst
+++ b/Documentation/media/uapi/v4l/pixfmt-nv12mt.rst
@@ -33,8 +33,8 @@ Layout of macroblocks in memory is presented in the following figure.
 
 .. _nv12mt:
 
-.. figure::  nv12mt.png
-    :alt:    nv12mt.png
+.. figure::  nv12mt.*
+    :alt:    nv12mt.pdf / nv12mt.svg
     :align:  center
 
     V4L2_PIX_FMT_NV12MT macroblock Z shape memory layout
@@ -50,8 +50,8 @@ interleaved. Height of the buffer is aligned to 32.
 
 .. _nv12mt_ex:
 
-.. figure::  nv12mt_example.png
-    :alt:    nv12mt_example.png
+.. figure::  nv12mt_example.*
+    :alt:    nv12mt_example.pdf / nv12mt_example.svg
     :align:  center
 
     Example V4L2_PIX_FMT_NV12MT memory layout of macroblocks
-- 
2.7.4
