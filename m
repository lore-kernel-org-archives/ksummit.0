Return-Path: <k.kozlowski@samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DF83DBC1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Aug 2015 06:26:59 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
	[210.118.77.11])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 39F94151
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Aug 2015 06:26:59 +0000 (UTC)
Received: from eucpsbgm2.samsung.com (unknown [203.254.199.245])
	by mailout1.w1.samsung.com
	(Oracle Communications Messaging Server 7.0.5.31.0 64bit (built May 5
	2014)) with ESMTP id <0NTM00F94KKMZF10@mailout1.w1.samsung.com> for
	ksummit-discuss@lists.linuxfoundation.org; Tue,
	25 Aug 2015 07:26:46 +0100 (BST)
Message-id: <55DC0AA3.6010801@samsung.com>
Date: Tue, 25 Aug 2015 15:26:43 +0900
From: Krzysztof Kozlowski <k.kozlowski@samsung.com>
MIME-version: 1.0
To: Eduardo Valentin <edubezval@gmail.com>,
	ksummit-discuss@lists.linuxfoundation.org
References: <20150825061208.GA13186@localhost.localdomain>
In-reply-to: <20150825061208.GA13186@localhost.localdomain>
Content-type: text/plain; charset=windows-1252
Content-transfer-encoding: 7bit
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

On 25.08.2015 15:12, Eduardo Valentin wrote:
> Hi all,
> 
> [Not sure if this is TECH or CORE, as it touches more than one
> subsystem]
> 
> Not sure how late it is to post this, but I am trying anyway.
> 
> During LPC 2015 last week it came out the topic of the interaction
> between the thermal subsystem with HWMON. On top of it, we also got a
> proposal [1] of having thermal exposing its registered devices as IIO.
> 
> I know the three subsystem coexist today for some years. They also have
> their own design goals. However, the fact that we have three different
> subsystems for doing very similar task may be confusing, for the driver
> writer, and for user space too.
> 
> Another aspect of it is the possible code duplication. For example, it
> would interesting to get board temperature sensors, typically registered
> as hwmon devices, to be available in the thermal subsystem while
> constructing thermal zones out of them. Some user process would expect
> the opposite though, to read the thermal zone sensors as hwmon devices,
> or as IIO devices.

I would rather expect using only one subsystem for exporting this
information to user-space. If the susbsytem lacks some features then it
could be expanded.

Some power supply drivers (fuel gauges or chargers) also provide
temperature data. They use the thermal for that. It would be weird to
export them through IIO...

Anyway from that point of view the topic is interesting to me.

Best regards,
Krzysztof

> 
> Therefore, it would be interesting to have a better convergence on how
> these subsystems talk to each other, and how this is exposed to user
> space. 
> 
> The involved maintainers are:
> HWMON:
> M:      Jean Delvare <jdelvare@suse.com>
> M:      Guenter Roeck <linux@roeck-us.net>
> 
> Thermal:
> M:      Zhang Rui <rui.zhang@intel.com>
> M:      Eduardo Valentin <edubezval@gmail.com>
> 
> IIO:
> M:      Jonathan Cameron <jic23@kernel.org>
> 
> BR,
> 
> Eduardo Valentin
> 
> [1] - http://comments.gmane.org/gmane.linux.kernel.iio/19627
> 
> 
> 
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
> 
