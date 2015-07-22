Return-Path: <jiangshanlai@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0591C487
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 22 Jul 2015 14:22:04 +0000 (UTC)
Received: from mail-ig0-f196.google.com (mail-ig0-f196.google.com
	[209.85.213.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4DC54219
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 22 Jul 2015 14:22:03 +0000 (UTC)
Received: by iggf3 with SMTP id f3so6474190igg.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 22 Jul 2015 07:22:02 -0700 (PDT)
MIME-Version: 1.0
Sender: jiangshanlai@gmail.com
In-Reply-To: <20150713095757.GW19282@twins.programming.kicks-ass.net>
References: <CALCETrVPe7ijOHY5BXLPCG5VBxadeZoUDLOBMX+jEFnJynJ8FA@mail.gmail.com>
	<20150709190916.GI1522@ret.masoncoding.com>
	<alpine.DEB.2.11.1507101224440.21165@east.gentwo.org>
	<20150713095757.GW19282@twins.programming.kicks-ass.net>
Date: Wed, 22 Jul 2015 22:22:02 +0800
Message-ID: <CAJhGHyCjkSkgCaCHJioaBMTXcb50E1+Yi-S+anaF52tDWLefrQ@mail.gmail.com>
From: Lai Jiangshan <jiangshanlai+lkml@gmail.com>
To: Peter Zijlstra <peterz@infradead.org>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Jens Axboe <axboe@fb.com>,
	Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
	Shaohua Li <shli@fb.com>, Christoph Lameter <cl@linux.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] lightweight per-cpu locks /
 restartable sequences
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Jul 13, 2015 at 5:57 PM, Peter Zijlstra <peterz@infradead.org> wrote:
> On Fri, Jul 10, 2015 at 12:26:21PM -0500, Christoph Lameter wrote:
>> On Thu, 9 Jul 2015, Chris Mason wrote:
>>
>> > I think the topic is really interesting and we'll be able to get numbers
>> > from production workloads to help justify and compare different
>> > approaches.
>>
>> Ok that would be important. I also think that the approach may be used
>> in kernel to reduce the overhead of CONFIG_PREEMPT and also to implement
>> fast versions of this_cpu_ops for non x86 architectures and maybe even
>
>
> Also, I don't think we need a schedule check for the in-kernel usage,
> pure interrupt should be good enough, nobody should (want to) call
> schedule() while inside such a critical section, which leaves us with
> involuntary preemption, and those are purely interrupt driven.
>
> Now the 'problem' is finding these special regions fast, the easy
> solution is the same as the one proposed for userspace, one big section.
> That way the interrupt only has to check if the IP is inside this
> section which is minimal effort.
>
> The down side is that all percpu ops would then end up being full
> function calls. Which on some archs is indeed faster than disabling
> interrupts, but not by much I'm afraid.

Anther down site is that all percpu ops can't call any function outside
the section.  Otherwise we would fail to detect whether it is a special
region  or be hard to detect it.

If we disallow the percpu ops calling any function, I think we can
insert some special instructions to the generated code along with
a notation in a table (like exception table for copy_to_user()).
So thus the interrupt only has to check the special instructions
near the IP and confirm it by check it on the table.

>
>> optimize the x86 variants if interrupts also can detect critical sections
>> and restart at defined points.
>
> I really don't see how we can beat %GS prefixes with any such scheme.
> --
> To unsubscribe from this list: send the line "unsubscribe linux-kernel" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at  http://www.tux.org/lkml/
