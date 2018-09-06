Return-Path: <edubezval@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C9ED610B1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 22:51:08 +0000 (UTC)
Received: from mail-oi0-f68.google.com (mail-oi0-f68.google.com
	[209.85.218.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4F4F37A6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 22:51:08 +0000 (UTC)
Received: by mail-oi0-f68.google.com with SMTP id x197-v6so23770457oix.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 06 Sep 2018 15:51:08 -0700 (PDT)
Date: Thu, 6 Sep 2018 15:51:04 -0700
From: Eduardo Valentin <edubezval@gmail.com>
To: Jiri Kosina <jikos@kernel.org>
Message-ID: <20180906225103.GA2251@localhost.localdomain>
References: <nycvar.YFH.7.76.1809062054450.15880@cbobk.fhfr.pm>
	<CA+55aFx635GmuiojjD-dvqCvHBfGCt4zwSR5k8PyznSoy1xYWg@mail.gmail.com>
	<nycvar.YFH.7.76.1809062301480.15880@cbobk.fhfr.pm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <nycvar.YFH.7.76.1809062301480.15880@cbobk.fhfr.pm>
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

Hello,

On Thu, Sep 06, 2018 at 11:14:08PM +0200, Jiri Kosina wrote:
> On Thu, 6 Sep 2018, Linus Torvalds wrote:
> 
> > > I am not completely sure what we could do to improve this, especially with
> > > our kernel community hats on -- I am pretty sure a lot is happening on the
> > > corporate level between individual "corporate stakeholders".
> > 
> > One particular pain point this last time around were the stable
> > backports, I feel.
> > 

Totally agree.

> > A lot of that was that the actual *fixes* were marked for stable, but
> > quite often they were preceded by cleanups and other updates that
> > didn't actually fix things directly, and that weren't in themselves
> > explicitly marked for stable and didn't have a Fixes: tag, because
> > they were prep-work.
> > 
> > So we had _several_ nasty regressions in stable that never showed up
> > in mainline, because there was some non-obvious dependency that didn't
> > cause a merge conflict, but did cause a "this commit needed that other
> > commit to work right".
> 

Yeah, I think the later case of hidden dependencies is nastier to 
deal with than the first case of long patchset with lots of rework. 
And I remember the meltdown spectre case required quite a lot of elbow
grease from different involved developers to find those hidden patches,
specially on backports to kernels older than 4.14. Obviously with help 
from more experienced x86 maintainers, eventually things were fixed.

Now, one thing that really helped was the fact that 4.14.y backport was
done by the x86 maintainers. However, it is not feasible to expect that
happening for all stable branches, like it did not happen during the
spectre/meltdown story.

> I fully agree that this is an issue for stable. On the other hand, I would 
> be reasonably sure this has been equally painful issue for stable even 
> before this particular disaster (and all the preceeding stable discussions 
> on this very ML sort of do support that).
> 
> > We should probably at least think about having a way to mark those. 
> > Something like a "for-stable-because-of-subsequent-patches" tag?
> > 
> > Or just more eager use of the table cc? I often feel bad about adding
> > "cc: stable" to preparatory patches that don't actually fix the bug,
> > but I think it was bad this time around.
> 
> Maybe at least partial solution (or first step) to this would be to 
> somehow make sure that "these patches form an actual patchset that belongs 
> together and is in fact one single thing" information somehow gets 
> preserved in maintainer's / your tree.
> 
> It's sort-of achievable if everybody (not only the patchset producers, but 
> also the consumers) would be very familiar with the idea of strictly topic 
> git branches, but that's probably not realistic.
> 
> I currently have no good idea how exactly this should be done technically, 
> but certainly it's doable and would be of a tremendous help to downstream, 
> older-codebase consumers of your tree.

Well, keeping the topic branch for future reference can help yes. Now,
the more problematic part is the dependencies needed due to changes that
happened after the target backport kernel (say 4.9.y)  and the reference
backport / topic branch (say 4.15), but that were not necessarily part
of the original patch set that either prepare the code or really fixes
the issue finally.

And that even brings the question if all of those should be brought to
stable, or if some other version of the fix should be considered.

> 
> > Of course, I also hope that we're over the worst.
> 
> Fully agreed. Also, I hope that world is flat :)
> 

hehe..

> Thanks,
> 
> -- 
> Jiri Kosina
> SUSE Labs
> 
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
