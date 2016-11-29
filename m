Return-Path: <corbet@lwn.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 58E2CB93
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 29 Nov 2016 01:09:49 +0000 (UTC)
Received: from ms.lwn.net (ms.lwn.net [45.79.88.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EDC371B9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 29 Nov 2016 01:09:48 +0000 (UTC)
Date: Mon, 28 Nov 2016 18:09:46 -0700
From: Jonathan Corbet <corbet@lwn.net>
To: Mauro Carvalho Chehab <mchehab@s-opensource.com>
Message-ID: <20161128180946.516c64d6@lwn.net>
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

So the pdfdocs build fails with an error when I apply this...

> xelatex -interaction=batchmode 'media.tex'
> This is XeTeX, Version 3.14159265-2.6-0.99993 (TeX Live 2016/dev) (preloaded format=xelatex)
>  restricted \write18 enabled.
> entering extended mode
> Makefile:58: recipe for target 'media.pdf' failed
> make[2]: *** [media.pdf] Error 1
> Documentation/Makefile.sphinx:83: recipe for target 'pdfdocs' failed
> make[1]: *** [pdfdocs] Error 2
> Makefile:1442: recipe for target 'pdfdocs' failed
> make: *** [pdfdocs] Error 2

There's nothing more useful than that in the log as far as I can tell.  I
take it you don't see this?

jon
