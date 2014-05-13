Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id CB25595A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 23:19:33 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id CE6152020F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 23:19:32 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Preeti U Murthy <preeti@linux.vnet.ibm.com>
Date: Wed, 14 May 2014 01:36:19 +0200
Message-ID: <1704878.GgvXpHngnm@vostro.rjw.lan>
In-Reply-To: <5370FA68.6020100@linux.vnet.ibm.com>
References: <1998761.B2k0A5OtQR@vostro.rjw.lan>
	<2FABAEF0D3DCAF4F9C9628D6E2F9684533B4DB65@BGSMSX102.gar.corp.intel.com>
	<5370FA68.6020100@linux.vnet.ibm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
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

On Monday, May 12, 2014 10:14:24 PM Preeti U Murthy wrote:
> On 05/08/2014 08:27 PM, Iyer, Sundar wrote:
> >> -----Original Message-----
> >> From: ksummit-discuss-bounces@lists.linuxfoundation.org [mailto:ksummit-
> >> discuss-bounces@lists.linuxfoundation.org] On Behalf Of Rafael J.
> >> Wysocki
> >> Sent: Thursday, May 8, 2014 6:28 PM
> >  
> >> That's something I was thinking about too, but the difficulty here is in how to
> >> define the profiles (that is, what settings in each subsystem are going to be
> >> affected by a profile change) and in deciding when to switch profiles and
> >> which profile is the most appropriate going forward.
> >>
> >> IOW, the high-level concept looks nice, but the details of the implementation
> >> are important too. :-)
> > 
> > I agree. Defining these profiles and trying to fit them into a system definition, 
> > system usage policy and above all user usage policy is where the sticking point is.
> > 
> >>> Today cpuidle and cpufreq already expose these settings through
> >>> governors.
> >>
> >> cpufreq governors are kind of tied to specific "energy efficiency" profiles,
> >> performance, powersave, on-demand.  However, cpuidle governors are
> > 
> > I am not sure if that is correct. IMO Cpufreq governors function simply as per
> > policies defined to meet user experience. A system may choose to sacrifice
> > user experience @ the cost of running the CPU at the lowest frequency, but the
> > governor has no idea if it was really energy efficient for the platform. Similarly,
> 
> The governor will never know if it was energy efficient. It will only
> take decisions from the data it has at its behest. And from the data
> that is exposed by the platform, if it appears that running the cpus at
> lowest frequency is the best bet to meet the system policy, it will do
> so. It cannot do better than this IMO and as I pointed in the previous
> mail this should be good enough too. Better than not having a governor no?
> 
> > the governor might decide to run at a higher turbo frequency for better user
> > responsiveness, but it still doesn't know if it was energy efficient running @ those
> > frequencies. I am coming back to the point that energy efficiency is countable
> > _only_ at the platform level: if it results in a longer battery life w/o needing to plug in.
> 
> Not every profile above is catering to energy savings. The very fact
> that the governor decided to run the cpus at turbo frequency means that
> it not looking at energy efficiency but merely at short bursts of high
> performance. This will definitely drop down battery life. But if the
> user chose a profile where turbo mode is enabled it means he is ok with
> these side effects.

You seem to be assuming a bit about the user.  Who may be a kid playing a game
on his phone or tablet and having no idea what "turbo" is whatsoever. :-)

> We know certain general facts about cpu frequencies. Like running in
> turbo mode would mean the cpus could possibly get throttled and lead to
> eventual drop in performance. These are platform level. But having an
> idea about these things help us design the algorithms in the kernel.

That I can agree with, but I wouldn't count on user input too much.

Of course, I'm for giving users who know what they are doing as much power
as reasonably possible, but on the other hand they are not really likely
to use that power, on the average at least.

[cut]

> > 
> > For this specific example, when you say the *user* has chosen the policy, do
> > you mean a user space daemon that takes care of this or the application itself?
> 
> I mean the "user"; i.e. whoever is in charge of deciding the system
> policies. For virtualized systems it could be the system administrator
> who could decide a specific policy for a VM. For laptops it is us, users.

What about phones, tablets, Android-based TV sets, Tizen-based watches??

> > How are we going to know if we will really save energy by limiting deep idle states
> > on all the 10 CPUs? Please help me understand this.
> 
> We will not save energy by limiting idle states.By limiting idle states
> we ensure that we do not affect the latency requirement of the task
> running on the cpu.

OK, so now, to be a little more specific, how is the task supposed to specify
that latency requirement?


-- 
I speak only for myself.
Rafael J. Wysocki, Intel Open Source Technology Center.
