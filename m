Return-Path: <sundar.iyer@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 2756CADE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 17:31:46 +0000 (UTC)
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id C4DEB20352
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 17:31:45 +0000 (UTC)
From: "Iyer, Sundar" <sundar.iyer@intel.com>
To: Preeti U Murthy <preeti@linux.vnet.ibm.com>, Morten Rasmussen
	<morten.rasmussen@arm.com>
Date: Mon, 12 May 2014 17:30:58 +0000
Message-ID: <2FABAEF0D3DCAF4F9C9628D6E2F9684533B51950@BGSMSX102.gar.corp.intel.com>
References: <2FABAEF0D3DCAF4F9C9628D6E2F9684533B4C781@BGSMSX102.gar.corp.intel.com>
	<536B477B.2030800@linux.vnet.ibm.com>
	<20140512111407.GB5540@e103034-lin>
	<53710132.60506@linux.vnet.ibm.com>
In-Reply-To: <53710132.60506@linux.vnet.ibm.com>
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
> From: Preeti U Murthy [mailto:preeti@linux.vnet.ibm.com]
> Sent: Monday, May 12, 2014 10:43 PM
> To: Morten Rasmussen
>=20
> You are right. We shouldn't be exposing so many knobs to user-space and
> expect the kernel to make good decisions based on these knobs being
> tweaked by user space. How about a high level classification of profiles =
like
> balanced, performance, powersave? These alone can be chosen by the user
> and the lower end tunings left to the discretion of the kernel.

Also, may I suggest to try to limit the discussion preliminary to CPU only?=
 Should
we try to see if we can get a detailed policy, conditions specifically w.r.=
t CPU scheduling?

I am trying to sum up thoughts in my mind; please correct/add/edit as neede=
d.

Scheduler options:
a. Spread wide: Utilize as much as CPUs as possible for tasks
b. Limit Local: Utilize as less as CPUs as possible.

Resources impacting these options:
a. if CPUs share common resources like power;
b. if CPUs share common cache; OIOW, cost of moving data around CPUs
c. CPU Energy efficiency profiles (BIG or little or xyz)

Factors affecting these options:

Ideally, we would like to spread wide if:
a. tasks/processes are heavily multi-threaded and parallelized;
b. asynchronous tasks that are single threaded and shifting them to multipl=
e CPUs will
avoid boosting CPU load and hence P-states;
c. there is explicit hint from the application/user space about lack of dat=
a dependency;

does the list seem good to start?

Cheers!
