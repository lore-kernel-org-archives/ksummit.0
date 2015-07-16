Return-Path: <lenb417@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CB4E4B5A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 01:35:53 +0000 (UTC)
Received: from mail-lb0-f171.google.com (mail-lb0-f171.google.com
	[209.85.217.171])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2C26E63
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 01:35:53 +0000 (UTC)
Received: by lblf12 with SMTP id f12so35068770lbl.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 18:35:51 -0700 (PDT)
MIME-Version: 1.0
Sender: lenb417@gmail.com
In-Reply-To: <20150715195837.GA14507@ret.masoncoding.com>
References: <20150715153725.GA12601@ret.masoncoding.com>
	<CAH3eK3TtZKdVdFTrQOEPQ0dmXLr-y1w66LW2Qbwwu0VSbiiYiA@mail.gmail.com>
	<1436989195.6856.4.camel@infradead.org>
	<20150715195837.GA14507@ret.masoncoding.com>
Date: Wed, 15 Jul 2015 21:35:51 -0400
Message-ID: <CAJvTdKk--RBxhzqCem+O75pWRmi5XWLbbUmypQEPaSaPqcR5CA@mail.gmail.com>
From: Len Brown <lenb@kernel.org>
To: Chris Mason <clm@fb.com>
Content-Type: text/plain; charset=UTF-8
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

> It would be fun to use turbostat or a rack power meter to
> measure/compare power usage between two kernels in a given benchmark.  I
> think the power meters we do have are not going to be fine grained
> enough to give valid results, but if turbostat is consistent enough we
> could try it.

The RAPL power meters exported by turbostat can correlate surprisingly
well with highly accurate external power meters.  But even if perfect,
RAPL doesn't know about
the hardware outside of the processor package (except Xeon DRAM), so
the absolute
numbers will not match an AC power meter.  But differences are visible
and consistent.
The accuracy and the quality of correlation with actual electricals
varies a lot with
the type of processor.  In general, Xeon is the best, followed by
desktop/mobile core,
and Atom's RAPL power meters have been the least accurate of those
shipped, so far.

Yes, 0-day is using this output today to identify regressions, without
any external power meters.  But they are also adding external power meters.

There are also systems with instrumented power supplies which export
the system AC power via IPMI.

cheers,
Len Brown, Intel Open Source Technology Center
