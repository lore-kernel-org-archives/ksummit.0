Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 92908CF5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 14:53:20 +0000 (UTC)
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AEF74102
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 14:53:19 +0000 (UTC)
Received: by mail-io0-f175.google.com with SMTP id y3-v6so860116ioc.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 07:53:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
In-Reply-To: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 10 Sep 2018 04:53:07 -1000
Message-ID: <CA+55aFyCdGstDu2u11veh3YxabpQrfaPEzuZB2x=eRXpw89prA@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] community
 management/subsystem governance
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, Sep 9, 2018 at 10:59 PM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
>
> I think for pratical reasons (the linux kernel is huge) focusing on
> subsystems is more useful, at least in the short term. Much easier to
> experiment with new things in smaller groups.

I think that realistically, it's never going to be anything *but*
subsystem-specific, not just because the kernel is huge.

There are simply often very different concerns.

An individual filesystem can be a big project, and people work on
filesystems for decades. They can get quite complex indeed. But at the
same time, an individual filesystem just doesn't tend to *impact*
other things. Sure, we may end up adding features to the VM or the VFS
layer to make it possible for it to do some particular thing, and we
may end up having lots of common code that a lot of filesystems end up
sharing, but in a very real sense, it is its own _mostly_ independent
thing, and what happens inside the community for that filesystem
doesn't tend to much affect anybody else.

Same goes for a lot of drivers. Yes, they have connections to the
outside, but what happens in one driver seldom affects anything else.

Equally importantly, filesystem changes can generally be tested with a
fairly targeted test-suite. When you make changes to one filesystem,
you need to test only _that_ filesystem.

The same _tends_ to be true for drivers too, although there testing
can be "interesting" because of the hardware dependency - a single
driver often covers a few tens (to a few hundred) different hardware
implementations. But the changes still don't tend to affect *other*
devices.

But things change once you start going up from individual filesystems
or drivers to a common layer. Making changes to a common layer is
simply _fundamentally_ way more painful. Sure, part of the pain is
that now you have to convert all the filesystems or drivers that
depended on that common layer to the new changes, but a large part is
simply that now the changes affect many different kinds of filesystems
or drivers, and testing is *much* harder.

You obviously see that with the whole drm layer (example: atomic
modesetting). That's still a fairly small set of different drivers
(small in number, not in code-size), and it already causes issues.

At the other end of the spectrum, some of the most painful changes
we've ever done have basically gone across *all* drivers, and caused
untold bugs for the better part of a decade. I'm thinking of all the
power management work we did back ten+ years ago.

The VM people (and some other groups - the scheduler comes to mind)
have had a different kind of issue entirely: not that the kernel has
tons of "sub-drivers" that depend on them - although that obviously is
true in a very real sense for any memory allocator etc - but simply
that there are lots of different loads. In a filesystem or a driver,
you can have a test-suite for correct behavior, but the behavior is
largely the same. When it comes to VM or scheduler, the problem is
that you have different loads, and performing well on one load does
not mean at all that you do well on another.

We had a few years when people were pushing scheduler rchanges without
really appreciating that "your load isn't everybody elses load" issue.

In contrast, in drivers and filesystems, things are usually more
black-and-white wrt "does this work well".  Yes, yes, you have latency
vs throughput issues etc, and you might have some scalability issues
with per-cpu queues etc, but at the individual driver level, those
kinds of concerns tend to not dominate. You want a stress-test setup
for testing, but you don't need to worry too much about lots of crazy
users.

So different areas of the kernel just tend to have different concerns.
You can allow people to work more freely on a driver that doesn't
affect other things than on something that possibly screws over a lot
of other developers.

But if we find "models that work", maybe we can at least have
processes that look a bit more like each other, even across
subsystems.

> That's why I added
> "subsystem governance". If there's enough interest on specific topics
> we could schedule some BOF sessions, otherwise just hallway track with
> interested parties.

So what I think would be good is to not talk about some nebulous
"community management", but talk about very specific and very real
examples of actual technical problems.

Partly exactly *because* I think the areas are not all the same, and
the friction points are likely *between* these areas that may even
have really good reasons to act differently, and mostly they are
independent and have little interaction, but then when interaction
happens, things don't work well.

IOW, if we have the top-level maintainers around, we should have a
gripe-fest where people come in and say "Hey, you, look, this
*particular* problem has been around for a year now, there's a patch,
why did it not get applied"?

Don't make it about some nebulous "we could do better as a community".

Instead, make it about some very *particular* issue where the process
failed. Make it something concrete and practical.

   "Look, this patch took a year to get in, for no good reason".

Or

  "Look, here's a feature that I *tried* to get accepted for a month,
nothing happened, so I gave up".

And if we have a few of those, maybe we can see a pattern, and perhaps
even come up with some suggestion on how to fix some flow.

And if people can't come up with particular examples, I don't think
it's much worth discussing. At that point it's not productive.

We need to name names, show patches, and talk about exactly where and
how something broke down.

> Specific topics I'm interested in:
> - New experiments in group maintainership, and sharing lessons learned
> in general.

I think that's good. But again, partly because these kinds of subjects
tend to devolve into too much of a generic overview, may I suggest
again trying to make things very concrete.

For example, talk about the actual tools you use. Make it tangible. A
couple of years ago the ARM people talked about the way they split
their time to avoid stepping on each other (both in timezones, but
also in how they pass the baton around in general, in addition to
using branches).

And yes, a lot of it probably ends up being "we didn't actually make
this official or write it up, but we worked enough together that we
ended up doing XYZ". That's fine. That's how real flows develop. With
discussion of what the problems were, and what this solved.

In other words, make it down to earth. Not the "visionary keynote",
but the "this is the everyday flow".

> - Assuming it gets accepted I think my LPC talk on "migrating to
> gitlab" will raise some questions, and probably overflow into hallway
> track or a BOF session.

I've not used gitlab personally, but I *have* used github for a much
smaller project.

I have to say, the random and relaxed model is enjoyable. I can see
how somebody coming from that, then finds the strict kernel rules (and
_different_ rules for different parts) off-putting and confusing.

At the same time, I have to say that people need to keep in mind that
the kernel is *different*. We're not a small project with five
developers that isn't all that critical. Some of our off-putting
development models are there for a very very good reason. I think a
lot of people who find the kernel unfriendly just don't appreciate
that part.

The kernel used to be pretty free-wheeling too. 20+ years ago.

And I still hate how github ends up making it really really easy to
make horribly bad commit messages, and it encourages a "just rebase on
top of the integration branch" model, and I do not believe that it
would ever work for the kernel at large. Too much room for chaos.

BUT.

I do think it's still instructive to look at how those "fun small
projects" work. Having the whole web interface and a more relaxed
setup is a good thing. And it's probably *better* than the strict
rules when you don't really need those strict rules.

So I do believe that it could work for a subsystem. Because "too much
room for chaos" ends up being nice when you don't want to worry about
the proper channels etc.

For example, we've had the "trivial tree", which tends to be a really
thankless project, that might well be managed way more easily by just
having a random tree that lots of people can commit to, and we could
even encourage the github (gitlab?) model of random non-kernel people
just sending their random trees to it, and have then the group of
committers be able to merge the changes (and at least on github, the
default merge is just a fast-forward, so it actually acts more like a
patch queue than a git tree).

And the reason I mention the trivial tree is not because the trivial
tree itself is all that interesting or because I'd like to belittle
that model ("that will only work for trivial unimportant stuff"), but
because it might be a good area to experiment in, and a way to get
people used to the flow.

Because if somebody is willing to every once in a while look at
trivial tree pull requests and merge them to the trivial tree, maybe
that person will start using the same flow for their "real" work.

And I do think that "patches by email" doesn't scale. I've been there,
done that, and I got the T-shirt.

I used tools that some people absolutely hated to get out of that
rat-hole. When that failed, I had to write my own.

So I very much do think that email doesn't really work at scale.

But I know the kernel people who still do real development (as opposed
to me) work that way.

So let me suggest a topic for the maintainer summit:

  "Live without email - possible?"

just to get that ball rolling

             Linus
