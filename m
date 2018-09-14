Return-Path: <airlied@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EDE7F86D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Sep 2018 06:40:11 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
	[209.85.222.176])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 897EC716
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Sep 2018 06:40:11 +0000 (UTC)
Received: by mail-qk1-f176.google.com with SMTP id 93-v6so4631298qks.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Sep 2018 23:40:11 -0700 (PDT)
MIME-Version: 1.0
References: <8412864.7ztUKcXNNC@avalon>
	<CAKMK7uFAXoVG+nBX=Om9A7R9xPYa-hd0JrRX1RNKSNhxnL_VsA@mail.gmail.com>
	<2019489.6joTqyUi4Z@avalon>
	<CAKMK7uE535-7Vs9EAa2725XL2TX2ChJCN0Zb3YaMe=MarYJOyw@mail.gmail.com>
	<20180911124423.GM2494@piout.net>
	<CAKMK7uE55eEP8L74z7HMyPb2nVnK9=bBX8tUEqmsDYSqjO-CZg@mail.gmail.com>
	<CACRpkdZeR=0-_tN03jFLGc-j1pW4hfOtqB6icjhpF190A8Z0=A@mail.gmail.com>
	<20180912182343.GI2760@piout.net>
	<alpine.DEB.2.21.1809122037450.1473@nanos.tec.linutronix.de>
	<20180913120811.oilaweiun3z4l5wo@flea>
	<20180913125723.GC14988@piout.net> <87a7olzd7s.fsf@intel.com>
	<alpine.DEB.2.21.1809132136350.1473@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1809132136350.1473@nanos.tec.linutronix.de>
From: Dave Airlie <airlied@gmail.com>
Date: Fri, 14 Sep 2018 16:39:57 +1000
Message-ID: <CAPM=9twrXd4W-Qf_mmqXkBj5bi=PaTdy0KPPTfW9A6bN5uk0sw@mail.gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] community
 management/subsystem governance
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

> You are sounding like DRM invented group maintainership and needs to go
> advertising it now as the best invention since sliced bread.
>
> It's been in practice since 2007 when the tip tree started with 3
> maintainers. It was then adopted by ARM-SoC and Linus recommended it as a
> good model way before DRM went that road.


How many new maintainers at the x86 group brought in, how many
maintainers has it removed? What processes have you developed for
this? Just having 3 people do something once isn't really helping the
other groups figure out a plan.

The drm group maintainer ship is a lot more mature than others as in
there has been both joins and departs from the 2-3 groups that use the
tools and system.

> We all know that group maintainership is a good thing, but we also know
> that it's not working for all subsystems and that it's not always easy to
> find matching co-maintainers. Most maintainers, if not all, would be happy
> to have a competent, trusted and interested co-maintainer. So it's not that
> they need to be educated on that.
>
> Group maintainership is not the Panacea. So please stop the prayer wheel
> and come up with solutions which address identifed indivudual problems. Not
> having group maintainership is for some subsystems the least of their
> worries. And as a member of the first official maintainer group in the
> kernel I can assure you that group maintainership is not making all other
> and potentially more dangerous problems magically go away.
>

We have a lot more time than one slot. I think other subsystems might
want some ideas on how to move to group maintainership, and copy "TIP"
or "arm-soc" isn't helpful for them.

I've just migrated all the drm-next and fixes trees to the same tools
as the two group maintainer trees, it now means for the first time in
10 years I can actually give someone else full access to the exact
same system as I use for sending trees to Linus, and more importantly
we can have people learn the system on the misc or i915 trees and grow
into toplevel maintainers, with ease.

I think it's valuable discussion to move from "you didn't invent this,
we've been doing it since 1956 on mainframes, to how can we make this
into a process that works for other subsystem maintainers).

Dave.
