Return-Path: <mchehab@s-opensource.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id ABA28932
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 30 Nov 2016 09:29:22 +0000 (UTC)
Received: from osg.samsung.com
	(ec2-52-27-115-49.us-west-2.compute.amazonaws.com [52.27.115.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 234ECE5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 30 Nov 2016 09:29:22 +0000 (UTC)
Date: Wed, 30 Nov 2016 07:29:15 -0200
From: Mauro Carvalho Chehab <mchehab@s-opensource.com>
To: Jonathan Corbet <corbet@lwn.net>
Message-ID: <20161130072915.09d1147b@vento.lan>
In-Reply-To: <20161128180946.516c64d6@lwn.net>
References: <cover.1479656706.git.mchehab@s-opensource.com>
	<20161128180946.516c64d6@lwn.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Markus Heiser <markus.heiser@darmarIT.de>,
	ksummit-discuss@lists.linuxfoundation.org,
	Linux Doc Mailing List <linux-doc@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: Re: [Ksummit-discuss] [PATCH 0/9] Get rid of bitmap images
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Mon, 28 Nov 2016 18:09:46 -0700
Jonathan Corbet <corbet@lwn.net> escreveu:

> On Sun, 20 Nov 2016 14:08:31 -0200
> Mauro Carvalho Chehab <mchehab@s-opensource.com> wrote:
> 
> > The goal of this patch series is to get rid of PNG images, using either graphviz
> > or SVG for images.  
> 
> So the pdfdocs build fails with an error when I apply this...
> 
> > xelatex -interaction=batchmode 'media.tex'
> > This is XeTeX, Version 3.14159265-2.6-0.99993 (TeX Live 2016/dev) (preloaded format=xelatex)
> >  restricted \write18 enabled.
> > entering extended mode
> > Makefile:58: recipe for target 'media.pdf' failed
> > make[2]: *** [media.pdf] Error 1
> > Documentation/Makefile.sphinx:83: recipe for target 'pdfdocs' failed
> > make[1]: *** [pdfdocs] Error 2
> > Makefile:1442: recipe for target 'pdfdocs' failed
> > make: *** [pdfdocs] Error 2  
> 
> There's nothing more useful than that in the log as far as I can tell.

> I take it you don't see this?

No, I didn't see.

Calling it in interactive mode with:

$ make -C Documentation/output/latex/ media.pdf PDFLATEX=xelatex

allowed to identify the issue. The problem is that I forgot to
change the file extension from .svg to .* on one of the figure includes.

The enclosed patch fixes it.

I'll fold it with the patch that converted and send a new version
of this patch series.

Thanks for noticing it!
Mauro


diff --git a/Documentation/media/uapi/v4l/field-order.rst b/Documentation/media/uapi/v4l/field-order.rst
index 27fccd3cb9b4..e05fb1041363 100644
--- a/Documentation/media/uapi/v4l/field-order.rst
+++ b/Documentation/media/uapi/v4l/field-order.rst
@@ -151,7 +151,7 @@ Field Order, Top Field First Transmitted
 Field Order, Bottom Field First Transmitted
 ===========================================
 
-.. figure::  fieldseq_bt.svg
+.. figure::  fieldseq_bt.*
     :alt:    fieldseq_bt.pdf / fieldseq_bt.svg
     :align:  center
 
