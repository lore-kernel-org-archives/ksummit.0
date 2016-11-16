Return-Path: <arnd@arndb.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9D9F0B68
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 16 Nov 2016 16:04:18 +0000 (UTC)
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.134])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 754C21B4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 16 Nov 2016 16:04:17 +0000 (UTC)
From: Arnd Bergmann <arnd@arndb.de>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Wed, 16 Nov 2016 17:03:47 +0100
Message-ID: <11020459.EheIgy38UF@wuerfel>
In-Reply-To: <20161108085036.304fdfea@vento.lan>
References: <20161107075524.49d83697@vento.lan>
	<20161107170504.25j4rwfohhqp67fw@x>
	<20161108085036.304fdfea@vento.lan>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-media@vger.kernel.org
Subject: Re: [Ksummit-discuss] Including images on Sphinx documents
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tuesday, November 8, 2016 8:50:36 AM CET Mauro Carvalho Chehab wrote:
> > [...]
> > > And it may even require "--shell-escape" to be passed at the xelatex
> > > call if inkscape is not in the path, with seems to be a strong
> > > indication that SVG support is not native to texlive, but, instead,
> > > just a way to make LaTeX to call inkscape to do the image conversion.  
> > 
> > Please don't require --shell-escape as part of the TeX workflow.  If
> > LaTeX can't handle the desired image format natively, it needs
> > conversion in advance.
> 
> Agreed. I sent a patch series to linux-doc, doing the conversion in
> advance:
>         https://marc.info/?l=linux-doc&m=147859902804144&w=2
> 
> Not sure why, but the archives don't have all patches yet.
> Anyway, the relevant one is this:
>         https://git.linuxtv.org/mchehab/experimental.git/commit/?h=pdf-fixes&id=5d41c452c787f6a6c755a3855312435bc439acb8
> 
> It basically calls ImageMagick "convert" tool for all png and
> pdf files currently at the documentation (they're all at media,
> ATM).

It looks like we still need to find a way to address the .gif files
though, as they have the same problem as the .pdf files.

During the kernel summit, I looked around for any binary files in
the kernel source tree, and except for the penguin logo, they are
all in Documentation/media/uapi/v4l/, but they are not all pdf
files, but also .png and .pdf.

	Arnd
