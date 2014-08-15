Return-Path: <cl@linux.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 581B39DE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 15 Aug 2014 14:07:50 +0000 (UTC)
Received: from qmta04.emeryville.ca.mail.comcast.net
	(qmta04.emeryville.ca.mail.comcast.net [76.96.30.40])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id ED6922031B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 15 Aug 2014 14:07:49 +0000 (UTC)
Date: Fri, 15 Aug 2014 09:07:47 -0500 (CDT)
From: Christoph Lameter <cl@linux.com>
To: Fengguang Wu <fengguang.wu@intel.com>
In-Reply-To: <20140815041312.GB15844@localhost>
Message-ID: <alpine.DEB.2.11.1408150907260.27785@gentwo.org>
References: <5370DB7B.2040706@fb.com> <20140512235430.GA16440@thin>
	<1399941081.2648.51.camel@buesod1.americas.hpqcorp.net>
	<20140814150152.GA4597@localhost>
	<alpine.DEB.2.11.1408141216180.26922@gentwo.org>
	<20140815041312.GB15844@localhost>
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: Daniel Borkmann <dborkman@redhat.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Application performance: regressions,
 controlling preemption
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 15 Aug 2014, Fengguang Wu wrote:

> On Thu, Aug 14, 2014 at 12:17:38PM -0500, Christoph Lameter wrote:
> > On Thu, 14 Aug 2014, Fengguang Wu wrote:
> >
> > > The proc-vmstat, perf-profile, cpuidle, turbostat etc. "monitors" are
> > > inspired by Mel Gorman's mmtests suite and they are really helpful in
> > > catching&analyzing the subtle impacts a patch might bring to the system.
> >
> > Mel also has some interesting tests in the suite like the page fault test
> > and aim9 among numerous others. Could those also be added?
>
> Sure. I just added aim9 to the TODO list.
>
> pft is already included in lkp-tests:
>
> % ls */pft
> jobs/pft.yaml  pack/pft  pack/pft.patch  stats/pft  tests/pft

Are the test results somewhere publicly available?
