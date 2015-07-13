Return-Path: <cl@linux.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 28AC8AAE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 14:01:26 +0000 (UTC)
Received: from resqmta-ch2-05v.sys.comcast.net
	(resqmta-ch2-05v.sys.comcast.net [69.252.207.37])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B059A160
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 14:01:25 +0000 (UTC)
Date: Mon, 13 Jul 2015 09:01:23 -0500 (CDT)
From: Christoph Lameter <cl@linux.com>
To: Peter Zijlstra <peterz@infradead.org>
In-Reply-To: <20150713095757.GW19282@twins.programming.kicks-ass.net>
Message-ID: <alpine.DEB.2.11.1507130849450.18904@east.gentwo.org>
References: <CALCETrVPe7ijOHY5BXLPCG5VBxadeZoUDLOBMX+jEFnJynJ8FA@mail.gmail.com>
	<20150709190916.GI1522@ret.masoncoding.com>
	<alpine.DEB.2.11.1507101224440.21165@east.gentwo.org>
	<20150713095757.GW19282@twins.programming.kicks-ass.net>
Content-Type: TEXT/PLAIN; charset=US-ASCII
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

On Mon, 13 Jul 2015, Peter Zijlstra wrote:

> Now the 'problem' is finding these special regions fast, the easy
> solution is the same as the one proposed for userspace, one big section.
> That way the interrupt only has to check if the IP is inside this
> section which is minimal effort.
>
> The down side is that all percpu ops would then end up being full
> function calls. Which on some archs is indeed faster than disabling
> interrupts, but not by much I'm afraid.

Well one could move the entire functions that are using these ops into the
special sections. That is certainly an area requiring much more thought.

> > optimize the x86 variants if interrupts also can detect critical sections
> > and restart at defined points.
>
> I really don't see how we can beat %GS prefixes with any such scheme.

We may be able to avoid RMV sequences which allows the processor to better
schedule operations.
