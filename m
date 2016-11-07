Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5E3A18F5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  7 Nov 2016 17:01:44 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net
	[217.70.183.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5AEAE171
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  7 Nov 2016 17:01:42 +0000 (UTC)
Date: Mon, 7 Nov 2016 09:01:34 -0800
From: Josh Triplett <josh@joshtriplett.org>
To: Mauro Carvalho Chehab <mchehab@s-opensource.com>
Message-ID: <20161107170133.4jdeuqydthbbchaq@x>
References: <20161107075524.49d83697@vento.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161107075524.49d83697@vento.lan>
Cc: linux-media@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Including images on Sphinx documents
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Nov 07, 2016 at 07:55:24AM -0200, Mauro Carvalho Chehab wrote:
> 2) add an Sphinx extension that would internally call ImageMagick and/or
>    inkscape to convert the bitmap;

This seems sensible; Sphinx should directly handle the source format we
want to use for images/diagrams.

> 3) if possible, add an extension to trick Sphinx for it to consider the 
>    output dir as a source dir too.

Or to provide an additional source path and point that at the output
directory.
