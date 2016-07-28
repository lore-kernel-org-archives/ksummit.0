Return-Path: <lars@metafoo.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 408A18D7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 18:29:28 +0000 (UTC)
Received: from www381.your-server.de (www381.your-server.de [78.46.137.84])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5C7A82E5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 18:29:27 +0000 (UTC)
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	ksummit-discuss@lists.linuxfoundation.org
References: <5222c3bb-d6b7-0ccc-bf9e-becf5046a37a@kernel.org>
	<CACRpkdYPNdtabj5zOXe9nyzbHsKGgo57dfojCDvfSNPEWAMZRg@mail.gmail.com>
	<2617443.e5mOt80N6v@avalon>
From: Lars-Peter Clausen <lars@metafoo.de>
Message-ID: <579A4A25.9020106@metafoo.de>
Date: Thu, 28 Jul 2016 20:08:37 +0200
MIME-Version: 1.0
In-Reply-To: <2617443.e5mOt80N6v@avalon>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Cc: Gregor Boirie <gregor.boirie@parrot.com>, Zhang Rui <rui.zhang@intel.com>,
	Rob Herring <robh+dt@kernel.org>
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

On 07/28/2016 06:46 PM, Laurent Pinchart wrote:
> Hi Linus,
> 
> On Friday 22 Jul 2016 14:04:07 Linus Walleij wrote:
>> On Wed, Jul 20, 2016 at 11:18 PM, Jonathan Cameron <jic23@kernel.org> wrote:
>>> This topic would be around the way the various subsystems interact, in the
>>> rough area of 'sensors' (I haven't yet had much of an issue with subsystem
>>> crossing with output devices but maybe that's just over the next hill!)
>>>
>>> Scope may well be wider but includes:
>>> * input (some of it)
>>> * hwmon
>>> * iio
>>> * comedi(?)
>>> * thermal
>>> * power/battery
>>> * gpio - the blur between gpios and beaglescope / PLC type I/O.
>>
>> I'm in. The new chardev ABI was designed to fit play/well with IIO,
>> for example I added a 64bit timestamp also to GPIO events so that
>> people could do what I guess they refer to as sensor fusion mixing
>> and blending sensor input events with GPIO events.
>> (https://en.wikipedia.org/wiki/Sensor_fusion)
>>
>> What I wanted to bring up ASAP was when I noticed in linux-next
>> commit bc2b7dab629a51e8beb5fda4222c62a23b729f26
>> "iio:core: timestamping clock selection support"
>> that we should probably move this code to e.g. drivers/base
>> or drivers/lib so I can reuse the same ABI in sysfs for
>> GPIO event timestamping.
>>
>> I think timestamping events uniformly is something that is
>> important to all userspaces.
>>
>>> Dmitry and I often have to decide on the IIO / input scope boundary
>>> (and we've moved it over time) + a number of cross over drivers have
>>> turned up recently.
>>
>> (snip from elsewhere)
>>
>>> Is it ever sensible to have two drivers for the same part because
>>> the use cases are so different? (I hope there is always a better way
>>> but maybe not)
>>
>> I have one on my knee as I want to make a proper IIO driver
>> for MPU-3050 gyroscope which has a (very simplified) driver in
>> drivers/input/misc/mpu3050.c that was merged before the advent
>> of the IIO subsystem.
>>
>> For the new driver I have these options:
>>
>> - Keep both drivers and consider them for different usecases.
>>   of the same hardware that require different Kconfig (seems
>>   very unelegant to me)
>>
>> - Add some input event calls into the IIO driver so we can
>>   phase over the older uses to the new driver.
>>
>> - Drop the input event handling since gyroscopes should not
>>   be handled by input anyway
>>
>> - Develop a generic IIO-gyroscope-to-input event bridge.
>>   (Phew seems complex.)
>>
>> (elsewhere)
>>
>>> IIO-input has been partly held outside mainline for years by this issue.
>>
>> Is there such a thing? gitweb?
>>
>>> 1) Are we happy with the somewhat adhoc divisions of subsystems as they
>>> stand?
>>
>> IETF has this motto "rough consensus and running code", and
>> for me that is the working assumption to most things
>> driver-subsystem-division-of-responsibilities-related.
>>
>>> We have had quite a few cases where a whole driver is submitted to the
>>> 'wrong' subsystem. Not the best first interaction with the kernel
>>> world for new contributors. (This sort of area is attracts newbies
>>> as it's relatively simple and the hardware is fairly cheap and more
>>> than once their first experience with review as exactly this!)
>>
>> What is sometimes lacking is users who are clever enough to
>> take the latest kernel (or preferably even -next) and git grep for
>> a few strings related to the hardware they want to support, and
>> be revealed the fact that there is already a driver for it.
>>
>> If there isn't, their problem is that of finding the right subsystem
>> to pigeon-hole their hardware into. It typically requires a kernel
>> old grumpy person saying "no, THIS thing goes THERE, THAT
>> thing goes THERE". Unfortunately I think this is pretty hard to
>> codify.
>>
>>> If we aren't happy, what do we do about it?
>>
>> More helpful kernel generalists...
>>
>>> GPIO is another interesting case - a lot of hardware is capable of
>>> parallel sampling, some at high speeds. It's another area that
>>> is probably too specialist for this discussion, but if people want
>>> to dive into the details it might be interesting.
>>
>> I currently have (for v4.8) an ABI which makes i possible to e.g.
>> read 32 simultaneous lines with one userspace/kernelspace
>> swap, if it ends up as a readl() from a register.
>>
>> The userspace ABI has a limitation to 64 values, so it would be
>> possible to have some driver read 64 GPIO lines and return them
>> in a u8 vector back to userspace in one go.
>>
>> For an oscilloscope or signal analyzer usecase with more than
>> 64 channels needing to be sampled simultaneously, we may need
>> to add another "large GPIO read" ABI, and also probably a new
>> driver API interface to achieve it. I've never seen hardware that can
>> read more values in parallel than 32 though, I chose 64 to get some
>> headroom.
> 
> Such a use case would put strong real-time constraints on the system, I wonder 
> how useful a GPIO-based signal analyzer would be. Are you aware of any GPIO 
> hardware that can be programmed to sample at a precise point in time (or 
> perhaps even periodically) ?

I have such hardware. It's custom hardware, non-public at the moment.

But it works like this, for each pin you can configure whether it can be
controlled independently, like a normal GPIO, or whether the values are
sampled/updated to/from a continuous data stream that is regularly
clocked (basically a 1-bit ADC/DAC). This falls right on the edge
between GPIO and IIO and I'm really torn where to put it. For now I went
with IIO since it predates the chardev GPIO interface and because of all
the libiio magic.

Another similar application that uses regular GPIO hardware (IIRC) that
falls into the same category is the beaglelogic project
(https://github.com/abhishek-kakkar/BeagleLogic/wiki). And there have
been discussions to create a IIO driver for a similar setup in the past.
