Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 57323FC6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 16:29:38 +0000 (UTC)
Received: from mail-it0-f68.google.com (mail-it0-f68.google.com
	[209.85.214.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 96197716
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 16:29:37 +0000 (UTC)
Received: by mail-it0-f68.google.com with SMTP id e14-v6so30332294itf.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 09:29:37 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CA+55aFyCdGstDu2u11veh3YxabpQrfaPEzuZB2x=eRXpw89prA@mail.gmail.com>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<CA+55aFyCdGstDu2u11veh3YxabpQrfaPEzuZB2x=eRXpw89prA@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 10 Sep 2018 18:29:35 +0200
Message-ID: <CAKMK7uFYBthvmHOUMnSbbfn7O=EcU0krB-bzgMEHxDn1eE=h8A@mail.gmail.com>
To: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
Subject: [Ksummit-discuss] Fwd: [MAINTAINER SUMMIT] community
 management/subsystem governance
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Sep 10, 2018 at 4:53 PM, Linus Torvalds
<torvalds@linux-foundation.org> wrote:
> On Sun, Sep 9, 2018 at 10:59 PM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
>>
>> I think for pratical reasons (the linux kernel is huge) focusing on
>> subsystems is more useful, at least in the short term. Much easier to
>> experiment with new things in smaller groups.
>
> I think that realistically, it's never going to be anything *but*
> subsystem-specific, not just because the kernel is huge.
>
> There are simply often very different concerns.
>
> An individual filesystem can be a big project, and people work on
> filesystems for decades. They can get quite complex indeed. But at the
> same time, an individual filesystem just doesn't tend to *impact*
> other things. Sure, we may end up adding features to the VM or the VFS
> layer to make it possible for it to do some particular thing, and we
> may end up having lots of common code that a lot of filesystems end up
> sharing, but in a very real sense, it is its own _mostly_ independent
> thing, and what happens inside the community for that filesystem
> doesn't tend to much affect anybody else.
>
> Same goes for a lot of drivers. Yes, they have connections to the
> outside, but what happens in one driver seldom affects anything else.
>
> Equally importantly, filesystem changes can generally be tested with a
> fairly targeted test-suite. When you make changes to one filesystem,
> you need to test only _that_ filesystem.
>
> The same _tends_ to be true for drivers too, although there testing
> can be "interesting" because of the hardware dependency - a single
> driver often covers a few tens (to a few hundred) different hardware
> implementations. But the changes still don't tend to affect *other*
> devices.
>
> But things change once you start going up from individual filesystems
> or drivers to a common layer. Making changes to a common layer is
> simply _fundamentally_ way more painful. Sure, part of the pain is
> that now you have to convert all the filesystems or drivers that
> depended on that common layer to the new changes, but a large part is
> simply that now the changes affect many different kinds of filesystems
> or drivers, and testing is *much* harder.
>
> You obviously see that with the whole drm layer (example: atomic
> modesetting). That's still a fairly small set of different drivers
> (small in number, not in code-size), and it already causes issues.
>
> At the other end of the spectrum, some of the most painful changes
> we've ever done have basically gone across *all* drivers, and caused
> untold bugs for the better part of a decade. I'm thinking of all the
> power management work we did back ten+ years ago.
>
> The VM people (and some other groups - the scheduler comes to mind)
> have had a different kind of issue entirely: not that the kernel has
> tons of "sub-drivers" that depend on them - although that obviously is
> true in a very real sense for any memory allocator etc - but simply
> that there are lots of different loads. In a filesystem or a driver,
> you can have a test-suite for correct behavior, but the behavior is
> largely the same. When it comes to VM or scheduler, the problem is
> that you have different loads, and performing well on one load does
> not mean at all that you do well on another.
>
> We had a few years when people were pushing scheduler rchanges without
> really appreciating that "your load isn't everybody elses load" issue.
>
> In contrast, in drivers and filesystems, things are usually more
> black-and-white wrt "does this work well".  Yes, yes, you have latency
> vs throughput issues etc, and you might have some scalability issues
> with per-cpu queues etc, but at the individual driver level, those
> kinds of concerns tend to not dominate. You want a stress-test setup
> for testing, but you don't need to worry too much about lots of crazy
> users.
>
> So different areas of the kernel just tend to have different concerns.
> You can allow people to work more freely on a driver that doesn't
> affect other things than on something that possibly screws over a lot
> of other developers.
>
> But if we find "models that work", maybe we can at least have
> processes that look a bit more like each other, even across
> subsystems.

Yeah, fully agreed, I think this is the kernel community's real
strength. It's one overall project on one hand, everyone pushes into
the exact same directory structure with one overall git history (in
the end at least, once something has made it to upstream). But zooming
in, it's very much just a loosely-coupled pile of associated projects;
each can optimize for their local constraints. HW testing and hacking
is indeed totally different from core work that affects everyone.

This also ties somewhat into the gitlab discussions: github doesn't
support this model, and isn't interested in fixing this. gitlab at
least has made some foundational work in their internals already (how
they handle the fork tree mostly, since that's the big one), and
they're interested in exploring how to support something like the
kernel's git tree flow at a higher level, in their web UI. I wrote
this entire thing up semi-coherently a while ago on my blog:
https://blog.ffwll.ch/2017/08/github-why-cant-host-the-kernel.html

>> That's why I added
>> "subsystem governance". If there's enough interest on specific topics
>> we could schedule some BOF sessions, otherwise just hallway track with
>> interested parties.
>
> So what I think would be good is to not talk about some nebulous
> "community management", but talk about very specific and very real
> examples of actual technical problems.
>
> Partly exactly *because* I think the areas are not all the same, and
> the friction points are likely *between* these areas that may even
> have really good reasons to act differently, and mostly they are
> independent and have little interaction, but then when interaction
> happens, things don't work well.
>
> IOW, if we have the top-level maintainers around, we should have a
> gripe-fest where people come in and say "Hey, you, look, this
> *particular* problem has been around for a year now, there's a patch,
> why did it not get applied"?
>
> Don't make it about some nebulous "we could do better as a community".
>
> Instead, make it about some very *particular* issue where the process
> failed. Make it something concrete and practical.
>
>    "Look, this patch took a year to get in, for no good reason".
>
> Or
>
>   "Look, here's a feature that I *tried* to get accepted for a month,
> nothing happened, so I gave up".
>
> And if we have a few of those, maybe we can see a pattern, and perhaps
> even come up with some suggestion on how to fix some flow.
>
> And if people can't come up with particular examples, I don't think
> it's much worth discussing. At that point it's not productive.
>
> We need to name names, show patches, and talk about exactly where and
> how something broke down.

Yeah, it's much easier to discuss concrete stuff than high-level
abstract concepts. That's why I listed a bunch of specific things I'm
interested in. Mostly that's stuff I'm actively working on in areas
that arent working perfectly in drm. Or at least where things are
painful enough that we're grasping for anything that looks like it
might help.

And if no one cares for a specific topic, then we'll best just throw
it off the agenda instead of having a generic discussion that goes
nowhere.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
