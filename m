Return-Path: <mchehab@osg.samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 880D0949
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 20 Nov 2016 16:08:57 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AAD3B1AD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 20 Nov 2016 16:08:52 +0000 (UTC)
From: Mauro Carvalho Chehab <mchehab@s-opensource.com>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>,
	"Jonathan Corbet" <corbet@lwn.net>
Date: Sun, 20 Nov 2016 14:08:37 -0200
Message-Id: <6cd604ebd9512cacac1c1fa07445db6a10c3b77a.1479656706.git.mchehab@s-opensource.com>
In-Reply-To: <cover.1479656706.git.mchehab@s-opensource.com>
References: <cover.1479656706.git.mchehab@s-opensource.com>
In-Reply-To: <cover.1479656706.git.mchehab@s-opensource.com>
References: <cover.1479656706.git.mchehab@s-opensource.com>
Sender: Mauro Carvalho Chehab <mchehab@osg.samsung.com>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Mauro Carvalho Chehab <mchehab@s-opensource.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [Ksummit-discuss] [PATCH 6/9] [media] docs-rst: replace bayer.png
	by a SVG image
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

SVG images are scalable, with makes easier to output on
different formats.

Signed-off-by: Mauro Carvalho Chehab <mchehab@s-opensource.com>
---
 Documentation/media/Makefile                    |   1 +
 Documentation/media/uapi/v4l/bayer.png          | Bin 9725 -> 0 bytes
 Documentation/media/uapi/v4l/bayer.svg          | 984 ++++++++++++++++++++++++
 Documentation/media/uapi/v4l/subdev-formats.rst |   4 +-
 4 files changed, 987 insertions(+), 2 deletions(-)
 delete mode 100644 Documentation/media/uapi/v4l/bayer.png
 create mode 100644 Documentation/media/uapi/v4l/bayer.svg

diff --git a/Documentation/media/Makefile b/Documentation/media/Makefile
index d97e969c3ac0..998e8dd49352 100644
--- a/Documentation/media/Makefile
+++ b/Documentation/media/Makefile
@@ -13,6 +13,7 @@ TARGETS := $(addprefix $(BUILDDIR)/, $(FILES))
 IMAGES = \
 	typical_media_device.svg \
 	uapi/dvb/dvbstb.svg \
+	uapi/v4l/bayer.svg \
 	uapi/v4l/constraints.svg \
 	uapi/v4l/crop.svg \
 	uapi/v4l/fieldseq_bt.svg \
diff --git a/Documentation/media/uapi/v4l/bayer.png b/Documentation/media/uapi/v4l/bayer.png
deleted file mode 100644
index 9b15fb22e8173c83c3da6df73cd7cdc7d8f41736..0000000000000000000000000000000000000000
GIT binary patch
literal 0
HcmV?d00001

literal 9725
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
Ulq-hwxG4posiv!1sSJ(ye?2;OE&u=k

diff --git a/Documentation/media/uapi/v4l/bayer.svg b/Documentation/media/uapi/v4l/bayer.svg
new file mode 100644
index 000000000000..fbd4cfb5e6bf
--- /dev/null
+++ b/Documentation/media/uapi/v4l/bayer.svg
@@ -0,0 +1,984 @@
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
+   width="164.15334mm"
+   height="46.771107mm"
+   viewBox="0 0 16415.333 4677.1107"
+   preserveAspectRatio="xMidYMid"
+   xml:space="preserve"
+   id="svg2"
+   inkscape:version="0.91 r13725"
+   sodipodi:docname="bayer.svg"
+   style="fill-rule:evenodd;stroke-width:28.22200012;stroke-linejoin:round"><metadata
+     id="metadata652"><rdf:RDF><cc:Work
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
+     id="namedview650"
+     showgrid="false"
+     fit-margin-top="0"
+     fit-margin-left="0"
+     fit-margin-right="0"
+     fit-margin-bottom="0"
+     inkscape:zoom="2.4000866"
+     inkscape:cx="290.82284"
+     inkscape:cy="82.862197"
+     inkscape:window-x="1920"
+     inkscape:window-y="30"
+     inkscape:window-maximized="1"
+     inkscape:current-layer="svg2" /><defs
+     class="ClipPathGroup"
+     id="defs4" /><defs
+     id="defs9" /><defs
+     id="defs82" /><defs
+     id="defs105" /><defs
+     class="TextShapeIndex"
+     id="defs116" /><defs
+     class="EmbeddedBulletChars"
+     id="defs120" /><defs
+     class="TextEmbeddedBitmaps"
+     id="defs149" /><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g186"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id6"><rect
+         class="BoundingBox"
+         x="3299"
+         y="3199"
+         width="1303"
+         height="1203"
+         id="rect189"
+         style="fill:none;stroke:none" /><path
+         d="m 3950,4400 -650,0 0,-1200 1300,0 0,1200 -650,0 z"
+         id="path191"
+         inkscape:connector-curvature="0"
+         style="fill:#0000ff;stroke:none" /><path
+         d="m 3950,4400 -650,0 0,-1200 1300,0 0,1200 -650,0 z"
+         id="path193"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /><text
+         class="TextShape"
+         id="text195"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan197"
+           style="font-weight:400;font-size:635px;font-family:'Liberation Sans', sans-serif"><tspan
+             class="TextPosition"
+             x="3739"
+             y="4021"
+             id="tspan199"><tspan
+               id="tspan201"
+               style="fill:#ffffff;stroke:none">B</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g203"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id7"><rect
+         class="BoundingBox"
+         x="4599"
+         y="3199"
+         width="1303"
+         height="1203"
+         id="rect206"
+         style="fill:none;stroke:none" /><path
+         d="m 5250,4400 -650,0 0,-1200 1300,0 0,1200 -650,0 z"
+         id="path208"
+         inkscape:connector-curvature="0"
+         style="fill:#00cc00;stroke:none" /><path
+         d="m 5250,4400 -650,0 0,-1200 1300,0 0,1200 -650,0 z"
+         id="path210"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /><text
+         class="TextShape"
+         id="text212"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan214"
+           style="font-weight:400;font-size:635px;font-family:'Liberation Sans', sans-serif"><tspan
+             class="TextPosition"
+             x="5003"
+             y="4021"
+             id="tspan216"><tspan
+               id="tspan218"
+               style="fill:#ffffff;stroke:none">G</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g220"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id8"><rect
+         class="BoundingBox"
+         x="3299"
+         y="4399"
+         width="1303"
+         height="1203"
+         id="rect223"
+         style="fill:none;stroke:none" /><path
+         d="m 3950,5600 -650,0 0,-1200 1300,0 0,1200 -650,0 z"
+         id="path225"
+         inkscape:connector-curvature="0"
+         style="fill:#00cc00;stroke:none" /><path
+         d="m 3950,5600 -650,0 0,-1200 1300,0 0,1200 -650,0 z"
+         id="path227"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /><text
+         class="TextShape"
+         id="text229"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan231"
+           style="font-weight:400;font-size:635px;font-family:'Liberation Sans', sans-serif"><tspan
+             class="TextPosition"
+             x="3703"
+             y="5221"
+             id="tspan233"><tspan
+               id="tspan235"
+               style="fill:#ffffff;stroke:none">G</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g237"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id9"><rect
+         class="BoundingBox"
+         x="4599"
+         y="4399"
+         width="1303"
+         height="1203"
+         id="rect240"
+         style="fill:none;stroke:none" /><path
+         d="m 5250,5600 -650,0 0,-1200 1300,0 0,1200 -650,0 z"
+         id="path242"
+         inkscape:connector-curvature="0"
+         style="fill:#ff0000;stroke:none" /><path
+         d="m 5250,5600 -650,0 0,-1200 1300,0 0,1200 -650,0 z"
+         id="path244"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /><text
+         class="TextShape"
+         id="text246"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan248"
+           style="font-weight:400;font-size:635px;font-family:'Liberation Sans', sans-serif"><tspan
+             class="TextPosition"
+             x="5022"
+             y="5221"
+             id="tspan250"><tspan
+               id="tspan252"
+               style="fill:#ffffff;stroke:none">R</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g254"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id10"><rect
+         class="BoundingBox"
+         x="5999"
+         y="3299"
+         width="1003"
+         height="1003"
+         id="rect257"
+         style="fill:none;stroke:none" /><path
+         d="m 6500,4300 -500,0 0,-1000 1000,0 0,1000 -500,0 z"
+         id="path259"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#0000ff" /></g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g261"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id11"><rect
+         class="BoundingBox"
+         x="4699"
+         y="5699"
+         width="1003"
+         height="1003"
+         id="rect264"
+         style="fill:none;stroke:none" /><path
+         d="m 5200,6700 -500,0 0,-1000 1000,0 0,1000 -500,0 z"
+         id="path266"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#00cc00" /></g></g><g
+     class="com.sun.star.drawing.TextShape"
+     id="g268"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id12"><rect
+         class="BoundingBox"
+         x="4000"
+         y="6900"
+         width="2374"
+         height="963"
+         id="rect271"
+         style="fill:none;stroke:none" /><text
+         class="TextShape"
+         id="text273"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan275"
+           style="font-weight:400;font-size:635px;font-family:'Liberation Sans', sans-serif"><tspan
+             class="TextPosition"
+             x="4250"
+             y="7601"
+             id="tspan277"><tspan
+               id="tspan279"
+               style="fill:#000000;stroke:none">BGGR</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g281"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id13"><rect
+         class="BoundingBox"
+         x="8799"
+         y="3199"
+         width="1303"
+         height="1203"
+         id="rect284"
+         style="fill:none;stroke:none" /><path
+         d="m 9450,4400 -650,0 0,-1200 1300,0 0,1200 -650,0 z"
+         id="path286"
+         inkscape:connector-curvature="0"
+         style="fill:#0000ff;stroke:none" /><path
+         d="m 9450,4400 -650,0 0,-1200 1300,0 0,1200 -650,0 z"
+         id="path288"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /><text
+         class="TextShape"
+         id="text290"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan292"
+           style="font-weight:400;font-size:635px;font-family:'Liberation Sans', sans-serif"><tspan
+             class="TextPosition"
+             x="9239"
+             y="4021"
+             id="tspan294"><tspan
+               id="tspan296"
+               style="fill:#ffffff;stroke:none">B</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g298"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id14"><rect
+         class="BoundingBox"
+         x="7499"
+         y="3199"
+         width="1303"
+         height="1203"
+         id="rect301"
+         style="fill:none;stroke:none" /><path
+         d="m 8150,4400 -650,0 0,-1200 1300,0 0,1200 -650,0 z"
+         id="path303"
+         inkscape:connector-curvature="0"
+         style="fill:#00cc00;stroke:none" /><path
+         d="m 8150,4400 -650,0 0,-1200 1300,0 0,1200 -650,0 z"
+         id="path305"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /><text
+         class="TextShape"
+         id="text307"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan309"
+           style="font-weight:400;font-size:635px;font-family:'Liberation Sans', sans-serif"><tspan
+             class="TextPosition"
+             x="7903"
+             y="4021"
+             id="tspan311"><tspan
+               id="tspan313"
+               style="fill:#ffffff;stroke:none">G</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g315"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id15"><rect
+         class="BoundingBox"
+         x="8799"
+         y="4399"
+         width="1303"
+         height="1203"
+         id="rect318"
+         style="fill:none;stroke:none" /><path
+         d="m 9450,5600 -650,0 0,-1200 1300,0 0,1200 -650,0 z"
+         id="path320"
+         inkscape:connector-curvature="0"
+         style="fill:#00cc00;stroke:none" /><path
+         d="m 9450,5600 -650,0 0,-1200 1300,0 0,1200 -650,0 z"
+         id="path322"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /><text
+         class="TextShape"
+         id="text324"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan326"
+           style="font-weight:400;font-size:635px;font-family:'Liberation Sans', sans-serif"><tspan
+             class="TextPosition"
+             x="9203"
+             y="5221"
+             id="tspan328"><tspan
+               id="tspan330"
+               style="fill:#ffffff;stroke:none">G</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g332"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id16"><rect
+         class="BoundingBox"
+         x="7499"
+         y="4399"
+         width="1303"
+         height="1203"
+         id="rect335"
+         style="fill:none;stroke:none" /><path
+         d="m 8150,5600 -650,0 0,-1200 1300,0 0,1200 -650,0 z"
+         id="path337"
+         inkscape:connector-curvature="0"
+         style="fill:#ff0000;stroke:none" /><path
+         d="m 8150,5600 -650,0 0,-1200 1300,0 0,1200 -650,0 z"
+         id="path339"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /><text
+         class="TextShape"
+         id="text341"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan343"
+           style="font-weight:400;font-size:635px;font-family:'Liberation Sans', sans-serif"><tspan
+             class="TextPosition"
+             x="7922"
+             y="5221"
+             id="tspan345"><tspan
+               id="tspan347"
+               style="fill:#ffffff;stroke:none">R</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.TextShape"
+     id="g349"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id17"><rect
+         class="BoundingBox"
+         x="8200"
+         y="6900"
+         width="2374"
+         height="963"
+         id="rect352"
+         style="fill:none;stroke:none" /><text
+         class="TextShape"
+         id="text354"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan356"
+           style="font-weight:400;font-size:635px;font-family:'Liberation Sans', sans-serif"><tspan
+             class="TextPosition"
+             x="8450"
+             y="7601"
+             id="tspan358"><tspan
+               id="tspan360"
+               style="fill:#000000;stroke:none">GBRG</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g362"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id18"><rect
+         class="BoundingBox"
+         x="17299"
+         y="4399"
+         width="1303"
+         height="1203"
+         id="rect365"
+         style="fill:none;stroke:none" /><path
+         d="m 17950,5600 -650,0 0,-1200 1300,0 0,1200 -650,0 z"
+         id="path367"
+         inkscape:connector-curvature="0"
+         style="fill:#0000ff;stroke:none" /><path
+         d="m 17950,5600 -650,0 0,-1200 1300,0 0,1200 -650,0 z"
+         id="path369"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /><text
+         class="TextShape"
+         id="text371"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan373"
+           style="font-weight:400;font-size:635px;font-family:'Liberation Sans', sans-serif"><tspan
+             class="TextPosition"
+             x="17739"
+             y="5221"
+             id="tspan375"><tspan
+               id="tspan377"
+               style="fill:#ffffff;stroke:none">B</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g379"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id19"><rect
+         class="BoundingBox"
+         x="17299"
+         y="3199"
+         width="1303"
+         height="1203"
+         id="rect382"
+         style="fill:none;stroke:none" /><path
+         d="m 17950,4400 -650,0 0,-1200 1300,0 0,1200 -650,0 z"
+         id="path384"
+         inkscape:connector-curvature="0"
+         style="fill:#00cc00;stroke:none" /><path
+         d="m 17950,4400 -650,0 0,-1200 1300,0 0,1200 -650,0 z"
+         id="path386"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /><text
+         class="TextShape"
+         id="text388"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan390"
+           style="font-weight:400;font-size:635px;font-family:'Liberation Sans', sans-serif"><tspan
+             class="TextPosition"
+             x="17703"
+             y="4021"
+             id="tspan392"><tspan
+               id="tspan394"
+               style="fill:#ffffff;stroke:none">G</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g396"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id20"><rect
+         class="BoundingBox"
+         x="15999"
+         y="4399"
+         width="1303"
+         height="1203"
+         id="rect399"
+         style="fill:none;stroke:none" /><path
+         d="m 16650,5600 -650,0 0,-1200 1300,0 0,1200 -650,0 z"
+         id="path401"
+         inkscape:connector-curvature="0"
+         style="fill:#00cc00;stroke:none" /><path
+         d="m 16650,5600 -650,0 0,-1200 1300,0 0,1200 -650,0 z"
+         id="path403"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /><text
+         class="TextShape"
+         id="text405"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan407"
+           style="font-weight:400;font-size:635px;font-family:'Liberation Sans', sans-serif"><tspan
+             class="TextPosition"
+             x="16403"
+             y="5221"
+             id="tspan409"><tspan
+               id="tspan411"
+               style="fill:#ffffff;stroke:none">G</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g413"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id21"><rect
+         class="BoundingBox"
+         x="15999"
+         y="3199"
+         width="1303"
+         height="1203"
+         id="rect416"
+         style="fill:none;stroke:none" /><path
+         d="m 16650,4400 -650,0 0,-1200 1300,0 0,1200 -650,0 z"
+         id="path418"
+         inkscape:connector-curvature="0"
+         style="fill:#ff0000;stroke:none" /><path
+         d="m 16650,4400 -650,0 0,-1200 1300,0 0,1200 -650,0 z"
+         id="path420"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /><text
+         class="TextShape"
+         id="text422"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan424"
+           style="font-weight:400;font-size:635px;font-family:'Liberation Sans', sans-serif"><tspan
+             class="TextPosition"
+             x="16422"
+             y="4021"
+             id="tspan426"><tspan
+               id="tspan428"
+               style="fill:#ffffff;stroke:none">R</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.TextShape"
+     id="g430"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id22"><rect
+         class="BoundingBox"
+         x="16700"
+         y="6900"
+         width="2374"
+         height="963"
+         id="rect433"
+         style="fill:none;stroke:none" /><text
+         class="TextShape"
+         id="text435"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan437"
+           style="font-weight:400;font-size:635px;font-family:'Liberation Sans', sans-serif"><tspan
+             class="TextPosition"
+             x="16950"
+             y="7601"
+             id="tspan439"><tspan
+               id="tspan441"
+               style="fill:#000000;stroke:none">RGGB</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g443"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id23"><rect
+         class="BoundingBox"
+         x="11699"
+         y="4399"
+         width="1303"
+         height="1203"
+         id="rect446"
+         style="fill:none;stroke:none" /><path
+         d="m 12350,5600 -650,0 0,-1200 1300,0 0,1200 -650,0 z"
+         id="path448"
+         inkscape:connector-curvature="0"
+         style="fill:#0000ff;stroke:none" /><path
+         d="m 12350,5600 -650,0 0,-1200 1300,0 0,1200 -650,0 z"
+         id="path450"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /><text
+         class="TextShape"
+         id="text452"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan454"
+           style="font-weight:400;font-size:635px;font-family:'Liberation Sans', sans-serif"><tspan
+             class="TextPosition"
+             x="12139"
+             y="5221"
+             id="tspan456"><tspan
+               id="tspan458"
+               style="fill:#ffffff;stroke:none">B</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g460"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id24"><rect
+         class="BoundingBox"
+         x="11699"
+         y="3199"
+         width="1303"
+         height="1203"
+         id="rect463"
+         style="fill:none;stroke:none" /><path
+         d="m 12350,4400 -650,0 0,-1200 1300,0 0,1200 -650,0 z"
+         id="path465"
+         inkscape:connector-curvature="0"
+         style="fill:#00cc00;stroke:none" /><path
+         d="m 12350,4400 -650,0 0,-1200 1300,0 0,1200 -650,0 z"
+         id="path467"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /><text
+         class="TextShape"
+         id="text469"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan471"
+           style="font-weight:400;font-size:635px;font-family:'Liberation Sans', sans-serif"><tspan
+             class="TextPosition"
+             x="12103"
+             y="4021"
+             id="tspan473"><tspan
+               id="tspan475"
+               style="fill:#ffffff;stroke:none">G</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g477"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id25"><rect
+         class="BoundingBox"
+         x="12999"
+         y="4399"
+         width="1303"
+         height="1203"
+         id="rect480"
+         style="fill:none;stroke:none" /><path
+         d="m 13650,5600 -650,0 0,-1200 1300,0 0,1200 -650,0 z"
+         id="path482"
+         inkscape:connector-curvature="0"
+         style="fill:#00cc00;stroke:none" /><path
+         d="m 13650,5600 -650,0 0,-1200 1300,0 0,1200 -650,0 z"
+         id="path484"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /><text
+         class="TextShape"
+         id="text486"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan488"
+           style="font-weight:400;font-size:635px;font-family:'Liberation Sans', sans-serif"><tspan
+             class="TextPosition"
+             x="13403"
+             y="5221"
+             id="tspan490"><tspan
+               id="tspan492"
+               style="fill:#ffffff;stroke:none">G</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g494"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id26"><rect
+         class="BoundingBox"
+         x="12999"
+         y="3199"
+         width="1303"
+         height="1203"
+         id="rect497"
+         style="fill:none;stroke:none" /><path
+         d="m 13650,4400 -650,0 0,-1200 1300,0 0,1200 -650,0 z"
+         id="path499"
+         inkscape:connector-curvature="0"
+         style="fill:#ff0000;stroke:none" /><path
+         d="m 13650,4400 -650,0 0,-1200 1300,0 0,1200 -650,0 z"
+         id="path501"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#3465a4" /><text
+         class="TextShape"
+         id="text503"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan505"
+           style="font-weight:400;font-size:635px;font-family:'Liberation Sans', sans-serif"><tspan
+             class="TextPosition"
+             x="13422"
+             y="4021"
+             id="tspan507"><tspan
+               id="tspan509"
+               style="fill:#ffffff;stroke:none">R</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.TextShape"
+     id="g511"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id27"><rect
+         class="BoundingBox"
+         x="12400"
+         y="6900"
+         width="2374"
+         height="963"
+         id="rect514"
+         style="fill:none;stroke:none" /><text
+         class="TextShape"
+         id="text516"><tspan
+           class="TextParagraph"
+           font-size="635px"
+           font-weight="400"
+           id="tspan518"
+           style="font-weight:400;font-size:635px;font-family:'Liberation Sans', sans-serif"><tspan
+             class="TextPosition"
+             x="12650"
+             y="7601"
+             id="tspan520"><tspan
+               id="tspan522"
+               style="fill:#000000;stroke:none">GRBG</tspan></tspan></tspan></text>
+</g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g524"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id28"><rect
+         class="BoundingBox"
+         x="5999"
+         y="5699"
+         width="1003"
+         height="1003"
+         id="rect527"
+         style="fill:none;stroke:none" /><path
+         d="m 6500,6700 -500,0 0,-1000 1000,0 0,1000 -500,0 z"
+         id="path529"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#0000ff" /></g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g531"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id29"><rect
+         class="BoundingBox"
+         x="3399"
+         y="5699"
+         width="1003"
+         height="1003"
+         id="rect534"
+         style="fill:none;stroke:none" /><path
+         d="m 3900,6700 -500,0 0,-1000 1000,0 0,1000 -500,0 z"
+         id="path536"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#0000ff" /></g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g538"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id30"><rect
+         class="BoundingBox"
+         x="5999"
+         y="4499"
+         width="1003"
+         height="1003"
+         id="rect541"
+         style="fill:none;stroke:none" /><path
+         d="m 6500,5500 -500,0 0,-1000 1000,0 0,1000 -500,0 z"
+         id="path543"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#00cc00" /></g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g545"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id31"><rect
+         class="BoundingBox"
+         x="7599"
+         y="5799"
+         width="1003"
+         height="1003"
+         id="rect548"
+         style="fill:none;stroke:none" /><path
+         d="m 8100,6800 -500,0 0,-1000 1000,0 0,1000 -500,0 z"
+         id="path550"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#00cc00" /></g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g552"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id32"><rect
+         class="BoundingBox"
+         x="10199"
+         y="5799"
+         width="1003"
+         height="1003"
+         id="rect555"
+         style="fill:none;stroke:none" /><path
+         d="m 10700,6800 -500,0 0,-1000 1000,0 0,1000 -500,0 z"
+         id="path557"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#00cc00" /></g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g559"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id33"><rect
+         class="BoundingBox"
+         x="8899"
+         y="5799"
+         width="1003"
+         height="1003"
+         id="rect562"
+         style="fill:none;stroke:none" /><path
+         d="m 9400,6800 -500,0 0,-1000 1000,0 0,1000 -500,0 z"
+         id="path564"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#0000ff" /></g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g566"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id34"><rect
+         class="BoundingBox"
+         x="10199"
+         y="4499"
+         width="1003"
+         height="1003"
+         id="rect569"
+         style="fill:none;stroke:none" /><path
+         d="m 10700,5500 -500,0 0,-1000 1000,0 0,1000 -500,0 z"
+         id="path571"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#ff0000" /></g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g573"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id35"><rect
+         class="BoundingBox"
+         x="10199"
+         y="3299"
+         width="1003"
+         height="1003"
+         id="rect576"
+         style="fill:none;stroke:none" /><path
+         d="m 10700,4300 -500,0 0,-1000 1000,0 0,1000 -500,0 z"
+         id="path578"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#00cc00" /></g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g580"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id36"><rect
+         class="BoundingBox"
+         x="14399"
+         y="3299"
+         width="1003"
+         height="1003"
+         id="rect583"
+         style="fill:none;stroke:none" /><path
+         d="m 14900,4300 -500,0 0,-1000 1000,0 0,1000 -500,0 z"
+         id="path585"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#00cc00" /></g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g587"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id37"><rect
+         class="BoundingBox"
+         x="14399"
+         y="5799"
+         width="1003"
+         height="1003"
+         id="rect590"
+         style="fill:none;stroke:none" /><path
+         d="m 14900,6800 -500,0 0,-1000 1000,0 0,1000 -500,0 z"
+         id="path592"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#00cc00" /></g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g594"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id38"><rect
+         class="BoundingBox"
+         x="11799"
+         y="5799"
+         width="1003"
+         height="1003"
+         id="rect597"
+         style="fill:none;stroke:none" /><path
+         d="m 12300,6800 -500,0 0,-1000 1000,0 0,1000 -500,0 z"
+         id="path599"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#00cc00" /></g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g601"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id39"><rect
+         class="BoundingBox"
+         x="14399"
+         y="4499"
+         width="1003"
+         height="1003"
+         id="rect604"
+         style="fill:none;stroke:none" /><path
+         d="m 14900,5500 -500,0 0,-1000 1000,0 0,1000 -500,0 z"
+         id="path606"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#0000ff" /></g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g608"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id40"><rect
+         class="BoundingBox"
+         x="13099"
+         y="5799"
+         width="1003"
+         height="1003"
+         id="rect611"
+         style="fill:none;stroke:none" /><path
+         d="m 13600,6800 -500,0 0,-1000 1000,0 0,1000 -500,0 z"
+         id="path613"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#ff0000" /></g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g615"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id41"><rect
+         class="BoundingBox"
+         x="16099"
+         y="5799"
+         width="1003"
+         height="1003"
+         id="rect618"
+         style="fill:none;stroke:none" /><path
+         d="m 16600,6800 -500,0 0,-1000 1000,0 0,1000 -500,0 z"
+         id="path620"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#ff0000" /></g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g622"
+     transform="translate(-3398.7778,-3185.889)"><g
+       id="id42"><rect
+         class="BoundingBox"
+         x="18799"
+         y="5799"
+         width="1003"
+         height="1003"
+         id="rect625"
+         style="fill:none;stroke:none" /><path
+         d="m 19300,6800 -500,0 0,-1000 1000,0 0,1000 -500,0 z"
+         id="path627"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#ff0000" /></g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g629"
+     transform="translate(-3398.7778,-3185.889)"><g
+       id="id43"><rect
+         class="BoundingBox"
+         x="18799"
+         y="3299"
+         width="1003"
+         height="1003"
+         id="rect632"
+         style="fill:none;stroke:none" /><path
+         d="m 19300,4300 -500,0 0,-1000 1000,0 0,1000 -500,0 z"
+         id="path634"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#ff0000" /></g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g636"
+     transform="translate(-3285.889,-3185.889)"><g
+       id="id44"><rect
+         class="BoundingBox"
+         x="17399"
+         y="5799"
+         width="1003"
+         height="1003"
+         id="rect639"
+         style="fill:none;stroke:none" /><path
+         d="m 17900,6800 -500,0 0,-1000 1000,0 0,1000 -500,0 z"
+         id="path641"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#00cc00" /></g></g><g
+     class="com.sun.star.drawing.CustomShape"
+     id="g643"
+     transform="translate(-3398.7778,-3185.889)"><g
+       id="id45"><rect
+         class="BoundingBox"
+         x="18799"
+         y="4499"
+         width="1003"
+         height="1003"
+         id="rect646"
+         style="fill:none;stroke:none" /><path
+         d="m 19300,5500 -500,0 0,-1000 1000,0 0,1000 -500,0 z"
+         id="path648"
+         inkscape:connector-curvature="0"
+         style="fill:none;stroke:#00cc00" /></g></g></svg>
\ No newline at end of file
diff --git a/Documentation/media/uapi/v4l/subdev-formats.rst b/Documentation/media/uapi/v4l/subdev-formats.rst
index 2f9c135dfadd..d6152c907b8b 100644
--- a/Documentation/media/uapi/v4l/subdev-formats.rst
+++ b/Documentation/media/uapi/v4l/subdev-formats.rst
@@ -1514,8 +1514,8 @@ be named ``MEDIA_BUS_FMT_SRGGB10_2X8_PADHI_LE``.
 
 .. _bayer-patterns:
 
-.. figure::  bayer.png
-    :alt:    bayer.png
+.. figure::  bayer.*
+    :alt:    bayer.pdf / bayer.svg
     :align:  center
 
     **Figure 4.8 Bayer Patterns**
-- 
2.7.4
