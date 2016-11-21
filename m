Return-Path: <corbet@lwn.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0C877B3F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 21 Nov 2016 17:44:47 +0000 (UTC)
Received: from ms.lwn.net (ms.lwn.net [45.79.88.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 95F9FCB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 21 Nov 2016 17:44:46 +0000 (UTC)
Date: Mon, 21 Nov 2016 10:44:44 -0700
From: Jonathan Corbet <corbet@lwn.net>
To: Mauro Carvalho Chehab <mchehab@s-opensource.com>
Message-ID: <20161121104444.28862d80@lwn.net>
In-Reply-To: <cover.1479656706.git.mchehab@s-opensource.com>
References: <cover.1479656706.git.mchehab@s-opensource.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 8bit
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

On Sun, 20 Nov 2016 14:08:31 -0200
Mauro Carvalho Chehab <mchehab@s-opensource.com> wrote:

> The goal of this patch series is to get rid of PNG images, using either graphviz
> or SVG for images.
> 
> For old images generated with xfig, stored inside PDF, just convert them to SVG
> and cleanup the images using inkscape.
> 
> Other images need to be rewritten in SVG.
> 
> The pipeline image is actually a graphviz diagram. So, use dot to convert it
> to SVG.
> 
> For now, I'm keeping the image conversion rules inside the
> Documentation/media/Makefile. As we get other docs using images,
> the best would be to move those rules to Documentation/Makefile.sphinx,
> while we don't have a Sphinx extension or fixup that would handle them
> directly.

So this all seems good to me and makes sense to get in for 4.10.  Should I
apply these?

> NOTE: some images use more than 998 columns, causing troubles
> with some MTA and MUA that could refuse them, because of an IETF
> RFC 2821 violation:

Hard would it be to bash out a little tool that could break those long
lines?  It seems like the format should be able to support that?  I'm no
XML expert, but a quick experiment breaking the long lines in
fieldseq_bt.svg didn't create any problems; white space is white space.

Indeed, given the small number of images and the infrequency with which
they change, perhaps that could just be done by hand?

(In the process I learned that if you visit an SVG image in emacs, it
actually renders and displays the image!)

jon
