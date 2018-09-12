Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A0EF2BA0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 22:44:19 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[213.167.242.64])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 57D3076D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 22:44:18 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 13 Sep 2018 01:44:29 +0300
Message-ID: <3770011.IR2Cxx28gu@avalon>
In-Reply-To: <CAKMK7uE535-7Vs9EAa2725XL2TX2ChJCN0Zb3YaMe=MarYJOyw@mail.gmail.com>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<2019489.6joTqyUi4Z@avalon>
	<CAKMK7uE535-7Vs9EAa2725XL2TX2ChJCN0Zb3YaMe=MarYJOyw@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
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

Hi Daniel,

On Tuesday, 11 September 2018 01:44:57 EEST Daniel Vetter wrote:
> On Mon, Sep 10, 2018 at 11:33 PM, Laurent Pinchart wrote:
> > On Monday, 10 September 2018 23:55:22 EEST Daniel Vetter wrote:
> >> On Mon, Sep 10, 2018 at 10:32 PM, Laurent Pinchart wrote:
> >>> On Monday, 10 September 2018 18:56:18 EEST Daniel Vetter wrote:
> >>>> My goal at least with this is much more in figuring out new workflows,
> >>>> and running a pile of experiments. As mentioned, we don't yet even
> >>>> have a plan for all this, the goal here is to spark some discussions
> >>>> and figure out whether maybe others want to come along for the ride.
> >>> 
> >>> I recently had to deal with a new bugs and tasks management tool that
> >>> was developed in-house by a customer of mine. The tool was presented to
> >>> us in its first RFC version (and in source code form, which is very
> >>> nice), with very few implemented features, and without telling us what
> >>> process it was supposed to support. When I inquired I got told that the
> >>> process hasn't been taken into consideration to develop the tool, and
> >>> that it would just come into existence as a result of the tool. Needless
> >>> to say, it was hard for me to review the code, without knowing what it
> >>> was supposed to do.
> >>> 
> >>> I don't claim we're going to that extreme, but I believe it would be
> >>> useful to detail the problems we have in order to find solutions,
> >>> instead of proposing solutions and then trying to retrofit them to
> >>> problems.
> >> 
> >> We're definitely starting with some pain points, and don't do this
> >> gitlab thing as an a solution looking desperately for a problem. With
> >> my intel hat on there's a few main ones:
> >> 
> >> - CI integration with patchwork is a pain, for developers, maintainers
> >> and CI people all alike. I plan to do some slides on what exactly
> >> sucks and what gitlab is doing better, but I'm just not quite there
> >> yet. As mentioned somewhere else, ideally we'd have the full demo
> >> ready for LPC using the userspace igt gpu tests repo.
> > 
> > I'm interested in knowing whether you think this is due to the concept
> > behind patchwork, or to the current implementation. I like the idea of
> > patchwork as a tool that assists an email-based workflow in areas where
> > emails are too limited. I think we could do much more, and I believe we
> > could achieve a good result, while keeping the same philosophy.
> 
> The problem with patchwork is that it's a sidelined add-on. It's not
> in your face when doing a normal contribution. Our patchwork tries to
> fix that by sending replies to the mailing lists, but to avoid spam,
> it only does that when CI is done. While it's still crunching through
> your series you have to know a magic link where you can watch it go
> through it's backlog. We could update more often, but people already
> complain about the spam our CI produces.
> 
> gitlab otoh gives you a neat status indicator, and direct links where
> you can watch it do its thing live. All neatly integrated into the one
> merge request interface.
> 
> Now if you've never done CI before, you'll probably go meh on this.
> But the trick in making CI really effective is to make it about as
> addictive as a slot machine. Instant gratification and quick results
> is absolutely key, and developers want to watch it do its things. The
> more you can give them that, the more your developers will care about
> CI results (the green checkmark quickly starts to look like candy in
> your eyes), and the less maintainers have to check this themselves.
> 
> There's a bunch of other things, like integration with the git side of
> things (you can block a merge if it fails CI). So the above is the
> contributor/maintainer perspective.
> 
> The CI perspective is that the guy maintaining patchwork for us would
> like to do more useful things than maintain a pile of duct-tape :-)
> The fully integrated REST api of gitlab is pretty good catnip for
> devops types.

I understand you point, and I'll claim you could do all this using patchwork 
too :-) Of course the amount of development would very well be prohibitive, 
and I'm not advocating for that.

On a more serious note, maybe our disagreement comes (partly) from not having 
defined which feature(s) of gitlab you would like to use. The CI 
infrastructure, as in taking a branch, running tests on it, reporting results, 
and offering a web dashboard (as long as it remains optional), seems totally 
fine with me. Pushing to branches with particular names/paths instead of 
issuing a pull request by e-mail, if it helps the CI system figuring out what 
to test and when, is something I wouldn't oppose either (provided the push 
would send a mail to appropriate mailing lists to notify everybody of pull 
requests, possibly formatted the same way as a git request-pull).

Regardless of how our tool is named, I'd like it to offer e-mail integration

- In the incoming direction (as patchwork does), as there will always be 
patches submitted by e-mail. Compared to commits pushed to a git tree, patch 
series submitted by e-mail may make it more difficult to extract some context 
information (heuristics would likely be needed to track multiple versions of 
the same series for instance), and some information might not be available at 
all, so we might not be able to offer the same level of integration in that 
case, but we should do as much as we can.

We may also try to standardize the formatting of information in patches or 
cover letters to ease the task for our tools (for instance a standard way to 
tell which branch a patch series is based on could be useful). I however don't 
want to make it more difficult than it is already to submit patches by e-mail.

- In the outgoing direction, as operations directly performed through git 
(e.g. pull requests, and possibly merges, as a reply to the pull request e-
mail) should be reflected on mailing list to inform all developers, and to 
retain history. Given how much information many developers have to filter, 
require information to be pulled from a web interface will simply not work, it 
has to be pushed through a mean that will ensure that the audience is reached.

> >> - First contributor flow can be (if done correctly) so much more fun
> >> than mailing lists. There's been a bit of chatting on this already in
> >> this thread.
> > 
> > I recall lots of frustration from regular contributors during a discussion
> > about kernel maintainership, where many considered that we went to
> > extremes to help first contributors, while very little was done to
> > address the issues of regular contributors. Let's keep both sides in
> > mind, otherwise we'll end up moving our development process to instagram
> > because, you know, that's where the new generation is, people don't use
> > e-mails anymore.
> 
> First contributors aren't your antagonists, they're your canaries for
> bad process. Long timers just suck it up (or don't even see it
> anymore), first timers don't even bother because the hurdle is
> insurmountable. And yes sometimes it's the other way round, were
> problems really show up at scale, but only hurt a bit on the very
> first patch. The goal, at least mine, is to make it easier for
> everyone, at all levels of experience&contribution.

I've replied to my own comment separately, I believe we're in agreement here.

> >> - Tracking patch series as they evolve from RFC to final reviewed
> >> version. Patchwork, even with all the extensions we have since years
> >> in the fd.o one, just can't cope. This might be an artifact of our
> >> group maintainership + committer model, I think for single maintainer
> >> patchwork does work a bit better. This is the "patches on mailing
> >> lists don't scale, I have the T-shirt" problem Linus already
> >> mentioned. Our PMs/managers also don't like that they can't keep track
> >> of what the fairly big drm/i915 team is doing :-)
> > 
> > I've pointed out the issue that patch series don't always have fixed
> > boundaries in another reply to this thread, and I think that's the core
> > reason why this problem isn't solvable. We should have a working solution
> > for the common case though, and I fail to see why a tool like patchwork
> > couldn't do it (not claiming it does at the moment of course).
> 
> gitlab (or well anything with a concept like pull requests) makes the
> 90% so much easier. And it doesn't take more work for contributors if
> you set things up right - it's just a git push instead of a git
> send-email. At least after initial setup is done.

Replacing a git send-email with a git push wouldn't be an issue for me as long 
as we address the requirements listed above. What would be an absolute no-go 
for me would be patch (and pull requests) review over a web interface.

> And at least in a corporate environment (and I kinda have to care
> about that) gitlab wins on the initial setup front hands down against
> email. gitlab only needs https (even for git push/pull), and
> coproporate firewalls are pretty ok with https. They are not ok with
> smtp, like at all. And the amount of time we spend debugging random
> git send-email setup issues is epic.

How far do we want to go to make obnoxious and clueless IT departments happy ? 
What about corporate environments where a proxy server intercepts even https 
traffic, with custom certificates installed on all machines, which is 
unfortunately not that uncommon ? I personally wouldn't trust such an 
environment, so we have to set a firm limit somewhere in any case.

> There's alwasy going to be the thing where you have to split up a
> patch series into multiple patch series, or merge a few. And then you
> need to manually add links to the other/past discussions in either
> system.

Yes, manual intervention will sometimes be needed, and regardless of the tool 
we use that will require a bit of work on the submitter's side, but I think 
that's doable.

> The gitlab plaintext syntax for auto-closing/linking other issues and merge
> requests is pretty good, whereas emails it's all colating web links and msg-
> id, which at least I personally fine a chore and so almost never bother
> with.

Let's not forget that gitlab instances, like git trees, won't be there 
forever, they will likely come and go. We should link information in a way 
that will survive that.

-- 
Regards,

Laurent Pinchart
