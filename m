Return-Path: <airlied@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CC020ECB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 19:52:27 +0000 (UTC)
Received: from mail-qt0-f194.google.com (mail-qt0-f194.google.com
	[209.85.216.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5F7767EA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 19:52:27 +0000 (UTC)
Received: by mail-qt0-f194.google.com with SMTP id t39-v6so3136477qtc.8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 12:52:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<8412864.7ztUKcXNNC@avalon>
	<CAKMK7uFAXoVG+nBX=Om9A7R9xPYa-hd0JrRX1RNKSNhxnL_VsA@mail.gmail.com>
	<2019489.6joTqyUi4Z@avalon>
	<CAKMK7uE535-7Vs9EAa2725XL2TX2ChJCN0Zb3YaMe=MarYJOyw@mail.gmail.com>
	<20180911124423.GM2494@piout.net>
	<CAKMK7uE55eEP8L74z7HMyPb2nVnK9=bBX8tUEqmsDYSqjO-CZg@mail.gmail.com>
	<20180911220047.GQ2494@piout.net> <87worr14z6.fsf@intel.com>
	<20180912184503.GJ2760@piout.net>
In-Reply-To: <20180912184503.GJ2760@piout.net>
From: Dave Airlie <airlied@gmail.com>
Date: Thu, 13 Sep 2018 05:52:12 +1000
Message-ID: <CAPM=9tys5fKiEo3tnp8AS=TE9THHsT7Re31yjanRPA2rZ9czpg@mail.gmail.com>
To: alexandre.belloni@bootlin.com
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

On Thu, 13 Sep 2018 at 04:46, Alexandre Belloni
<alexandre.belloni@bootlin.com> wrote:
>
> On 12/09/2018 11:42:53+0300, Jani Nikula wrote:
> > On Wed, 12 Sep 2018, Alexandre Belloni <alexandre.belloni@bootlin.com> wrote:
> > > Most of the drivers are developed by their maintainer or someone paid
> > > by the vendor (which is basically the same because the maintainer is
> > > actually getting paid to get his colleagues patches upstream).
> > >
> > > I also see that the review numbers hint at biased reviews for the big
> > > drivers as they are not coming from outsiders.
> > >
> > > So what I see in DRM is exactly what you despis in other areas of the
> > > kernel: mostly unreviewed maintainer self commits.
> >
> > I'll only speak for drm/i915 here as one of its maintainers, and I'll
> > steer clear of the preceding debate, but your conclusions don't hold
> > water wrt drm/i915.
> >
> > Sure, most of the contributions, both patches and review, come from paid
> > Intel developers. It's a very busy driver. We pushed just under 8
> > commits per day on the average in the v4.4..v4.18 range. For reference,
> > that's 6.6% of all of drivers/. More than sound/, a bit less than fs/ or
> > net/ top level directories, but in the same ballpark.
> >
> > By our rules, *nobody* gets to push unreviewed patches, and we follow
> > that religiously. The more complicated the patch, the more rigorous the
> > review must be, involving domain experts or generally more sets of eyes.
> >
>
> I hope you do realise that we have to take your word for it because
> there is no way to actually verify that claim. However, I'm all for
> believing you. I'm just claiming that we can't actually know.
>

All the i915 review is done in public on the intel-gfx mailing list,
I've insisted that AMD do the same on their amd-gfx list. I also do
some spot checks that nothing is sneaking past and that review is more
than just rubber stamping at least where it matters.

So yes you can know.

Dave.
