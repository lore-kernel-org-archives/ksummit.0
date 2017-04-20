Return-Path: <arndbergmann@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2FA88B47
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Apr 2017 11:31:00 +0000 (UTC)
Received: from mail-oi0-f65.google.com (mail-oi0-f65.google.com
	[209.85.218.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E23A48D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Apr 2017 11:30:58 +0000 (UTC)
Received: by mail-oi0-f65.google.com with SMTP id a3so3227681oii.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Apr 2017 04:30:58 -0700 (PDT)
MIME-Version: 1.0
Sender: arndbergmann@gmail.com
In-Reply-To: <CAKMK7uF8to7iTSK9YgM0+KGbsj3_iMRjVHHd7zVa5Xzc5ftOGQ@mail.gmail.com>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<CAK8P3a2F-C+Mfijbjb2CfDMvO2dgSDhNowx1NJ2=qgRdpDLk0g@mail.gmail.com>
	<CAKMK7uF8to7iTSK9YgM0+KGbsj3_iMRjVHHd7zVa5Xzc5ftOGQ@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 20 Apr 2017 13:30:57 +0200
Message-ID: <CAK8P3a1dOv2YNALgD+tr-C76wR_esP3FJmYZ7wi3Ee_-fzgpfQ@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset=UTF-8
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	David Miller <davem@davemloft.net>, Doug Ledford <dledford@redhat.com>,
	Ingo Molnar <mingo@kernel.org>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Apr 20, 2017 at 10:53 AM, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> On Wed, Apr 19, 2017 at 10:26 PM, Arnd Bergmann <arnd@arndb.de> wrote:

> I think discussing arm-soc vs. driver subsystem flows would be good.
> Not a personal gripe of mine, but since I seem to be volunteered to
> rep drm overall a topic I have to bring in. We have plenty of cross
> maintainer patch series and depencies in drm, and the usual way we
> handle this is:
> - get it reviewed by everyone
> - then either get acks from the subsystems (when it's smaller patches,
> or well separated from other stuff going on in that subsystem) to
> merge it all through one tree (usually the one with the most patches
> in the series)
> - or create a topic branch and send around cross-subsystem pull requests.
>
> This works rather well, and we have a bunch of cross-subsystem
> depencies we handle each month this way with trees outside of drm, not
> including the coordination needs within drm among different drm trees.
>
> In arm-soc this seems to not happen, and instead your nice bisectable
> patch series which implements an overall feature is split up into a
> bunch of trees, which then get forwarded independently. That means the
> bisect benefits are out, testing gets harder (either you have your own
> integration tree, or try to test linux-next and suffer), and sometimes
> even the final patches to enable something or switch drivers for a
> platform need to be delayed by an entire release.

Do you know of a specific example where this happened? We try
to take a lot of care to ensure that each of the branches is bisectable,
so it sounds like we (or our downstream developers) were missing
something in the QA testing if this failed repeatedly.

When I'm aware of a change that requires cross-tree coordination
(e.g. a Kconfig symbol gets renamed, or a DT binding changes
in an incompatible way), we usually try to come up with a way to
do the change differently (e.g. add have multiple Kconfig symbols
with the same meaning for a release or two, or find a way to
make the binding backwards compatible after all), but we also
frequently give Acks for merging stuff in arch/arm, or have a shared
tree that gets merged through both a driver subsystem and one
of our branches.

> Related to this is that there's no single stop-shop for driver
> submissions for the arm platform stuff, but it's all split up. Fairly
> often that means at least one of the maintainers doesn't like your
> face, is on vacation or leave, burried for other reasons, or at least
> has slightly different ideas about what color the bikeshed needs to
> be. That makes contributions for people who just want to get their
> driver for a given platform in a pain.

This is in a large part by design: we used to have a problem with
dozens of platforms in arch/arm/mach-* doing the same things
slightly differently, each of them being controlled only by a single
platform maintainer. We have over time introduced many separate
subsystems (irqchip, rtc, gpio, pinctrl, iommu, clk, timer, led, pci,
cpufreq, cpuidle, pwm, dmaengine, phy, regulator, memory,
nvmem, thermal, hwspinlock, mailbox, reset, and probably a few
others), and moved code out of our responsibility into those
subsystems that are maintained independently.

The subsystem maintainers have a much better understanding
of how things work in their domain across all the platforms, so
we get better review than we had in the 2.6 days when this all
fell upon a single architecture or platform maintainer. You still
typically have to get new changes approved by both a platform
maintainer (for your SoC) as well as the subsystem maintainer,
and I consider that a good idea. The price for it however is that
 anyone working on a single platform has to deal with a
multitude of git trees, and things become harder at the point
 where they interact, especially when you migrate a platform
from old-style board files to devicetree.

Fortunately these days, the vast majority of changes we deal
with are purely additions of new drivers or features, so there
are rarely any actual cross-tree dependencies or conflicts any
more: The only things that we merge through arm-soc most
of the time are defconfig additions, dts file changes and
sometimes new Kconfig symbols for new platforms, and all
of them can come in any order without causing regressions.

      Arnd
