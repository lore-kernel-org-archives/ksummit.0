Return-Path: <mchehab@osg.samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5C8F840A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 20 Nov 2016 16:08:54 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9BE351AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 20 Nov 2016 16:08:52 +0000 (UTC)
From: Mauro Carvalho Chehab <mchehab@s-opensource.com>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>,
	"Jonathan Corbet" <corbet@lwn.net>
Date: Sun, 20 Nov 2016 14:08:31 -0200
Message-Id: <cover.1479656706.git.mchehab@s-opensource.com>
Sender: Mauro Carvalho Chehab <mchehab@osg.samsung.com>
Cc: Markus Heiser <markus.heiser@darmarIT.de>,
	ksummit-discuss@lists.linuxfoundation.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Mauro Carvalho Chehab <mchehab@s-opensource.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [Ksummit-discuss] [PATCH 0/9] Get rid of bitmap images
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

The goal of this patch series is to get rid of PNG images, using either graphviz
or SVG for images.

For old images generated with xfig, stored inside PDF, just convert them to SVG
and cleanup the images using inkscape.

Other images need to be rewritten in SVG.

The pipeline image is actually a graphviz diagram. So, use dot to convert it
to SVG.

For now, I'm keeping the image conversion rules inside the
Documentation/media/Makefile. As we get other docs using images,
the best would be to move those rules to Documentation/Makefile.sphinx,
while we don't have a Sphinx extension or fixup that would handle them
directly.

NOTE: some images use more than 998 columns, causing troubles
with some MTA and MUA that could refuse them, because of an IETF
RFC 2821 violation:

	$ git send-email patches/tmp
	fatal: patches/tmp/0001-media-convert-more-media-images-to-SVG.patch: 191: patch contains a line longer than 998 characters

Due to that, in case you miss a patch, I'm also storing them
on my development tree at:
	https://git.linuxtv.org/mchehab/experimental.git/log/?h=svg-images

It is based on docs-next tree.

Mauro Carvalho Chehab (9):
  [media] convert more media images to SVG
  [media] svg files: cleanup them
  [media] docs-rst: nv12mt zigzag images: replace by SVG images
  [media] docs-rst: convert pipeline to SVG format
  [media] docs-rst: replace the selection.png by a SVG image
  [media] docs-rst: replace bayer.png by a SVG image
  docs-rst: media: build SVG from graphviz files
  doc-rst: media/Makefile: reorganize the rules
  docs-rst: fix media cleandocs target

 Documentation/Makefile.sphinx                      |    2 +-
 Documentation/media/Makefile                       |   67 +-
 Documentation/media/uapi/v4l/bayer.png             |  Bin 9725 -> 0 bytes
 Documentation/media/uapi/v4l/bayer.svg             |  984 ++++
 Documentation/media/uapi/v4l/crop.png              |  Bin 3334 -> 0 bytes
 Documentation/media/uapi/v4l/crop.rst              |    4 +-
 Documentation/media/uapi/v4l/crop.svg              |  281 +
 Documentation/media/uapi/v4l/dev-raw-vbi.rst       |   12 +-
 Documentation/media/uapi/v4l/dev-subdev.rst        |    4 +-
 Documentation/media/uapi/v4l/field-order.rst       |    8 +-
 Documentation/media/uapi/v4l/fieldseq_bt.png       |  Bin 12306 -> 0 bytes
 Documentation/media/uapi/v4l/fieldseq_bt.svg       | 2613 +++++++++
 Documentation/media/uapi/v4l/fieldseq_tb.png       |  Bin 12247 -> 0 bytes
 Documentation/media/uapi/v4l/fieldseq_tb.svg       | 2607 +++++++++
 Documentation/media/uapi/v4l/nv12mt.png            |  Bin 1920 -> 0 bytes
 Documentation/media/uapi/v4l/nv12mt.svg            |  450 ++
 Documentation/media/uapi/v4l/nv12mt_example.png    |  Bin 5261 -> 0 bytes
 Documentation/media/uapi/v4l/nv12mt_example.svg    | 1589 ++++++
 Documentation/media/uapi/v4l/pipeline.dot          |   12 +
 Documentation/media/uapi/v4l/pipeline.png          |  Bin 12130 -> 0 bytes
 Documentation/media/uapi/v4l/pixfmt-nv12mt.rst     |    8 +-
 Documentation/media/uapi/v4l/selection-api-003.rst |    4 +-
 Documentation/media/uapi/v4l/selection.png         |  Bin 11716 -> 0 bytes
 Documentation/media/uapi/v4l/selection.svg         | 5812 ++++++++++++++++++++
 Documentation/media/uapi/v4l/subdev-formats.rst    |    4 +-
 .../uapi/v4l/subdev-image-processing-crop.svg      |  346 +-
 .../uapi/v4l/subdev-image-processing-full.svg      |  892 ++-
 ...ubdev-image-processing-scaling-multi-source.svg |  626 ++-
 Documentation/media/uapi/v4l/vbi_525.png           |  Bin 2053 -> 0 bytes
 Documentation/media/uapi/v4l/vbi_525.svg           |  811 +++
 Documentation/media/uapi/v4l/vbi_625.png           |  Bin 2352 -> 0 bytes
 Documentation/media/uapi/v4l/vbi_625.svg           |  858 +++
 Documentation/media/uapi/v4l/vbi_hsync.png         |  Bin 906 -> 0 bytes
 Documentation/media/uapi/v4l/vbi_hsync.svg         |  313 ++
 34 files changed, 17980 insertions(+), 327 deletions(-)
 delete mode 100644 Documentation/media/uapi/v4l/bayer.png
 create mode 100644 Documentation/media/uapi/v4l/bayer.svg
 delete mode 100644 Documentation/media/uapi/v4l/crop.png
 create mode 100644 Documentation/media/uapi/v4l/crop.svg
 delete mode 100644 Documentation/media/uapi/v4l/fieldseq_bt.png
 create mode 100644 Documentation/media/uapi/v4l/fieldseq_bt.svg
 delete mode 100644 Documentation/media/uapi/v4l/fieldseq_tb.png
 create mode 100644 Documentation/media/uapi/v4l/fieldseq_tb.svg
 delete mode 100644 Documentation/media/uapi/v4l/nv12mt.png
 create mode 100644 Documentation/media/uapi/v4l/nv12mt.svg
 delete mode 100644 Documentation/media/uapi/v4l/nv12mt_example.png
 create mode 100644 Documentation/media/uapi/v4l/nv12mt_example.svg
 create mode 100644 Documentation/media/uapi/v4l/pipeline.dot
 delete mode 100644 Documentation/media/uapi/v4l/pipeline.png
 delete mode 100644 Documentation/media/uapi/v4l/selection.png
 create mode 100644 Documentation/media/uapi/v4l/selection.svg
 delete mode 100644 Documentation/media/uapi/v4l/vbi_525.png
 create mode 100644 Documentation/media/uapi/v4l/vbi_525.svg
 delete mode 100644 Documentation/media/uapi/v4l/vbi_625.png
 create mode 100644 Documentation/media/uapi/v4l/vbi_625.svg
 delete mode 100644 Documentation/media/uapi/v4l/vbi_hsync.png
 create mode 100644 Documentation/media/uapi/v4l/vbi_hsync.svg

-- 
2.7.4
