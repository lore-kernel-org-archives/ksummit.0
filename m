Return-Path: <fengguang.wu@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CC13B3EE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  2 Aug 2015 11:50:22 +0000 (UTC)
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 9FCF910E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  2 Aug 2015 11:50:21 +0000 (UTC)
Date: Sun, 2 Aug 2015 19:49:53 +0800
From: Fengguang Wu <fengguang.wu@intel.com>
To: Len Brown <lenb@kernel.org>
Message-ID: <20150802114953.GA26601@wfg-t540p.sh.intel.com>
References: <20150715153725.GA12601@ret.masoncoding.com>
	<CAH3eK3TtZKdVdFTrQOEPQ0dmXLr-y1w66LW2Qbwwu0VSbiiYiA@mail.gmail.com>
	<1436989195.6856.4.camel@infradead.org>
	<20150715195837.GA14507@ret.masoncoding.com>
	<CAJvTdKk--RBxhzqCem+O75pWRmi5XWLbbUmypQEPaSaPqcR5CA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAJvTdKk--RBxhzqCem+O75pWRmi5XWLbbUmypQEPaSaPqcR5CA@mail.gmail.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] benchmarking and performance
 trends
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Jul 15, 2015 at 09:35:51PM -0400, Len Brown wrote:
> > It would be fun to use turbostat or a rack power meter to
> > measure/compare power usage between two kernels in a given benchmark.  I
> > think the power meters we do have are not going to be fine grained
> > enough to give valid results, but if turbostat is consistent enough we
> > could try it.
> 
> The RAPL power meters exported by turbostat can correlate surprisingly
> well with highly accurate external power meters.  But even if perfect,
> RAPL doesn't know about
> the hardware outside of the processor package (except Xeon DRAM), so
> the absolute
> numbers will not match an AC power meter.  But differences are visible
> and consistent.
> The accuracy and the quality of correlation with actual electricals
> varies a lot with
> the type of processor.  In general, Xeon is the best, followed by
> desktop/mobile core,
> and Atom's RAPL power meters have been the least accurate of those
> shipped, so far.
> 
> Yes, 0-day is using this output today to identify regressions, without
> any external power meters.  But they are also adding external power meters.

Yeah we collect turbostat stats in every benchmark it runs and the
machines that support RAPL. It has been effective in catching power
regressions.

There are also 4 external power meters to measure whole-machine power
consumption, however that number is limited comparing to the machines
that support RAPL.

Thanks,
Fengguang
