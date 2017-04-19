Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 32CE8C3A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Apr 2017 21:29:06 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 13FFA26D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Apr 2017 21:29:03 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Josh Triplett <josh@joshtriplett.org>
Date: Thu, 20 Apr 2017 00:30:04 +0300
Message-ID: <2197263.dfzTo4bNkK@avalon>
In-Reply-To: <20170419201429.GA17383@cloud>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<1834084.5qZ8rLimvk@avalon> <20170419201429.GA17383@cloud>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Ingo Molnar <mingo@kernel.org>, Doug Ledford <dledford@redhat.com>,
	David Miller <davem@davemloft.net>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Josh,

On Wednesday 19 Apr 2017 13:14:29 Josh Triplett wrote:
> On Wed, Apr 19, 2017 at 10:50:15PM +0300, Laurent Pinchart wrote:
> > On Wednesday 19 Apr 2017 12:40:47 Linus Torvalds wrote:
> >> On Wed, Apr 19, 2017 at 12:25 PM, Laurent Pinchart wrote:
> >>> Agreed, for a maintainer summit to be useful, we need to have multiple
> >>> sides present. Gathering core maintainers with key representatives of
> >>> the downstream communities around the table is great, but I think we
> >>> would be missing one category whose opinion is equally important:
> >>> kernel developers.
> >>> 
> >>> When everything goes well developers can be represented by their
> >>> maintainers. That's the case where the process flows smoothly, so
> >>> there isn't likely to be much to discuss. However, problems occurring
> >>> in the maintenance process are likely to result in, if not conflicts,
> >>> at least different views between maintainers and developers, in which
> >>> case developers won't be represented at the summit.
> >>> 
> >>> I'm not sure how to handle that. I certainly don't want to increase
> >>> the number of attendees to include key representatives of developers
> >>> (and while I'd be very curious to see how they would be selected, I
> >>> doubt it would work in practice), but I also believe we need to
> >>> address this class of maintainership issues.
> >> 
> >> I do agree that it would be a great thing to have a "bitch at
> >> maintainers" session where developers get to vent frustration at how
> >> their patches are (or are _not_) accepted by maintainers.
> >> 
> >> I know we've had issues in the VFS layer, with Al sometimes
> >> effectively dropping off the intenet for a time, for example.  And I'm
> >> sure it happens elsewhere too, I'm just aware of the VFS side because
> >> it's one of the areas where I end up personally being a secondary
> >> maintainer.
> >> 
> >> But the problem with that "bitch at maintainers" thing is that I can't
> >> for the life of me come up with a sane small set of people to do that.
> >> So I don't see it happening ;(
> > 
> > I currently don't have any good idea to make that happen either, but I'll
> > keep thinking about it :-) More than bitching at maintainers, I believe
> > that lots of developers, especially "smaller" or infrequent kernel
> > contributors, are frustrated by maintainership issues that the related
> > maintainers might not even be aware of.
> > 
> > One idea I've been thinking of was to gather constructive feedback (or
> > just feedback that would then be filtered out of pointless finger-pointing
> > and bitching) about our maintainers, aggregate it periodically, and submit
> > it to the maintainers, possibly in an anonymized form. A maintainer summit
> > is certainly no place to gather that feedback, but could be an occasion
> > to decide whether such a process would be deemed useful. I for one, while
> > I only maintain drivers and not whole subsystems, would certainly welcome
> > constructive criticism in that area.
> > 
> >> Anyway, I have tried to gather "other groups" that aren't in that
> >> top-10 maintainers list, but are examples of people "around" the
> >> 
> >> maintenance issues:
> >>  - stable and linux-next:
> >>    Ben Hutchings (stable)
> >>    Stephen Rothwell (linux-next)
> >>  
> >>  - Infrastructure:
> >>    Konstantin Ryabitsev (k.org)
> >>    Fengguang Wu (kernel test robot)
> >>    Steven Rostedt (ktest)
> >>    Shuah Khan (tools/testing)
> >>    Thorsten Leemhuis (regression tracking)
> >>    Jonathan Corbet (documentation)
> >>  
> >>  - Security:
> >>    Andy Lutomirski (security and core)
> >>    Kees Cook (security)
> >>    James Morris (security subsystem)
> >>  
> >>  - distro people:
> >>    Laura Abbott (Fedora)
> >>    Jiri Kosina (MM? JM?) (Suse)
> >>    Rom Lemarchand (Android)
> >>  
> >>  - Hw vendor people?
> >>  - Sponsor people?
> >> 
> >> but I can't come up with a sane set of "leaf developers" or anything
> >> like that. We've just got too many. That's obviously a good problem to
> >> have, but it doesn't fit with the maintainer summit, because unless
> >> somebody can come up with some kind of prototypical spokesperson for
> >> that group (and to me, that doesn't seem likely), I don't see how to
> >> do it.
> 
> I'd definitely like to see an "issues that affect casual/occasional
> contributors" discussion; it wouldn't really fit the maintainer summit,
> but I like James' suggestion of doing it as part of the attached
> LinuxCon.

It's a good idea, I'd be happy to submit a proposal for such a session and 
lead it.

> In terms of framing, though, I'd suggest keeping it focused on "what
> issues have you personally encountered or directly observed", rather
> than "what random process ideas do you have".  The latter would go
> downhill very quickly; the former seems much more likely to produce
> productive feedback on real problems.  (It's less important that they
> come with potential solutions than that the relevant problems get
> recorded for subsequent consideration.)

I agree. I would extend it to "what issues have you or anyone your represent 
personally encountered", as I don't expect most of the casual/occasional 
contributors to attend the conference.

> Will the maintainer summit occur *after* the overlapped conference, or
> *before*?  If after, then it'd be plausible to have a "let's talk about
> what we heard" session in the maintainer summit.

-- 
Regards,

Laurent Pinchart
