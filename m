Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9F2B9B5A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Apr 2017 08:53:56 +0000 (UTC)
Received: from mail-io0-f194.google.com (mail-io0-f194.google.com
	[209.85.223.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DDC42143
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Apr 2017 08:53:55 +0000 (UTC)
Received: by mail-io0-f194.google.com with SMTP id k87so13806400ioi.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Apr 2017 01:53:55 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAK8P3a2F-C+Mfijbjb2CfDMvO2dgSDhNowx1NJ2=qgRdpDLk0g@mail.gmail.com>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<CAK8P3a2F-C+Mfijbjb2CfDMvO2dgSDhNowx1NJ2=qgRdpDLk0g@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 20 Apr 2017 10:53:54 +0200
Message-ID: <CAKMK7uF8to7iTSK9YgM0+KGbsj3_iMRjVHHd7zVa5Xzc5ftOGQ@mail.gmail.com>
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

On Wed, Apr 19, 2017 at 10:26 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> On Tue, Apr 18, 2017 at 8:59 PM, Linus Torvalds
> <torvalds@linux-foundation.org> wrote:
>> What I _would_ like to see is those top maintainers suggest
>> "submaintainer" names. Particularly Davem, since he doesn't tend to
>> want to come to the kernel summit, and being at the top of the list
>> that's a kind of big gaping hole. I guess we haven't had all that many
>> _problems_ within networking, but if we talk maintainership issues,
>> it's certainly a bit odd if it's entirely lacking. We have both core
>> networking and network drivers that both fall under "davem" as far as
>> my pull statistics go.
>
> For ARM, the work also tends to be fairly spread out across many
> people, with few of us being overly important. [I think that while Olof and
> I had similar shares of work in pulling in patches, I ended up in one of
> the top spots because I happened to send more pull requests during
> the last year, and I also did quite a bit of kernel stuff outside of
> arch/arm.]
>
> So while there is no need for having lots of ARM platform maintainers,
> I would like to see some of the people that I interact with that also
> work with a larger number of other maintainers:
>
> - One of the device tree maintainers (Rob Herring, Frank Rowand,
>   Mark Rutland), they inevitably deal with almost all device driver
>   writers at some point
>
> - One of the CLK subsystem maintainers (Michael Turquette,
>   Stephen Boyd), they also interact with a large number of
>   subsystem and platform maintainers, and we have had some
>   disagreements particularly when dealing with three subsystems
>   (clk, arm-soc and a device driver) in one patch series.
>
> - One or two ARM platform maintainers, ideally one that also
>   maintains another kernel subsystem. The platforms with  the most
>   changes are usually sunxi (Maxime Ripard), OMAP (Tony
>   Lindgren), Renesas (Simon Horman), Broadcom (Florian
>   Fainelli), Qualcomm (Andy Gross) and Freescale (Shawn Guo).
>
> - One or two of the ARM32/ARM64 architecture people: Russell
>   King, Catalin Marinas, Will Deacon.

I think discussing arm-soc vs. driver subsystem flows would be good.
Not a personal gripe of mine, but since I seem to be volunteered to
rep drm overall a topic I have to bring in. We have plenty of cross
maintainer patch series and depencies in drm, and the usual way we
handle this is:
- get it reviewed by everyone
- then either get acks from the subsystems (when it's smaller patches,
or well separated from other stuff going on in that subsystem) to
merge it all through one tree (usually the one with the most patches
in the series)
- or create a topic branch and send around cross-subsystem pull requests.

This works rather well, and we have a bunch of cross-subsystem
depencies we handle each month this way with trees outside of drm, not
including the coordination needs within drm among different drm trees.

In arm-soc this seems to not happen, and instead your nice bisectable
patch series which implements an overall feature is split up into a
bunch of trees, which then get forwarded independently. That means the
bisect benefits are out, testing gets harder (either you have your own
integration tree, or try to test linux-next and suffer), and sometimes
even the final patches to enable something or switch drivers for a
platform need to be delayed by an entire release.

Related to this is that there's no single stop-shop for driver
submissions for the arm platform stuff, but it's all split up. Fairly
often that means at least one of the maintainers doesn't like your
face, is on vacation or leave, burried for other reasons, or at least
has slightly different ideas about what color the bikeshed needs to
be. That makes contributions for people who just want to get their
driver for a given platform in a pain.

For non-arm-soc ecosystem drivers things seem a lot more relaxed and
efficient and sensible.

The notable thing is that it's _not_ DT (at least mostly), because Rob
Herring is doing an awesome job getting gpu related DT patches
reviewed and generally acks all of them for merging throught the drm
trees. But even for DT I'm concerned about the bus factor of 1 we
defacto have for gpu drivers.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
