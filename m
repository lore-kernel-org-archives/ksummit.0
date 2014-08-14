Return-Path: <cl@linux.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6F0ED9DE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 14 Aug 2014 17:25:48 +0000 (UTC)
Received: from qmta03.emeryville.ca.mail.comcast.net
	(qmta03.emeryville.ca.mail.comcast.net [76.96.30.32])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 261C120371
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 14 Aug 2014 17:25:48 +0000 (UTC)
Date: Thu, 14 Aug 2014 12:17:38 -0500 (CDT)
From: Christoph Lameter <cl@linux.com>
To: Fengguang Wu <fengguang.wu@intel.com>
In-Reply-To: <20140814150152.GA4597@localhost>
Message-ID: <alpine.DEB.2.11.1408141216180.26922@gentwo.org>
References: <5370DB7B.2040706@fb.com> <20140512235430.GA16440@thin>
	<1399941081.2648.51.camel@buesod1.americas.hpqcorp.net>
	<20140814150152.GA4597@localhost>
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

On Thu, 14 Aug 2014, Fengguang Wu wrote:

> The proc-vmstat, perf-profile, cpuidle, turbostat etc. "monitors" are
> inspired by Mel Gorman's mmtests suite and they are really helpful in
> catching&analyzing the subtle impacts a patch might bring to the system.

Mel also has some interesting tests in the suite like the page fault test
and aim9 among numerous others. Could those also be added?
