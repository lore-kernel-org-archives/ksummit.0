Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id AC7FB681
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 12:37:27 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 6FB391FD42
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 12:37:26 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Tue, 06 May 2014 14:54:03 +0200
Message-ID: <1998761.B2k0A5OtQR@vostro.rjw.lan>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: Len Brown <len.brown@intel.com>, Peter Zijlstra <peterz@infradead.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Amit Kucheria <amit.kucheria@linaro.org>, Ingo Molnar <mingo@kernel.org>
Subject: [Ksummit-discuss] [TECH(CORE?) TOPIC] Energy conservation bias
	interfaces
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi All,

During a recent discussion on linux-pm/LKML regarding the integration of the
scheduler with cpuidle (http://marc.info/?t=139834240600003&r=1&w=4) it became
apparent that the kernel might benefit from adding interfaces to let it know
how far it should go with saving energy, possibly at the expense of performance.

First of all, it would be good to have a place where subsystems and device
drivers can go and check what the current "energy conservation bias" is in
case they need to make a decision between delivering more performance and
using less energy.  Second, it would be good to provide user space with
a means to tell the kernel whether it should care more about performance or
energy.  Finally, it would be good to be able to adjust the overall "energy
conservation bias" automatically in response to certain "power" events such
as "battery is low/critical" etc.

It doesn't seem to be clear currently what level and scope of such interfaces
is appropriate and where to place them.  Would a global knob be useful?  Or
should they be per-subsystem, per-driver, per-task, per-cgroup etc?

It also is not particularly clear what representation of "energy conservation
bias" would be most useful.  Should that be a number or a set of well-defined
discrete levels that can be given names (like "max performance", "high
prerformance", "balanced" etc.)?  If a number, then what units to use and
how many different values to take into account?

The people involved in the scheduler/cpuidle discussion mentioned above were:
 * Amit Kucheria
 * Ingo Molnar
 * Daniel Lezcano
 * Morten Rasmussen
 * Peter Zijlstra
and me, but I think that this topic may be interesting to others too (especially
to Len who proposed a global "enefgy conservation bias" interface a few years ago).

Please let me know what you think.

Kind regards,
Rafael
