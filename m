Return-Path: <jic23@jic23.retrosnub.co.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 715DEC2C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Aug 2015 06:04:30 +0000 (UTC)
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk [178.18.118.26])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3C6B9A8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Aug 2015 06:04:29 +0000 (UTC)
In-Reply-To: <20150826001229.GE5772@localhost.localdomain>
References: <20150825061208.GA13186@localhost.localdomain>
	<2185734.lNGgzKaky2@phil> <20150825235518.GA31163@roeck-us.net>
	<20150826001229.GE5772@localhost.localdomain>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----U11XCDHYFQ9ZGBNUEJFVG78EI2ZQC4"
Content-Transfer-Encoding: 8bit
From: Jonathan Cameron <jic23@jic23.retrosnub.co.uk>
Date: Wed, 26 Aug 2015 07:04:22 +0100
To: Eduardo Valentin <edubezval@gmail.com>,Guenter Roeck <linux@roeck-us.net>
Message-ID: <D7670EAF-9606-4908-B610-F932F4312ACC@jic23.retrosnub.co.uk>
Cc: Zhang Rui <rui.zhang@intel.com>, Jean Delvare <jdelvare@suse.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>
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

------U11XCDHYFQ9ZGBNUEJFVG78EI2ZQC4
Content-Transfer-Encoding: 8bit
Content-Type: text/plain;
 charset=UTF-8



On 26 August 2015 01:12:31 BST, Eduardo Valentin <edubezval@gmail.com> wrote:
>On Tue, Aug 25, 2015 at 04:55:18PM -0700, Guenter Roeck wrote:
>> On Tue, Aug 25, 2015 at 11:31:46PM +0200, Heiko Stuebner wrote:
>> > 
>> > So far I always thought hwmon was some sort of grandfather to the
>thermal 
>> > subsystem without any specific api, but I've also not needed one at
>all yet.
>> > 
>> Yes, I have heard that before.
>
>And that is a misconception, I would say, as both have different design
>goals. Keep in mind that my original proposal is to discuss what
>touches
>the monitoring part.
>
>> 
>> Its scope is quite different, though. One does thermal management,
>one monitors
>> the hardware. Monitoring the hardware is a bit more than just
>monitoring its
>> temperature. It also means to monitor and report voltages, current,
>power,
>> energy, humidity, and fan speeds, as well as associated alarms.
>Thermal
>> management takes an active role, hardware monitoring by its nature
>doesn't.
>
>I agree here. Also, keep in mind that the scope of thermal subsystem is
>not only monitor temperature, but also cover what needs to be done when
>the system state changes and needs action, typically on top of
>temperature thresholds/trip points.
>
>> 
>> On top of that, many devices report much more than temperatures.
>> System managers may report and sometimes control all of the above.
>SuperIO
>> chips monitor voltages, temperatures, and fan speeds, and often
>implement fan
>> control. PMBus devices primarily control voltages, but may report
>literally
>> everything except for humidity (including fan speeds). And so on. 
>
>
>There are discussions to have power / voltage / current (and humidity
>too) inputs to the thermal subsystem. And that's probably where the
>issue
>gets worse. Another take we could have is to centralize the hw
>monitoring
>part of the problem in, well, hwmon, and make thermal a user of it.
>Then
>we would move the thermal drivers, at least the sensing part of
>them, to hwmon. But then again, we still have the IIO case :-).

At least for temperature monitoring with temp specific sensors, right now IIO
 doesn't really have any overlap. 
We do have temp sensors as part of IMUs and humidity sensors plus a few unusual 
temp sensors (remote IR sensors and high speed thermo couple devices)

The iio hwmon bridge was meant for case where a fast ADC happens to be
used for a slow hwmon job.

As I understand it, the proposed IIO interface for thermal is due to a need 
for a low overhead fat pipe to userspace governors. 

Current bit IIO doesn't do that are relevant:
1) event access within the kernel (trip points?) Userspace interface been present from the start.
2) multiple trip points of the same type.
(Not a big addition but not relevant for
 our core use cases and mostly only present on hwmon chips)

Note ultimate intent for a long time has been to fully separate IIO backend and
 frontend (userspace interface). No one has had time to work on this for a while
 though. So right now you can sit what you like on IIO but the IIO interface will be
 there as well, if unused.

Speaking of which, don't forget the other overlapping subsystems.

E.g. input and battery/power. 
We have a non mainline input bridge and
 a few users for battery monitoring in mainline.

At the end of the day lots of things (fast and slow) can be wired up to ridiculous rate ADCs. Not unusual on SOCs for a
 1Msp ADC to be used to read the battery voltage.

Plus there will always be someone out there using a £1000+ IMUs in their gaming rig 

Jonathan


>
>BR,
>
>Eduardo Valentin
>> 
>> Maybe just have a look into drivers/hwmon/pmbus/ltc2978.c, and let me
>know
>> where you would like to have this driver (and all the other PMBus
>drivers)
>> moved to.
>
>
>
>> 
>> Thanks,
>> Guenter
>> _______________________________________________
>> Ksummit-discuss mailing list
>> Ksummit-discuss@lists.linuxfoundation.org
>> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
>
>
>------------------------------------------------------------------------
>
>_______________________________________________
>Ksummit-discuss mailing list
>Ksummit-discuss@lists.linuxfoundation.org
>https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

-- 
Sent from my Android device with K-9 Mail. Please excuse my brevity.
------U11XCDHYFQ9ZGBNUEJFVG78EI2ZQC4
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: 8bit

<br>
<br>
On 26 August 2015 01:12:31 BST, Eduardo Valentin &lt;edubezval@gmail.com&gt; wrote:<br>
&gt;On Tue, Aug 25, 2015 at 04:55:18PM -0700, Guenter Roeck wrote:<br>
&gt;&gt; On Tue, Aug 25, 2015 at 11:31:46PM +0200, Heiko Stuebner wrote:<br>
&gt;&gt; &gt; <br>
&gt;&gt; &gt; So far I always thought hwmon was some sort of grandfather to the<br>
&gt;thermal <br>
&gt;&gt; &gt; subsystem without any specific api, but I&#39;ve also not needed one at<br>
&gt;all yet.<br>
&gt;&gt; &gt; <br>
&gt;&gt; Yes, I have heard that before.<br>
&gt;<br>
&gt;And that is a misconception, I would say, as both have different design<br>
&gt;goals. Keep in mind that my original proposal is to discuss what<br>
&gt;touches<br>
&gt;the monitoring part.<br>
&gt;<br>
&gt;&gt; <br>
&gt;&gt; Its scope is quite different, though. One does thermal management,<br>
&gt;one monitors<br>
&gt;&gt; the hardware. Monitoring the hardware is a bit more than just<br>
&gt;monitoring its<br>
&gt;&gt; temperature. It also means to monitor and report voltages, current,<br>
&gt;power,<br>
&gt;&gt; energy, humidity, and fan speeds, as well as associated alarms.<br>
&gt;Thermal<br>
&gt;&gt; management takes an active role, hardware monitoring by its nature<br>
&gt;doesn&#39;t.<br>
&gt;<br>
&gt;I agree here. Also, keep in mind that the scope of thermal subsystem is<br>
&gt;not only monitor temperature, but also cover what needs to be done when<br>
&gt;the system state changes and needs action, typically on top of<br>
&gt;temperature thresholds/trip points.<br>
&gt;<br>
&gt;&gt; <br>
&gt;&gt; On top of that, many devices report much more than temperatures.<br>
&gt;&gt; System managers may report and sometimes control all of the above.<br>
&gt;SuperIO<br>
&gt;&gt; chips monitor voltages, temperatures, and fan speeds, and often<br>
&gt;implement fan<br>
&gt;&gt; control. PMBus devices primarily control voltages, but may report<br>
&gt;literally<br>
&gt;&gt; everything except for humidity (including fan speeds). And so on. <br>
&gt;<br>
&gt;<br>
&gt;There are discussions to have power / voltage / current (and humidity<br>
&gt;too) inputs to the thermal subsystem. And that&#39;s probably where the<br>
&gt;issue<br>
&gt;gets worse. Another take we could have is to centralize the hw<br>
&gt;monitoring<br>
&gt;part of the problem in, well, hwmon, and make thermal a user of it.<br>
&gt;Then<br>
&gt;we would move the thermal drivers, at least the sensing part of<br>
&gt;them, to hwmon. But then again, we still have the IIO case :-).<br>
<br>
At least for temperature monitoring with temp specific sensors, right now IIO<br>
 doesn&#39;t really have any overlap. <br>
We do have temp sensors as part of IMUs and humidity sensors plus a few unusual <br>
temp sensors (remote IR sensors and high speed thermo couple devices)<br>
<br>
The iio hwmon bridge was meant for case where a fast ADC happens to be<br>
used for a slow hwmon job.<br>
<br>
As I understand it, the proposed IIO interface for thermal is due to a need <br>
for a low overhead fat pipe to userspace governors. <br>
<br>
Current bit IIO doesn&#39;t do that are relevant:<br>
1) event access within the kernel (trip points?) Userspace interface been present from the start.<br>
2) multiple trip points of the same type.<br>
(Not a big addition but not relevant for<br>
 our core use cases and mostly only present on hwmon chips)<br>
<br>
Note ultimate intent for a long time has been to fully separate IIO backend and<br>
 frontend (userspace interface). No one has had time to work on this for a while<br>
 though. So right now you can sit what you like on IIO but the IIO interface will be<br>
 there as well, if unused.<br>
<br>
Speaking of which, don&#39;t forget the other overlapping subsystems.<br>
<br>
E.g. input and battery/power. <br>
We have a non mainline input bridge and<br>
 a few users for battery monitoring in mainline.<br>
<br>
At the end of the day lots of things (fast and slow) can be wired up to ridiculous rate ADCs. Not unusual on SOCs for a<br>
 1Msp ADC to be used to read the battery voltage.<br>
<br>
Plus there will always be someone out there using a £1000+ IMUs in their gaming rig <br>
<br>
Jonathan<br>
<br>
<br>
&gt;<br>
&gt;BR,<br>
&gt;<br>
&gt;Eduardo Valentin<br>
&gt;&gt; <br>
&gt;&gt; Maybe just have a look into drivers/hwmon/pmbus/ltc2978.c, and let me<br>
&gt;know<br>
&gt;&gt; where you would like to have this driver (and all the other PMBus<br>
&gt;drivers)<br>
&gt;&gt; moved to.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;&gt; <br>
&gt;&gt; Thanks,<br>
&gt;&gt; Guenter<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; Ksummit-discuss mailing list<br>
&gt;&gt; Ksummit-discuss@lists.linuxfoundation.org<br>
&gt;&gt; <a href="https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss">https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss</a><br>
&gt;<br>
&gt;<br>
&gt;------------------------------------------------------------------------<br>
&gt;<br>
&gt;_______________________________________________<br>
&gt;Ksummit-discuss mailing list<br>
&gt;Ksummit-discuss@lists.linuxfoundation.org<br>
&gt;<a href="https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss">https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss</a><br>
<br>
-- <br>
Sent from my Android device with K-9 Mail. Please excuse my brevity.
------U11XCDHYFQ9ZGBNUEJFVG78EI2ZQC4--
