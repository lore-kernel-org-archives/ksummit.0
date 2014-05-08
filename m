Return-Path: <sundar.iyer@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id ACB49927
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 May 2014 14:24:03 +0000 (UTC)
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 6037F201A1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 May 2014 14:24:03 +0000 (UTC)
From: "Iyer, Sundar" <sundar.iyer@intel.com>
To: Preeti U Murthy <preeti@linux.vnet.ibm.com>, Peter Zijlstra
	<peterz@infradead.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>
Date: Thu, 8 May 2014 14:23:58 +0000
Message-ID: <2FABAEF0D3DCAF4F9C9628D6E2F9684533B4DABB@BGSMSX102.gar.corp.intel.com>
References: <2FABAEF0D3DCAF4F9C9628D6E2F9684533B4C781@BGSMSX102.gar.corp.intel.com>
	<536B477B.2030800@linux.vnet.ibm.com>
In-Reply-To: <536B477B.2030800@linux.vnet.ibm.com>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: "Brown, Len" <len.brown@intel.com>,
	Daniel Lezcano <daniel.lezcano@linaro.org>, Ingo Molnar <mingo@kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
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
> Sent: Thursday, May 8, 2014 2:30 PM
> To: Iyer, Sundar; Peter Zijlstra; Rafael J. Wysocki
> Cc: Brown, Len; Daniel Lezcano; Ingo Molnar; ksummit-

> True that 'race to halt' also ends up saving energy. But when the kernel =
goes
> conservative on energy, the scheduler would look at racing to idle *withi=
n a
> power domain* as much as possible. Only if the load crosses a certain
> threshold would it spread across to other power domains.

I think Rafael mentioned in an another thread about shared supplies and res=
ources.
In such a case, the race-to-idle within a power domain may actually negate =
the overall
platform savings.

And to confirm, you are referring to generic power domains beyond the CPU r=
ight?

> These are general heuristics. These simple heuristics must work out for m=
ost
> platforms but may not work for all. If it works for majority of the cases=
 then
> I believe we can safely call it a success.

And which is why I mentioned that this is heavily platform dependent. This =
is=20
completely dependent on how the rest of the system power management works.

Cheers!
