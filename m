Return-Path: <BATV+08caa0c35d87822e4926+4833+infradead.org+mchehab@bombadil.srs.infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 905569BA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 16 Nov 2016 20:26:43 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BB3CD12C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 16 Nov 2016 20:26:38 +0000 (UTC)
Date: Wed, 16 Nov 2016 18:26:33 -0200
From: Mauro Carvalho Chehab <mchehab@infradead.org>
To: Arnd Bergmann <arnd@arndb.de>
Message-ID: <20161116182633.74559ffd@vento.lan>
In-Reply-To: <11020459.EheIgy38UF@wuerfel>
References: <20161107075524.49d83697@vento.lan>
	<20161107170504.25j4rwfohhqp67fw@x>
	<20161108085036.304fdfea@vento.lan> <11020459.EheIgy38UF@wuerfel>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
	ksummit-discuss@lists.linuxfoundation.org, linux-doc@vger.kernel.org
Subject: Re: [Ksummit-discuss] Including images on Sphinx documents
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Arnd,

Em Wed, 16 Nov 2016 17:03:47 +0100
Arnd Bergmann <arnd@arndb.de> escreveu:

> On Tuesday, November 8, 2016 8:50:36 AM CET Mauro Carvalho Chehab wrote:
> > It basically calls ImageMagick "convert" tool for all png and
> > pdf files currently at the documentation (they're all at media,
> > ATM). =20
>=20
> It looks like we still need to find a way to address the .gif files
> though, as they have the same problem as the .pdf files.

Actually, my last patch series removed all *.pdf images and converted
all .gif files under Documentation/media to PNG[1]. I also replaced some
images by .svg, but the remaining ones are more complex. I'm even not
sure if it makes sense to convert a few of them to vectorial graphics,
like on this case:
	https://mchehab.fedorapeople.org/kernel_docs/media/_images/selection.png

>
> During the kernel summit, I looked around for any binary files in
> the kernel source tree, and except for the penguin logo, they are
> all in Documentation/media/uapi/v4l/, but they are not all pdf
> files, but also .png and .pdf.

=46rom what I understood from Linus, his problem is to carry on a
non-editable file at the Kernel tree. With that sense, a PNG file
is OK, as it is editable.

I had, in the past, problems with binary contents on either Mercurial
or git (before migrating to git, we used Mercurial for a while).
So, before Kernel 4.8, those .pdf, .png (and .gif) images were uuencoded,
in order to avoid troubles handling patches with them.

Nowadays, I don't see any issue handling binary images via e-mail or via gi=
t.

Btw, with that regards, SVG images are a lot worse to handle, as a single
line can easily have more than 998 characters, with makes some email
servers to reject patches with them. So, at the version 3 of my patch=20
series, I had to use inkscape to ungroup some images, and to rewrite their
files, as otherwise, two patches were silently rejected by the VGER=20
server.

[1] The reason to convert to PNG is that it means one less format to be
concerned with. Also, it doesn't make much sense to use two different
formats for bitmap images at the documentation.

Thanks,
Mauro
