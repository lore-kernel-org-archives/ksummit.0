Return-Path: <mchehab@s-opensource.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F11CB89E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 20 Nov 2016 14:26:53 +0000 (UTC)
Received: from osg.samsung.com
	(ec2-52-27-115-49.us-west-2.compute.amazonaws.com [52.27.115.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 87C97A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 20 Nov 2016 14:26:51 +0000 (UTC)
Date: Sun, 20 Nov 2016 12:26:43 -0200
From: Mauro Carvalho Chehab <mchehab@s-opensource.com>
To: "David Woodhouse" <dwmw2@infradead.org>
Message-ID: <20161120122643.50a4b2bf@vento.lan>
In-Reply-To: <1c179b5da49382970d7bf5171550d600.squirrel@twosheds.infradead.org>
References: <20161107075524.49d83697@vento.lan> <11020459.EheIgy38UF@wuerfel>
	<20161116182633.74559ffd@vento.lan> <2923918.nyphv1Ma7d@wuerfel>
	<CA+55aFyFrhRefTuRvE2rjrp6d4+wuBmKfT_+a65i0-4tpxa46w@mail.gmail.com>
	<20161119101543.12b89563@lwn.net>
	<1479578112.4382.15.camel@infradead.org>
	<CA+55aFy1r1ZDZjADvpKULC2sgAnSq4qM4W+_PP4Q2R5RG92LoQ@mail.gmail.com>
	<1c179b5da49382970d7bf5171550d600.squirrel@twosheds.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org,
	"open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
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

Em Sat, 19 Nov 2016 22:59:01 -0000
"David Woodhouse" <dwmw2@infradead.org> escreveu:

> > I think that graphviz and svg are the reasonable modern formats. Let's
> > try to avoid bitmaps in today's world, except perhaps as intermediate
> > generated things for what we can't avoid.  

Ok, I got rid of all bitmap images:
	https://git.linuxtv.org/mchehab/experimental.git/log/?h=svg-images

Now, all images are in SVG (one is actually a .dot file - while we don't
have an extension to handle it, I opted to keep both .dot and .svg on
my development tree - I'll likely add a Makefile rule for it too).

I converted the ones from pdf/xfig to SVG, and I rewrote the other ones
on SVG. The most complex one was cropping a bitmap image. Instead, I took
the "Tuz" image - e. g. the one from commit 8032b526d1a3 
("linux.conf.au 2009: Tuz") and use it for image crop. The file size is
a way bigger than the previous one (the PNG had 11K; the SVG now has 563K),
but the end result looked nice, IMHO.

> Sure, SVG makes sense. It's a text-based format (albeit XML) and it *can*
> be edited with a text editor and reasonably kept in version control, at
> least if the common tools store it in a diff-friendly way (with some line
> breaks occasionally, and maybe no indenting). Do they?

Inkscape does a good job on breaking lines for a diff-friendly output.

Yet, some lines violate the maximum limit for e-mails defined by
IETF RFC 2821. The problem is that sending such patches to the mailing
lists could make them be ignored.

Not sure what would be the best way to solve such issues.


Thanks,
Mauro
