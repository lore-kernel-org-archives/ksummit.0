Return-Path: <jic23@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5DD58413
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 22:26:30 +0000 (UTC)
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk [178.18.118.26])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4A75110A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 22:26:29 +0000 (UTC)
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	ksummit-discuss@lists.linuxfoundation.org
References: <5222c3bb-d6b7-0ccc-bf9e-becf5046a37a@kernel.org>
	<2331474.UchXKu7jRM@avalon>
From: Jonathan Cameron <jic23@kernel.org>
Message-ID: <94890ac2-4a9d-1741-67d5-923a7690174a@kernel.org>
Date: Thu, 28 Jul 2016 23:26:26 +0100
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

On 28/07/16 17:39, Laurent Pinchart wrote:
> Hi Jonathan,
> 
> On Wednesday 20 Jul 2016 22:18:11 Jonathan Cameron wrote:
>> Hi All,
>>
>> This topic would be around the way the various subsystems interact, in the
>> rough area of 'sensors' (I haven't yet had much of an issue with subsystem
>> crossing with output devices but maybe that's just over the next hill!)
> 
> It's already here :-) We have an API to control camera flash (as in light, not 
> memory) in V4L2 and another one in the LED subsystem.
I wonder how many devices are doing it with a gpio or some of the more
configurable PWM units..
> 
>> Scope may well be wider but includes:
>> * input (some of it)
>> * hwmon
>> * iio
>> * comedi(?)
>> * thermal
>> * power/battery
>> * gpio - the blur between gpios and beaglescope / PLC type I/O.
>> * v4l - when does a device jump from being a multi pixel thermopile
>> to a thermal camera? Smart fingerprint scanners etc.  Gesture recognition
>> sensors (effectively 9ish pixel cameras)
>> * Lots of random things we haven't seen yet.
>>
>> All these make use of devices that are at their hearts ADCs. Whilst it
>> would nice if the underlying devices always fell into one clear
>> category that is not always the case. Hardware descriptions (e.g.
>> device tree) are an important area of contention.
>>
>> The examples that follow are mostly based around IIO interactions with
>> hwmon / input as that's my area of expertise. However, I know that
>> similar issues occur at other boundaries.
>>
>> Guenter Roeck has been working on hwmon / thermal interfacing recently.
>> We also regularly push drivers one way or the other around that boundary.
>>
>> Dmitry and I often have to decide on the IIO / input scope boundary
>> (and we've moved it over time) + a number of cross over drivers have
>> turned up recently.
>>
>> The other subsystems I encounter have been 'quieter' in their
>> interactions with me but many of the issues below apply to them as well.
>>
>> A rough list of related topics that might be worth face to face
>> discussion includes:
>>
>> 1) Are we happy with the somewhat adhoc divisions of subsystems as they
>> stand?
>>
>> I am personally happy enough with this, but it's worth checking
>> everyone else is. This probably causes more pain for new submitters
>> than it does for old hands. Perhaps we can come up with a checklist style
>> doc to save people having to ask.
>>
>> We have had quite a few cases where a whole driver is submitted to the
>> 'wrong' subsystem. Not the best first interaction with the kernel
>> world for new contributors. (This sort of area is attracts newbies
>> as it's relatively simple and the hardware is fairly cheap and more
>> than once their first experience with review as exactly this!)
>>
>> If we aren't happy, what do we do about it?
>>
>> I'm hoping we are happy or, at least, resigned to the current state
>> of affairs, but think the question should be asked from time to time
>> as the answer may well change + the discussion will highlight pinch
>> points we can work on.
>>
>> 2) Bridging drivers - there will always be cross over cases.
>> E.g. Generic ADCs used for battery voltage monitoring.  We have a
>> number of bridges in mainline already and others out of tree.  How
>> important are these and what features would make them more useful?
>>
>> Is it ever sensible to have two drivers for the same part because
>> the use cases are so different? (I hope there is always a better way
>> but maybe not)
> 
> I'd love to say no, but we have already hit that problem. There are two 
> drivers for the ADV7511 HDMI encoder, one in the media subsystem for V4L2 
> output devices (drivers/media/i2c/adv7511.c), and one in the DRM/KMS subsystem 
> for display devices (drivers/gpu/drm/i2c/adv7511.c, being moved to 
> drivers/gpu/drm/bridge/). Try compiling them both in the kernel and see how 
> they race to probe the same device (enjoy the show, popcorns not included).
Nasty.
> 
>> This covers both generic bridges (e.g. iio-hwmon) and device
>> specific bridges (a good example of a touch screen driver turned
>> up in my inbox yesterday).
>>
>> 3) Bindings (device tree and similar).  When it is appropriate to use a
>> device tree to describe the overlap (bridging of channels)?
>> Sometimes there is obvious real hardware involved (a thermistor on a
>> generic ADC input for example), but there are many grey areas.
>>
>> Finally bashing out an answer to the issue device tree maintainers
>> have with the iio-hwmon bindings would be great.
>> On a less biased note, that example is pretty fiddly to define but would
>> act as a good basis to work from more generally.
>>
>> We know we got it wrong (back in the dark ages), but it isn't obvious how
>> to get it right!
>>
>> IIO-input has been partly held outside mainline for years by this issue.
>>
>> Also some practical design decisions to make around how to implement
>> these mappings to work best with deferred probing etc.
>>
>> 4) Should we drop all the bindings for bridging between such subsystems
>> and do it all from userspace?
>>
>> I think we may end up with a hybrid of the two, but need to be able to
>> make it work in 'standard' cases without userspace being involved. That
>> hybrid solution may well be devicetree overlay based... Unclear so far.
>> + plenty of crazy things that 'might' make sense where there isn't even
>> the pretence of representing real hardware.
>>
>> 5) Complex device interaction usecases.  At the moment the ones I've come
>> across are mostly contained in IIO.  The moment we start sticking in
>> MUXes, AFEs (Analog Front Ends) and straightforward analog sensors in the
>> mix it can get fiddly.  Swapping war stories may well be worthwhile on
>> this. This stuff also turns up in ASoC for example so probably lessons
>> to be learned from there.
>>
>> The analog devices software defined radios are another possible case
>> study.
>>
>> There of course may well be lessons to be learned from similar
>> interactions elsewhere in the kernel.
>>
>> There is a lot of history in how we ended up where we are (it all made
>> absolute sense at the time). Sitting back and taking the time
>> to discuss the future would be great.  Whilst this might be solvable
>> by email we've made no definitive progress for years
>> (and what has been made has been on a case by case basis deep in
>> driver reviews.)
>>
>> I threw comedi in the list above but, at the moment, I think the more
>> likely direction there is a single userspace library abstracting
>> the underlying subsystem (Analog Devices are working in that
>> direction - perhaps Lars can offer more on that?).
>>
>> GPIO is another interesting case - a lot of hardware is capable of
>> parallel sampling, some at high speeds. It's another area that
>> is probably too specialist for this discussion, but if people want
>> to dive into the details it might be interesting.
>>
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
This one was somewhat of a thought experiment (and the sort of dirty hack
we'd do in my day job :)

Absolutely.  Sometimes they'll obligingly connect it to a camera specific
interface sometimes the won't.  I think I saw an example of a camera hanging
of one of TI's universal parallel ports at one point for example - not
sure how the framing worked there.

The many generic high speed serial interfaces are also an option.

If it's all wrapped up and presented as a camera device, then we don't need
to care that it's a generic ADC really as the interesting handling will
probably all be done in the fpga / cpld anyway.

The possibility that gets more interesting from my point of view is where
the pixel stream simply hits an ADC.  Grabbing from the day job, a line
scan camera would be the classic.  There'd probably still be some sort
of line framing but lots of places to hide that including in the analog
stream itself.

Even if they do, there always comes a point where it's easier to just declare
that we are better off with a monolithic device driver hiding what
is inside.

Anyhow, I kind of hope no one ever does this *crosses fingers*

Possibly more likely around the blurry boundary of what is a video
capture device and what is simply taking a small number of specially
related signals and sampling them...
> 
>> The SoC world is a major case of one device, many uses.  Some SoCs
>> are turning up with multiple ADC units, sometimes with different
>> designs, sometimes simply so that the same hardware can be used for
>> different things.
>>
>> A few suggestions for people:
>>
>> Guenter Roeck (hmwon)
>> Dmitry Torokhov (input)
>> Me (Jonathan Cameron - IIO)
>>
>> Someone thermal related (not sure who would be most interested)
>> Someone power supply related? (Guenter, any suggestions?)
>>
>> Someone device tree related (Mark Rutland? Rob Herring?)
>>
>> Linus Waleij (gpio)
>>
>> Mark Brown - as some of concepts of IIO bridging and how far it
>> can be taken (everything via a bridge driver) came from
>> discussions with him on SoC ADC handling.
>>
>> Lar-Peter Clausen for generally doing insane things with ADCs + having
>> one foot in the userspace side of things.
> 
