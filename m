Return-Path: <tglx@linutronix.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1F0D2CBE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Sep 2018 20:05:54 +0000 (UTC)
Received: from Galois.linutronix.de (Galois.linutronix.de [146.0.238.70])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6E97E7EB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Sep 2018 20:05:53 +0000 (UTC)
Date: Thu, 13 Sep 2018 22:05:46 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Jani Nikula <jani.nikula@intel.com>
In-Reply-To: <87a7olzd7s.fsf@intel.com>
Message-ID: <alpine.DEB.2.21.1809132136350.1473@nanos.tec.linutronix.de>
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
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
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

On Thu, 13 Sep 2018, Jani Nikula wrote:
> On Thu, 13 Sep 2018, Alexandre Belloni <alexandre.belloni@bootlin.com> wrote:
> > On 13/09/2018 14:08:11+0200, Maxime Ripard wrote:
> >> All the knowledge they built, experience they got (including at
> >> reviewing) is gone, possibly forever, and there's no one to pick up
> >> the subsystem, and the code is left to rot.
> >
> > And this is almost the same for the DRM core where Daniel is by far the
> > top contributor.
> 
> Except he's no longer a maintainer in either DRM or i915. Checking the
> stats against current MAINTAINERS will paint you a different picture.
> 
> And that brings us to another important point: Group maintainership
> allows for easier onboarding of new maintainers, and easier retirement
> of old ones. We've changed several maintainers for both the drm-misc
> tree and i915 since we've switched to group maintainership, and there
> hasn't been noticeable bumps in the road. Mostly just business as
> usual. Being a maintainer doesn't have to be for life, and you don't
> have to burn out and rage quit one fine day and leave everything in
> ruins behind you as you go.
> 
> I'm not saying one size fits all, and I'm not saying it's easy to find
> more maintainers. But it's certainly much *much* easier to find a new
> co-maintainer to a team of two or three than a new solo maintainer.

You are sounding like DRM invented group maintainership and needs to go
advertising it now as the best invention since sliced bread.

It's been in practice since 2007 when the tip tree started with 3
maintainers. It was then adopted by ARM-SoC and Linus recommended it as a
good model way before DRM went that road.

We all know that group maintainership is a good thing, but we also know
that it's not working for all subsystems and that it's not always easy to
find matching co-maintainers. Most maintainers, if not all, would be happy
to have a competent, trusted and interested co-maintainer. So it's not that
they need to be educated on that.

Group maintainership is not the Panacea. So please stop the prayer wheel
and come up with solutions which address identifed indivudual problems. Not
having group maintainership is for some subsystems the least of their
worries. And as a member of the first official maintainer group in the
kernel I can assure you that group maintainership is not making all other
and potentially more dangerous problems magically go away.

Thanks,

	tglx
