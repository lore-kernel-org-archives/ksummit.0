Return-Path: <alexandre.belloni@bootlin.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C501EEF7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 18:45:05 +0000 (UTC)
Received: from mail.bootlin.com (mail.bootlin.com [62.4.15.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 14C8A716
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 18:45:05 +0000 (UTC)
Date: Wed, 12 Sep 2018 20:45:03 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20180912184503.GJ2760@piout.net>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<8412864.7ztUKcXNNC@avalon>
	<CAKMK7uFAXoVG+nBX=Om9A7R9xPYa-hd0JrRX1RNKSNhxnL_VsA@mail.gmail.com>
	<2019489.6joTqyUi4Z@avalon>
	<CAKMK7uE535-7Vs9EAa2725XL2TX2ChJCN0Zb3YaMe=MarYJOyw@mail.gmail.com>
	<20180911124423.GM2494@piout.net>
	<CAKMK7uE55eEP8L74z7HMyPb2nVnK9=bBX8tUEqmsDYSqjO-CZg@mail.gmail.com>
	<20180911220047.GQ2494@piout.net> <87worr14z6.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87worr14z6.fsf@intel.com>
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

On 12/09/2018 11:42:53+0300, Jani Nikula wrote:
> On Wed, 12 Sep 2018, Alexandre Belloni <alexandre.belloni@bootlin.com> wrote:
> > Most of the drivers are developed by their maintainer or someone paid
> > by the vendor (which is basically the same because the maintainer is
> > actually getting paid to get his colleagues patches upstream).
> >
> > I also see that the review numbers hint at biased reviews for the big
> > drivers as they are not coming from outsiders.
> >
> > So what I see in DRM is exactly what you despis in other areas of the
> > kernel: mostly unreviewed maintainer self commits.
> 
> I'll only speak for drm/i915 here as one of its maintainers, and I'll
> steer clear of the preceding debate, but your conclusions don't hold
> water wrt drm/i915.
> 
> Sure, most of the contributions, both patches and review, come from paid
> Intel developers. It's a very busy driver. We pushed just under 8
> commits per day on the average in the v4.4..v4.18 range. For reference,
> that's 6.6% of all of drivers/. More than sound/, a bit less than fs/ or
> net/ top level directories, but in the same ballpark.
> 
> By our rules, *nobody* gets to push unreviewed patches, and we follow
> that religiously. The more complicated the patch, the more rigorous the
> review must be, involving domain experts or generally more sets of eyes.
> 

I hope you do realise that we have to take your word for it because
there is no way to actually verify that claim. However, I'm all for
believing you. I'm just claiming that we can't actually know.

> If we had to rely on outside reviews, either our rate of change would
> grind to a halt,

Exactly, so I guess you can understand that this is basically not
something that you can ask in any other subsystem that has more than a
few drivers. There is simply no way to get outside reviews on drivers.

> or we'd have to loosen our rules. Instead, we trust our
> maintainers and committers to have the integrity to follow our
> documented merge criteria. And bypassing the rules would be a fast lane
> to losing the maintainer/committer status.
> 
> Anyone contributing to drm/i915 will tell you there are no biased
> reviews. Some might say we are more gentle towards outside contributors
> than our own. I'm also pretty confident you won't find examples of
> unreviewed commits, let alone unreviewed maintainer self commits.
> 

Again, this is a matter of trusting the coworkers reviews and I'm not
saying that they are not happening, I'm just saying we can't know.

Anyway, you are the ones maintaining your own driver and this is good,
this is simply what any maintainer should do. I'm pretty convinced that
you are careful to not break your own driver because that is your best
interest. And it seems that you are doing a good job as it has been a
while that I had issues with i915 (I wouldn't have said so two years
ago).

But again, I'm not sure this is the great success story Daniel claims it
is. I'm just seeing a maintainer that couldn't keep up with the number
of patches in his subsystem and created subsubsystems. And this is fine
because the subsubsystem maintainers have huge incentives to stay around
(the main one being that they are actually getting paid to do it).

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
