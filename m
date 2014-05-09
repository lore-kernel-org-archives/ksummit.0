Return-Path: <cl@linux.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 7FA5E92F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 14:48:22 +0000 (UTC)
Received: from qmta10.emeryville.ca.mail.comcast.net
	(qmta10.emeryville.ca.mail.comcast.net [76.96.30.17])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 1F41520277
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 14:48:22 +0000 (UTC)
Date: Fri, 9 May 2014 09:48:19 -0500 (CDT)
From: Christoph Lameter <cl@linux.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
In-Reply-To: <1399595490.2230.13.camel@dabdike.int.hansenpartnership.com>
Message-ID: <alpine.DEB.2.10.1405090940080.11318@gentwo.org>
References: <alpine.DEB.2.10.1405081124000.24271@gentwo.org>
	<1399595490.2230.13.camel@dabdike.int.hansenpartnership.com>
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: Sarah Sharp <sarah@minilop.net>, ksummit-discuss@lists.linuxfoundation.org,
	Greg KH <gregkh@linuxfoundation.org>, Julia Lawall <julia.lawall@lip6.fr>,
	Darren Hart <darren@dvhart.com>, Dan Carpenter <dan.carpenter@oracle.com>
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

On Thu, 8 May 2014, James Bottomley wrote:

> > >   we all have tons of memory and storage?")
> >
> > Kernel size matters quite a bit for performance. Processor caches are key
> > to performance and therefore the cache footprint of a function determines
> > the the possible performance. The smaller the functions and the less data
> > they access the faster they will run.
>
> This is about footprint, though, it's about optimizing a code path to
> run in the fewest instructions possible, right?

Code speed depends on where the instructions and data can be retrieved
from. The fewest instructions no longer cut it.

> > Therefore it needs to be possible to reduce the size of the kernel by
> > disabling unwanted functionality (f.e. cgroups). In order for that to
> > happen features need to be as independent as possible and also the user
> > space tools (like systemd) need to be able to handle a kernel with reduced
> > functionality.
>
> I don't believe that follows.  As long as the added code doesn't cause
> the cache footprint of the working set to expand, there's no performance
> reason to compile it out.   If you choose not to use syscalls, then the
> paths are inert from a performance point of view and it doesn't matter
> if they are config'd in or out.  Cgroups, on the other hand impacts
> performance because it adds to the execution path of several syscalls.
> We were careful to use static branching to minimise this, but obviously
> it does expand the cache footprint.  Do you have any figures for the
> performance issues it's causing (being compiled in but unused)?  If it's
> significant, we could try static branching to out of line areas which
> shouldn't impact the cache footprint.

Static branching means that it is removed from the code path but the
overall code size still is increased because the function need to be
somewhere. And usually the additional functions are mixed with other
functions that are essential. Which means increased need for TLB entries
to do the virtual mappings. Plus there are noop holes here and there that
increase the size of the function still.

One improvement would be to sort the functions by functionality. All the
important functions in the first 2M of the code covered by one huge tlb
f.e.

Maybe we could reduce the number of cachelines used by critical functions
too? Arent there some tools that can automatize this in gcc?

Syscalls are often essential to performance in particular if one wants to
use the I/O services of the kernel instead of relying on something like
RDMA that bypasses the kernel.

In general the ability to reduce the size of the kernel to a minimum is a
desirable feature. I still see deployments of older kernels in the
financial industry because they have a higher performance and lower
latency. The only way to get those guys would be to keep the kernel size
and the size of the data touched the same.
