Return-Path: <preeti@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 0EFBCACC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 16:10:46 +0000 (UTC)
Received: from e35.co.us.ibm.com (e35.co.us.ibm.com [32.97.110.153])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D13F92020E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 16:10:43 +0000 (UTC)
Received: from /spool/local
	by e35.co.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
	Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<preeti@linux.vnet.ibm.com>; Mon, 12 May 2014 10:10:43 -0600
Received: from b03cxnp08028.gho.boulder.ibm.com
	(b03cxnp08028.gho.boulder.ibm.com [9.17.130.20])
	by d03dlp01.boulder.ibm.com (Postfix) with ESMTP id 5D27F1FF0044
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 10:10:39 -0600 (MDT)
Received: from d03av04.boulder.ibm.com (d03av04.boulder.ibm.com [9.17.195.170])
	by b03cxnp08028.gho.boulder.ibm.com (8.13.8/8.13.8/NCO v10.0) with
	ESMTP id s4CGAd6V65667196
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 18:10:39 +0200
Received: from d03av04.boulder.ibm.com (loopback [127.0.0.1])
	by d03av04.boulder.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP
	id s4CGAcGx009796 for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 10:10:39 -0600
Message-ID: <5370F177.7080109@linux.vnet.ibm.com>
Date: Mon, 12 May 2014 21:36:15 +0530
From: Preeti U Murthy <preeti@linux.vnet.ibm.com>
MIME-Version: 1.0
To: "Iyer, Sundar" <sundar.iyer@intel.com>
References: <2FABAEF0D3DCAF4F9C9628D6E2F9684533B4C781@BGSMSX102.gar.corp.intel.com>
	<536B477B.2030800@linux.vnet.ibm.com>
	<2FABAEF0D3DCAF4F9C9628D6E2F9684533B4DABB@BGSMSX102.gar.corp.intel.com>
In-Reply-To: <2FABAEF0D3DCAF4F9C9628D6E2F9684533B4DABB@BGSMSX102.gar.corp.intel.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
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

On 05/08/2014 07:53 PM, Iyer, Sundar wrote:
>> -----Original Message-----
>> From: Preeti U Murthy [mailto:preeti@linux.vnet.ibm.com]
>> Sent: Thursday, May 8, 2014 2:30 PM
>> To: Iyer, Sundar; Peter Zijlstra; Rafael J. Wysocki
>> Cc: Brown, Len; Daniel Lezcano; Ingo Molnar; ksummit-
> 
>> True that 'race to halt' also ends up saving energy. But when the kernel goes
>> conservative on energy, the scheduler would look at racing to idle *within a
>> power domain* as much as possible. Only if the load crosses a certain
>> threshold would it spread across to other power domains.
> 
> I think Rafael mentioned in an another thread about shared supplies and resources.
> In such a case, the race-to-idle within a power domain may actually negate the overall
> platform savings.

Perhaps. However that does not mean that we will not save any power.

To answer your below question, I was referring to the CPU power domains
since we were talking about 'race to halt'. Scheduler spreading the
tasks across cpus leads to race to halt and possibly saving power since
the tasks finish quicker.

That told, with regard to power savings when there are shared resources,
if the scheduler consolidates tasks to one socket out of two because the
arch exposed the sockets as separate power domains, we will save power
at a processor level. However if they have shared memory controllers, it
would mean that the controller would still be powered on. That is still
fine and we cannot do much about it given the condition that there are
some tasks on the system. But we *can* save power somewhere; better than
not being aware of the power domains and randomly spreading tasks.

This patch lkml.org/lkml/2014/4/11/142 introduces the concept of CPU
power domains precisely to help the scheduler decide the placement of
tasks better for power savings.

> 
> And to confirm, you are referring to generic power domains beyond the CPU right?
> 
>> These are general heuristics. These simple heuristics must work out for most
>> platforms but may not work for all. If it works for majority of the cases then
>> I believe we can safely call it a success.
> 
> And which is why I mentioned that this is heavily platform dependent. This is 
> completely dependent on how the rest of the system power management works.

I don't think you can say *completely* dependent on the platform. If
every aspect of power management is dependent on the platform, there is
very little we can do in the kernel.

The cpuidle sub-system is behaving fairly well on some of the platforms.
A lot of CPU  power management is platform specific. But by exposing
arch specific details like the details about the idle states that are
present, through the cpuidle drivers, the kernel is able to make
reasonably good predictions about the duration of idleness of a cpu and
choose the idle state that it must enter into.
  The point is that we have succeeded in the past in getting the high
level power management reasonably right in the kernel although they were
platform dependent.

Regards
Preeti U Murthy

> 
> Cheers!
> 
