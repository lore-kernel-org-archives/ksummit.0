Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A8DB683D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 11:47:25 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 30E6512D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 11:47:25 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Date: Mon, 01 Aug 2016 14:47:24 +0300
Message-ID: <9139208.VtZrK1K2Lh@avalon>
In-Reply-To: <a1861cef-fba8-82cc-b64e-29c0c7ae5483@xs4all.nl>
References: <5222c3bb-d6b7-0ccc-bf9e-becf5046a37a@kernel.org>
	<1509685.ufIZn1R9J2@avalon>
	<a1861cef-fba8-82cc-b64e-29c0c7ae5483@xs4all.nl>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
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

Hi Hans,

On Friday 29 Jul 2016 09:28:06 Hans Verkuil wrote:
> On 07/28/2016 06:42 PM, Laurent Pinchart wrote:
> > On Thursday 28 Jul 2016 08:58:46 Mauro Carvalho Chehab wrote:
> >> Em Wed, 20 Jul 2016 22:18:11 +0100 Jonathan Cameron escreveu:
> >>> Hi All,
> >>> 
> >>> This topic would be around the way the various subsystems interact, in
> >>> the rough area of 'sensors' (I haven't yet had much of an issue with
> >>> subsystem crossing with output devices but maybe that's just over the
> >>> next hill!)
> >> 
> >> Yeah, there is a gray area here as devices become more complex.
> >> So, I'm interested on such topic.
> >> 
> >>> Scope may well be wider but includes:
> >>> * input (some of it)
> >>> * hwmon
> >>> * iio
> >>> * comedi(?)
> >>> * thermal
> >>> * power/battery
> >>> * gpio - the blur between gpios and beaglescope / PLC type I/O.
> >>> * v4l - when does a device jump from being a multi pixel thermopile
> >>> to a thermal camera? Smart fingerprint scanners etc.  Gesture
> >>> recognition sensors (effectively 9ish pixel cameras)
> >> 
> >> For devices that provide images somehow, I'd say that the best would be
> >> to implement them as via the V4L2 API.
> > 
> > This requires defining what an image is. Furthermore, we very low image
> > resolution devices, we will need to deal with high frame rates (1k-10k is
> > a range we need to consider). The V4L2 API will likely show performance
> > issues.
>
> The main problems there are the limit to the number of buffers (32) in v4l2
> and that the number of qbuf/dqbuf ioctls is large for these high
> framerates. You would probably want to introduce mqbuf/mdqbuf ioctls to
> queue/dequeue multiple buffers. The core internals of v4l2 (vb2) are all
> pretty low overhead.

Or, just brainstorming, using some kind of ring-buffer based API that doesn't 
require context switches between userspace and kernelspace. That could also be 
somehow useful for larger images, as low-latency video streaming could benefit 
from the ability to start encoding the image before it's fully captured (or 
the other way around, we could start consuming it before it's fully decoded).

> >> We'll likely need to discuss it case by case, specially for early cross-
> >> subsystem drivers, though, as it is not trivial to identify the subsystem
> >> boundaries, and sometimes multiple APIs from different subsystems is
> >> needed. Also, it is not clear where such drivers would fit at the Kernel
> >> tree.
> >> 
> >> One interesting case is an input device driver with multi-finger
> >> support (drivers/input/touchscreen/sur40.c). I suspect we'll have
> >> more cases like that over time.
> >> 
> >>> * Lots of random things we haven't seen yet.

-- 
Regards,

Laurent Pinchart
