Return-Path: <johannes@sipsolutions.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2E8B18A6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 17 Nov 2016 15:54:18 +0000 (UTC)
Received: from sipsolutions.net (s3.sipsolutions.net [5.9.151.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2AEF91A4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 17 Nov 2016 15:54:17 +0000 (UTC)
Message-ID: <1479396539.1463.12.camel@sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
To: Mauro Carvalho Chehab <mchehab@infradead.org>, Theodore Ts'o
	<tytso@mit.edu>
Date: Thu, 17 Nov 2016 16:28:59 +0100
In-Reply-To: <20161117131651.467943e0@vento.lan>
References: <20161107075524.49d83697@vento.lan>
	<11020459.EheIgy38UF@wuerfel> <20161116182633.74559ffd@vento.lan>
	<2923918.nyphv1Ma7d@wuerfel>
	<20161117145244.sksssz6jvnntsw5u@thunk.org>
	<20161117131651.467943e0@vento.lan>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: linux-media@vger.kernel.org, Linus Torvalds <torvalds@linux-foundation.org>,
	linux-kernel@vger.kernel.org, ksummit-discuss@lists.linuxfoundation.org,
	linux-doc@vger.kernel.org
Subject: Re: [Ksummit-discuss] Including images on Sphinx documents
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


> So, the problem that remains is for those images whose source
> is a bitmap. If we want to stick with the Sphinx supported formats,
> we have only two options for bitmaps: jpg or png. We could eventually
> use uuencode or base64 to make sure that the patches won't use
> git binary diff extension, or, as Arnd proposed, use a portable
> bitmap format, in ascii, converting via Makefile, but losing
> the alpha channel with makes the background transparent.
> 

Or just "rewrite" them in svg? None of the gif files I can see actually
look like they'd have been drawn in gif format anyway. The original
source may be lost, but it doesn't seem all that hard to recreate them
in svg.

johannes
