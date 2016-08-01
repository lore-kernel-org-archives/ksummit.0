Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 73AF891A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 13:15:56 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 033DB8E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 13:15:55 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Lars-Peter Clausen <lars@metafoo.de>
Date: Mon, 01 Aug 2016 16:15:53 +0300
Message-ID: <1511576.K1uYvSOQVr@avalon>
In-Reply-To: <579A6715.6050700@metafoo.de>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<2071960.gyaMIhrJi3@avalon> <579A6715.6050700@metafoo.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	"vegard.nossum@gmail.com" <vegard.nossum@gmail.com>,
	"rafael.j.wysocki" <rafael.j.wysocki@intel.com>,
	Valentin Rothberg <valentinrothberg@gmail.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Addressing complex dependencies
	and semantics (v2)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Lars,

On Thursday 28 Jul 2016 22:12:05 Lars-Peter Clausen wrote:
> On 07/28/2016 01:03 PM, Laurent Pinchart wrote:
> [...]
> 
> >> Do we need to capture 100% of all the weird and wonderful dependencies? I
> >> think (speaking for the media subsystem) that the vast majority of the
> >> dependencies are pretty simple trees without cycles. Being able to
> >> capture that would be a huge help. The remaining more complex devices
> >> could still fall back on deferred probe, I'd say.
> > 
> > When dealing with a single type of resources dependency graphs are very
> > rarely cyclic. However, when merging multiple resource dependency graphs,
> > cycles become quite common.
> 
> I've brought this up in my presentation about DAPM (Dynamic Audio Power
> Management). I'd like to make DAPM, which is currently only available as
> part of the ASoC framework, more generic and export concepts that have
> been pioneered there to the general kernel
> (http://events.linuxfoundation.org/sites/events/files/slides/dapm.pdf#page=4
> 5). DAPM was designed to able to handle these kinds of dependencies since
> they are very common in audio systems. This is done by splitting the power
> management process into two phases. First phase is to compute what needs to
> be powered up based on a dependency graph. The dependencies are not
> expressed between devices, but device subblocks, so called widgets in DAPM
> terminology. E.g. if you have a clock chip with multiple clock output each
> would get their own widget. Phase 2 in DAPM consists of the actual
> power-up/power-down sequencing. This is done in a order that avoids
> glitching and ensures all dependencies are powered-up before and
> powered-down after the dependent.
> 
> This is different to classical power and resource management where you
> have reference counted enable/disable callbacks, where only when the
> callback is invoked the driver calculates which other resources need to
> be enabled and then potentially invokes another callback. E.g. a clock
> might need a regulator. The clockchip driver would call
> regulator_enable() from it's clk_prepare() callback. And then the
> regulator chip driver might enable other resources from its
> regulator_enable() callback. This approach easily can lead to cyclic
> dependencies that can newer be turned back off again. Whereas DAPM can
> resolve this.
> 
> One issue with this approach is that you need a power-sequence scheduler
> which sits above all devices. E.g. there is no master device that tells
> another device it now needs to turn its resources on, but all devices
> are equal in the graph and might be both resource provider and resource
> consumer. If there is only one scheduler the graph would contain all
> devices and be quite big and you'd run into lock contention issues if
> operations are performed on different subgraphs at the same time.

This is a problem I expect us to run into with the Media Controller framework 
due to both the tendency of graphs to get larger in recent devices, and the 
(currently unaddressed) need to update graphs dynamically, possibly from 
atomic contexts.

> If you have multiple schedulers how do you decide which device is managed by
> which scheduler as dependencies might be added and removed at runtime.
> 
> Also this obviously does not address the probe order issues, but there
> is potential to use the same graph structures.

-- 
Regards,

Laurent Pinchart
