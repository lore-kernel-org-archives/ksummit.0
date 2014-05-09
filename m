Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B138FA83
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 17:42:25 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 1865C203A4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 17:42:25 +0000 (UTC)
Message-ID: <1399657343.2166.61.camel@dabdike.int.hansenpartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Christoph Lameter <cl@linux.com>
Date: Fri, 09 May 2014 10:42:23 -0700
In-Reply-To: <alpine.DEB.2.10.1405091150410.11810@gentwo.org>
References: <alpine.DEB.2.10.1405081124000.24271@gentwo.org>
	<1399595490.2230.13.camel@dabdike.int.hansenpartnership.com>
	<alpine.DEB.2.10.1405090940080.11318@gentwo.org>
	<20140509122451.5228a038@gandalf.local.home>
	<alpine.DEB.2.10.1405091150410.11810@gentwo.org>
Content-Type: text/plain; charset="ISO-8859-15"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
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

On Fri, 2014-05-09 at 11:55 -0500, Christoph Lameter wrote:
> On Fri, 9 May 2014, Steven Rostedt wrote:
> 
> > > One improvement would be to sort the functions by functionality. All the
> > > important functions in the first 2M of the code covered by one huge tlb
> > > f.e.
> >
> > I thought pretty much all of kernel core memory is mapped in by huge
> > tlbs? At least for kernel core code (not modules), the size should not
> > impact tlbs.
> 
> Yes, but processor only support a limited amount of 2m tlbs and
> applications also want to use them. A large 100M sized kernel would
> require 50 tlbs and cause tlb trashing if functions are accessed over all
> the code. Loadable modules are using vmalloc areas that use 4k pages which
> is another issue.

In theory, we could use link time optimization to place all the most
used functions in the first TLB entry.  However, as Steve said, have you
got measurements showing this helps?  If it's down in the noise, it's a
lot of work for no benefit.

> > > Maybe we could reduce the number of cachelines used by critical functions
> > > too? Arent there some tools that can automatize this in gcc?
> >
> > As I believe James has mentioned. This only helps if we keep the
> > critical functions tight in a cacheline. I did some benchmarks moving
> > the tracepoint code more out of line to help in cachelines, and I
> > haven't seen anything above the noise. Which is the reason I haven't
> > pushed that work further.
> >
> > Size may not be as important as having reuse of code. Perhaps if you
> > can tweak several functions to call one helper function, which may
> > actually increase the total size of the kernel, but having more helper
> > functions that live in cache longer may be of benefit.
> 
> More helper functions means more use of l1 cache lines which reduces
> performance.

Not if the compiler inlines them. Plus if we have five critical
functions and we make them share a helper (which the compiler doesn't
inline) then we get a 4xsize of helper reduction in code which outweighs
the additional function call overhead ... this is what Steve is
referring to.  Correct use of helper functions should reduce our L1
cache footprint, but the key is "correct".

> > > In general the ability to reduce the size of the kernel to a minimum is a
> > > desirable feature. I still see deployments of older kernels in the
> > > financial industry because they have a higher performance and lower
> > > latency. The only way to get those guys would be to keep the kernel size
> > > and the size of the data touched the same.
> >
> > I actually wonder if that performance is really on "size" of the kernel
> > and not just less features. Usually with features, we add more function
> > calls and branches, which I believe may be the culprit of the slowdowns
> > we are seeing.
> 
> That too... But James said they were using static branching.

Cgroups are, yes ... after you complained a lot.

> Global optimization may allow the folding of small functions into a larger
> one when advantageous (which is not simple to determine).

It's possible, but complex ... I'd really like to see proof that it
helps before thinking about it.

James
