Return-Path: <cl@linux.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1570D8FC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 03:50:02 +0000 (UTC)
Received: from resqmta-ch2-04v.sys.comcast.net
	(resqmta-ch2-04v.sys.comcast.net [69.252.207.36])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 90FAD11A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 03:50:01 +0000 (UTC)
Date: Wed, 20 Jul 2016 22:41:51 -0500 (CDT)
From: Christoph Lameter <cl@linux.com>
To: "Wangnan (F)" <wangnan0@huawei.com>
In-Reply-To: <578F36B9.802@huawei.com>
Message-ID: <alpine.DEB.2.20.1607202231150.26638@east.gentwo.org>
References: <578F36B9.802@huawei.com>
Content-Type: text/plain; charset=US-ASCII
Cc: Peter Zijlstra <peterz@infradead.org>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Alexei Starovoitov <ast@kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org, Ingo Molnar <mingo@kernel.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Kernel tracing and end-to-end
 performance breakdown
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 20 Jul 2016, Wangnan (F) wrote:

> I suggest to discuss following topics in this year's kernel summit:
>
>  1. Is end-to-end performance breakdown really matter?
>
>  2. Should we design a framework to help kernel developers to express and
> expose
>     performance model to help people do the end-to-end performance breakdown?
>
>  3. What external tools we need to do the end-to-end performance breakdown?
>

Hmmm... The basic problem in my industry often ends up in accounting for
latency of software and hardware as well as event correlation between
applications, network and multiple hosts. In those scenarios time
measurement itself becomes a difficult thing because the host times is
slightly offset from the GPS clock on the network. Even in one host
there may be multiple clocks at drift to one another (f.e. clocks on the
NICs used for timestamping). In a very low latency environment the
inaccuracy of the clocks and the latency of the network links and various
forms of processing impacts accuracy so much that it is often difficult to
even come up with measurements that one is willing to trust.

So a key basic for tracing and relating events are clocks and knowlege
about how much of variance (how much inaccuracy) a certain clock
contributed.

I think in an ideal world where we could have accurate timestamps the
performance breakdown for us would be simply an instrumentation of the
hardware and software with timestamps. The data can then be correlated
later. This works well if one either  looks at larger time scales (like
milliseconds) or if only a single time source is in use.

If we go down to microseconds this becomes difficult. For nanoseconds fine
grained analysis one is basically always at odds with the reliability of
the clock sources unless one can just use a single one (like TSC).
