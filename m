Return-Path: <morten.rasmussen@arm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 4CAE34C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 10:32:08 +0000 (UTC)
Received: from collaborate-mta1.arm.com (fw-tnat.austin.arm.com
	[217.140.110.23])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 247421F977
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 10:31:55 +0000 (UTC)
Date: Mon, 12 May 2014 11:31:44 +0100
From: Morten Rasmussen <morten.rasmussen@arm.com>
To: "Iyer, Sundar" <sundar.iyer@intel.com>
Message-ID: <20140512103144.GA5540@e103034-lin>
References: <2FABAEF0D3DCAF4F9C9628D6E2F9684533B4C781@BGSMSX102.gar.corp.intel.com>
	<536B477B.2030800@linux.vnet.ibm.com>
	<2FABAEF0D3DCAF4F9C9628D6E2F9684533B4DABB@BGSMSX102.gar.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2FABAEF0D3DCAF4F9C9628D6E2F9684533B4DABB@BGSMSX102.gar.corp.intel.com>
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

On Thu, May 08, 2014 at 03:23:58PM +0100, Iyer, Sundar wrote:
> > -----Original Message-----
> > From: Preeti U Murthy [mailto:preeti@linux.vnet.ibm.com]
> > Sent: Thursday, May 8, 2014 2:30 PM
> > To: Iyer, Sundar; Peter Zijlstra; Rafael J. Wysocki
> > Cc: Brown, Len; Daniel Lezcano; Ingo Molnar; ksummit-
> 
> > True that 'race to halt' also ends up saving energy. But when the kernel goes
> > conservative on energy, the scheduler would look at racing to idle *within a
> > power domain* as much as possible. Only if the load crosses a certain
> > threshold would it spread across to other power domains.
> 
> I think Rafael mentioned in an another thread about shared supplies and resources.
> In such a case, the race-to-idle within a power domain may actually negate the overall
> platform savings.
> 
> And to confirm, you are referring to generic power domains beyond the CPU right?
> 
> > These are general heuristics. These simple heuristics must work out for most
> > platforms but may not work for all. If it works for majority of the cases then
> > I believe we can safely call it a success.
> 
> And which is why I mentioned that this is heavily platform dependent. This is 
> completely dependent on how the rest of the system power management works.

Agree. Race to halt/idle is not universally a good idea. It depends of
the platform energy efficiency at the higher performance states, idle
power consumption, system topology, use-case, and anything else that
consumes power while the tasks are running. For example, if your energy
efficiency is really bad in the turbo states, it might be worth going a
bit slower if the total energy can be reduced.
