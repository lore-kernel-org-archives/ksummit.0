Return-Path: <prvs=4632c07cd6=clm@fb.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A190C9FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 19:09:48 +0000 (UTC)
Received: from mx0b-00082601.pphosted.com (mx0b-00082601.pphosted.com
	[67.231.153.30])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 16960F0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 19:09:47 +0000 (UTC)
Date: Thu, 9 Jul 2015 15:09:16 -0400
From: Chris Mason <clm@fb.com>
To: Andy Lutomirski <luto@amacapital.net>
Message-ID: <20150709190916.GI1522@ret.masoncoding.com>
References: <CALCETrVPe7ijOHY5BXLPCG5VBxadeZoUDLOBMX+jEFnJynJ8FA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <CALCETrVPe7ijOHY5BXLPCG5VBxadeZoUDLOBMX+jEFnJynJ8FA@mail.gmail.com>
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

On Thu, Jul 09, 2015 at 11:32:45AM -0700, Andy Lutomirski wrote:
> Several people have suggested that Linux should provide users with a
> lightweight mechanism that allows light-weight fancy per-cpu
> operations.  This could be used to implement free lists or counters
> without any barriers or atomic operations, for example.
> 
> There are at least three approaches floating around.  Paul Turner
> proposed a single block of userspace code that aborts if it's
> preempted -- within that block, percpu variables can be used safely.
> Mathieu Desnoyers proposed a more complex variant.  I proposed a much
> simpler approach of just offering percpu gs bases on x86, allowing
> cmpxchg (as opposed to lock cmpxchg) to access percpu variables.
> 
> None of these should be hard to implement, but it would be nice to
> hash out whether the kernel should support such a mechanism at all
> and, if so, what it would look like.

[ added Jens and Shaohua ]

We've started experimenting with these to cut overheads in a few
critical places, and while we don't have numbers yet I really hope it
won't take too long.

I think the topic is really interesting and we'll be able to get numbers
from production workloads to help justify and compare different
approaches.

-chris
