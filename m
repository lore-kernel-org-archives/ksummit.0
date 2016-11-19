Return-Path: <mchehab@s-opensource.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E5C963EE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 19 Nov 2016 20:54:41 +0000 (UTC)
Received: from osg.samsung.com
	(ec2-52-27-115-49.us-west-2.compute.amazonaws.com [52.27.115.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 1921D196
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 19 Nov 2016 20:54:40 +0000 (UTC)
Date: Sat, 19 Nov 2016 18:54:33 -0200
From: Mauro Carvalho Chehab <mchehab@s-opensource.com>
To: Jonathan Corbet <corbet@lwn.net>
Message-ID: <20161119185433.331a132b@vento.lan>
In-Reply-To: <20161119101543.12b89563@lwn.net>
References: <20161107075524.49d83697@vento.lan> <11020459.EheIgy38UF@wuerfel>
	<20161116182633.74559ffd@vento.lan> <2923918.nyphv1Ma7d@wuerfel>
	<CA+55aFyFrhRefTuRvE2rjrp6d4+wuBmKfT_+a65i0-4tpxa46w@mail.gmail.com>
	<20161119101543.12b89563@lwn.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org, "open
	list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: Re: [Ksummit-discuss] Including images on Sphinx documents
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Sat, 19 Nov 2016 10:15:43 -0700
Jonathan Corbet <corbet@lwn.net> escreveu:

> On Thu, 17 Nov 2016 08:02:50 -0800
> Linus Torvalds <torvalds@linux-foundation.org> wrote:
> 
> > We have makefiles, but more importantly, few enough people actually
> > *generate* the documentation, that I think if it's an option to just
> > fix sphinx, we should do that instead. If it means that you have to
> > have some development version of sphinx, so be it. Most people read
> > the documentation either directly in the unprocessed text-files
> > ("source code") or on the web (by searching for pre-formatted docs)
> > that I really don't think we need to worry too much about the
> > toolchain.
> > 
> > But what we *should* worry about is having the kernel source tree
> > contain source.  
> 
> I would be happy to take a shot at fixing sphinx; we clearly need to
> engage more with sphinx upstream in general.  But I guess I still haven't
> figured out what "fixing sphinx" means in this case.
> 
> I don't know what the ultimate source of these images is (Mauro, perhaps
> you could shed some light there?).  Perhaps its SVG for some of the
> diagrams, but for the raster images, probably not; it's probably some
> weird-ass diagram-editor format.  We could put those in the tree, but
> they are likely to be harder to convert to a useful format and will raise
> all of the same obnoxious binary patch issues.

I did some research on Friday trying to identify where those images
came. It turns that, for the oldest images (before I took the media
maintainership), PDF were actually their "source", as far as I could track,
in the sense that the *.gif images were produced from the PDF.

The images seem to be generated using some LaTeX tool. Their original
format were probably EPS. I was able to convert those to SVG from their
pdf "source":

	https://git.linuxtv.org/mchehab/experimental.git/commit/?h=svg-images&id=9baca9431d333af086c1ccd499668b5b76d35a64

I didn't check yet where the newer images came from, but I guess
that at least some of them were generated using some bitmap editor
like gimp.

> Rather than beating our heads against the wall trying to convert between
> various image formats, maybe we need to take a step back.  We're trying
> to build better documentation, and there is certainly a place for
> diagrams and such in that documentation.  Johannes was asking about it
> for the 802.11 docs, and I know Paul has run into these issues with the
> RCU docs as well.  Might there be a tool or an extension out there that
> would allow us to express these diagrams in a text-friendly, editable
> form?

I guess that a Sphinx extension for graphviz is something that we'll
need sooner or later. One of our images were clearly generated using
graphviz:
	Documentation/media/uapi/v4l/pipeline.png

> With some effort, I bet we could get rid of a number of the images, and
> perhaps end up with something that makes sense when read in the .rst
> source files as an extra benefit.  But I'm not convinced that we can,
> say, sensibly express the differences between different video interlacing
> schemes that way.

Explaining visual concepts without images is really hard. Several
images that we use are there to explain things like interlacing,
point (x, y) positions of R, G and B pixels (or YUV), and even
wavelengths to show where the VBI frames are taken. There's not
much we can to do get rid of those images.

We can try to convert those to vector graphics, or encapsulate the bitmaps
inside a SVG file, but still we'll need images on documents.

Thanks,
Mauro
