Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E3620BDD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Aug 2015 04:14:24 +0000 (UTC)
Received: from bh-25.webhostbox.net (bh-25.webhostbox.net [208.91.199.152])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B3ACD175
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Aug 2015 04:14:23 +0000 (UTC)
Message-ID: <55DD3D1C.3070904@roeck-us.net>
Date: Tue, 25 Aug 2015 21:14:20 -0700
From: Guenter Roeck <linux@roeck-us.net>
MIME-Version: 1.0
To: Eduardo Valentin <edubezval@gmail.com>
References: <20150825061208.GA13186@localhost.localdomain>
	<2185734.lNGgzKaky2@phil> <20150825235518.GA31163@roeck-us.net>
	<20150826001229.GE5772@localhost.localdomain>
In-Reply-To: <20150826001229.GE5772@localhost.localdomain>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Cc: Zhang Rui <rui.zhang@intel.com>, Jean Delvare <jdelvare@suse.com>,
	ksummit-discuss@lists.linuxfoundation.org
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

On 08/25/2015 05:12 PM, Eduardo Valentin wrote:
> On Tue, Aug 25, 2015 at 04:55:18PM -0700, Guenter Roeck wrote:
>> On Tue, Aug 25, 2015 at 11:31:46PM +0200, Heiko Stuebner wrote:
>>>
>>> So far I always thought hwmon was some sort of grandfather to the thermal
>>> subsystem without any specific api, but I've also not needed one at all yet.
>>>
>> Yes, I have heard that before.
>
> And that is a misconception, I would say, as both have different design
> goals. Keep in mind that my original proposal is to discuss what touches
> the monitoring part.
>

Is that still true for thermal ? I have the impression that there is
a desire to move the monitoring part into thermal.

>>
>> Its scope is quite different, though. One does thermal management, one monitors
>> the hardware. Monitoring the hardware is a bit more than just monitoring its
>> temperature. It also means to monitor and report voltages, current, power,
>> energy, humidity, and fan speeds, as well as associated alarms. Thermal
>> management takes an active role, hardware monitoring by its nature doesn't.
>
> I agree here. Also, keep in mind that the scope of thermal subsystem is
> not only monitor temperature, but also cover what needs to be done when
> the system state changes and needs action, typically on top of
> temperature thresholds/trip points.
>
>>
>> On top of that, many devices report much more than temperatures.
>> System managers may report and sometimes control all of the above. SuperIO
>> chips monitor voltages, temperatures, and fan speeds, and often implement fan
>> control. PMBus devices primarily control voltages, but may report literally
>> everything except for humidity (including fan speeds). And so on.
>
>
> There are discussions to have power / voltage / current (and humidity
> too) inputs to the thermal subsystem. And that's probably where the issue
> gets worse. Another take we could have is to centralize the hw monitoring
> part of the problem in, well, hwmon, and make thermal a user of it. Then
> we would move the thermal drivers, at least the sensing part of
> them, to hwmon. But then again, we still have the IIO case :-).
>

My suggestion would have been to separate subsystems into logical entities.
Let thermal handle thermal policies and decisions, let hwmon read (and write)
low speed sensor values, let iio handle high speed io, and interconnect it all
with sensible APIs.

However, it seems to me that the direction in the thermal community
is more along the line of handling both monitoring and the decision
making process in thermal (and maybe some of it in iio). Or, in other
words, to rewrite all hwmon drivers, give them a new API, and move them
into, say, drivers/thermal/chips/.

I personally think that this might not be such a good idea, as it will
distract the thermal subsystem from its original focus. But the focus
may be shifting, or maybe I am just plain wrong.

Given that, I would not object if that is where things are going.
All I am asking for is to keep supporting the existing ABI.

Thanks,
Guenter
