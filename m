Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 35BBE1344
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 21:14:11 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B00752D5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 21:14:10 +0000 (UTC)
Date: Thu, 6 Sep 2018 23:14:08 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
In-Reply-To: <CA+55aFx635GmuiojjD-dvqCvHBfGCt4zwSR5k8PyznSoy1xYWg@mail.gmail.com>
Message-ID: <nycvar.YFH.7.76.1809062301480.15880@cbobk.fhfr.pm>
References: <nycvar.YFH.7.76.1809062054450.15880@cbobk.fhfr.pm>
	<CA+55aFx635GmuiojjD-dvqCvHBfGCt4zwSR5k8PyznSoy1xYWg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
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

On Thu, 6 Sep 2018, Linus Torvalds wrote:

> > I am not completely sure what we could do to improve this, especially with
> > our kernel community hats on -- I am pretty sure a lot is happening on the
> > corporate level between individual "corporate stakeholders".
> 
> One particular pain point this last time around were the stable
> backports, I feel.
> 
> A lot of that was that the actual *fixes* were marked for stable, but
> quite often they were preceded by cleanups and other updates that
> didn't actually fix things directly, and that weren't in themselves
> explicitly marked for stable and didn't have a Fixes: tag, because
> they were prep-work.
> 
> So we had _several_ nasty regressions in stable that never showed up
> in mainline, because there was some non-obvious dependency that didn't
> cause a merge conflict, but did cause a "this commit needed that other
> commit to work right".

I fully agree that this is an issue for stable. On the other hand, I would 
be reasonably sure this has been equally painful issue for stable even 
before this particular disaster (and all the preceeding stable discussions 
on this very ML sort of do support that).

> We should probably at least think about having a way to mark those. 
> Something like a "for-stable-because-of-subsequent-patches" tag?
> 
> Or just more eager use of the table cc? I often feel bad about adding
> "cc: stable" to preparatory patches that don't actually fix the bug,
> but I think it was bad this time around.

Maybe at least partial solution (or first step) to this would be to 
somehow make sure that "these patches form an actual patchset that belongs 
together and is in fact one single thing" information somehow gets 
preserved in maintainer's / your tree.

It's sort-of achievable if everybody (not only the patchset producers, but 
also the consumers) would be very familiar with the idea of strictly topic 
git branches, but that's probably not realistic.

I currently have no good idea how exactly this should be done technically, 
but certainly it's doable and would be of a tremendous help to downstream, 
older-codebase consumers of your tree.

> Of course, I also hope that we're over the worst.

Fully agreed. Also, I hope that world is flat :)

Thanks,

-- 
Jiri Kosina
SUSE Labs
