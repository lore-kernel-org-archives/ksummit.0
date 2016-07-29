Return-Path: <jic23@jic23.retrosnub.co.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5C00171
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 05:54:58 +0000 (UTC)
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk [178.18.118.26])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6182C14D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 05:54:57 +0000 (UTC)
In-Reply-To: <579AA9D3.8020004@roeck-us.net>
References: <5222c3bb-d6b7-0ccc-bf9e-becf5046a37a@kernel.org>
	<5791931E.5030402@roeck-us.net> <579A7986.2060006@metafoo.de>
	<579AA9D3.8020004@roeck-us.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain;
 charset=UTF-8
From: Jonathan Cameron <jic23@jic23.retrosnub.co.uk>
Date: Fri, 29 Jul 2016 06:54:52 +0100
To: Guenter Roeck <linux@roeck-us.net>, Lars-Peter Clausen <lars@metafoo.de>,
	Jonathan Cameron <jic23@kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org
Message-ID: <D176D803-6249-48B1-925F-A543D28FF198@jic23.retrosnub.co.uk>
Cc: Rob Herring <robh+dt@kernel.org>, Zhang Rui <rui.zhang@intel.com>
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



On 29 July 2016 01:56:51 BST, Guenter Roeck <linux@roeck-us.net> wrote:
>On 07/28/2016 02:30 PM, Lars-Peter Clausen wrote:
>> On 07/22/2016 05:29 AM, Guenter Roeck wrote:
>> [...]
>>>>
>>>> 4) Should we drop all the bindings for bridging between such
>subsystems
>>>> and do it all from userspace?
>>>>
>>> I think that would be a terrible idea. My hope is that we should be
>able
>>> to present a system to the user as it is intended to be, and that
>should
>>> include
>>> the use case for given hardware. An ADC is not just an ADC, it has a
>use
>>> case.
>>> The use case may be obvious if it is used as input device, but if it
>is
>>> used to measure a voltage (or current, or temperature) it should be
>>> possible
>>> to express that as well, without having to have userspace involved.
>>
>> We need to differentiate between two different things. One is
>figuring
>> out the function. If you have a general purpose ADC that is hooked up
>to
>> some other hardware construct that usually gives you the function.
>E.g.
>> a GP ADC connected to a resistor ladder with push-buttons is a input
>> device. The same ADC connected to a thermocouple creates a
>temperature
>> sensor. This can easily be implemented by describing the additional
>> hardware properly in the DT and having a construct in the DT that
>> establishes that this ADC is connected to this other thing. We can
>then
>> use the in-kernel consumer API to get the raw ADC readings and
>translate
>> them to a application specific result.
>>
>> This is all OK and I don't think anybody has any problem with this.
>It
>> is well within the scope of what devicetree is meant for and it has
>no
>> operating system specific bits per se.
>>
>> The other thing is choosing the userspace interface through which the
>> data is exposed when the application falls in an area where it could
>be
>> exposed through one of multiple APIs. E.g. a general purpose
>temperature
>> sensor could be either IIO or hwmon. A accelerometer could either be
>> input or IIO. Some user might prefer one interface over the other
>> because they have existing application code that has support for this
>> interface. Another user wants to use another interface because they
>have
>> code for this interface.
>>
>> This is the kind of bridge setup I'd rather very much avoid putting
>in
>> the DT. Strictly speaking at the DT level you don't know what kind of
>> application the users are going to run so you can't make that
>decission
>> at that level. Sure if you build a very tightly coupled embedded
>> application you get kernel, DT and userspace out of one hand and you
>> know at the DT level which interface your application will require,
>but
>> this is still a layering violation and should be avoided if possible.
>>
>> Saying you want a IIO or hwmon interface in the DT is also very Linux
>> specific. Another reason why we should avoid this.
>>
>
>That ambiguity has not been the case at least in the use cases I was
>involved in. It just happened that some hardware engineers decided that
>they wanted to use a common ADC to measure voltages on a board (rather,
>on all the boards built by that company). So the ADCs are connected to
>board
>voltages, and the intent was very clear - to be used for hardware
>monitoring.
>
>I am sure it can be expressed that an ADC is connected to, say, a
>regulator
>output. The question is how to express the intent to use that
>connection
>for the purpose of hardware monitoring. I think it should be possible
>for the board designer to make a statement about the intended use
>of the hardware.

Arguably, this is another case of describing wiring. If it's wired to monitor
something like a power line, it's that we should try to figure out how to describe.

Maybe your suggestion of making it linked to a regulator is one way of doing it. 
'This adc channel is measuring this regulated channel'. Always a hwmon case
 to my mind.  Going to end up with sets of ad-hoc looking rules though to make that
work if we can do it at all.

This was the device tree maintainer suggestion IIRC on how we should have
done the IIO-HWMON bindings..

Jonathan
>
>Guenter
>
>> In my opinion we should make the default interface what we think to
>the
>> best of our knowledge is the appropriate interface for this type of
>> device and not offer an option to overwrite this through the DT.
>Where
>> things are on the edge we might let the driver author decide since
>they
>> might have a valid usecase for that interface.
>>
>> In addition to that I think we should offer the possibility to
>> instantiate bridges from userspace to handle the case where somebody
>> really wants to use the other interface. Theses bridges should solely
>be
>> about changing the delivery method and not about changing the data
>type.
>>
>> E.g. a userspace bridge should not be used to create a input device
>for
>> a resistor ladder connected to a GP ADC as this would change the
>meaning
>> of the data. On the other hand creating a hwmon to IIO bridge for a
>> temperature sensor should be OK since both report the same
>temperature
>> value.
>>
>> I'm not sure what I think of this yet, but for completeness I want to
>> mention that we could also get a similar result by implementing the
>> bridge in userspace by LD_PRELOAD'ing. Maybe this is where is
>belongs?
>>
>> Another thing that is up for discussion is what should do with the
>ADC
>> device in case there is additional hardware connected. Should we
>still
>> expose the userspace interface to raw ADC device? If not how would we
>> figure out that we shouldn't considering that the consumer is probed
>> after the provider.
>>
>> - Lars
>>
>>

-- 
Sent from my Android device with K-9 Mail. Please excuse my brevity.
