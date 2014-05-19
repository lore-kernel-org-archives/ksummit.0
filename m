Return-Path: <arnd@arndb.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 110AC98F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 May 2014 12:21:29 +0000 (UTC)
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3DB9B1F9F9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 May 2014 12:21:24 +0000 (UTC)
From: Arnd Bergmann <arnd@arndb.de>
To: linux-arm-kernel@lists.infradead.org
Date: Mon, 19 May 2014 14:20:46 +0200
Message-ID: <4931877.zNfKfvcgox@wuerfel>
In-Reply-To: <1400278842.2647.62.camel@deadeye.wl.decadent.org.uk>
References: <20140511030009.GO12708@titan.lakedaemon.net>
	<20140516184205.GL27822@titan.lakedaemon.net>
	<1400278842.2647.62.camel@deadeye.wl.decadent.org.uk>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: Rob Herring <robh@kernel.org>, Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Linus Walleij <linus.ml.walleij@gmail.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] ARM legacy board DT conversion
	finalization
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Friday 16 May 2014 23:20:42 Ben Hutchings wrote:
> On Fri, 2014-05-16 at 14:42 -0400, Jason Cooper wrote:
> > On Fri, May 16, 2014 at 07:31:51PM +0100, Ben Hutchings wrote:
> > > Our 'legacy' (which I take to mean pre-v7) configurations are now
> > > kirkwood, mv78xx0, orion5x (all about to converge to mvebu) and
> > > versatile.
> > 
> > I'm not familiar with versatile, the others I've seen a few times. 
> 
> Versatile is one of ARM's own development boards, but more importantly
> it's something QEMU can emulate.

We should really have this in multiplatform soon, I think the last issue
for versatile is common clock support, but Linus Walleij may have more
details about what remains here.

We should also make it possible to enable ARCH_VIRT for pre-ARMv7 to
get qemu users to move over to that.

	Arnd
