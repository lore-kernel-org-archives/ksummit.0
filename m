Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 687D0979
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 23:31:37 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id C1DE020221
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 23:31:35 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: "Iyer, Sundar" <sundar.iyer@intel.com>
Date: Wed, 14 May 2014 01:48:21 +0200
Message-ID: <2318151.NuuLSnU6l6@vostro.rjw.lan>
In-Reply-To: <2FABAEF0D3DCAF4F9C9628D6E2F9684533B513B5@BGSMSX102.gar.corp.intel.com>
References: <2FABAEF0D3DCAF4F9C9628D6E2F9684533B4C781@BGSMSX102.gar.corp.intel.com>
	<20140512103144.GA5540@e103034-lin>
	<2FABAEF0D3DCAF4F9C9628D6E2F9684533B513B5@BGSMSX102.gar.corp.intel.com>
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

On Monday, May 12, 2014 10:55:23 AM Iyer, Sundar wrote:
> > -----Original Message-----
> > From: Morten Rasmussen [mailto:morten.rasmussen@arm.com]
> > Sent: Monday, May 12, 2014 4:02 PM
> >
> > > And which is why I mentioned that this is heavily platform dependent.
> > > This is completely dependent on how the rest of the system power
> > management works.
> > 
> > Agree. Race to halt/idle is not universally a good idea. It depends of the
> > platform energy efficiency at the higher performance states, idle power
> > consumption, system topology, use-case, and anything else that consumes
> > power while the tasks are running. For example, if your energy efficiency is
> > really bad in the turbo states, it might be worth going a bit slower if the total
> > energy can be reduced.
> 
> Apart from the specifics of the CPU/topology, race to halt doesn't contribute significant
> to workloads which are offloaded/accelerated: e.g. video, media workloads.
> 
> That said, I think the energy conservation boils down to (not limited to):
> 
> a. should we schedule wide (multiple CPUs) vs local (fewer CPUs);
> b. should we burst (higher P-states) vs run slow (lower P-states); 
> c. is the control resource (power, clock etc.) shared wide or local to the unit;
> d. Is the "local good" aka sub-system conservation resulting in "global good" aka
> platform conservation?
> e. what is the extent of options we want to load the user with: is the user going to toggle
> some 200 switches to get the best experience or the user space/kernel will abstract a bulk
> of these and provide more intelligent actions/decisions?
> 
> And I think the following should be the general outline of any efforts:
> 
> a. if the savings result in violation of any user defined quality-of-service for the experience (
> finite FPS, finite computational requirements like encode/decode compute requirement etc.)
> b. if we can conserve energy at the "platform" level vs "sub-system" level;
> c. If we do save @ the "sub-system" level, how much of this is dependent on the specific
> system architecture/topology/ vs "generic"; or in other words, how much of hit will a different
> architecture suffer (?)

All of these things are worth considering, I agree.

That said, my original question was about what kind of interfaces related to
energy conservation bias were needed.

Can you derive any suggestions from the above?


-- 
I speak only for myself.
Rafael J. Wysocki, Intel Open Source Technology Center.
