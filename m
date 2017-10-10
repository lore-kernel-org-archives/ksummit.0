Return-Path: <mark.rutland@arm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E3FC1722
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 10 Oct 2017 17:08:26 +0000 (UTC)
Received: from foss.arm.com (usa-sjc-mx-foss1.foss.arm.com [217.140.101.70])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id CD6A0A8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 10 Oct 2017 17:08:25 +0000 (UTC)
Date: Tue, 10 Oct 2017 18:06:52 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Joe Perches <joe@perches.com>
Message-ID: <20171010170652.GO27659@leverpostej>
References: <1507573730-8083-1-git-send-email-mark.rutland@arm.com>
	<1507573730-8083-14-git-send-email-mark.rutland@arm.com>
	<20171009195112.GL3521@linux.vnet.ibm.com>
	<20171010095413.GE27659@leverpostej>
	<20171010124712.GV3521@linux.vnet.ibm.com>
	<20171010125039.GI27659@leverpostej>
	<20171010145252.GX3521@linux.vnet.ibm.com>
	<1507652874.3552.34.camel@perches.com>
	<20171010164139.GN27659@leverpostej>
	<1507654645.3552.37.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1507654645.3552.37.camel@perches.com>
Cc: linux-kernel@vger.kernel.org,
	ksummit-discuss <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [PATCH 13/13] rcutorture: formal: prepare for
 ACCESS_ONCE() removal
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Oct 10, 2017 at 09:57:25AM -0700, Joe Perches wrote:
> On Tue, 2017-10-10 at 17:41 +0100, Mark Rutland wrote:
> > On Tue, Oct 10, 2017 at 09:27:54AM -0700, Joe Perches wrote:
> > > Once ACCESS_ONCE is removed from the code in the tree
> > > it can also be removed from checkpatch
> > 
> > Sure thing. We're expecting to rip that out with the ACCESS_ONCE
> > definitions in a post-Coccinelle patch.
> 
> This treewide series is one of the types that would be nice to
> have done at -rc1 via some external automated script service.

Agreed, and this is exactly the plan.

As mentioned above, the treewide conversion is scripted with Coccinelle
(script below). The plan would be to regenerate this at an rc boundary,
once the preparatory patches (which cannot be scripted) have been
merged.

The ACCESS_ONCE() definitions and checkpatch bits would be removed in a
subsequent patch or series of patches.

Thanks,
Mark.

----
// Convert trivial ACCESS_ONCE() uses to equivalent READ_ONCE() and
// WRITE_ONCE()

virtual patch

@ depends on patch @
expression E1, E2;
@@

- ACCESS_ONCE(E1) = E2
+ WRITE_ONCE(E1, E2)

@ depends on patch @
expression E;
@@

- ACCESS_ONCE(E)
+ READ_ONCE(E)
----
