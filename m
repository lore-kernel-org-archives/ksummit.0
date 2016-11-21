Return-Path: <daniel@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DC3F7AB9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 21 Nov 2016 15:55:48 +0000 (UTC)
Received: from mail-wj0-f193.google.com (mail-wj0-f193.google.com
	[209.85.210.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A646615A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 21 Nov 2016 15:55:47 +0000 (UTC)
Received: by mail-wj0-f193.google.com with SMTP id f8so4035797wje.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 21 Nov 2016 07:55:47 -0800 (PST)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 21 Nov 2016 16:55:43 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Mauro Carvalho Chehab <mchehab@s-opensource.com>
Message-ID: <20161121155543.fzjmkdwhh76d6eci@phenom.ffwll.local>
References: <4d2770fcc7a65dd1ad05387317bc1fb5c4b879be.1479721511.git.mchehab@s-opensource.com>
	<20161121102127.gxy3p26ydfts6b7o@phenom.ffwll.local>
	<20161121085155.6a790fa6@vento.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161121085155.6a790fa6@vento.lan>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Linux Doc Mailing List <linux-doc@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Daniel Vetter <daniel@ffwll.ch>, Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: Re: [Ksummit-discuss] [RFC PATCH] docs-rst: move the rules for svg
 and graphviz to Makefile.sphinx
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Nov 21, 2016 at 08:51:55AM -0200, Mauro Carvalho Chehab wrote:
> Em Mon, 21 Nov 2016 11:21:27 +0100
> Daniel Vetter <daniel@ffwll.ch> escreveu:
> 
> > On Mon, Nov 21, 2016 at 07:48:50AM -0200, Mauro Carvalho Chehab wrote:
> > > Not only media documents may have images. So, move the
> > > rules for building images from graphviz and from SVG to
> > > the Documentation makefile.
> > > 
> > > With this change, if some Documentation subdir "foo"
> > > can now specify that he has SVG and/or DOT source images
> > > that are included inside the documentation.
> > > 
> > > All it is needed is to create a Documentation/foo/Makefile with:
> > > 
> > > 	DOTS += foo/bar.dot
> > > 	IMAGES += foo/foobar.svg
> > > 
> > > and, at Makefile.sphinx, add a:
> > > 
> > > 	include foo/Makefile
> > > 
> > > The build system will generate the SVG image "bar.svg" from
> > > the graphviz "bar.dot" document for all documentation targets.
> > > 
> > > If the documentation target is latexdocs or pdfdocs, it will
> > > also produce a "bar.pdf" image from "bar.svg", and a "foobar.pdf"
> > > from a SVG source image called "foobar.svg".
> > > 
> > > Signed-off-by: Mauro Carvalho Chehab <mchehab@s-opensource.com>  
> > 
> > Is there a branch somewhere with all this? I'd like to play around with
> > pulling graphs into the gpu docs ...
> 
> Sure. Just pushed it to:
> 	https://git.linuxtv.org/mchehab/experimental.git/log/?h=svg-images
> 
> You can pull it from:
> 	git://linuxtv.org/mchehab/experimental.git svg-images
> 
> I also just added a patch documenting it:
> 	https://git.linuxtv.org/mchehab/experimental.git/commit/?h=svg-images&id=ca3b1faaae9dcfcbf0f4a119bf5eb3df0cb6c001

Ok, thanks a lot. No promises since I'm drowning in stuff, but I'll try to
play around with this in drm a bit. Might still be good to make it all
land in 4.10 meanwhile, if it looks ok (which is probably not something my
opinion should matter on).
-Daniel

> 
> Regards,
> Mauro
> 
> > -Daniel
> > 
> > > ---
> > > 
> > > NOTE:
> > > ====
> > > 
> > > This is a RFC patch, based on this patch series:
> > > 	https://lkml.org/lkml/2016/11/20/89
> > > 
> > > If you think it is worth, I'll write a documentation patch for the doc-guide/
> > > providing a complete guide about how to add an image at the Kernel's
> > > documentation.
> > > 
> > > 
> > >  Documentation/Makefile.sphinx | 41 ++++++++++++++++-----
> > >  Documentation/media/Makefile  | 83 ++++++++++++++++---------------------------
> > >  2 files changed, 63 insertions(+), 61 deletions(-)
> > > 
> > > diff --git a/Documentation/Makefile.sphinx b/Documentation/Makefile.sphinx
> > > index 707c65337ebf..adc24ffa4c6a 100644
> > > --- a/Documentation/Makefile.sphinx
> > > +++ b/Documentation/Makefile.sphinx
> > > @@ -2,6 +2,8 @@
> > >  # Makefile for Sphinx documentation
> > >  #
> > >  
> > > +include Documentation/media/Makefile
> > > +
> > >  # You can set these variables from the command line.
> > >  SPHINXBUILD   = sphinx-build
> > >  SPHINXOPTS    =
> > > @@ -13,6 +15,29 @@ BUILDDIR      = $(obj)/output
> > >  PDFLATEX      = xelatex
> > >  LATEXOPTS     = -interaction=batchmode
> > >  
> > > +# Handle SVG and graphviz images
> > > +
> > > +DOTTGT := $(patsubst %.dot,%.svg,$(DOTS))
> > > +IMGDOT := $(patsubst %,$(srctree)/Documentation/%,$(DOTTGT))
> > > +
> > > +IMGTGT := $(patsubst %.svg,%.pdf,$(IMAGES))
> > > +IMGPDF := $(patsubst %,$(srctree)/Documentation/%,$(IMGTGT))
> > > +
> > > +cmd = $(echo-cmd) $(cmd_$(1))
> > > +
> > > +quiet_cmd_genpdf = GENPDF  $2
> > > +      cmd_genpdf = convert $2 $3
> > > +
> > > +quiet_cmd_gendot = DOT     $2
> > > +      cmd_gendot = dot -Tsvg $2 > $3
> > > +
> > > +%.pdf: %.svg
> > > +	@$(call cmd,genpdf,$<,$@)
> > > +
> > > +%.svg: %.dot
> > > +	@$(call cmd,gendot,$<,$@)
> > > +
> > > +
> > >  # User-friendly check for sphinx-build
> > >  HAVE_SPHINX := $(shell if which $(SPHINXBUILD) >/dev/null 2>&1; then echo 1; else echo 0; fi)
> > >  
> > > @@ -54,7 +79,7 @@ loop_cmd = $(echo-cmd) $(cmd_$(1))
> > >  #    e.g. "media" for the linux-tv book-set at ./Documentation/media
> > >  
> > >  quiet_cmd_sphinx = SPHINX  $@ --> file://$(abspath $(BUILDDIR)/$3/$4)
> > > -      cmd_sphinx = $(MAKE) BUILDDIR=$(abspath $(BUILDDIR)) $(build)=Documentation/media $2;\
> > > +      cmd_sphinx = $(MAKE) BUILDDIR=$(abspath $(BUILDDIR)) $(build)=Documentation/media mediaheaders;\
> > >  	BUILDDIR=$(abspath $(BUILDDIR)) SPHINX_CONF=$(abspath $(srctree)/$(src)/$5/$(SPHINX_CONF)) \
> > >  	$(SPHINXBUILD) \
> > >  	-b $2 \
> > > @@ -65,10 +90,10 @@ quiet_cmd_sphinx = SPHINX  $@ --> file://$(abspath $(BUILDDIR)/$3/$4)
> > >  	$(abspath $(srctree)/$(src)/$5) \
> > >  	$(abspath $(BUILDDIR)/$3/$4);
> > >  
> > > -htmldocs:
> > > +htmldocs: $(IMGDOT)
> > >  	@$(foreach var,$(SPHINXDIRS),$(call loop_cmd,sphinx,html,$(var),,$(var)))
> > >  
> > > -latexdocs:
> > > +latexdocs: $(IMGPDF)
> > >  	@$(foreach var,$(SPHINXDIRS),$(call loop_cmd,sphinx,latex,$(var),latex,$(var)))
> > >  
> > >  ifeq ($(HAVE_PDFLATEX),0)
> > > @@ -79,15 +104,15 @@ pdfdocs:
> > >  
> > >  else # HAVE_PDFLATEX
> > >  
> > > -pdfdocs: latexdocs
> > > +pdfdocs: latexdocs $(IMGPDF)
> > >  	$(foreach var,$(SPHINXDIRS), $(MAKE) PDFLATEX=$(PDFLATEX) LATEXOPTS="$(LATEXOPTS)" -C $(BUILDDIR)/$(var)/latex;)
> > >  
> > >  endif # HAVE_PDFLATEX
> > >  
> > > -epubdocs:
> > > +epubdocs: $(IMGDOT)
> > >  	@$(foreach var,$(SPHINXDIRS),$(call loop_cmd,sphinx,epub,$(var),epub,$(var)))
> > >  
> > > -xmldocs:
> > > +xmldocs: $(IMGDOT)
> > >  	@$(foreach var,$(SPHINXDIRS),$(call loop_cmd,sphinx,xml,$(var),xml,$(var)))
> > >  
> > >  # no-ops for the Sphinx toolchain
> > > @@ -97,8 +122,8 @@ mandocs:
> > >  installmandocs:
> > >  
> > >  cleandocs:
> > > -	$(Q)rm -rf $(BUILDDIR)
> > > -	$(Q)$(MAKE) BUILDDIR=$(abspath $(BUILDDIR)) -C Documentation/media clean
> > > +	$(Q)rm -rf $(BUILDDIR) $(IMGDOT) $(IMGPDF)
> > > +	$(Q)$(MAKE) BUILDDIR=$(abspath $(BUILDDIR)) -C Documentation/media mediacleandocs
> > >  
> > >  endif # HAVE_SPHINX
> > >  
> > > diff --git a/Documentation/media/Makefile b/Documentation/media/Makefile
> > > index 4d8e2ff378c4..b27c202beefb 100644
> > > --- a/Documentation/media/Makefile
> > > +++ b/Documentation/media/Makefile
> > > @@ -1,54 +1,35 @@
> > >  # Rules to convert DOT and SVG to Sphinx images
> > >  
> > > -SRC_DIR=$(srctree)/Documentation/media
> > > -
> > > -DOTS = \
> > > -	uapi/v4l/pipeline.dot \
> > > -
> > > -IMAGES = \
> > > -	typical_media_device.svg \
> > > -	uapi/dvb/dvbstb.svg \
> > > -	uapi/v4l/bayer.svg \
> > > -	uapi/v4l/constraints.svg \
> > > -	uapi/v4l/crop.svg \
> > > -	uapi/v4l/fieldseq_bt.svg \
> > > -	uapi/v4l/fieldseq_tb.svg \
> > > -	uapi/v4l/nv12mt.svg \
> > > -	uapi/v4l/nv12mt_example.svg \
> > > -	uapi/v4l/pipeline.svg \
> > > -	uapi/v4l/selection.svg \
> > > -	uapi/v4l/subdev-image-processing-full.svg \
> > > -	uapi/v4l/subdev-image-processing-scaling-multi-source.svg \
> > > -	uapi/v4l/subdev-image-processing-crop.svg \
> > > -	uapi/v4l/vbi_525.svg \
> > > -	uapi/v4l/vbi_625.svg \
> > > -	uapi/v4l/vbi_hsync.svg \
> > > -
> > > -DOTTGT := $(patsubst %.dot,%.svg,$(DOTS))
> > > -IMGDOT := $(patsubst %,$(SRC_DIR)/%,$(DOTTGT))
> > > -
> > > -IMGTGT := $(patsubst %.svg,%.pdf,$(IMAGES))
> > > -IMGPDF := $(patsubst %,$(SRC_DIR)/%,$(IMGTGT))
> > > -
> > > -cmd = $(echo-cmd) $(cmd_$(1))
> > > -
> > > -quiet_cmd_genpdf = GENPDF  $2
> > > -      cmd_genpdf = convert $2 $3
> > > -
> > > -quiet_cmd_gendot = DOT     $2
> > > -      cmd_gendot = dot -Tsvg $2 > $3
> > > -
> > > -%.pdf: %.svg
> > > -	@$(call cmd,genpdf,$<,$@)
> > > -
> > > -%.svg: %.dot
> > > -	@$(call cmd,gendot,$<,$@)
> > > +UAPI_V4L = media/uapi/v4l
> > > +
> > > +DOTS += \
> > > +	$(UAPI_V4L)/pipeline.dot \
> > > +
> > > +IMAGES += \
> > > +	media/typical_media_device.svg \
> > > +	media/uapi/dvb/dvbstb.svg \
> > > +	$(UAPI_V4L)/bayer.svg \
> > > +	$(UAPI_V4L)/constraints.svg \
> > > +	$(UAPI_V4L)/crop.svg \
> > > +	$(UAPI_V4L)/fieldseq_bt.svg \
> > > +	$(UAPI_V4L)/fieldseq_tb.svg \
> > > +	$(UAPI_V4L)/nv12mt.svg \
> > > +	$(UAPI_V4L)/nv12mt_example.svg \
> > > +	$(UAPI_V4L)/pipeline.svg \
> > > +	$(UAPI_V4L)/selection.svg \
> > > +	$(UAPI_V4L)/subdev-image-processing-full.svg \
> > > +	$(UAPI_V4L)/subdev-image-processing-scaling-multi-source.svg \
> > > +	$(UAPI_V4L)/subdev-image-processing-crop.svg \
> > > +	$(UAPI_V4L)/vbi_525.svg \
> > > +	$(UAPI_V4L)/vbi_625.svg \
> > > +	$(UAPI_V4L)/vbi_hsync.svg \
> > >  
> > >  # Rules to convert a .h file to inline RST documentation
> > >  
> > >  PARSER = $(srctree)/Documentation/sphinx/parse-headers.pl
> > > -UAPI = $(srctree)/include/uapi/linux
> > > -KAPI = $(srctree)/include/linux
> > > +SRC_DIR= $(srctree)/Documentation/media
> > > +UAPI   = $(srctree)/include/uapi/linux
> > > +KAPI   = $(srctree)/include/linux
> > >  
> > >  FILES = audio.h.rst ca.h.rst dmx.h.rst frontend.h.rst net.h.rst video.h.rst \
> > >  	  videodev2.h.rst media.h.rst cec.h.rst lirc.h.rst
> > > @@ -96,16 +77,12 @@ $(BUILDDIR)/lirc.h.rst: ${UAPI}/lirc.h ${PARSER} $(SRC_DIR)/lirc.h.rst.exception
> > >  
> > >  # Media build rules
> > >  
> > > -.PHONY: all html epub xml latex
> > > +.PHONY: mediaheaders
> > >  
> > > -all: $(IMGDOT) $(BUILDDIR) ${TARGETS}
> > > -html: all
> > > -epub: all
> > > -xml: all
> > > -latex: $(IMGPDF) all
> > > +mediaheaders: $(IMGDOT) $(BUILDDIR) ${TARGETS}
> > >  
> > > -clean:
> > > -	-rm -f $(DOTTGT) $(IMGTGT) ${TARGETS} 2>/dev/null
> > > +mediacleandocs:
> > > +	$(Q)rm -f ${TARGETS} 2>/dev/null
> > >  
> > >  $(BUILDDIR):
> > >  	$(Q)mkdir -p $@
> > > -- 
> > > 2.9.3
> > > 
> > > 
> > > --
> > > To unsubscribe from this list: send the line "unsubscribe linux-doc" in
> > > the body of a message to majordomo@vger.kernel.org
> > > More majordomo info at  http://vger.kernel.org/majordomo-info.html  
> > 
> 
> 
> 
> Thanks,
> Mauro

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
