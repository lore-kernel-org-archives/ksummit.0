Return-Path: <jani.nikula@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7A93EF43
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 09:17:42 +0000 (UTC)
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 26D4CA8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 09:17:42 +0000 (UTC)
From: Jani Nikula <jani.nikula@intel.com>
To: Linus Torvalds <torvalds@linux-foundation.org>,
	Jiri Kosina <jikos@kernel.org>
In-Reply-To: <CA+55aFx635GmuiojjD-dvqCvHBfGCt4zwSR5k8PyznSoy1xYWg@mail.gmail.com>
References: <nycvar.YFH.7.76.1809062054450.15880@cbobk.fhfr.pm>
	<CA+55aFx635GmuiojjD-dvqCvHBfGCt4zwSR5k8PyznSoy1xYWg@mail.gmail.com>
Date: Fri, 07 Sep 2018 12:17:13 +0300
Message-ID: <87tvn1y8di.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Handling of embargoed
	security issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 06 Sep 2018, Linus Torvalds <torvalds@linux-foundation.org> wrote:
> A lot of that was that the actual *fixes* were marked for stable, but
> quite often they were preceded by cleanups and other updates that
> didn't actually fix things directly, and that weren't in themselves
> explicitly marked for stable and didn't have a Fixes: tag, because
> they were prep-work.

There's always the struggle of whether to put fixes or cleanups first in
the series. The former makes backports easier, the latter makes the
actual fixes easier. And the prep work could be committed quickly while
the fixes are still being debated.

> So we had _several_ nasty regressions in stable that never showed up
> in mainline, because there was some non-obvious dependency that didn't
> cause a merge conflict, but did cause a "this commit needed that other
> commit to work right".
>
> We should probably at least think about having a way to mark those.
> Something like a "for-stable-because-of-subsequent-patches" tag?

If you know the commit ids of the dependencies, i.e. they've been
applied, per Documentation/process/stable-kernel-rules.rst you could
add:

     Cc: <stable@vger.kernel.org> # 3.3.x: a1f84a3: sched: Check for idle
     Cc: <stable@vger.kernel.org> # 3.3.x: 1b9508f: sched: Rate-limit newidle
     Cc: <stable@vger.kernel.org> # 3.3.x: fd21073: sched: Fix affinity logic
     Cc: <stable@vger.kernel.org> # 3.3.x

listing the dependencies. I don't see that used much, though, so not
sure defining something new could gain more traction.

> Or just more eager use of the table cc? I often feel bad about adding
> "cc: stable" to preparatory patches that don't actually fix the bug,
> but I think it was bad this time around.

If the fix with prep work is in a topic branch, one could add cc: stable
to the merge commit.


BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
