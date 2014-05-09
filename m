Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5293E70A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 16:24:56 +0000 (UTC)
Received: from cdptpa-oedge-vip.email.rr.com
	(cdptpa-outbound-snat.email.rr.com [107.14.166.227])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id A4E99200D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 16:24:54 +0000 (UTC)
Date: Fri, 9 May 2014 12:24:51 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Christoph Lameter <cl@linux.com>
Message-ID: <20140509122451.5228a038@gandalf.local.home>
In-Reply-To: <alpine.DEB.2.10.1405090940080.11318@gentwo.org>
References: <alpine.DEB.2.10.1405081124000.24271@gentwo.org>
	<1399595490.2230.13.camel@dabdike.int.hansenpartnership.com>
	<alpine.DEB.2.10.1405090940080.11318@gentwo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Sarah Sharp <sarah@minilop.net>, ksummit-discuss@lists.linuxfoundation.org,
	Greg KH <gregkh@linuxfoundation.org>,
	James Bottomley <James.Bottomley@HansenPartnership.com>,
	Julia Lawall <julia.lawall@lip6.fr>, Darren Hart <darren@dvhart.com>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Kernel tinification: shrinking
 the kernel and avoiding size regressions
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 9 May 2014 09:48:19 -0500 (CDT)
Christoph Lameter <cl@linux.com> wrote:

> Static branching means that it is removed from the code path but the
> overall code size still is increased because the function need to be
> somewhere. And usually the additional functions are mixed with other
> functions that are essential. Which means increased need for TLB entries
> to do the virtual mappings. Plus there are noop holes here and there that
> increase the size of the function still.
> 
> One improvement would be to sort the functions by functionality. All the
> important functions in the first 2M of the code covered by one huge tlb
> f.e.

I thought pretty much all of kernel core memory is mapped in by huge
tlbs? At least for kernel core code (not modules), the size should not
impact tlbs.

> 
> Maybe we could reduce the number of cachelines used by critical functions
> too? Arent there some tools that can automatize this in gcc?

As I believe James has mentioned. This only helps if we keep the
critical functions tight in a cacheline. I did some benchmarks moving
the tracepoint code more out of line to help in cachelines, and I
haven't seen anything above the noise. Which is the reason I haven't
pushed that work further.

Size may not be as important as having reuse of code. Perhaps if you
can tweak several functions to call one helper function, which may
actually increase the total size of the kernel, but having more helper
functions that live in cache longer may be of benefit.


> 
> Syscalls are often essential to performance in particular if one wants to
> use the I/O services of the kernel instead of relying on something like
> RDMA that bypasses the kernel.
> 
> In general the ability to reduce the size of the kernel to a minimum is a
> desirable feature. I still see deployments of older kernels in the
> financial industry because they have a higher performance and lower
> latency. The only way to get those guys would be to keep the kernel size
> and the size of the data touched the same.

I actually wonder if that performance is really on "size" of the kernel
and not just less features. Usually with features, we add more function
calls and branches, which I believe may be the culprit of the slowdowns
we are seeing.

-- Steve
