Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 13930AAC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 00:31:33 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id B597C1FD47
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 00:31:32 +0000 (UTC)
Message-ID: <1399595490.2230.13.camel@dabdike.int.hansenpartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Christoph Lameter <cl@gentwo.org>
Date: Thu, 08 May 2014 17:31:30 -0700
In-Reply-To: <alpine.DEB.2.10.1405081124000.24271@gentwo.org>
References: <alpine.DEB.2.10.1405081124000.24271@gentwo.org>
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


On Thu, 2014-05-08 at 11:24 -0500, Christoph Lameter wrote:
> On Fri, 2 May 2014, Josh Triplett wrote:
> 
> > - An overview of why the kernel's size still matters today ("but don't
> >   we all have tons of memory and storage?")
> 
> Kernel size matters quite a bit for performance. Processor caches are key
> to performance and therefore the cache footprint of a function determines
> the the possible performance. The smaller the functions and the less data
> they access the faster they will run.

This is about footprint, though, it's about optimizing a code path to
run in the fewest instructions possible, right?      

> Therefore it needs to be possible to reduce the size of the kernel by
> disabling unwanted functionality (f.e. cgroups). In order for that to
> happen features need to be as independent as possible and also the user
> space tools (like systemd) need to be able to handle a kernel with reduced
> functionality.

I don't believe that follows.  As long as the added code doesn't cause
the cache footprint of the working set to expand, there's no performance
reason to compile it out.   If you choose not to use syscalls, then the
paths are inert from a performance point of view and it doesn't matter
if they are config'd in or out.  Cgroups, on the other hand impacts
performance because it adds to the execution path of several syscalls.
We were careful to use static branching to minimise this, but obviously
it does expand the cache footprint.  Do you have any figures for the
performance issues it's causing (being compiled in but unused)?  If it's
significant, we could try static branching to out of line areas which
shouldn't impact the cache footprint.

James
