Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id EFD7F9B1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 23:54:44 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 81F9A1FA97
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 23:54:44 +0000 (UTC)
Date: Mon, 12 May 2014 16:54:35 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Chris Mason <clm@fb.com>
Message-ID: <20140512235430.GA16440@thin>
References: <5370DB7B.2040706@fb.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5370DB7B.2040706@fb.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
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

On Mon, May 12, 2014 at 10:32:27AM -0400, Chris Mason wrote:
> Hi everyone,
> 
> We're in the middle of upgrading the tiers here from older kernels (2.6.38,
> 3.2) into 3.10 and higher.
> 
> I've been doing this upgrade game for a number of years now, with different
> business cards taped to my forehead and with different target workloads.
> 
> The result is always the same...if I'm really lucky the system isn't slower,
> but usually I'm left with a steaming pile of 10-30% regressions.

How automated are your benchmark workloads, how long do they take, and
how consistent are they from run to run (on a system running nothing
else)?  What about getting them into Fengguang Wu's automated patch
checker, or a similar system that checks every patch or pull rather than
just full releases?  If we had feedback at the time of patch submission
that a specific patch made the kernel x% slower for a specific
well-defined workload, that would prove much easier to act on than just
a comparison of 3.x and 3.y.

- Josh Triplett
