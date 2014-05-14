Return-Path: <lorenzo.pieralisi@arm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 041642FA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 10:43:35 +0000 (UTC)
Received: from service87.mimecast.com (service87.mimecast.com [91.220.42.44])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 67D471FA97
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 10:43:33 +0000 (UTC)
Date: Wed, 14 May 2014 11:37:17 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Preeti U Murthy <preeti@linux.vnet.ibm.com>
Message-ID: <20140514103717.GA20860@e102568-lin.cambridge.arm.com>
References: <20140512153234.GE23253@e103034-lin>
	<53733EE4.4080605@linux.vnet.ibm.com>
MIME-Version: 1.0
In-Reply-To: <53733EE4.4080605@linux.vnet.ibm.com>
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
Cc: Peter Zijlstra <peterz@infradead.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, Ingo Molnar <mingo@kernel.org>
Subject: Re: [Ksummit-discuss] Energy-aware Scheduling Workshop
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Preeti,

On Wed, May 14, 2014 at 11:01:08AM +0100, Preeti U Murthy wrote:
> Hi Morten,
>=20
> Thank you for initiating this.
>=20
> On 05/12/2014 09:02 PM, Morten Rasmussen wrote:
> > Hi,
> >=20
> > Last year's Energy-Aware Scheduling workshop [1,2] was a good
> > opportunity for interested parties to discuss some of the open issues i=
n
> > this area face to face. While work is still ongoing on many of the
> > topics that were discussed, it might be worth having workshop again thi=
s
> > year to follow up, revise the plans if necessary, and discuss topics
> > that were not covered last year.
> >=20
> > Before submitting a workshop proposal to the Ksummit PC I would like to
> > probe the interest. IMO, it is important that we have scheduler
> > maintainers present.
> >=20
> > Workshop topic proposals:
> >=20
> > Test cases
> > Use-cases for high-end phones (which some of us care about) consist of
> > rather complex software stacks which are not suitable for quick patch
> > testing [3]. While we can't avoid testing using the full software stack
> > in the end, it would be useful to have configurable micro-benchmarks fo=
r
> > initial testing and to reproduce specific scheduling patterns from the
> > full use-case for debugging purposes.
> >=20
> > Energy Evaluation
> > A hot topic last year. We need a way to evaluate energy-awareness
> > patches. Work has started on an idle state analysis tool [4], but we ar=
e
> > not there yet.
> >=20
>=20
> An interesting sub topic pertaining to evaluation would be deciding the
> target residency of idle states. How do we know if the target residency
> set for the different idle states is set optimally? The cpuidle governor
> bases its decisions of the idle state to enter into based on numbers
> such as these. If it is too stringent we would be hampering power savings=
.
>=20
> We could run different benchmarks with different degree of utilization.
> And observe how much of the idle time is spent in different idle states.
> If it is too less in a particular idle state we can up the target
> residency of that idle state to begin with. This is static setting and
> we hard code the target residency like now. Will a dynamic setting of
> metrics like these help us in any way?

It might, as long as you are able to monitor energy in the kernel.
target_residency is expressed in time, but must be evaluated in energy
terms, it is a break-even point. It strictly depends on the dynamic state
of the CPU when it goes idle, hence not really easy to factor in.

On ARM, it depends on a slew of factors, inclusive of the number of
dirty caches lines (ie memory writebacks), running CPU frequency, memory
frequency and the list goes on and on and on.

I am not even taking into account CPU idle states (C-states) whose power
domains span devices such as GPUs.

It is certainly an interesting topic, I gave a presentation on this
at Linaro Connect in 2013, I would be happy to share the results and debate
it if I am able to attend.

> This was just an example to show that there are interesting problems
> around "tuning" of power management metrics. It would be very helpful if
> the maintainers relevant to this workshop guide us on this.

I would be certainly happy to explain to you how idle states work on ARM
systems and the factors contributing to target_residency and other idle
states parameters.

Thanks,
Lorenzo
