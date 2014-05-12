Return-Path: <sundar.iyer@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 698139C3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 10:55:29 +0000 (UTC)
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 429A520119
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 10:55:28 +0000 (UTC)
From: "Iyer, Sundar" <sundar.iyer@intel.com>
To: Morten Rasmussen <morten.rasmussen@arm.com>
Date: Mon, 12 May 2014 10:55:23 +0000
Message-ID: <2FABAEF0D3DCAF4F9C9628D6E2F9684533B513B5@BGSMSX102.gar.corp.intel.com>
References: <2FABAEF0D3DCAF4F9C9628D6E2F9684533B4C781@BGSMSX102.gar.corp.intel.com>
	<536B477B.2030800@linux.vnet.ibm.com>
	<2FABAEF0D3DCAF4F9C9628D6E2F9684533B4DABB@BGSMSX102.gar.corp.intel.com>
	<20140512103144.GA5540@e103034-lin>
In-Reply-To: <20140512103144.GA5540@e103034-lin>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
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

> -----Original Message-----
> From: Morten Rasmussen [mailto:morten.rasmussen@arm.com]
> Sent: Monday, May 12, 2014 4:02 PM
>
> > And which is why I mentioned that this is heavily platform dependent.
> > This is completely dependent on how the rest of the system power
> management works.
>=20
> Agree. Race to halt/idle is not universally a good idea. It depends of th=
e
> platform energy efficiency at the higher performance states, idle power
> consumption, system topology, use-case, and anything else that consumes
> power while the tasks are running. For example, if your energy efficiency=
 is
> really bad in the turbo states, it might be worth going a bit slower if t=
he total
> energy can be reduced.

Apart from the specifics of the CPU/topology, race to halt doesn't contribu=
te significant
to workloads which are offloaded/accelerated: e.g. video, media workloads.

That said, I think the energy conservation boils down to (not limited to):

a. should we schedule wide (multiple CPUs) vs local (fewer CPUs);
b. should we burst (higher P-states) vs run slow (lower P-states);=20
c. is the control resource (power, clock etc.) shared wide or local to the =
unit;
d. Is the "local good" aka sub-system conservation resulting in "global goo=
d" aka
platform conservation?
e. what is the extent of options we want to load the user with: is the user=
 going to toggle
some 200 switches to get the best experience or the user space/kernel will =
abstract a bulk
of these and provide more intelligent actions/decisions?

And I think the following should be the general outline of any efforts:

a. if the savings result in violation of any user defined quality-of-servic=
e for the experience (
finite FPS, finite computational requirements like encode/decode compute re=
quirement etc.)
b. if we can conserve energy at the "platform" level vs "sub-system" level;
c. If we do save @ the "sub-system" level, how much of this is dependent on=
 the specific
system architecture/topology/ vs "generic"; or in other words, how much of =
hit will a different
architecture suffer (?)

Cheers!
=20
