Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BEA98CEA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 04:27:58 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3852B8B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 04:27:57 +0000 (UTC)
Date: Fri, 7 Sep 2018 00:27:54 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Sasha Levin <Alexander.Levin@microsoft.com>
Message-ID: <20180907042754.GL5098@thunk.org>
References: <20180904201620.GC16300@sasha-vm>
	<CAKMK7uFO3xiKxa+mEDgEfDx6ZKY7aFPibD1xuK3z-Ybi0Zr3Sw@mail.gmail.com>
	<20180905101710.73137669@gandalf.local.home>
	<20180907004944.GD16300@sasha-vm>
	<CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
	<20180907014930.GE16300@sasha-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180907014930.GE16300@sasha-vm>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Sep 07, 2018 at 01:49:31AM +0000, Sasha Levin via Ksummit-discuss wrote:
> 
> How can you justify sneaking a patch that spent 0 days in linux-next,
> never ran through any of our automated test frameworks and was never
> tested by a single real user into a Stable kernel release?

At least for file system patches, my file system regression testing
(gce-xfstests) beats *all* of the Linux-next bots.  And in fact, the
regression tests actually catch more problems than users, because most
users' file system workloads are incredibly boring.  :-)

It might be different for fixes in hardware drivers, where a fix for
Model 785 might end up breaking Model 770.  But short of the driver
developer having an awesomely huge set of hardware in their testing
lab, what are they going to do?  And is holding off until the Merge
window really going to help find the regression?  The linux-bots
aren't likely to find such problems!

As far as users testing Linux-next --- I'm willing to try running
anything past, say, -rc3 on my laptop.  But running linux-next?  Heck,
no!  That's way too scary for me.

Side bar comment:

There actually is a perverse incentive to having all of the test
'bots, which is that I suspect some people have come to rely on it to
catch problems.  I generally run a full set of regression tests before
I push an update to git.kernel.org (it only takes about 2 hours, and
12 VM's :-); and by the time we get to the late -rc's I *always* will
do a full regression test.

In the early-to-mid- rc's, sometimes if I'm in a real rush, I'll just
run the 15 minute smoke test; but I'll do at least *some* testing.

But other trees seem to be much more loosey-goosey about what they
will push to linux-next, since they want to let the 'bots catch
problems.  With the net result that they scare users away from wanting
to use linux-next.

       		    	      		- Ted
