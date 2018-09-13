Return-Path: <alexandre.belloni@bootlin.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9C0C1BE6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Sep 2018 12:57:35 +0000 (UTC)
Received: from mail.bootlin.com (mail.bootlin.com [62.4.15.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id C9D8A2C4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Sep 2018 12:57:34 +0000 (UTC)
Date: Thu, 13 Sep 2018 14:57:23 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Message-ID: <20180913125723.GC14988@piout.net>
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
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180913120811.oilaweiun3z4l5wo@flea>
Cc: ksummit-discuss@lists.linuxfoundation.org
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

On 13/09/2018 14:08:11+0200, Maxime Ripard wrote:
> On Wed, Sep 12, 2018 at 08:44:52PM +0200, Thomas Gleixner wrote:
> > On Wed, 12 Sep 2018, Alexandre Belloni wrote:
> > > On 12/09/2018 11:14:14+0200, Linus Walleij wrote:
> > > I'm not saying there aren't any issues and that the level of reviews is
> > > sufficient but I really don't think problematic maintainers are as
> > > widespread as Daniel claims. It is really getting tiring to see him
> > > show random statistics and draw wrong conclusions from them.
> > 
> > Agreed. Lies, damned lies and statistics...
> > 
> > The really interesting metric would be bugs/nr_commits. That gives you
> > valuable information how good your subsystem works and interacts with the
> > rest of the kernel.
> 
> That's one angle to look at it, and I agree it would be a pretty good
> overview of how good a maintainer is at reviewing patches, in general.
> 
> However, there's different angles where the metric used by Daniel
> makes sense. If there's a very significant part of the work that is
> done by the maintainer of a given subsystem, and that there is a
> single maintainer for that subsystem, what will happen when that
> maintainer decides to stop contributing for some reason?
> 

Daniel's metric (at least the one he used to gauge RTC) will never ever
be the good one. He simply looked at my contributions versus the top
contributors. The reality is that I'm taking more contributor patches
than I write.

If you have a look at the DRM statistics I gave, the situation is
actually quite similar. Contribution for each driver is massively
dominated by its maintainer. For the big ones (i915, amd, exynos), if
the company decides to stop developing the driver, it will be
completely dead. For the small one they basically only have one real
contributor.

> All the knowledge they built, experience they got (including at
> reviewing) is gone, possibly forever, and there's no one to pick up
> the subsystem, and the code is left to rot.
> 

And this is almost the same for the DRM core where Daniel is by far the
top contributor.

> Maintainers burn-out are also a thing, that is only reinforced by
> being the sole one caring for that subsystem.
> 
> And then, you also have the issue that nothing prevents that
> maintainer to enforce particuliar rules and thus prevent contributors,
> reinforcing the fact that they would be the sole maintainer for that
> subsystem.
> 

This is a real issue. What I'm saying is that it is not that common.

> As a community, we should care about those issues as well. Basically,
> the whole Linus discussion should apply at all the levels of the
> hierarchy, for pretty much the same reasons.
> 
> Having multiple maintainers and / or a more even spread of the
> contributions mitigate all these. So Daniel's metric is a pretty good
> one, and it doesn't mean that a particular maintainer is bad at their
> job, or is not making any effort, or shouldn't be praised. It really
> is a different metric, for a different issue.
> 

It is a very biased metric that will show in a bad light any subsystem
that has a small core and many drivers.
Conversely, it will show that unmaintained subsystems where all the
patches are going through akpm are working well.

> It's like running a datacenter off a single machine, with a single
> power supply, a single internet connection and a single hard disk. No
> one would want that.
> 

Group maintainership is definitively good but you can't force people to
get interested in a subsystem. and this is almost never an issue with
the maintainer attitude that would be driving off contributors.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
