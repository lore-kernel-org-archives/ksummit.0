Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9A1CDA97
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Aug 2015 23:55:21 +0000 (UTC)
Received: from bh-25.webhostbox.net (bh-25.webhostbox.net [208.91.199.152])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9A4AE10B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Aug 2015 23:55:20 +0000 (UTC)
Date: Tue, 25 Aug 2015 16:55:18 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Heiko Stuebner <heiko@sntech.de>
Message-ID: <20150825235518.GA31163@roeck-us.net>
References: <20150825061208.GA13186@localhost.localdomain>
	<2185734.lNGgzKaky2@phil>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2185734.lNGgzKaky2@phil>
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

On Tue, Aug 25, 2015 at 11:31:46PM +0200, Heiko Stuebner wrote:
> 
> So far I always thought hwmon was some sort of grandfather to the thermal 
> subsystem without any specific api, but I've also not needed one at all yet.
> 
Yes, I have heard that before.

Its scope is quite different, though. One does thermal management, one monitors
the hardware. Monitoring the hardware is a bit more than just monitoring its
temperature. It also means to monitor and report voltages, current, power,
energy, humidity, and fan speeds, as well as associated alarms. Thermal
management takes an active role, hardware monitoring by its nature doesn't.

On top of that, many devices report much more than temperatures.
System managers may report and sometimes control all of the above. SuperIO
chips monitor voltages, temperatures, and fan speeds, and often implement fan
control. PMBus devices primarily control voltages, but may report literally
everything except for humidity (including fan speeds). And so on. 

Maybe just have a look into drivers/hwmon/pmbus/ltc2978.c, and let me know
where you would like to have this driver (and all the other PMBus drivers)
moved to.

Thanks,
Guenter
