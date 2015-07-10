Return-Path: <cl@linux.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E566DB13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 17:34:32 +0000 (UTC)
Received: from resqmta-ch2-06v.sys.comcast.net
	(resqmta-ch2-06v.sys.comcast.net [69.252.207.38])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8472E151
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 17:34:32 +0000 (UTC)
Date: Fri, 10 Jul 2015 12:26:21 -0500 (CDT)
From: Christoph Lameter <cl@linux.com>
To: Chris Mason <clm@fb.com>
In-Reply-To: <20150709190916.GI1522@ret.masoncoding.com>
Message-ID: <alpine.DEB.2.11.1507101224440.21165@east.gentwo.org>
References: <CALCETrVPe7ijOHY5BXLPCG5VBxadeZoUDLOBMX+jEFnJynJ8FA@mail.gmail.com>
	<20150709190916.GI1522@ret.masoncoding.com>
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

On Thu, 9 Jul 2015, Chris Mason wrote:

> I think the topic is really interesting and we'll be able to get numbers
> from production workloads to help justify and compare different
> approaches.

Ok that would be important. I also think that the approach may be used
in kernel to reduce the overhead of CONFIG_PREEMPT and also to implement
fast versions of this_cpu_ops for non x86 architectures and maybe even
optimize the x86 variants if interrupts also can detect critical sections
and restart at defined points.
