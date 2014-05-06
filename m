Return-Path: <morten.rasmussen@arm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 679968B4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 14:35:04 +0000 (UTC)
Received: from collaborate-mta1.arm.com (fw-tnat.austin.arm.com
	[217.140.110.23])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id E0ADE1FD46
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 14:35:03 +0000 (UTC)
Date: Tue, 6 May 2014 15:34:49 +0100
From: Morten Rasmussen <morten.rasmussen@arm.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <20140506143449.GA2779@e103034-lin>
References: <1998761.B2k0A5OtQR@vostro.rjw.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1998761.B2k0A5OtQR@vostro.rjw.lan>
Cc: Len Brown <len.brown@intel.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
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

On Tue, May 06, 2014 at 01:54:03PM +0100, Rafael J. Wysocki wrote:
> Hi All,
> 
> During a recent discussion on linux-pm/LKML regarding the integration of the
> scheduler with cpuidle (http://marc.info/?t=139834240600003&r=1&w=4) it became
> apparent that the kernel might benefit from adding interfaces to let it know
> how far it should go with saving energy, possibly at the expense of performance.
> 
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

A single global knob would mean that all subsystems and drivers would go
into performance mode if just one task needs high performance in one
subsystem (unless we ignore the request and let the task suffer). I
think that would be acceptable? Userspace/muddleware would have to
continuously track task requirements and when they are active to
influence the current knob setting. Either by setting it directly or
providing input to the kernel that affects the current knob setting.

> It also is not particularly clear what representation of "energy conservation
> bias" would be most useful.  Should that be a number or a set of well-defined
> discrete levels that can be given names (like "max performance", "high
> prerformance", "balanced" etc.)?  If a number, then what units to use and
> how many different values to take into account?

I don't think two or three discrete settings would be sufficient. As
mentioned in the thread, energy-awareness is not a big switch to turn
everything off or down to a minimum. It is a change of optimization
objective to also consider energy along with performance. The question
is how much performance we are willing to sacrifice to save energy.
IMHO, your energy value proposal in the thread would be useful to make
that decision. However, units and if it is useful for all subsystems and
drivers is unclear to me.

> The people involved in the scheduler/cpuidle discussion mentioned above were:
>  * Amit Kucheria
>  * Ingo Molnar
>  * Daniel Lezcano
>  * Morten Rasmussen
>  * Peter Zijlstra
> and me, but I think that this topic may be interesting to others too (especially
> to Len who proposed a global "enefgy conservation bias" interface a few years ago).
> 
> Please let me know what you think.

I'm indeed interested in this topic.

Thanks,
Morten
