Return-Path: <cl@linux.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 16FC9BA2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 21:15:55 +0000 (UTC)
Received: from resqmta-ch2-11v.sys.comcast.net
	(resqmta-ch2-11v.sys.comcast.net [69.252.207.43])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BD612140
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 21:15:54 +0000 (UTC)
Date: Tue, 14 Jul 2015 16:15:52 -0500 (CDT)
From: Christoph Lameter <cl@linux.com>
To: Andy Lutomirski <luto@amacapital.net>
In-Reply-To: <CALCETrU1DjzUHDa_NrYPTaY7Zk0M2ehP4e74gPhV5GEYLJL0Og@mail.gmail.com>
Message-ID: <alpine.DEB.2.11.1507141613500.12219@east.gentwo.org>
References: <CALCETrVPe7ijOHY5BXLPCG5VBxadeZoUDLOBMX+jEFnJynJ8FA@mail.gmail.com>
	<20150709190916.GI1522@ret.masoncoding.com>
	<alpine.DEB.2.11.1507101224440.21165@east.gentwo.org>
	<20150713095757.GW19282@twins.programming.kicks-ass.net>
	<alpine.DEB.2.11.1507130849450.18904@east.gentwo.org>
	<CALCETrU1DjzUHDa_NrYPTaY7Zk0M2ehP4e74gPhV5GEYLJL0Og@mail.gmail.com>
Content-Type: TEXT/PLAIN; charset=US-ASCII
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

On Tue, 14 Jul 2015, Andy Lutomirski wrote:

> Crazy thought: At the risk of proposing something ridiculous, what if
> we had per-cpu memory mappings?  We could do this at the cost of up to
> 2kB of memcpy whenever we switch mms.  Expensive but maybe not a
> showstopper.

This is not crazy and actually was done before. Itanium has that and
its doable since the TLB insertion could be handled in software.

The problem on x86 is that one would need a separate page table for each
processor for each task. There is no way to handle TLB faults in
software to my knowledge.
