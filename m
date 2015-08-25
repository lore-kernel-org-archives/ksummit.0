Return-Path: <heiko@sntech.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 01860C00
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Aug 2015 21:31:59 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [95.129.55.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E78DA1B7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Aug 2015 21:31:57 +0000 (UTC)
From: Heiko Stuebner <heiko@sntech.de>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Tue, 25 Aug 2015 23:31:46 +0200
Message-ID: <2185734.lNGgzKaky2@phil>
In-Reply-To: <20150825061208.GA13186@localhost.localdomain>
References: <20150825061208.GA13186@localhost.localdomain>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
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

Am Montag, 24. August 2015, 23:12:10 schrieb Eduardo Valentin:
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
> 
> Therefore, it would be interesting to have a better convergence on how
> these subsystems talk to each other, and how this is exposed to user
> space.

On Rockchip we currently have two scenarios:

rk3066 simply has a "dumb" (ts-)adc just emitting voltages and is actually the 
same ip as the saradc and thus an iio adc driver. It will need something like 
the iio-thermal driver that was posted by someone quite some time ago to 
actually get temperatures and act on them.

The rk3288 on the other hand has a much more intelligent tsadc - including 
temperature-specific actions, which also already has a thermal driver in the 
kernel.


So far I always thought hwmon was some sort of grandfather to the thermal 
subsystem without any specific api, but I've also not needed one at all yet.


Heiko
