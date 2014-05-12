Return-Path: <morten.rasmussen@arm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id BE1FCAB4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 11:14:19 +0000 (UTC)
Received: from collaborate-mta1.arm.com (fw-tnat.austin.arm.com
	[217.140.110.23])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id AC4CF1FD49
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 11:14:17 +0000 (UTC)
Date: Mon, 12 May 2014 12:14:07 +0100
From: Morten Rasmussen <morten.rasmussen@arm.com>
To: Preeti U Murthy <preeti@linux.vnet.ibm.com>
Message-ID: <20140512111407.GB5540@e103034-lin>
References: <2FABAEF0D3DCAF4F9C9628D6E2F9684533B4C781@BGSMSX102.gar.corp.intel.com>
	<536B477B.2030800@linux.vnet.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <536B477B.2030800@linux.vnet.ibm.com>
Cc: "Brown, Len" <len.brown@intel.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>, Ingo Molnar <mingo@kernel.org>
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

On Thu, May 08, 2014 at 09:59:39AM +0100, Preeti U Murthy wrote:
> On 05/07/2014 10:50 AM, Iyer, Sundar wrote:
> > 
> >>> provide user space with a means to tell the kernel whether it should
> >>> care more about performance or energy.  Finally, it would be good to
> >>> be able to adjust the overall "energy conservation bias" automatically
> > 
> > Instead of either energy or performance, would it be easier to look if
> > it were a "just enough performance" metric? Rather than worry about a reduced
> > performance to save energy, it would be IMO better to try to optimize the energy
> > within the constraints of the required performance. Of course, those constraints
> > could be changed.
> > 
> > e.g. if the display would communicate it doesn't need to refresh more than 60fps,
> > this could be communicated to the GPU/CPU to control the bias for these sub-systems
> > accordingly.
> 
> We don't really give the user a black and white choice like performance
> and power-save alone. There is a proposal for 'auto' profile which
> balances between the two.
> 
> To give an example where we already expose a parameter for defining
> performance constraint is the PM_QOS_CPU_DMA_LATENCY, where we tell the
> cpuidle sub-system that any idle state not adhering to this latency
> requirement should not be entered into. So we are saying you cannot
> sacrifice latency beyond this threshold. Here we look at powersavings
> but within a said constraint.
> 
> The point is we will certainly look to provide the user with a mix and
> match of powersave and performance profiles but to get started we begin
> with powersave and performance.

I think most users would be interested in "auto" or whatever the
performance/energy-effiency trade-off will be called. What would
"powersave" do? Reduce power to a minium? It is energy that users of
battery powered devices are interested in and is generally not minimized
by minimizing power. Race to halt/idle is an excellent example of the
opposite. A powersave setting like the powersave cpufreq governor
wouldn't be very useful IMHO.

I'm much more interested the performance/energy-efficiency trade-off.
That is, how much energy are we willing to pay for a certain level of
performance.

> 
> > 
> >>> in response to certain "power" events such as "battery is low/critical" etc.
> > 
> > Would I be wrong if I said the thermal throttling is already an example of this?
> > When the battery is critical/temperature is unbearable, the system cuts down
> > the performance of sub-systems like CPU, display etc.
> 
> Thermal throttling is an entirely different game altogether IMHO. We
> throttle cpus to save the system from getting heated up and thus
> damaged. That is to say if we don't do this, the system will become
> unusable not just now, but forever.
> 
> However if you look at the example of switching to energy save mode when
> battery is low, this is to give the user a better user experience. IOW
> if we didn't do that the system would die down, the user would have to
> plug in the power supply and restart the machine. It would have wasted
> some of his time. But no harm done,only a dissatisfied user.
> 
> Now compare both the above scenarios: while the former should
> necessarily be there if the platform has enabled turbo cpu frequency
> ranges, the latter is an enhanced kernel behaviour to better end user
> experience.
> 
> We already have safety mechanisms like thermal throttling in the kernel
> and the platforms today. That is not where we lack. We lack in providing
> a better end user experience depending on his requirement for power
> efficiency.

While I agree that there are mechanisms to deal with thermal throttling
already, I think it is somewhat related to energy-awareness. If you need
throttling due to thermal constraints you are burning too much power in
your system. If you factor in energy-effiency and the requirements for
the current use-case you might be able to stay within the power budget
with a smaller performance impact than blindly throttling all
subsystems.

> 
> > 
> >> per-subsystem sounds right to me; I don't care which particular instance of
> >> graphics cards I have, I want whichever one(s) I have to obey.
> >>
> >> global doesn't make sense, like stated earlier I absolutely detest automagic
> >> backlight dimming, whereas I don't particularly care about compute speed at
> >> all.
> > 
> > That calls for highly customized preferences for what to control: in most cases
> > the dimmed backlight itself saves a considerable amount of energy which wouldn't
> > be matched by a CPU (or a GPU) control. On a battery device, the first preference
> > would be to dim out the screen but still allow the user a good battery life and 
> > user experience.
> 
> Thats why I suggested the concept of profiles. If the user does not like
> the existing system profiles, he can derive from one of them that comes
> closes to his requirements and amend his preferences.

IIUC, you are proposing to have profiles setting a lot of kernel
tunables rather than a single knob to control energy-awareness?

My concern with profiles is that it basically exports most of the
energy-awareness decision problems to user-space. Maybe I'm missing
something? IMHO, it would be better to have more accurate energy related
topology information in the kernel so it would be able to take the
decisions.
