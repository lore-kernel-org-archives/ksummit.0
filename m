Return-Path: <robherring2@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 2EBDA892
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 May 2014 23:06:05 +0000 (UTC)
Received: from mail-ve0-f171.google.com (mail-ve0-f171.google.com
	[209.85.128.171])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E8E9D20244
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 May 2014 23:06:03 +0000 (UTC)
Received: by mail-ve0-f171.google.com with SMTP id oz11so7276582veb.16
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 May 2014 16:06:03 -0700 (PDT)
MIME-Version: 1.0
Sender: robherring2@gmail.com
In-Reply-To: <4931877.zNfKfvcgox@wuerfel>
References: <20140511030009.GO12708@titan.lakedaemon.net>
	<20140516184205.GL27822@titan.lakedaemon.net>
	<1400278842.2647.62.camel@deadeye.wl.decadent.org.uk>
	<4931877.zNfKfvcgox@wuerfel>
Date: Mon, 19 May 2014 18:06:02 -0500
Message-ID: <CAL_Jsq+kOu82okhJn0_ftwemE_m4nsTRawrF-fWAU2XTJ9xRcA@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset=UTF-8
Cc: Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Linus Walleij <linus.ml.walleij@gmail.com>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>
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

On Mon, May 19, 2014 at 7:20 AM, Arnd Bergmann <arnd@arndb.de> wrote:
> On Friday 16 May 2014 23:20:42 Ben Hutchings wrote:
>> On Fri, 2014-05-16 at 14:42 -0400, Jason Cooper wrote:
>> > On Fri, May 16, 2014 at 07:31:51PM +0100, Ben Hutchings wrote:
>> > > Our 'legacy' (which I take to mean pre-v7) configurations are now
>> > > kirkwood, mv78xx0, orion5x (all about to converge to mvebu) and
>> > > versatile.
>> >
>> > I'm not familiar with versatile, the others I've seen a few times.
>>
>> Versatile is one of ARM's own development boards, but more importantly
>> it's something QEMU can emulate.
>
> We should really have this in multiplatform soon, I think the last issue
> for versatile is common clock support, but Linus Walleij may have more
> details about what remains here.

While not necessarily the same thing, but does move versatile in the
right direction, I've got patches in progress which fully move
versatile over to DT. The main issues there are:

common clock
irq cntlr init from DT
Move PCI to DT and platform driver

I'd like to do this all in one step to avoid doing things like non-DT
common clock init. It's blocked on the common DT PCI code and my free
time.

There are then a few bits related to mach/plat headers needed move
versatile to multiplatform. I think these issues are mostly the same
changes that have been done or are needed on integrator which is what
Linus has been working on.

Rob
