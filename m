Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6D356825
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Sep 2018 07:41:02 +0000 (UTC)
Received: from mail-it0-f46.google.com (mail-it0-f46.google.com
	[209.85.214.46])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 51117B0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Sep 2018 07:41:00 +0000 (UTC)
Received: by mail-it0-f46.google.com with SMTP id h23-v6so9698427ita.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Sep 2018 00:41:00 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.1809141530360.10480@nanos.tec.linutronix.de>
References: <8412864.7ztUKcXNNC@avalon>
	<CAKMK7uFAXoVG+nBX=Om9A7R9xPYa-hd0JrRX1RNKSNhxnL_VsA@mail.gmail.com>
	<2019489.6joTqyUi4Z@avalon>
	<CAKMK7uE535-7Vs9EAa2725XL2TX2ChJCN0Zb3YaMe=MarYJOyw@mail.gmail.com>
	<20180911124423.GM2494@piout.net>
	<CAKMK7uE55eEP8L74z7HMyPb2nVnK9=bBX8tUEqmsDYSqjO-CZg@mail.gmail.com>
	<CACRpkdZeR=0-_tN03jFLGc-j1pW4hfOtqB6icjhpF190A8Z0=A@mail.gmail.com>
	<20180912182343.GI2760@piout.net>
	<alpine.DEB.2.21.1809122037450.1473@nanos.tec.linutronix.de>
	<20180913120811.oilaweiun3z4l5wo@flea>
	<20180913125723.GC14988@piout.net> <87a7olzd7s.fsf@intel.com>
	<alpine.DEB.2.21.1809132136350.1473@nanos.tec.linutronix.de>
	<CAPM=9twrXd4W-Qf_mmqXkBj5bi=PaTdy0KPPTfW9A6bN5uk0sw@mail.gmail.com>
	<alpine.DEB.2.21.1809141530360.10480@nanos.tec.linutronix.de>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 17 Sep 2018 09:40:58 +0200
Message-ID: <CAKMK7uF2bKRj9K9KyAbw0KUV83UwU9oJLyg7u9Wno1w+8zY=2A@mail.gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>
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

Comment on timing: I typed this up on Friday, but wanted to sit on it
for a bit more and do some editing. Then w/e happened, and I guess
this now looks somewhat strange since it doesn't take latest
development into account. Since I'm still processing these I figured
I'll just send this out as-is.

On Fri, Sep 14, 2018 at 4:15 PM, Thomas Gleixner <tglx@linutronix.de> wrote:
> On Fri, 14 Sep 2018, Dave Airlie wrote:
>> I think it's valuable discussion to move from "you didn't invent this,
>> we've been doing it since 1956 on mainframes, to how can we make this
>> into a process that works for other subsystem maintainers).
>
> It would be also valuable to sit back and think about
>
>   - why the DRM model works well for DRM
>
>   - why it is not necessarily applicable for other subsystems
>
>   - why other maintainer groups have different setups and issues
>
> instead of telling everyone it works great for DRM, everyone should do that
> and then pull random statistics to tell people that they have a problem.
>
> I'm all for exchanging ideas and information, but I'm totally not
> interested in the condescending tone which tells the world that anyone not
> doing the DRM thing has a problem.
>
> DRM is fundamentally different than anything I maintain. The vast majority
> of contributors and therefore potential maintainers are working in
> corporate teams, which are there to care about DRM and the corporates
> graphics cards.
>
> On my end, the only larger group of constant contributors is around perf
> tooling as there seems to be a vested interest of distros to make this
> work. We have a well working setup there.
>
> The kernel side looks fundamentally different. We surely have maintainers
> where we could gain them. We have a few regular reviewers, but that's it.

DRM is more than just drm/i915 and drm/amdgpu. Yes those are indeed
fairly unusual cases, and when I made the conferences rounds
presenting about our committer model 2 years back I highlight that it
probably works much better if you have a tight-nit team. Both i915 and
amdgpu work with a committer model (amdgpu's unfortunately not quite
as aggressively public, there's still maintainers cherry-picking
staged patches over to the final trees).

But we also have a tons of drivers which range from outright
drive-thru to just chronically under-maintained reverse-engineered
stacks. Some have some coporate backing, a lot of it along the lines
of "I need to get this feature in, where can I drop my patches". So
2-3 years ago I'd say we definitely had a lot of the problems you and
other maintainers in this thread are describing. We still have a lot
of these, but I think we've substantial improved upon our own old
status quo. And yes, drm ex. i915&amdgpu is a bit smaller than tip,
but a fairly substantial junk still.

> Everything else is drive by, random corporate feature enablement thrown
> over the fence, distro value add etc. Nothing where you can keep people
> affiliated.
>
> We do not have the concept of teams dedicated to the problem space. We
> can't split it into bits and pieces as it's intervowen at the hardware
> level to quite some extent. Aside of that there are neither teams nor
> individuals who care about one particular piece more than they care about
> the whole thing.
>
> I'm well aware of these problems, I talk openly about them, and try to come
> up with solutions since years, but I can't change the way corporates work
> and people tick at all. I lost at least two submaintainers after they
> gained speed just because they changed jobs and vanished into nirwana.

These are all the same problems we've had (and to some extent, still
have) in small drm drivers, not mostly maintained as part of drm-misc.

> I'm not buying at all, that having standardized setups and tools and
> whatever, will change any of the underlying issues magically.

Standard tooling is indeed fairly miniscule thing (and we're
definitely not even close to an optimum with the drm tooling we do
have). But it contributes. Creating a great community where people
want to hang around in, even if it's not the job they're directly paid
for, takes a lot of work, at all fronts. No single item is going to be
your magic fix, but in aggregate, you really need all the pieces (or
most of them at least).

> It won't make contributors more careful, it won't make developers magically
> take over responsibility, it won't change the corporate 'get this feature
> thrown over the fence' mentality, it won't make people appear who deeply
> care.
>
> It's nice that it works so well for you and I wish it would work in other
> places similarly well, but please can we take that step back and look at
> the specific problems of a specific subsystem instead of telling everyone
> that they have a problem and offering the DRM way as Panacea.
>
> Unless that systematic and specific analysis happens, I'm out of this
> discussion.

I think most of the specific things we've learned in drm have been
brought up in the discussion already. Individually they indeed don't
seem all that important, so let me summarize them here:

- commit rights also works with a very lousely coupled group of
people. In drm-misc we've stuffed random tiny drivers all over the
place into one tree, and it's not utter chaos. This is new, since 2
years ago I mentioned that we've only tried this on tight-nit vendor
teams.

- stuffing even somewhat unrelated things into one tree, and
encouraging collaboration through the stick of forced cross-review,
helps a lot in improving the bus factor. Even for tiny things you end
up with more than 1 person who occasionally looked at it and has some
clue. Again, this is a newly gained insight.

- the pipeline from drive-thru contributor, to occasional, then
regular, then experienced enough to provide useful review, and so on,
until they start taking over maintainer duties is very lossy, and
generally takes a few years. It's also extremely sensitive to even the
tiniest barriers and hurdles - whether you end up with a new
maintainer or not feels like a "death by a thousand papercuts" thing.
And generally the people who drop out never tell you why, so figuring
out what hurts requires tons of experimenting. So even tiny things
that look totally inconsequential at first sight matter hugely for the
overall success here. Like tooling.

- it's paramount that people feel their contributions are valued -
they have tons of reasons for walking away asap, and the only thing we
can give them in return for staying is a warm and fuzzy feeling. Which
pays like shit, but it's all we have. We try to aggressively recognize
good contributors by giving them commit rights, adding them formally
as reviewers to MAINTAINERS, bunch of thank yous (I'm really bad at
those myself and do way too little). You'd probably be in complete
shock how quickly we hand out these charges and responsibilities, but
in the large scheme it really does work.

- we crack down hard on anything that might drive away contributors.
There's two big pieces here, first our Code of Conduct. Yes we enforce
it, and yes I have the mails to prove that people notice, and that
they stick around because we manage to create a more respectful and
constructive atmosphere. The other is that there's no special
priviledges for maintainers. If you have special maintainer powers,
you make it pretty clear that everyone else is a 2nd class
contributor, and no amount of recognizing is going to fix that and
make people stay when they have other duties that keep them busy.

And yes, DRM is by far not perfect. We still have a bunch of trees and
drivers which aren't well maintained in my opinion. And we're trying
out new things to figure out whether we can improve on the status quo.
What's flat out not true on the other hand is that we're just doing a
bunch of philosophical waxing, that we don't have similar problems to
everyone else (just a different mix of them of course), and that we
haven't figured out new stuff the past 2 years and new lessons
learned.

Cheers, Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
