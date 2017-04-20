Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4B0E5BC7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Apr 2017 13:46:09 +0000 (UTC)
Received: from mail-io0-f195.google.com (mail-io0-f195.google.com
	[209.85.223.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A3D65243
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Apr 2017 13:46:08 +0000 (UTC)
Received: by mail-io0-f195.google.com with SMTP id d203so16651880iof.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Apr 2017 06:46:08 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAK8P3a1dOv2YNALgD+tr-C76wR_esP3FJmYZ7wi3Ee_-fzgpfQ@mail.gmail.com>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<CAK8P3a2F-C+Mfijbjb2CfDMvO2dgSDhNowx1NJ2=qgRdpDLk0g@mail.gmail.com>
	<CAKMK7uF8to7iTSK9YgM0+KGbsj3_iMRjVHHd7zVa5Xzc5ftOGQ@mail.gmail.com>
	<CAK8P3a1dOv2YNALgD+tr-C76wR_esP3FJmYZ7wi3Ee_-fzgpfQ@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 20 Apr 2017 15:46:06 +0200
Message-ID: <CAKMK7uHNDT4UBKCDH=RJs90+FW53nB0nQ2Ggc6p=T9QFU=kLPA@mail.gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
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

On Thu, Apr 20, 2017 at 1:30 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> On Thu, Apr 20, 2017 at 10:53 AM, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
>> On Wed, Apr 19, 2017 at 10:26 PM, Arnd Bergmann <arnd@arndb.de> wrote:
>> I think discussing arm-soc vs. driver subsystem flows would be good.
>> Not a personal gripe of mine, but since I seem to be volunteered to
>> rep drm overall a topic I have to bring in. We have plenty of cross
>> maintainer patch series and depencies in drm, and the usual way we
>> handle this is:
>> - get it reviewed by everyone
>> - then either get acks from the subsystems (when it's smaller patches,
>> or well separated from other stuff going on in that subsystem) to
>> merge it all through one tree (usually the one with the most patches
>> in the series)
>> - or create a topic branch and send around cross-subsystem pull requests.
>>
>> This works rather well, and we have a bunch of cross-subsystem
>> depencies we handle each month this way with trees outside of drm, not
>> including the coordination needs within drm among different drm trees.
>>
>> In arm-soc this seems to not happen, and instead your nice bisectable
>> patch series which implements an overall feature is split up into a
>> bunch of trees, which then get forwarded independently. That means the
>> bisect benefits are out, testing gets harder (either you have your own
>> integration tree, or try to test linux-next and suffer), and sometimes
>> even the final patches to enable something or switch drivers for a
>> platform need to be delayed by an entire release.
>
> Do you know of a specific example where this happened? We try
> to take a lot of care to ensure that each of the branches is bisectable,
> so it sounds like we (or our downstream developers) were missing
> something in the QA testing if this failed repeatedly.
>
> When I'm aware of a change that requires cross-tree coordination
> (e.g. a Kconfig symbol gets renamed, or a DT binding changes
> in an incompatible way), we usually try to come up with a way to
> do the change differently (e.g. add have multiple Kconfig symbols
> with the same meaning for a release or two, or find a way to
> make the binding backwards compatible after all), but we also
> frequently give Acks for merging stuff in arch/arm, or have a shared
> tree that gets merged through both a driver subsystem and one
> of our branches.

Not "broken bisecting" as in if you bisect you might hit a broken
configuration, but reduced usefulness for figuring out bugs. If a
bigger feature or change in driver that also comes with some
clk/irqchip/whatever changes, or an entire rewrite, then I've heard of
examples where the splitting across trees meant that your bisect would
end up in one of the merge commits (whichever is the last one that
adds the missing piece) instead of somewhere in the middle like if the
original patch series would have landed as linear history in a topic
branch.

Might just be good to chat a bit about when exactly a topic branch is
called for, and when exactly merging through each separate tree is
better. I get a bit the feeling that merging through separate trees is
done to make sure platforms use all the infrastructure correctly
(which is the topic below), but it seems like DT managed to get there
without merging things stricly only through a DT tree.

>> Related to this is that there's no single stop-shop for driver
>> submissions for the arm platform stuff, but it's all split up. Fairly
>> often that means at least one of the maintainers doesn't like your
>> face, is on vacation or leave, burried for other reasons, or at least
>> has slightly different ideas about what color the bikeshed needs to
>> be. That makes contributions for people who just want to get their
>> driver for a given platform in a pain.
>
> This is in a large part by design: we used to have a problem with
> dozens of platforms in arch/arm/mach-* doing the same things
> slightly differently, each of them being controlled only by a single
> platform maintainer. We have over time introduced many separate
> subsystems (irqchip, rtc, gpio, pinctrl, iommu, clk, timer, led, pci,
> cpufreq, cpuidle, pwm, dmaengine, phy, regulator, memory,
> nvmem, thermal, hwspinlock, mailbox, reset, and probably a few
> others), and moved code out of our responsibility into those
> subsystems that are maintained independently.
>
> The subsystem maintainers have a much better understanding
> of how things work in their domain across all the platforms, so
> we get better review than we had in the 2.6 days when this all
> fell upon a single architecture or platform maintainer. You still
> typically have to get new changes approved by both a platform
> maintainer (for your SoC) as well as the subsystem maintainer,
> and I consider that a good idea. The price for it however is that
>  anyone working on a single platform has to deal with a
> multitude of git trees, and things become harder at the point
>  where they interact, especially when you migrate a platform
> from old-style board files to devicetree.
>
> Fortunately these days, the vast majority of changes we deal
> with are purely additions of new drivers or features, so there
> are rarely any actual cross-tree dependencies or conflicts any
> more: The only things that we merge through arm-soc most
> of the time are defconfig additions, dts file changes and
> sometimes new Kconfig symbols for new platforms, and all
> of them can come in any order without causing regressions.

Just to clarify: I'm very impressed with all the infrastructure the
arm-soc folks manged to pull off, and I understand why you have them
all and how it works. But having bigger groups for bus factor reasons
and making it easier for totally new contributions to not get
completely lost and leave in frustration might be good. DRM is also
fairly big nowadays, with piles of helpers and libraries for different
things (not quite at the level of arm-soc yet), but we try to give new
driver submissions one person who handles the entire thing, and pulls
in acks from specific experts as needed. Still needs some working out
and maybe formalizing the process more (atm it's mostly coordination
over irc), but with group maintiners for all areas and load balancing
between them that seems to work fairly well. While still making sure
that new drivers use all the latest helpers and best practices (we add
them constantly, so almost always something that could be simplified
by using a new thing just merge 1-2 months ago). And sharing knowledge
about all these things amongst maintainers and reviewers.

And yeah, rewriting an entire platform from the old to the new model
is a different beast on its own, this here is just from the pov of
submitting individual drivers.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
