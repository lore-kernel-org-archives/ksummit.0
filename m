Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 71715CA6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Jun 2019 19:45:57 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [85.118.1.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AEE777E9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Jun 2019 19:45:56 +0000 (UTC)
Date: Mon, 17 Jun 2019 16:45:47 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <20190617164547.65ce54bd@coco.lan>
In-Reply-To: <20190617181116.GA17114@kroah.com>
References: <20190617142117.76478570@coco.lan>
	<98ce589a7c50e2693ab6be158e03afde19aed81e.1560794401.git.mchehab+samsung@kernel.org>
	<20190617181116.GA17114@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org, linux-kernel@vger.kernel.org,
	Linux Doc Mailing List <linux-doc@vger.kernel.org>
Subject: Re: [Ksummit-discuss] [PATCH RFC] scripts: add a script to handle
 Documentation/features
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Mon, 17 Jun 2019 20:11:16 +0200
Greg Kroah-Hartman <gregkh@linuxfoundation.org> escreveu:

> On Mon, Jun 17, 2019 at 03:05:07PM -0300, Mauro Carvalho Chehab wrote:
> > The Documentation/features contains a set of parseable files.
> > It is not worth converting them to ReST format, as they're
> > useful the way it is. It is, however, interesting to parse
> > them and produce output on different formats:
> > 
> > 1) Output the contents of a feature in ReST format;
> > 
> > 2) Output what features a given architecture supports;
> > 
> > 3) Output a matrix with features x architectures.
> > 
> > Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
> > ---
> > 
> > As commented at KS mailing list, converting the Documentation/features
> > file to ReST may not be the best way to handle it. 
> > 
> > This script allows validating the features files and to  generate ReST files 
> > on three different formats.
> > 
> > The goal is to support it via a sphinx extension, in order to be able to add
> > the features inside the Kernel documentation.
> > 
> >  scripts/get_feat.pl | 470 ++++++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 470 insertions(+)
> >  create mode 100755 scripts/get_feat.pl
> > 
> > diff --git a/scripts/get_feat.pl b/scripts/get_feat.pl
> > new file mode 100755
> > index 000000000000..c5a267b12f49
> > --- /dev/null
> > +++ b/scripts/get_feat.pl
> > @@ -0,0 +1,470 @@
> > +#!/usr/bin/perl
> > +  
> 
> No SPDX line :(

Added.

I also added a Sphinx extension to handle it as well. You'll notice that it
is almost a copy of kernel_abi.py. 

With regards to patch 2/2, it will generate both a feature x arch matrix 
at the admin-guide and a x86-specific features list.

IMO, it makes sense to have a per-arch feature file just like the one
I added to x86. As the patches converting documentation for other archs
are still being merged via docs tree, before adding the features list to
the other arch documents, it seems better to wait to do it after the
next merge window.

Those patches are applied after the ABI patches on this dir:

	https://git.linuxtv.org/mchehab/experimental.git/log/?h=abi_patches_v4.1

The output with both scripts are at:

	https://www.infradead.org/~mchehab/rst_features/index.html

The relevant parts are: ABI:

	https://www.infradead.org/~mchehab/rst_features/admin-guide/abi.html

Feature list x architecture (at admin-guide:

	https://www.infradead.org/~mchehab/rst_features/admin-guide/features.html

X86 features:

	https://www.infradead.org/~mchehab/rst_features/x86/features.html

While I didn't write a patch, with the new get_feat.pl script, we can probably
get rid of the previous shell script at:

	Documentation/features/list-arch.sh

As calling:

	./scripts/get_feat.pl current

Will output the same content (with a different format, though).

Thanks,
Mauro
