Return-Path: <robherring2@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D75A5979
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 May 2014 14:44:31 +0000 (UTC)
Received: from mail-vc0-f169.google.com (mail-vc0-f169.google.com
	[209.85.220.169])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 37FD61FB24
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 May 2014 14:44:29 +0000 (UTC)
Received: by mail-vc0-f169.google.com with SMTP id ij19so4611956vcb.28
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 May 2014 07:44:28 -0700 (PDT)
MIME-Version: 1.0
Sender: robherring2@gmail.com
In-Reply-To: <4921873.t2F8plV493@wuerfel>
References: <20140511030009.GO12708@titan.lakedaemon.net>
	<4931877.zNfKfvcgox@wuerfel>
	<CAL_Jsq+kOu82okhJn0_ftwemE_m4nsTRawrF-fWAU2XTJ9xRcA@mail.gmail.com>
	<4921873.t2F8plV493@wuerfel>
Date: Thu, 22 May 2014 09:44:27 -0500
Message-ID: <CAL_JsqKfc82GT3BNQa0PJ3=kCHmYrZWQEuxjPxRfESR+5Ubj9g@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset=UTF-8
Cc: "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>,
	Linus Walleij <linus.ml.walleij@gmail.com>,
	Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
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

On Tue, May 20, 2014 at 3:08 AM, Arnd Bergmann <arnd@arndb.de> wrote:
> On Monday 19 May 2014 18:06:02 Rob Herring wrote:
>> > On Friday 16 May 2014 23:20:42 Ben Hutchings wrote:
>> >> On Fri, 2014-05-16 at 14:42 -0400, Jason Cooper wrote:
>> >> > On Fri, May 16, 2014 at 07:31:51PM +0100, Ben Hutchings wrote:
>> >> > > Our 'legacy' (which I take to mean pre-v7) configurations are now
>> >> > > kirkwood, mv78xx0, orion5x (all about to converge to mvebu) and
>> >> > > versatile.
>> >> >
>> >> > I'm not familiar with versatile, the others I've seen a few times.
>> >>
>> >> Versatile is one of ARM's own development boards, but more importantly
>> >> it's something QEMU can emulate.
>> >
>> > We should really have this in multiplatform soon, I think the last issue
>> > for versatile is common clock support, but Linus Walleij may have more
>> > details about what remains here.
>>
>> While not necessarily the same thing, but does move versatile in the
>> right direction, I've got patches in progress which fully move
>> versatile over to DT. The main issues there are:
>>
>> common clock
>> irq cntlr init from DT
>> Move PCI to DT and platform driver
>>
>> I'd like to do this all in one step to avoid doing things like non-DT
>> common clock init.
>
> Sounds good, yes.
>
>> It's blocked on the common DT PCI code and my free
>> time.
>>
>> There are then a few bits related to mach/plat headers needed move
>> versatile to multiplatform. I think these issues are mostly the same
>> changes that have been done or are needed on integrator which is what
>> Linus has been working on.
>
> Ah, right. I see these two includes from mach-versatile to plat/*.h headers:
>
> arch/arm/mach-versatile/core.c:#include <plat/clcd.h>
> arch/arm/mach-versatile/core.c:#include <plat/sched_clock.h>
>
> We can deal with those by adding
>
> ccflags-y := -I$(srctree)/arch/arm/plat-versatile/include
>
> to mach-versatile/Makefile, or we can rearrange the code. The opposite
> direction would be harder, but I don't see any remaining dependencies
> there.

It looked like more work when I started this, but thanks to Linus's
work on plat dir, it is pretty straight-forward to finish the
conversion. Here's a branch that enables multi-platform for versatile:

git://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git
versatile-multiplatform

So it is PCI and LEDs that have to be sorted out first.

Rob
