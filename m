Return-Path: <jic23@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5FFC96C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 19:37:53 +0000 (UTC)
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk [178.18.118.26])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 135BF2C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 19:37:52 +0000 (UTC)
To: Hans Verkuil <hverkuil@xs4all.nl>,
	ksummit-discuss@lists.linuxfoundation.org
References: <5222c3bb-d6b7-0ccc-bf9e-becf5046a37a@kernel.org>
	<84db7ee9-7df9-0a57-9e06-a32ef5a4989a@xs4all.nl>
From: Jonathan Cameron <jic23@kernel.org>
Message-ID: <28a9394b-97be-ca4e-3ec7-3d023bfe5b32@kernel.org>
Date: Fri, 22 Jul 2016 21:37:46 +0200
MIME-Version: 1.0
In-Reply-To: <84db7ee9-7df9-0a57-9e06-a32ef5a4989a@xs4all.nl>
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

On 21/07/16 09:39, Hans Verkuil wrote:
> 
> 
> On 07/20/2016 11:18 PM, Jonathan Cameron wrote:
>> Hi All,
>>
>> This topic would be around the way the various subsystems interact, in the
>> rough area of 'sensors' (I haven't yet had much of an issue with subsystem
>> crossing with output devices but maybe that's just over the next hill!)
> 
> This happens regularly with drm/kms vs v4l, especially for embedded devices
> where video inputs and outputs are often connected internally (i.e. paths
> straight from video capture to video output without needing to go to memory
> first).
> 
>>
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
> 
> See for an example of that this patch series that adds support for v4l-touch
> devices:
> 
> http://www.spinics.net/lists/linux-input/msg45918.html
Certainly interesting - never occurred to me that you could get data where
that made sense from touch devices.
> 
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
> One example of this is video output: both drm/kms and v4l can do video
> output. Video output using v4l is specifically geared towards frame-based
> video output whereas drm/kms is for desktop environments/GPUs. Luckily there
> are very few v4l video output drivers and the driver duplication occurs
> only for the i2c video transmitter devices. I know of two that are duplicated:
> adv7511 and (I think) saa7127. The rarity is the reason nobody ever created
> a shim or something similar to allow for one i2c driver to serve both
> subsystems. Technically this would be perfectly possible, it's just work.
So the balance here (at least when we aren't doing the work) is how
much maintainers push back to get this sort of work done before taking
a driver.  Always balances to be struck.
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
> 
> V4L has a long history of this: if you have multiple video scalers in your
> pipeline, how do you control them? E.g. there can be scalers in the video
> sensor and in the SoC. We came up with the media controller device to
> expose the topology of the hardware and to be able to control each bit
> directly from userspace.
> 
> While the media controller is quite powerful and can be used to expose
> connections across subsystems, it also requires more work from userspace,
> and that's an area where not enough attention has been given.
Agreed.  When I've discussed this with Lars-Peter who has been looking
at expanding the scope of the media control framework into IIO he has
suggested that it makes a lot of sense for DSP type configurations, but
perhaps not simple stuff like what is on the end of a wire...

Definitely another thing to include in any discussion though.
> 
>> The analog devices software defined radios are another possible case
>> study.
> 
> Note that the V4L2 subsystem has support for several SDR devices. Probably
> another area where drivers can end up in different subsystems.
> 
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
> 
> When you get complex systems you probably have to move in that direction.
> I'd be interesting in such work going on in other subsystems. As mentioned
> above, the media controller needs something like that and it would be
> good to learn from others.
> 
>> GPIO is another interesting case - a lot of hardware is capable of
>> parallel sampling, some at high speeds. It's another area that
>> is probably too specialist for this discussion, but if people want
>> to dive into the details it might be interesting.
>>
>> I think we have only a small amount of fuzz around the v4l boundary,
>> but wanted to leave the door open if anyone wants to discuss that
>> one further as it's come up a few times over recent years.
> 
> There is more of that than we wish, but quite often it is just dropped
> in the end as being too much work to solve and not quite important enough
> to spend the time and money on.
Sounds like I underestimate how fiddly the boundaries between subsystems
I haven't often interacted with are!  Thanks for the info.
> 
>> The SoC world is a major case of one device, many uses.  Some SoCs
>> are turning up with multiple ADC units, sometimes with different
>> designs, sometimes simply so that the same hardware can be used for different things.
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
> Laurent Pinchart or myself for v4l/mc
Cool.
> 
> Regards,
> 
> 	Hans
> 
