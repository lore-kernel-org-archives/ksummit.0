Return-Path: <corbet@lwn.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 08363360
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 13 Nov 2016 21:00:30 +0000 (UTC)
Received: from vena.lwn.net (tex.lwn.net [70.33.254.29])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 699C81AC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 13 Nov 2016 21:00:29 +0000 (UTC)
Date: Sun, 13 Nov 2016 14:00:27 -0700
From: Jonathan Corbet <corbet@lwn.net>
To: Mauro Carvalho Chehab <mchehab@s-opensource.com>
Message-ID: <20161113140027.2fbe0946@lwn.net>
In-Reply-To: <20161107094648.55677524@vento.lan>
References: <20161107075524.49d83697@vento.lan> <87wpgf8ssc.fsf@intel.com>
	<20161107094648.55677524@vento.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 8bit
Cc: linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
	ksummit-discuss@lists.linuxfoundation.org, linux-media@vger.kernel.org
Subject: Re: [Ksummit-discuss] Including images on Sphinx documents
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 7 Nov 2016 09:46:48 -0200
Mauro Carvalho Chehab <mchehab@s-opensource.com> wrote:

> When running LaTeX in interactive mode, building just the media
> PDF file with:
> 
> 	$ cls;make cleandocs; make SPHINXOPTS="-j5" DOCBOOKS="" SPHINXDIRS=media latexdocs 
> 	$ PDFLATEX=xelatex LATEXOPTS="-interaction=interactive" -C Documentation/output/media/latex
> 
> I get this:
> 
> 	LaTeX Warning: Hyper reference `uapi/v4l/subdev-formats:bayer-patterns' on page
> 	 153 undefined on input line 21373.
> 
> 	<use  "bayer.png" > [153]
> 	! Extra alignment tab has been changed to \cr.
> 	<template> \endtemplate 
>                         
> 	l.21429 \unskip}\relax \unskip}
> 	                               \relax \\
> 	? 
> 
> This patch fixes the issue:
> 	https://git.linuxtv.org/mchehab/experimental.git/commit/?h=dirty-pdf&id=b709de415f34d77cc121cad95bece9c7ef4d12fd
> 
> That means that Sphinx is not generating the right LaTeX output even for
> (some?) PNG images.

So I'm seriously confused.

I can get that particular message - TeX is complaining about too many
columns in the table.  But applying your patch (with a suitable bayer.pdf
provided) does not fix the problem.  Indeed, I can remove the figure with
the image entirely and still not fix the problem.  Are you sure that the
patch linked here actually fixed it for you?

jon
