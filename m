Return-Path: <amit.kucheria@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 2C6444C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 10:21:43 +0000 (UTC)
Received: from mail-vc0-f181.google.com (mail-vc0-f181.google.com
	[209.85.220.181])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8606B1FA97
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 10:21:42 +0000 (UTC)
Received: by mail-vc0-f181.google.com with SMTP id ld13so2110919vcb.26
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 03:21:41 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <53733EE4.4080605@linux.vnet.ibm.com>
References: <20140512153234.GE23253@e103034-lin>
	<53733EE4.4080605@linux.vnet.ibm.com>
Date: Wed, 14 May 2014 15:51:41 +0530
Message-ID: <CAP245DUsYPk4gheGsfQzpRUacbbqk4KMZ7=r-=XkOw8=yfJYkw@mail.gmail.com>
From: Amit Kucheria <amit.kucheria@linaro.org>
To: Preeti U Murthy <preeti@linux.vnet.ibm.com>,
	Daniel Lezcano <daniel.lezcano@linaro.org>
Content-Type: text/plain; charset=UTF-8
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

On Wed, May 14, 2014 at 3:31 PM, Preeti U Murthy
<preeti@linux.vnet.ibm.com> wrote:
> Hi Morten,
>
> Thank you for initiating this.
>
> On 05/12/2014 09:02 PM, Morten Rasmussen wrote:
>> Hi,
>>
>> Last year's Energy-Aware Scheduling workshop [1,2] was a good
>> opportunity for interested parties to discuss some of the open issues in
>> this area face to face. While work is still ongoing on many of the
>> topics that were discussed, it might be worth having workshop again this
>> year to follow up, revise the plans if necessary, and discuss topics
>> that were not covered last year.
>>
>> Before submitting a workshop proposal to the Ksummit PC I would like to
>> probe the interest. IMO, it is important that we have scheduler
>> maintainers present.
>>
>> Workshop topic proposals:
>>
>> Test cases
>> Use-cases for high-end phones (which some of us care about) consist of
>> rather complex software stacks which are not suitable for quick patch
>> testing [3]. While we can't avoid testing using the full software stack
>> in the end, it would be useful to have configurable micro-benchmarks for
>> initial testing and to reproduce specific scheduling patterns from the
>> full use-case for debugging purposes.
>>
>> Energy Evaluation
>> A hot topic last year. We need a way to evaluate energy-awareness
>> patches. Work has started on an idle state analysis tool [4], but we are
>> not there yet.
>>
>
> An interesting sub topic pertaining to evaluation would be deciding the
> target residency of idle states. How do we know if the target residency
> set for the different idle states is set optimally? The cpuidle governor
> bases its decisions of the idle state to enter into based on numbers
> such as these. If it is too stringent we would be hampering power savings.
>
> We could run different benchmarks with different degree of utilization.
> And observe how much of the idle time is spent in different idle states.
> If it is too less in a particular idle state we can up the target
> residency of that idle state to begin with. This is static setting and
> we hard code the target residency like now. Will a dynamic setting of
> metrics like these help us in any way?

Preeti,

We've created a tool called idlestat[1] that traces the cpuidle and
cpufreq code paths and then creates a report about how often each
state was reached, average residency, etc.

We're currently experimenting with a patch to output how often we
mispredict the idle state and are seeing some good corelation with
actual power measurements. Dynamic residency might be a solution, but
first we need to understand how bad the problem is. That is what this
tool is designed to solve. It also helps provide a qualitative feel
for kernel behaviour without requiring HW hacking to measure various
power rails.

Daniel and I'd be interested in talking about idlestat and share our
findings about using it to study change in kernel behaviour due to
certain patchsets.

Regards,
Amit
[1] https://git.linaro.org/power/idlestat.git
