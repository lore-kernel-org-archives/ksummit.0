Return-Path: <mchehab@s-opensource.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3A06471F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 22 Nov 2016 15:15:17 +0000 (UTC)
Received: from osg.samsung.com
	(ec2-52-27-115-49.us-west-2.compute.amazonaws.com [52.27.115.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id C494A79
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 22 Nov 2016 15:15:16 +0000 (UTC)
Date: Tue, 22 Nov 2016 13:15:10 -0200
From: Mauro Carvalho Chehab <mchehab@s-opensource.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20161122131510.0fadabc4@vento.lan>
In-Reply-To: <877f7vy684.fsf@intel.com>
References: <cover.1479656706.git.mchehab@s-opensource.com>
	<20161121104444.28862d80@lwn.net>
	<20161121171557.5c0fbe8c@vento.lan> <877f7vy684.fsf@intel.com>
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

Em Tue, 22 Nov 2016 15:49:47 +0200
Jani Nikula <jani.nikula@intel.com> escreveu:

> On Mon, 21 Nov 2016, Mauro Carvalho Chehab <mchehab@s-opensource.com> wrote:
> > Em Mon, 21 Nov 2016 10:44:44 -0700
> > Jonathan Corbet <corbet@lwn.net> escreveu:
> >  
> >> On Sun, 20 Nov 2016 14:08:31 -0200
> >> Mauro Carvalho Chehab <mchehab@s-opensource.com> wrote:  
> >> > NOTE: some images use more than 998 columns, causing troubles
> >> > with some MTA and MUA that could refuse them, because of an IETF
> >> > RFC 2821 violation:    
> >> 
> >> Hard would it be to bash out a little tool that could break those long
> >> lines?  It seems like the format should be able to support that?  I'm no
> >> XML expert, but a quick experiment breaking the long lines in
> >> fieldseq_bt.svg didn't create any problems; white space is white space.  
> >
> > I'm not sure. The problem happens on strings like this one:
> >
> > x="103.58983 109.09226 113.67899 118.26572 122.85246 127.43919 132.47964 134.77301 140.27545 144.86218 150.81833 155.40506 160.44553 166.86365 188.62184 194.12427 198.711 203.29774 207.88448 212.47121 217.51166 219.80502 225.30746 229.8942 235.85034 240.43707 245.9395 252.35764 257.3981 262.43854 268.85669 375.69293 381.19534 385.78207 390.3688 394.95554 399.54227 404.58273 406.8761 412.37854 416.96527 422.92142 427.50815 433.01059 439.42871 444.46918 449.50961 455.92776 1.551828 7.0542617 11.640993 16.227724 20.814463 25.401194 30.441652 32.735016 38.237442 42.824177 48.780331 53.367065 58.869492 65.287621 70.328079 75.368538 81.786659"
> >
> > I've no idea if breaking lines inside strings on XML would cause
> > troubles for SVG handling, and, if all SVG libraries would do the
> > same thing.  
> 
> It *should* be okay to just replace spaces within attributes with
> newlines, and they should be normalized back to spaces by any compliant
> xml parser.

So, something like:

	#!/usr/bin/perl
	use strict;
	my $svg;
	my $file = shift or die "Usage: $0 file\n";
	open IN, $file  or die "Can't read $file\n";
	$svg .= $_ while (<IN>);
	close IN;
	$svg =~ s/^\s+//;
	$svg =~ s/\s+^//;
	$svg .= "\n";
	$svg =~ s/\s+/\n/g;
	$svg =~ s/\>\s+\</\>\n\</g;
	print $svg;

would then work?

An option would be to make git optionally aware of svg, avoiding long lines
there.

> You can use tidy or xmllint to clean up the xml before
> committing. Unfortunately I couldn't make tidy actually wrap the long
> attributes, but could be PEBKAC.

I tried both, none broke the long lines on 
Documentation/media/uapi/v4l/fieldseq_tb.svg.


Thanks,
Mauro
