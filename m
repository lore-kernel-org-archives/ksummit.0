Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2BF3E143A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 21:38:05 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[213.167.242.64])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 65891102
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 21:38:04 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Sean Paul <seanpaul@chromium.org>
Date: Tue, 11 Sep 2018 00:38:13 +0300
Message-ID: <3446025.tlHTe8tT15@avalon>
In-Reply-To: <CAOw6vbJq=aHrwgCKDACEm01Wz_4zs-Trpb1U8SXzmLkyH2PtRQ@mail.gmail.com>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<2620504.doLR7ekjFm@avalon>
	<CAOw6vbJq=aHrwgCKDACEm01Wz_4zs-Trpb1U8SXzmLkyH2PtRQ@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: James.Bottomley@hansenpartnership.com,
	ksummit-discuss@lists.linuxfoundation.org
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

Hi Sean,

On Tuesday, 11 September 2018 00:09:02 EEST Sean Paul wrote:
> On Mon, Sep 10, 2018 at 4:15 PM Laurent Pinchart wrote:
> > On Monday, 10 September 2018 18:13:05 EEST Jiri Kosina wrote:
> >> On Mon, 10 Sep 2018, James Bottomley wrote:
> >>>    1. How do reviews happen?  Non email projects tend to have only one
> >>>       review mechanism (gerrit, github, gitlab, etc.) and stick to it.
> >>>       Do we want to pick a technology or allow multiple?  I don't
> >>>       think this is kernel wide, it could be a sybsystem choice.
> >> 
> >> Yeah, but OTOH even now I've heard a lot of feedback about the irregular
> >> contributors / newcomers being confused by different subsystems having
> >> different processess and requirements; and those are basically just
> >> rather "minor" things currently (bugzilla usage, patchwork usage,
> >> subscriber-only mailinglists, etc), but it's still enough to confuse the
> >> hell out of people.
> > 
> > That's also one of my concerns. The differences between subsystems that
> > all use an email-based review process can already be confusing, or just
> > annoying to handle, especially when specific tools are mandated (the DRM
> > dim tool or the ARM patch system come to mind). I dread to think about
> > how painful it would be if one subsystem adopted gitlab, another one
> > gerrit, ...
> 
> The other way to look at this is as a feature, not a bug. As mentioned
> upthread, each subsystem is essentially its own oss project at this
> point, so why keep pretending they're all the same thing?

Subsystems are given lots of freedom in how they implement their development 
process, and many use that freedom, but in the end they are all integrated in 
the same kernel. This works because we have a common communication tool.

> At least in the gitlab/gerrit/github nightmare, the differing contributing
> rules would be obvious as opposed to implicit as they are today.

And we would lose the common communication tool.

(And if we went for gerrit, we'd likely lose the majority of developers, but 
that's a separate topic - after having to use gerrit when working on project 
Ara, I now reject any customer project that would force me to use gerrit 
again)

> > That would also make changes that cross subsystem boundaries a nightmare
> > to handle. Let's not forget that many developers are not confined within a
> > single subsystem.
> 
> Well, yeah, this kind of blows a hole in what I said above. I'm
> imagining Kees crying out in pain thinking about tree-wide changes in
> this new world :-).

I had the exact same image :-)

> That said, there's probably a pretty good middle ground between what
> we have now and the gitlab utopia.

I believe we all agree there's lots of room for improvement, that's already 
quite positive.

> > On the other hand, I don't really see how switching the whole kernel to
> > gitlab (or another system) could happen without frustrating a very large
> > number of developers. We all know how conservative the community tend to
> > be.
> > 
> > One possible course of action would be to make the new tools optional and
> > keep email as a common denominator. That way the old dinosaurs who won't
> > adopt any tool introducing even the slightest disturbance in their work
> > flow (it's not pleasant to realize that I may well be one of them) will
> > still be able to work undisturbed, and all the other developers would be
> > able to enjoy the myriad of amazing features offered by their tooling of
> > choice. This would however put an extra burden on the new tools that
> > would need to have first-class email compatibility. I don't know whether
> > that would be feasible.

-- 
Regards,

Laurent Pinchart
