Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DAE88BFD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Aug 2015 14:03:48 +0000 (UTC)
Received: from bh-25.webhostbox.net (bh-25.webhostbox.net [208.91.199.152])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6DCC617E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Aug 2015 14:03:48 +0000 (UTC)
Message-ID: <55DC75B7.2020806@roeck-us.net>
Date: Tue, 25 Aug 2015 07:03:35 -0700
From: Guenter Roeck <linux@roeck-us.net>
MIME-Version: 1.0
To: Krzysztof Kozlowski <k.kozlowski@samsung.com>,
	Eduardo Valentin <edubezval@gmail.com>,
	ksummit-discuss@lists.linuxfoundation.org
References: <20150825061208.GA13186@localhost.localdomain>
	<55DC0AA3.6010801@samsung.com>
In-Reply-To: <55DC0AA3.6010801@samsung.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Cc: Zhang Rui <rui.zhang@intel.com>, Jean Delvare <jdelvare@suse.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] [CORE TOPIC] The three ways of
 temperature sensing in Linux
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 08/24/2015 11:26 PM, Krzysztof Kozlowski wrote:
> On 25.08.2015 15:12, Eduardo Valentin wrote:
>> Hi all,
>>
>> [Not sure if this is TECH or CORE, as it touches more than one
>> subsystem]
>>
>> Not sure how late it is to post this, but I am trying anyway.
>>
>> During LPC 2015 last week it came out the topic of the interaction
>> between the thermal subsystem with HWMON. On top of it, we also got a
>> proposal [1] of having thermal exposing its registered devices as IIO.
>>
>> I know the three subsystem coexist today for some years. They also have
>> their own design goals. However, the fact that we have three different
>> subsystems for doing very similar task may be confusing, for the driver
>> writer, and for user space too.
>>
>> Another aspect of it is the possible code duplication. For example, it
>> would interesting to get board temperature sensors, typically registered
>> as hwmon devices, to be available in the thermal subsystem while
>> constructing thermal zones out of them. Some user process would expect
>> the opposite though, to read the thermal zone sensors as hwmon devices,
>> or as IIO devices.
>
> I would rather expect using only one subsystem for exporting this
> information to user-space. If the susbsytem lacks some features then it
> could be expanded.
>
> Some power supply drivers (fuel gauges or chargers) also provide
> temperature data. They use the thermal for that. It would be weird to
> export them through IIO...
>

I agree, the current situation is less than optimal.

There are bridges from thermal and iio to hwmon, but they are not
perfect. Resulting hwmon device names are odd, and iio doesn't support
limits. The thermal-hwmon bridge only supports one trip point, and
it doesn't pass alarms.

Both the iio-hwmon and the thermal-hwmon bridge break the hwmon model
of reporting sensor data per chip, which makes it difficult to convert
drivers from hwmon to thermal (if that is suggested) without breaking
the userspace ABI.

At the same time, there is no bridge from the hwmon core to thermal.
Currently hwmon drivers supporting thermal register with both hwmon
and thermal, which is really undesirable. Implementing a hwmon-thermal
bridge in the hwmon core would require implementing a new hwmon registration
API. That is easier said then done, and would require more time than
at least I have available.

This, I think, is the core of the problem. Somehow would have to go in
and create that new hwmon registration API, if that is a solution
acceptable to the thermal maintainers. At the same time, the thermal-hwmon
bridge should be improved to export provide available information to hwmon.

An alternative would be for thermal to 'take over', convert all hwmon
drivers to thermal drivers, and retain a compatibility layer to provide
the data as hwmon device data to user space without breaking the existing
hwmon ABI. Again, someone would have to do that work.

Guenter
