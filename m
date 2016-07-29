Return-Path: <tony.luck@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 78AE298B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 16:26:30 +0000 (UTC)
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 3ED3B2C5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Jul 2016 16:26:04 +0000 (UTC)
Date: Fri, 29 Jul 2016 09:26:03 -0700
From: "Luck, Tony" <tony.luck@intel.com>
To: Mel Gorman <mgorman@techsingularity.net>
Message-ID: <20160729162603.GA12262@intel.com>
References: <20160725171142.GA26006@cmpxchg.org>
	<20160728185523.GA16390@cmpxchg.org>
	<20160729110724.GD2799@techsingularity.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160729110724.GD2799@techsingularity.net>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Memory thrashing,
 was Re:  Self nomination
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 29, 2016 at 12:07:24PM +0100, Mel Gorman wrote:
> On Thu, Jul 28, 2016 at 02:55:23PM -0400, Johannes Weiner wrote:
> > On Mon, Jul 25, 2016 at 01:11:42PM -0400, Johannes Weiner wrote:

> > It might be useful to talk about
> > metrics. Could we quantify application progress?

The most reliable way to do that would be to have an actual
user mode program that runs, accessing some configurable number
of pages, periodically touching some file in /proc/sys/vm to
let the kernel know that some quantum of work had been completed.

Then the kernel would get accurate data on application progress
(at the cost of cpu time and memory consumed by this process, and
increased power usage when the system could otherwise be idle).

-Tony
