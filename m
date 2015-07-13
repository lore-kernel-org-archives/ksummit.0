Return-Path: <peterz@infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9336F305
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 10:22:39 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4E66514B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 10:22:39 +0000 (UTC)
Date: Mon, 13 Jul 2015 11:57:57 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Christoph Lameter <cl@linux.com>
Message-ID: <20150713095757.GW19282@twins.programming.kicks-ass.net>
References: <CALCETrVPe7ijOHY5BXLPCG5VBxadeZoUDLOBMX+jEFnJynJ8FA@mail.gmail.com>
	<20150709190916.GI1522@ret.masoncoding.com>
	<alpine.DEB.2.11.1507101224440.21165@east.gentwo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.11.1507101224440.21165@east.gentwo.org>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
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

On Fri, Jul 10, 2015 at 12:26:21PM -0500, Christoph Lameter wrote:
> On Thu, 9 Jul 2015, Chris Mason wrote:
> 
> > I think the topic is really interesting and we'll be able to get numbers
> > from production workloads to help justify and compare different
> > approaches.
> 
> Ok that would be important. I also think that the approach may be used
> in kernel to reduce the overhead of CONFIG_PREEMPT and also to implement
> fast versions of this_cpu_ops for non x86 architectures and maybe even

There is nothing stopping people from trying this in-kernel, in fact
that would be lots easier as we do not have to commit to any one
specific ABI for that.

Also, I don't think we need a schedule check for the in-kernel usage,
pure interrupt should be good enough, nobody should (want to) call
schedule() while inside such a critical section, which leaves us with
involuntary preemption, and those are purely interrupt driven.

Now the 'problem' is finding these special regions fast, the easy
solution is the same as the one proposed for userspace, one big section.
That way the interrupt only has to check if the IP is inside this
section which is minimal effort.

The down side is that all percpu ops would then end up being full
function calls. Which on some archs is indeed faster than disabling
interrupts, but not by much I'm afraid.

> optimize the x86 variants if interrupts also can detect critical sections
> and restart at defined points.

I really don't see how we can beat %GS prefixes with any such scheme.
