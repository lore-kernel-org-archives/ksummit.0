Return-Path: <tglx@linutronix.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 62E98CE7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 12:47:29 +0000 (UTC)
Received: from Galois.linutronix.de (Galois.linutronix.de [146.0.238.70])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id ED7A88B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 12:47:28 +0000 (UTC)
Date: Thu, 6 Sep 2018 14:47:25 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Steven Rostedt <rostedt@goodmis.org>
In-Reply-To: <alpine.DEB.2.21.1809061046110.1416@nanos.tec.linutronix.de>
Message-ID: <alpine.DEB.2.21.1809061438140.1570@nanos.tec.linutronix.de>
References: <5c9c41b2-14f9-41cc-ae85-be9721f37c86@redhat.com>
	<20180904213340.GD16300@sasha-vm>
	<nycvar.YFH.7.76.1809050838570.15880@cbobk.fhfr.pm>
	<20180905081658.GB24902@quack2.suse.cz>
	<alpine.DEB.2.21.1809051108220.1416@nanos.tec.linutronix.de>
	<nycvar.YFH.7.76.1809051246380.15880@cbobk.fhfr.pm>
	<alpine.DEB.2.21.1809051603100.1416@nanos.tec.linutronix.de>
	<20180905111849.1d08653c@gandalf.local.home>
	<alpine.DEB.2.21.1809061046110.1416@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: Greg KH <gregkh@linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] Stable trees and release
 time
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 6 Sep 2018, Thomas Gleixner wrote:

> On Wed, 5 Sep 2018, Steven Rostedt wrote:
> > It's not the distros that need convincing, it's the vendors that pay to
> > have it done. When I first started at Red Hat and was told about the
> > "Stable Kernel ABI", the person telling me about this (a very
> > established kernel developer) also said "Yeah it really sucks, but
> > companies are willing to pay a shite load of money to have it done". And
> > it's in the distros best interest to get that shite load of money. It
> > also funds the same developers to do this work, and hopefully continue
> > to help upstream as well.
> > 
> > If we remove that nasty work, these companies wont need to continue
> > paying that shite load anymore, and they may not be able to afford
> > paying these talented developers.
> 
> Come on. Unless you have hard evidence for this, you are merily
> proliferating a decades old distro fairy tale.
> 
> Seriously, those old kernels are part of the revenue stream, but if any
> vendors engineering investment, which is securing the future, depends on
> this, then the company is close to the state of the dead kernels.

Clarification. I meant that mostly vs. the 2.6 myth, but for the not that
old kernel crap including the KABI mess, which makes a large part of the
revenue indeed, the problem was introduced by the distros in the first
place.

The people who warned about the issues and predicted the horrors (in a way
too small scale) were ignored and I have no indication that there is a
serious change happening.

I wouldn't care at all if this would not affect upstream and not totally
trainwreck engineers and maintainers. No money in the world can compensate
for people getting on the edge of burnouts. 

Thanks,

	tglx
