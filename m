Return-Path: <alexandre.belloni@bootlin.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0D7801447
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 22:01:01 +0000 (UTC)
Received: from mail.bootlin.com (mail.bootlin.com [62.4.15.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id BA91313A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 22:00:59 +0000 (UTC)
Date: Wed, 12 Sep 2018 00:00:47 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20180911220047.GQ2494@piout.net>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<8412864.7ztUKcXNNC@avalon>
	<CAKMK7uFAXoVG+nBX=Om9A7R9xPYa-hd0JrRX1RNKSNhxnL_VsA@mail.gmail.com>
	<2019489.6joTqyUi4Z@avalon>
	<CAKMK7uE535-7Vs9EAa2725XL2TX2ChJCN0Zb3YaMe=MarYJOyw@mail.gmail.com>
	<20180911124423.GM2494@piout.net>
	<CAKMK7uE55eEP8L74z7HMyPb2nVnK9=bBX8tUEqmsDYSqjO-CZg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAKMK7uE55eEP8L74z7HMyPb2nVnK9=bBX8tUEqmsDYSqjO-CZg@mail.gmail.com>
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

On 11/09/2018 17:02:31+0200, Daniel Vetter wrote:
> On Tue, Sep 11, 2018 at 2:44 PM, Alexandre Belloni
> <alexandre.belloni@bootlin.com> wrote:
> > On 11/09/2018 00:44:57+0200, Daniel Vetter wrote:
> >> gitlab (or well anything with a concept like pull requests) makes the
> >> 90% so much easier. And it doesn't take more work for contributors if
> >> you set things up right - it's just a git push instead of a git
> >> send-email. At least after initial setup is done.
> >>
> >> And at least in a corporate environment (and I kinda have to care
> >> about that) gitlab wins on the initial setup front hands down against
> >> email. gitlab only needs https (even for git push/pull), and
> >> coproporate firewalls are pretty ok with https. They are not ok with
> >> smtp, like at all. And the amount of time we spend debugging random
> >> git send-email setup issues is epic.
> >>
> >
> > I would like to chime in and remind you that there are many subsystems
> > where you get a lot of drive-by contribution from random people. I'm
> > obviously thinking about rtc but I think this would also apply to codec,
> > IIO, power/supply, hwmon... In that case any initial setup would be
> > prohibitive.
> >
> > I feel like these subsystems are often left to the side when I read
> > threads like that talking about getting every patches reviewed, doing
> > more CI, etc...
> >
> > So I need to emphasise that there are subsystem where people are not
> > backed by a company to contribute or review. What I often see is someone
> > having $random hardware and submitting a patch adding support for it.
> > That developer will definitively not review other patches because he has
> > no particular interest in them. He also probably doesn't have the
> > experience to do a review.
> >
> > It is quite different from having a few big companies with huge teams
> > each maintaining a single driver in a subsystem... You simply can't have
> > the same expectations.
> 
> Yes drm has drm/i915 and drm/amdgpu. But reducing the graphics folks
> to these two big drivers with huge teams backing them, would be about
> the same as stating that linux only runs on x86 and arm. There's more.
> 
> And we do have quite serious problems with tiny boutique trees and
> drive-by contributors who immediately disappear. We're still trying to
> do our best to cope with that, which inolves lots of pain, and the
> occasional success.
> 
> Here's a bunch of things we've done, all with at least one success
> story within drm:
> 
> - Merge enough trees together until you have enough people capable to
> doing maintainer duties for a triumvirate. That allows you to rotate,
> arm-soc style. Rule of thumb is anything below 100 patches per release
> cycle is probably too small, but you might need a lot more than that.
> 3 maintainers seems to be ideal.
> 

I'm not sure what subsystem you would want to merge...

> - Intentionally abandon stuff. Sometimes no one else bothers to work
> because the current maintainer is all over the place, does everything,
> and suffocates any newbie's attempt to help out. Once something is
> abandoned long enough it's either known to be dead, and not worth to
> spend much time further maintaining. Or someone steps into the
> intentionally created void and helps out.

Well, that is exactly what I did, the RTC subsystem was left
unmaintained until I took the maintainership.

> - Make sure you have the smoothest ramp up from all stages of
> contributing. bug report, first patch, oddball patch, first reviews,
> then commit rights (first only for their own stuff, then maybe for
> others), and so on. Any slightly elevated jump will mean people walk
> away.
> 

And that is exactly what I want you to understand. There are still many
subsystem that don't spur enough interest to get people to work on it.
They submit a driver, it gets merged, it works and that's it.

Or maybe the subsystem is mostly complete and doesn't need more work
(how hard is it to give the date and time ?)

> - Talk about the maintainer. If no one wants to help out, but it's a
> generally active area, there's a problem. Fairly often it's a human
> problem, and the maintainer is blind to their own short-comings. This
> is very tricky, and requires enormous amounts of empathy and time, but
> can be rectified.
> 
> Looking at drivers/rtc over the past 2-3 years it seems like a
> decently active subsystem. Probably on the small side of things, but
> not catastrophically so. But looking at contributor stats the picture
> is totally different:
> 
>    241  Alexandre Belloni
>     28  Linus Torvalds
>     27  Arnd Bergmann
>     25  Javier Martinez Canillas
>     20  Uwe Kleine-König
> 
> That kind of skewed contribution statistics is indeed not sustainable,
> and indicates some serious problem imo. What exactly goes wrong, and
> how to best fix it I can't tell without more information though. From
> my experience in drm, where we also have some areas with highly skewed
> contribution statistics, it could be the maintainer driving people
> away, ensuring that there's only one-off contributions. Usually
> unkowningly.
> 

But your conclusion is really biased to only see what you want to see.
An RTC driver is simple enough to fit in a single patch and never need
any fix afterwards. And again, the typical contributor will submit only
one or two patches adding the driver he is interested in an move away.
Unlike DRM, there is a very small chance to get back to the driver to
fix issues afterwards. Anyone that got more than 1 patch in rtc already
contributed a lot.

I don't think there is anything to fix really, that is just the reality.
The driver is submitted, it works and continues to work, I'm not sure
what is wrong there.

I know that I drove someone away and I'm pretty sure it should be
handled better but honestly, it was a huge patch series mostly rewriting
one driver without adding features.

And you, probably not knowingly missed some pretty important
contributions from people that added features in the rtc core but that
usually adds up to 4-8 patches. Those were features that I was planning
to implement so this would qualify as success stories.

>From all the patches you see from me, many are cleaning up rtc drivers
after a long period of time without any RTC maintainer. I also own and
test most of the RTCs I'm working on.

Here are the stats for the RTC core from 4.4 to 4.18:
$ git shortlog --no-merges -s -n v4.4..v4.18 class.c hctosys.c interface.c nvmem.c systohc.c rtc-dev.c  rtc-proc.c rtc-sysfs.c
    19  Alexandre Belloni
     4  Baolin Wang
     3  Uwe Kleine-König
     2  Joshua Clayton
     2  LABBE Corentin
     2  Thomas Gleixner

Anyway, lets have a look at some numbers from DRM from 4.4 to 4.18:

$ git shortlog --no-merges -e -s -n v4.4..v4.18 drivers/gpu/drm/drm_*
   304  Daniel Vetter <daniel.vetter@ffwll.ch>
   138  Ville Syrjälä <ville.syrjala@linux.intel.com>
   113  Chris Wilson <chris@chris-wilson.co.uk>
    94  Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
    44  Noralf Trønnes <noralf@tronnes.org>

Ok, so the core is still dominated by you. Not as much as RTC but in the
same order.

Lets have a look at DRM drivers (I'm taking a subset I hope is
representative):

             authored by     reviewed  by
driver       match others    match others  match on
amd          5961  622       6656  318     amd.com
atmel-hlcdc  18    68        3     41      maintainers
etnaviv      173   72        32    55      maintainers
exynos       225   173       41    80      samsung.com
hisilicon    11    75        12    66      maintainers
i915         6600  605       6029  831     intel.com + Chris
imx          35    125       1     50      maintainers
msm          380   176       31    92      maintainers + codeaurora
nouveau      938   362       21    193     maintainers + nvidia.com
omapdrm      278   282       56    188     ti.com
stm          29    16        18    18      maintainers
sun4i        154   120       53    50      maintainers
tegra        134   118       11    85      nvidia.com

Over the same timeframe, rtc has:
rtc          228   469       0     80      maintainers

This is how I interpret that:

Most of the drivers are developed by their maintainer or someone paid
by the vendor (which is basically the same because the maintainer is
actually getting paid to get his colleagues patches upstream).

I also see that the review numbers hint at biased reviews for the big
drivers as they are not coming from outsiders.

So what I see in DRM is exactly what you despis in other areas of the
kernel: mostly unreviewed maintainer self commits.

Obviously, for the smaller drivers, the numbers are not as critical
because they mostly see subsystem wide changes/refactoring.

So I still feel like RTC is at least as healthy as DRM because as you
can see, most of the patches are not coming from a maintainer (i.e. not
me).

Regards,

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
