Return-Path: <corbet@lwn.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E17E53EE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 13 Nov 2016 19:52:52 +0000 (UTC)
Received: from vena.lwn.net (tex.lwn.net [70.33.254.29])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 670B4D0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 13 Nov 2016 19:52:52 +0000 (UTC)
Date: Sun, 13 Nov 2016 12:52:50 -0700
From: Jonathan Corbet <corbet@lwn.net>
To: Mauro Carvalho Chehab <mchehab@s-opensource.com>
Message-ID: <20161113125250.779df4dd@lwn.net>
In-Reply-To: <20161107075524.49d83697@vento.lan>
References: <20161107075524.49d83697@vento.lan>
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

On Mon, 7 Nov 2016 07:55:24 -0200
Mauro Carvalho Chehab <mchehab@s-opensource.com> wrote:

> So, we have a few alternatives:
> 
> 1) copy (or symlink) all rst files to Documentation/output (or to the
>    build dir specified via O= directive) and generate the *.pdf there,
>    and produce those converted images via Makefile.;
> 
> 2) add an Sphinx extension that would internally call ImageMagick and/or
>    inkscape to convert the bitmap;
> 
> 3) if possible, add an extension to trick Sphinx for it to consider the 
>    output dir as a source dir too.

So, obviously, I've been letting this go by while dealing with other
stuff...

I really think that 2) is the one we want.  Copying all the stuff and
operating on the copies, beyond being a bit of a hack, just seems like a
recipe for weird build problems in the future.

We should figure out why PNG files don't work.  Maybe I'll give that a
try at some point soon, if I can find a moment.  Working around tools
bugs seems like the wrong approach.

Working from .svg seems optimial, but I don't like the --shell-escape
thing at all.

[Along those lines, we've picked up a lot of lines like this:

	 restricted \write18 enabled.

That, too, is shell execution stuff.  I've not been able to figure out
where it came from, but I would sure like to get rid of it...]

jon
