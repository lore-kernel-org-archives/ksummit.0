Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 281FCDC3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 09:13:22 +0000 (UTC)
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
	[209.85.166.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B625E8B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 09:13:21 +0000 (UTC)
Received: by mail-io1-f68.google.com with SMTP id 75-v6so1007737iou.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 07 Sep 2018 02:13:21 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180907042754.GL5098@thunk.org>
References: <20180904201620.GC16300@sasha-vm>
	<CAKMK7uFO3xiKxa+mEDgEfDx6ZKY7aFPibD1xuK3z-Ybi0Zr3Sw@mail.gmail.com>
	<20180905101710.73137669@gandalf.local.home>
	<20180907004944.GD16300@sasha-vm>
	<CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
	<20180907014930.GE16300@sasha-vm> <20180907042754.GL5098@thunk.org>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 7 Sep 2018 11:13:20 +0200
Message-ID: <CAKMK7uEsN9YDjEus5hndhhF1jbSS+=P804bS8iKJmyp76hmtKA@mail.gmail.com>
To: "Theodore Y. Ts'o" <tytso@mit.edu>
Content-Type: text/plain; charset="UTF-8"
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

On Fri, Sep 7, 2018 at 6:27 AM, Theodore Y. Ts'o <tytso@mit.edu> wrote:
> On Fri, Sep 07, 2018 at 01:49:31AM +0000, Sasha Levin via Ksummit-discuss wrote:
>>
>> How can you justify sneaking a patch that spent 0 days in linux-next,
>> never ran through any of our automated test frameworks and was never
>> tested by a single real user into a Stable kernel release?
>
> At least for file system patches, my file system regression testing
> (gce-xfstests) beats *all* of the Linux-next bots.  And in fact, the
> regression tests actually catch more problems than users, because most
> users' file system workloads are incredibly boring.  :-)
>
> It might be different for fixes in hardware drivers, where a fix for
> Model 785 might end up breaking Model 770.  But short of the driver
> developer having an awesomely huge set of hardware in their testing
> lab, what are they going to do?  And is holding off until the Merge
> window really going to help find the regression?  The linux-bots
> aren't likely to find such problems!
>
> As far as users testing Linux-next --- I'm willing to try running
> anything past, say, -rc3 on my laptop.  But running linux-next?  Heck,
> no!  That's way too scary for me.
>
> Side bar comment:
>
> There actually is a perverse incentive to having all of the test
> 'bots, which is that I suspect some people have come to rely on it to
> catch problems.  I generally run a full set of regression tests before
> I push an update to git.kernel.org (it only takes about 2 hours, and
> 12 VM's :-); and by the time we get to the late -rc's I *always* will
> do a full regression test.

This is what imo a well-run subsystem should sound like from a testing
pov. All the subsystem specific testing should be done before merging.
Post-merge is only for integration testing and catching the long-tail
issues that need months/years of machine time to surface.

Of course this is much harder for anything that needs physical
hardware, but even for driver subsystems there's lots you can do with
test-drivers, selftests and a pile of emulation, to at least catch
bugs in generic code. And for reasonably sized teams like drm/i915
building a proper CI is a very obvious investement that will pay off.

> In the early-to-mid- rc's, sometimes if I'm in a real rush, I'll just
> run the 15 minute smoke test; but I'll do at least *some* testing.
>
> But other trees seem to be much more loosey-goosey about what they
> will push to linux-next, since they want to let the 'bots catch
> problems.  With the net result that they scare users away from wanting
> to use linux-next.

Yeah, if maintainers see linux-next as their personal testing ground
then it becomes useless for actual integration testing. But it's not
quite as bleak as it was 2 years ago I think, at least from what I'm
seeing when in our linux-next runs for drm/i915. It still does need to
get a lot better though.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
