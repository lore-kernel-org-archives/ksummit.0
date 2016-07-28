Return-Path: <lars@metafoo.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1234B8D7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 18:54:01 +0000 (UTC)
Received: from www381.your-server.de (www381.your-server.de [78.46.137.84])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 44A6F2BB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 18:53:59 +0000 (UTC)
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	ksummit-discuss@lists.linuxfoundation.org
References: <5222c3bb-d6b7-0ccc-bf9e-becf5046a37a@kernel.org>
	<2331474.UchXKu7jRM@avalon>
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <579A54A6.5060303@metafoo.de>
Date: Thu, 28 Jul 2016 20:53:26 +0200
MIME-Version: 1.0
In-Reply-To: <2331474.UchXKu7jRM@avalon>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Cc: Zhang Rui <rui.zhang@intel.com>, Rob Herring <robh+dt@kernel.org>
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

On 07/28/2016 06:39 PM, Laurent Pinchart wrote:
[...]
>> I think we have only a small amount of fuzz around the v4l boundary,
>> but wanted to leave the door open if anyone wants to discuss that
>> one further as it's come up a few times over recent years.
> 
> Don't forget to take system integration into account. If I given you a high-
> speed ADC you will not think about V4L2 as your subsystem of choice. If the 
> system designer has connected that ADC to a CPLD that generates fake 
> horizontal and vertical sync signals, and connected the output to the camera 
> interface of the SoC, you will be left with no choice but use the V4L2 API. 
> That's largely a userspace issue in this case, but it implies that V4L2 need 
> to define an "image format" for the ADC data.

I think this hits the core of this discussion. Todays hardware is
getting more and more generic. It is a lot more economical to produce a
single general purpose high-volume device than a handful of low or
medium volume specialized devices. Even if the raw production cost of
the general purpose part will be higher (since it contains more logic)
the overall per unit price will be lower since the per part contribution
of the one-time design cost is lower in a high volume run.

So new hardware often tends to be general purpose and can be used in
many different applications.

But our kernel frameworks are designed around application specific tasks.

* ALSA is for audio data capture/playback
* V4L2 is for video data capture/playback
* DRM is for video display
* IIO is for sensor data capture/playback

When you capture data over a particular interface there is a specific
meaning associated to the data rather than the data just being data,
which is how the hardware might see it.

On the kernel side we have started to address this by having generic
frameworks like DMAengine. I've used the same DMA core with the same
DMAengine driver exposed to userspace for all four different types
listed above depending on the application.

This works as long as you know that your hardware is generic and you
design the driver to be generic. But it breaks if your hardware has a
primary function that is application specific.

E.g. a CSI-2 receiver will most likely receive video data, so we write a
V4L2 driver for it. A I2S receiver will most likely receive audio data,
so we write a ALSA driver for it. But now somebody might decide to hook
up a gyroscope to any of these interfaces because that might be the best
way to feed data into the particular SoC used in that system. And than
things start to fall apart.

And this is not just hypothetical I've seen questions how to make this
work repeatedly. And I also expect that in a time constraint environment
people will go ahead with a custom solution where they capture audio
data through V4L2 and just ignore all data type hints V4L2 provides and
re-interprets the data since their specialized application knows what
the data layout looks like.

A similar issue is that there are quite a few pieces of hardware that
are multi-use. E.g. general purpose serial data cores that support SPI,
I2S, and similar. At the moment we have to write two different drivers
for them using compatible strings to decide which function they should have.

So going forward we might have to address this by creating a more
generic interface that allows us to exchange data between a peripheral
and a application without assigning any kind of meaning to the data
itself. And then have that meaning provided through side channels. E.g.
a V4L2 device could say this over there is my data capture device and
the data layout is the following. Similar for the other frameworks that
allow capture/playback.

With vb2 (former V4L2 buffer handling code) now being independent from
the V4L2 framework this might be a prime candidate as a starting point.
I've been meaning to re-write the IIO DMA buffer code on top of vb2 to
reduce the amount of custom code.

This of course would be a very grand task and maybe we'll loose
ourselves in endless discussions about the details and all the corner
cases that need to be considered. But if we want to find a solution that
keeps up with the current trend that the hardware landscape seems to be
going in we might have no other choice. Otherwise I'd say it is
inevitable that we see more and more hardware which has multiple
drivers, each driver handling a different type of application.

Such a grand unified media framework would also help for applications
where multiple streams of different data types need to be synchronized
e.g. audio and video.

- Lars
