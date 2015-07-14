Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0360D9FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 20:01:22 +0000 (UTC)
Received: from mail-la0-f50.google.com (mail-la0-f50.google.com
	[209.85.215.50])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 87E3A11A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 20:01:20 +0000 (UTC)
Received: by lagw2 with SMTP id w2so12427968lag.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 13:01:18 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.11.1507130849450.18904@east.gentwo.org>
References: <CALCETrVPe7ijOHY5BXLPCG5VBxadeZoUDLOBMX+jEFnJynJ8FA@mail.gmail.com>
	<20150709190916.GI1522@ret.masoncoding.com>
	<alpine.DEB.2.11.1507101224440.21165@east.gentwo.org>
	<20150713095757.GW19282@twins.programming.kicks-ass.net>
	<alpine.DEB.2.11.1507130849450.18904@east.gentwo.org>
From: Andy Lutomirski <luto@amacapital.net>
Date: Tue, 14 Jul 2015 13:00:59 -0700
Message-ID: <CALCETrU1DjzUHDa_NrYPTaY7Zk0M2ehP4e74gPhV5GEYLJL0Og@mail.gmail.com>
To: Christoph Lameter <cl@linux.com>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Peter Zijlstra <peterz@infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Jens Axboe <axboe@fb.com>,
	Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
	Shaohua Li <shli@fb.com>
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

On Mon, Jul 13, 2015 at 7:01 AM, Christoph Lameter <cl@linux.com> wrote:
> On Mon, 13 Jul 2015, Peter Zijlstra wrote:
>
>> Now the 'problem' is finding these special regions fast, the easy
>> solution is the same as the one proposed for userspace, one big section.
>> That way the interrupt only has to check if the IP is inside this
>> section which is minimal effort.
>>
>> The down side is that all percpu ops would then end up being full
>> function calls. Which on some archs is indeed faster than disabling
>> interrupts, but not by much I'm afraid.
>
> Well one could move the entire functions that are using these ops into the
> special sections. That is certainly an area requiring much more thought.

Hmm.

>
>> > optimize the x86 variants if interrupts also can detect critical sections
>> > and restart at defined points.
>>
>> I really don't see how we can beat %GS prefixes with any such scheme.
>
> We may be able to avoid RMV sequences which allows the processor to better
> schedule operations.

True, but cmpxchg is, surprisingly, pretty fast.

Crazy thought: At the risk of proposing something ridiculous, what if
we had per-cpu memory mappings?  We could do this at the cost of up to
2kB of memcpy whenever we switch mms.  Expensive but maybe not a
showstopper.

--Andy
