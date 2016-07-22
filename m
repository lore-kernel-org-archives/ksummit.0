Return-Path: <dmitry.torokhov@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3E9372C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 04:18:32 +0000 (UTC)
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AE03C79
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 04:18:31 +0000 (UTC)
Received: by mail-pf0-f195.google.com with SMTP id y134so6541512pfg.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 21:18:31 -0700 (PDT)
Date: Thu, 21 Jul 2016 21:18:28 -0700
From: Torokhov <dmitry.torokhov@gmail.com>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20160722041828.GA7060@dtor-ws>
References: <5222c3bb-d6b7-0ccc-bf9e-becf5046a37a@kernel.org>
	<5791931E.5030402@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5791931E.5030402@roeck-us.net>
Cc: ksummit-discuss@lists.linuxfoundation.org, Rob Herring <robh+dt@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>
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

On Thu, Jul 21, 2016 at 08:29:34PM -0700, Guenter Roeck wrote:
> On 07/20/2016 02:18 PM, Jonathan Cameron wrote:
> >Hi All,
> >
> >This topic would be around the way the various subsystems interact, in the
> >rough area of 'sensors' (I haven't yet had much of an issue with subsystem
> >crossing with output devices but maybe that's just over the next hill!)
> >
> >Scope may well be wider but includes:
> >* input (some of it)
> >* hwmon
> >* iio
> >* comedi(?)
> >* thermal
> >* power/battery
> >* gpio - the blur between gpios and beaglescope / PLC type I/O.
> >* v4l - when does a device jump from being a multi pixel thermopile
> >to a thermal camera? Smart fingerprint scanners etc.  Gesture recognition
> >sensors (effectively 9ish pixel cameras)
> >* Lots of random things we haven't seen yet.
> >
> >All these make use of devices that are at their hearts ADCs. Whilst it
> >would nice if the underlying devices always fell into one clear
> >category that is not always the case. Hardware descriptions (e.g.
> >device tree) are an important area of contention.
> >
> >The examples that follow are mostly based around IIO interactions with
> >hwmon / input as that's my area of expertise. However, I know that
> >similar issues occur at other boundaries.
> >
> >Guenter Roeck has been working on hwmon / thermal interfacing recently.
> >We also regularly push drivers one way or the other around that boundary.
> >
> >Dmitry and I often have to decide on the IIO / input scope boundary
> >(and we've moved it over time) + a number of cross over drivers have
> >turned up recently.
> >
> >The other subsystems I encounter have been 'quieter' in their
> >interactions with me but many of the issues below apply to them as well.
> >
> >A rough list of related topics that might be worth face to face
> >discussion includes:
> >
> >1) Are we happy with the somewhat adhoc divisions of subsystems as they
> >stand?
> >
> >I am personally happy enough with this, but it's worth checking
> 
> Same here.
> 
> >everyone else is. This probably causes more pain for new submitters
> >than it does for old hands. Perhaps we can come up with a checklist style
> >doc to save people having to ask.
> >
> I think that would be very useful.
> 
> >We have had quite a few cases where a whole driver is submitted to the
> >'wrong' subsystem. Not the best first interaction with the kernel
> 
> ... especially to avoid that situation.
> 
> >world for new contributors. (This sort of area is attracts newbies
> >as it's relatively simple and the hardware is fairly cheap and more
> >than once their first experience with review as exactly this!)
> >
> >If we aren't happy, what do we do about it?
> >
> >I'm hoping we are happy or, at least, resigned to the current state
> >of affairs, but think the question should be asked from time to time
> >as the answer may well change + the discussion will highlight pinch
> >points we can work on.
> >
> >2) Bridging drivers - there will always be cross over cases.
> >E.g. Generic ADCs used for battery voltage monitoring.  We have a
> >number of bridges in mainline already and others out of tree.  How
> >important are these and what features would make them more useful?
> >
> >Is it ever sensible to have two drivers for the same part because
> >the use cases are so different? (I hope there is always a better way
> >but maybe not)
> >
> >This covers both generic bridges (e.g. iio-hwmon) and device
> >specific bridges (a good example of a touch screen driver turned
> >up in my inbox yesterday).
> >
> >3) Bindings (device tree and similar).  When it is appropriate to use a
> >device tree to describe the overlap (bridging of channels)?
> >Sometimes there is obvious real hardware involved (a thermistor on a
> >generic ADC input for example), but there are many grey areas.
> >
> >Finally bashing out an answer to the issue device tree maintainers
> >have with the iio-hwmon bindings would be great.
> 
> Agreed, it would be great if we can come up with a fix for that.
> 
> >On a less biased note, that example is pretty fiddly to define but would
> >act as a good basis to work from more generally.
> >
> >We know we got it wrong (back in the dark ages), but it isn't obvious how
> >to get it right!
> >
> >IIO-input has been partly held outside mainline for years by this issue.
> >
> >Also some practical design decisions to make around how to implement
> >these mappings to work best with deferred probing etc.
> >
> >4) Should we drop all the bindings for bridging between such subsystems
> >and do it all from userspace?
> >
> I think that would be a terrible idea. My hope is that we should be able
> to present a system to the user as it is intended to be, and that should include
> the use case for given hardware. An ADC is not just an ADC, it has a use case.
> The use case may be obvious if it is used as input device, but if it is
> used to measure a voltage (or current, or temperature) it should be possible
> to express that as well, without having to have userspace involved.

Totally agree. We might want to allow reconfiguring from userspace,
but having initial configuration conveyed through DT/ACPI/whatever
according to the original system purpose makes sense to me.

Thanks.

-- 
Dmitry
