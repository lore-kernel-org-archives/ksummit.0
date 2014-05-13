Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 4CA14AAB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 18:00:20 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
	[217.70.183.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 943A520334
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 18:00:19 +0000 (UTC)
Date: Tue, 13 May 2014 11:00:14 -0700
From: josh@joshtriplett.org
To: "Bird, Tim" <Tim.Bird@sonymobile.com>
Message-ID: <20140513180014.GA2911@cloud>
References: <20140502164438.GA1423@jtriplet-mobl1>
	<F5184659D418E34EA12B1903EE5EF5FDEE1B9D011B@seldmbx02.corpusers.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <F5184659D418E34EA12B1903EE5EF5FDEE1B9D011B@seldmbx02.corpusers.net>
Cc: Sarah Sharp <sarah@minilop.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>, Julia Lawall <julia.lawall@lip6.fr>,
	"Alan@signal11.us" <Alan@signal11.us>, Darren Hart <darren@dvhart.com>,
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

On Tue, May 13, 2014 at 06:36:40PM +0200, Bird, Tim wrote:
> On Friday, May 02, 2014 9:44 AM, Josh Triplett wrote:
> > 
> > Over time, the Linux kernel has grown far more featureful, but it has
> > also grown significantly larger, even with all the optional features
> > turned off.  For the last several years, I've been working to make the
> > kernel smaller, and mentoring/coordinating projects to do the same, to
> > enable ridiculously small embedded applications and other fun uses.  I'd
> > like to discuss that work at Kernel Summit, get size regressions on the
> > radar of kernel developers and subsystem maintainers, and solicit
> > discussion on future possibilities to shrink the kernel further.
> > 
> > Topics:
> > - An overview of why the kernel's size still matters today ("but don't
> >   we all have tons of memory and storage?")
> > - Tiny in RAM versus tiny on storage.
> > - How much the kernel has grown over time.
> > - How size regressions happen and how to avoid them
> > - Size measurement, bloat-o-meter, allnoconfig, and other tools
> > - Compression and the decompression stub
> > - Kconfig, and avoiding excessive configurability in the pursuit of tiny
> > - Optimizing a kernel for its exact target userspace.
> > - Examples of shrinking the kernel
> > - Discussion on proposed ways to make the kernel tiny, how much they
> >   might save, how much work they'd require, and how to implement them
> >   with minimal impact to the un-shrunken common case.
> > 
> 
> I'd really like to see a discussion of mechanisms to improve automated
> reduction of the kernel.  This will really help, IMHO, to avoid excessive
> configurability, and hopefully ameliorate complaints about the long-term
> maintenance cost of keeping small configurations available in-tree.

Agreed; that's one of the things I planned to include, under "avoiding
excessive configurability" and "Optimizing a kernel for its exact target
userspace".  LTO is another big part of this.

> One prime example of this would be the "static-ification" of DT, e.g.
> replacing calls to lookup DT info with constants (via macros or some other
> source replacement trick), so that we can leverage the compiler's
> optimizations for constant propagation and dead code removal.

I agree completely.  I'd also like to optimize the kernel for a specific
kernel command line (turning global variables set from the command line
into static consts), automatic syscall elimination (as discussed
elsewhere in the thread), and even optimization for specific target
hardware configurations (not just DT, but bits normally found via
probing).

> > After the session, I'll prepare and maintain a detailed summary of the
> > proposed ideas, ordered by how much space they'd save versus how much
> > work they'd be.  I plan to maintain that list on an ongoing basis, to
> > coordinate tinification projects for ongoing work by people working on
> > embedded applications, and for the benefit of mentorship projects such
> > as OPW and SoC.
> 
> Thanks for taking the lead on this!
> 
> Can I recommend we use the linux-embedded mailing list for discussions?
> It's underutilized and this topic seems like a good fit.  Also, the elinux wiki
> is available if you're looking for a place to maintain information on this.
> The Linux-tiny material there is stale, but I have been thinking about updating
> it since the last ELC.

Sounds plausible to me.  And I've been seriously considering taking on
maintenance of a new tiny tree.

- Josh Triplett
