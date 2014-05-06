Return-Path: <davej@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 15DFE996
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 13:37:35 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id B11091FAA9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 13:37:34 +0000 (UTC)
Date: Tue, 6 May 2014 09:37:01 -0400
From: Dave Jones <davej@redhat.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <20140506133701.GB16222@redhat.com>
References: <1998761.B2k0A5OtQR@vostro.rjw.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1998761.B2k0A5OtQR@vostro.rjw.lan>
Cc: Len Brown <len.brown@intel.com>, ksummit-discuss@lists.linuxfoundation.org,
	Peter Zijlstra <peterz@infradead.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Amit Kucheria <amit.kucheria@linaro.org>, Ingo Molnar <mingo@kernel.org>
Subject: Re: [Ksummit-discuss] [TECH(CORE?) TOPIC] Energy conservation bias
 interfaces
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, May 06, 2014 at 02:54:03PM +0200, Rafael J. Wysocki wrote:

 > First of all, it would be good to have a place where subsystems and device
 > drivers can go and check what the current "energy conservation bias" is in
 > case they need to make a decision between delivering more performance and
 > using less energy.  Second, it would be good to provide user space with
 > a means to tell the kernel whether it should care more about performance or
 > energy.  Finally, it would be good to be able to adjust the overall "energy
 > conservation bias" automatically in response to certain "power" events such
 > as "battery is low/critical" etc.
 > 
 > It doesn't seem to be clear currently what level and scope of such interfaces
 > is appropriate and where to place them.  Would a global knob be useful?  Or
 > should they be per-subsystem, per-driver, per-task, per-cgroup etc?

I had thoughts about something along these lines a few years ago, when I
was still doing cpufreq stuff.

Using s/cpuidle/cpufreq/ but same principles..

 > It also is not particularly clear what representation of "energy conservation
 > bias" would be most useful.  Should that be a number or a set of well-defined
 > discrete levels that can be given names (like "max performance", "high
 > prerformance", "balanced" etc.)?  If a number, then what units to use and
 > how many different values to take into account?

I always thought that exposing frequencies to userspace was cpufreq's
biggest mistake.  If I were to do it all over again, I would do
something probably like the latter example above.

Switching governors from working system-wide to per-process would allow
users to make a lot more decisions like "don't ever change speed for
this pid", which isn't really do-able with our existing framework.

What /proc/pid/power/policy defaults to for each new pid would likely
still need to be configurable, but having users able to set the global
policy to dynamic (ie, on-demand) scaling, while also being able to do

 echo powersave > /proc/$(pidof seti-alien-detector)/power/policy

would I think be a much more deterministic interface over what we have now.
(Plus apps themselves could set their own policy this way).

The advantage of moving to policy names vs frequencies also means that
we could use a single power saving policy for cpufreq, cpuidle, and
whatever else we come up with.

The scheduler might also be able to make better decisions if we maintain
separate lists for each policy-type, prioritizing performance over
power-save etc.

	Dave
