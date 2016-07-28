Return-Path: <lars@metafoo.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BEE7983D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 20:12:38 +0000 (UTC)
Received: from www381.your-server.de (www381.your-server.de [78.46.137.84])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 153E6301
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 20:12:37 +0000 (UTC)
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Hans Verkuil <hverkuil@xs4all.nl>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<4826466.kMrAaT2rsn@avalon>
	<cf4ea315-fcbc-a7f5-758a-298cfac321e8@xs4all.nl>
	<2071960.gyaMIhrJi3@avalon>
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <579A6715.6050700@metafoo.de>
Date: Thu, 28 Jul 2016 22:12:05 +0200
MIME-Version: 1.0
In-Reply-To: <2071960.gyaMIhrJi3@avalon>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	"vegard.nossum@gmail.com" <vegard.nossum@gmail.com>,
	"rafael.j.wysocki" <rafael.j.wysocki@intel.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Valentin Rothberg <valentinrothberg@gmail.com>
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

On 07/28/2016 01:03 PM, Laurent Pinchart wrote:
[...]
>> Do we need to capture 100% of all the weird and wonderful dependencies? I
>> think (speaking for the media subsystem) that the vast majority of the
>> dependencies are pretty simple trees without cycles. Being able to capture
>> that would be a huge help. The remaining more complex devices could still
>> fall back on deferred probe, I'd say.
> 
> When dealing with a single type of resources dependency graphs are very rarely 
> cyclic. However, when merging multiple resource dependency graphs, cycles 
> become quite common.

I've brought this up in my presentation about DAPM (Dynamic Audio Power
Management). I'd like to make DAPM, which is currently only available as
part of the ASoC framework, more generic and export concepts that have
been pioneered there to the general kernel
(http://events.linuxfoundation.org/sites/events/files/slides/dapm.pdf#page=45).
DAPM was designed to able to handle these kinds of dependencies since
they are very common in audio systems. This is done by splitting the
power management process into two phases. First phase is to compute what
needs to be powered up based on a dependency graph. The dependencies are
not expressed between devices, but device subblocks, so called widgets
in DAPM terminology. E.g. if you have a clock chip with multiple clock
output each would get their own widget. Phase 2 in DAPM consists of the
actual power-up/power-down sequencing. This is done in a order that
avoids glitching and ensures all dependencies are powered-up before and
powered-down after the dependent.

This is different to classical power and resource management where you
have reference counted enable/disable callbacks, where only when the
callback is invoked the driver calculates which other resources need to
be enabled and then potentially invokes another callback. E.g. a clock
might need a regulator. The clockchip driver would call
regulator_enable() from it's clk_prepare() callback. And then the
regulator chip driver might enable other resources from its
regulator_enable() callback. This approach easily can lead to cyclic
dependencies that can newer be turned back off again. Whereas DAPM can
resolve this.

One issue with this approach is that you need a power-sequence scheduler
which sits above all devices. E.g. there is no master device that tells
another device it now needs to turn its resources on, but all devices
are equal in the graph and might be both resource provider and resource
consumer. If there is only one scheduler the graph would contain all
devices and be quite big and you'd run into lock contention issues if
operations are performed on different subgraphs at the same time. If you
have multiple schedulers how do you decide which device is managed by
which scheduler as dependencies might be added and removed at runtime.

Also this obviously does not address the probe order issues, but there
is potential to use the same graph structures.
