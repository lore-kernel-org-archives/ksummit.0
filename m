Return-Path: <vinod.koul@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C74BF87A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 31 Jul 2016 17:40:26 +0000 (UTC)
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 6894217B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 31 Jul 2016 17:40:26 +0000 (UTC)
Date: Sun, 31 Jul 2016 23:17:58 +0530
From: Vinod Koul <vinod.koul@intel.com>
To: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <20160731174758.GP9681@localhost>
References: <5222c3bb-d6b7-0ccc-bf9e-becf5046a37a@kernel.org>
	<2331474.UchXKu7jRM@avalon> <579A54A6.5060303@metafoo.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <579A54A6.5060303@metafoo.de>
Cc: Zhang Rui <rui.zhang@intel.com>, Rob Herring <robh+dt@kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Sensors and similar - subsystem
 interactions, divisions, bindings etc.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Jul 28, 2016 at 08:53:26PM +0200, Lars-Peter Clausen wrote:

> So new hardware often tends to be general purpose and can be used in
> many different applications.
> 
> But our kernel frameworks are designed around application specific tasks.
> 
> * ALSA is for audio data capture/playback
> * V4L2 is for video data capture/playback
> * DRM is for video display
> * IIO is for sensor data capture/playback

Spot on. Even if you look at kernel source code we have directory based on
end usage..

Also these subsystems expose a user interface for sending/receiving data.
The interface is application specific. One can argue that designing a generic
data interface is kernel which can take care of high volume, bursty or
continuous data, then potentially we can unify these

> When you capture data over a particular interface there is a specific
> meaning associated to the data rather than the data just being data,
> which is how the hardware might see it.
> 
> On the kernel side we have started to address this by having generic
> frameworks like DMAengine. I've used the same DMA core with the same
> DMAengine driver exposed to userspace for all four different types
> listed above depending on the application.

Yes DMAengine framework is generic for application usage. We don't define
the purpose of DMA but we care about nature, memcpy, slave, interleaved...

You can use these for audio, video, RAID or anything else..

> This of course would be a very grand task and maybe we'll loose
> ourselves in endless discussions about the details and all the corner
> cases that need to be considered. But if we want to find a solution that
> keeps up with the current trend that the hardware landscape seems to be
> going in we might have no other choice. Otherwise I'd say it is
> inevitable that we see more and more hardware which has multiple
> drivers, each driver handling a different type of application.

Given that SoCs are becoming complex and HW folks are merging stuff, I
wont be surprised if we get a converged hardware which does multiple
jobs, so we would need these to be unified.

-- 
~Vinod
