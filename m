Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 77C981423
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 21:33:29 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[213.167.242.64])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E55A9102
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 21:33:27 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 11 Sep 2018 00:33:36 +0300
Message-ID: <2019489.6joTqyUi4Z@avalon>
In-Reply-To: <CAKMK7uFAXoVG+nBX=Om9A7R9xPYa-hd0JrRX1RNKSNhxnL_VsA@mail.gmail.com>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<8412864.7ztUKcXNNC@avalon>
	<CAKMK7uFAXoVG+nBX=Om9A7R9xPYa-hd0JrRX1RNKSNhxnL_VsA@mail.gmail.com>
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

On Monday, 10 September 2018 23:55:22 EEST Daniel Vetter wrote:
> On Mon, Sep 10, 2018 at 10:32 PM, Laurent Pinchart wrote:
> > On Monday, 10 September 2018 18:56:18 EEST Daniel Vetter wrote:
> >> On Mon, Sep 10, 2018 at 4:53 PM, Linus Torvalds wrote:
> >>> On Sun, Sep 9, 2018 at 10:59 PM Daniel Vetter wrote:
> >>>> - Assuming it gets accepted I think my LPC talk on "migrating to
> >>>> gitlab" will raise some questions, and probably overflow into hallway
> >>>> track or a BOF session.
> >> 
> >> First a bit more context: This is a different talk than the other
> >> "stuff drm people are doing" talks I've done in the past: We haven't
> >> done anything yet. We haven't even really started planning the
> >> migration yet :-)
> >> 
> >> The idea here was that for once I don't do a talk when it's all done,
> >> but way ahead of that when we're still figuring things out. The
> >> underlying reason for the migration is that fd.o admins want to shut
> >> down their home-grown collage of services and replace it with
> >> something that's much easier to maintain, provides solid 2FA and
> >> allows them to offload a lot of the admin work (handing out access
> >> rights and stuff) to all the projects their hosting. Plus stop the
> >> shell access services, if that's ever possible.
> >> 
> >> So right now this is only about moving the git server from one place
> >> to the other. And we haven't even done the full plan for that
> >> migration (it's a pile of repos and stuff). So really very early. But
> >> now that we do have this modern thing, a lot of people are looking
> >> into all the shiny features it offers, and trying to figure out
> >> whether they're useful for us or not. And that's what I want to go
> >> through in the talk - the title is a bit on the clickbait side :-)
> >> 
> >>> I've not used gitlab personally, but I *have* used github for a much
> >>> smaller project.
> >>> 
> >>> I have to say, the random and relaxed model is enjoyable. I can see
> >>> how somebody coming from that, then finds the strict kernel rules (and
> >>> _different_ rules for different parts) off-putting and confusing.
> >>> 
> >>> At the same time, I have to say that people need to keep in mind that
> >>> the kernel is *different*. We're not a small project with five
> >>> developers that isn't all that critical. Some of our off-putting
> >>> development models are there for a very very good reason. I think a
> >>> lot of people who find the kernel unfriendly just don't appreciate
> >>> that part.
> >>> 
> >>> The kernel used to be pretty free-wheeling too. 20+ years ago.
> >> 
> >> What I definitely don't want is a free-wheeling thing a la your
> >> standard github repo. There's also the issue that github massively
> >> optimizes for small projects in their entire setup. I've done a blog
> >> post about that a while ago and chatted with a bunch of githubbers,
> >> they're really not interested in big-project workflows that much.
> >> 
> >> gitlab otoh is very interested in that, and they picked up some of the
> >> concepts around how we use topic branches and pull requests in the
> >> kernel. It's by far not all implemented yet, but a lot more promising
> >> than anything else I've looked at. And we can always just keep using
> >> our existing tooling ofc.
> >> 
> >> Aside from this there's a bunch of other reasons fd.o admins picked
> >> gitlab (against other contenders they checked out), but this is one of
> >> the big ones. At least from the kernel's pov. For anyone bored enough,
> >> here's the full details of the why from fd.o admins:
> >> 
> >> https://www.fooishbar.org/blog/gitlab-fdo-introduction/
> >> 
> >>> And I still hate how github ends up making it really really easy to
> >>> make horribly bad commit messages, and it encourages a "just rebase on
> >>> top of the integration branch" model, and I do not believe that it
> >>> would ever work for the kernel at large. Too much room for chaos.
> >>> 
> >>> BUT.
> >>> 
> >>> I do think it's still instructive to look at how those "fun small
> >>> projects" work. Having the whole web interface and a more relaxed
> >>> setup is a good thing. And it's probably *better* than the strict
> >>> rules when you don't really need those strict rules.
> >>> 
> >>> So I do believe that it could work for a subsystem. Because "too much
> >>> room for chaos" ends up being nice when you don't want to worry about
> >>> the proper channels etc.
> >>> 
> >>> For example, we've had the "trivial tree", which tends to be a really
> >>> thankless project, that might well be managed way more easily by just
> >>> having a random tree that lots of people can commit to, and we could
> >>> even encourage the github (gitlab?) model of random non-kernel people
> >>> just sending their random trees to it, and have then the group of
> >>> committers be able to merge the changes (and at least on github, the
> >>> default merge is just a fast-forward, so it actually acts more like a
> >>> patch queue than a git tree).
> >> 
> >> Yeah, the trivial/"fun first contributions" process is a lot more
> >> polished on many of these projects, and there's a bunch such things we
> >> kinda want to look into longer-term. And this really is all long-term,
> >> because just the initial git server migration most likely won't even
> >> start until next year.
> >> 
> >> A much bigger thing for us is CI integration. patchwork + patch bombs
> >> + lots of tears and gin do kinda work, but it's super painful and a
> >> real chaos no one has any overview over. gitlab has really neat
> >> integrated CI for anything that you can run on containers/virtual
> >> machines (already played with it, pretty dope, and I have 0 clue about
> >> this docker/container stuff). And also seems to have good support to
> >> tie all kinds of exterrnal CI validation into pull requests (well
> >> gitlab calls them merge requests, it's the same).
> >> 
> >> One thing we're at least planning to experiment with is to take the
> >> driver pull requests from drm, auto-convert them into gitlab merge
> >> requests (or just ask people to directly do that), and then let to
> >> bots go wild. Would give us a nice single point where you can check
> >> all the information from all the different checks and vendor CI and
> >> everything. Not even that much with the goal to do the merge using the
> >> web ui, just to integrate all the testing and validation in one spot.
> >> 
> >>> And the reason I mention the trivial tree is not because the trivial
> >>> tree itself is all that interesting or because I'd like to belittle
> >>> that model ("that will only work for trivial unimportant stuff"), but
> >>> because it might be a good area to experiment in, and a way to get
> >>> people used to the flow.
> >>> 
> >>> Because if somebody is willing to every once in a while look at
> >>> trivial tree pull requests and merge them to the trivial tree, maybe
> >>> that person will start using the same flow for their "real" work.
> >>> 
> >>> And I do think that "patches by email" doesn't scale. I've been there,
> >>> done that, and I got the T-shirt.
> >>> 
> >>> I used tools that some people absolutely hated to get out of that
> >>> rat-hole. When that failed, I had to write my own.
> >>> 
> >>> So I very much do think that email doesn't really work at scale.
> >>> 
> >>> But I know the kernel people who still do real development (as opposed
> >>> to me) work that way.
> >>> 
> >>> So let me suggest a topic for the maintainer summit:
> >>>   "Live without email - possible?"
> >>> 
> >>> just to get that ball rolling
> >> 
> >> I'd say "nope", even with the s/live/patches/. Definitely not for
> >> anything spanning subsystems. Even within gitlabd the cross-tree
> >> support is not (yet) there. And we definitely need to have a solid
> >> gitlab/mailing list gateway, which is somewhere on the huge list of
> >> things fd.o admins need to do. It exists, but SMTP is pain, and fd.o
> >> is volunteer run, so all takes time. And then the gateway might be too
> >> much garbage to be useful.
> > 
> > I believe we need a common communication system that is supported by all
> > subsystems. Today that system is email.
> > 
> > If we don't want to challenge that, we'll need first-class compatibility
> > between whatever new tool we introduce and email, in both direction. All
> > discussions, including patch review, happening through other means (web UI
> > for instance) will need to be pushed to emails, and email replies will
> > need to be integrated back into the system, in such a way that will not
> > completely mess up the formatting and communication flow. It has to be
> > transparent enough.
> > 
> > If we want to challenge that, we'll have to agree about another
> > communication system for the whole kernel. While I don't think that's
> > realistic, I'm not opposed to discussing it. However, I expect many
> > developers to come up with lists of requirements, and the result of
> > merging all those requirements together to be exactly email and nothing
> > else :-)
> > 
> > On my side, there are three very important features that a communication
> > system should have:
> > 
> > - It should be push-based. I don't want to have to log in and pull
> > information from web UIs.
> > 
> > - It should be customizable, offering an easy way to script review, and
> > patch and pull request handling.
> > 
> > - It should offer an offline mode. Lots of us travel a lot or generally
> > have to work without an internet connection more often than we would
> > like, so any solution that requires being online won't work.
> > 
> > Emails provide all that, there may be good options I just fail to think
> > about right now.
> 
> Thanks for your list, "figuring out what we need from email to
> evaluate the usefulness of the gitlab gateway" was somewhere on my
> todo :-)

On a serious note, if you could come up with a communication system that have 
all (or most) of the good features or email, without the drawbacks, I would 
love that. Many have tried and failed, but I hope I'll see someone succeeding 
in my lifetime.

> More seriously: We're _really_ not far beyond the "hey, what about
> gitlab" stage of this entire discussions. As mentioned, I have not
> much answers, much less a plan, right now. The mail goal here is just
> to figure out the right questions (and then hopefully have some useful
> progress to report at LPC already).
> 
> >> My goal at least with this is much more in figuring out new workflows,
> >> and running a pile of experiments. As mentioned, we don't yet even
> >> have a plan for all this, the goal here is to spark some discussions
> >> and figure out whether maybe others want to come along for the ride.
> > 
> > I recently had to deal with a new bugs and tasks management tool that was
> > developed in-house by a customer of mine. The tool was presented to us in
> > its first RFC version (and in source code form, which is very nice), with
> > very few implemented features, and without telling us what process it was
> > supposed to support. When I inquired I got told that the process hasn't
> > been taken into consideration to develop the tool, and that it would just
> > come into existence as a result of the tool. Needless to say, it was hard
> > for me to review the code, without knowing what it was supposed to do.
> > 
> > I don't claim we're going to that extreme, but I believe it would be
> > useful to detail the problems we have in order to find solutions, instead
> > of proposing solutions and then trying to retrofit them to problems.
> 
> We're definitely starting with some pain points, and don't do this
> gitlab thing as an a solution looking desperately for a problem. With
> my intel hat on there's a few main ones:
> 
> - CI integration with patchwork is a pain, for developers, maintainers
> and CI people all alike. I plan to do some slides on what exactly
> sucks and what gitlab is doing better, but I'm just not quite there
> yet. As mentioned somewhere else, ideally we'd have the full demo
> ready for LPC using the userspace igt gpu tests repo.

I'm interested in knowing whether you think this is due to the concept behind 
patchwork, or to the current implementation. I like the idea of patchwork as a 
tool that assists an email-based workflow in areas where emails are too 
limited. I think we could do much more, and I believe we could achieve a good 
result, while keeping the same philosophy.

> - First contributor flow can be (if done correctly) so much more fun
> than mailing lists. There's been a bit of chatting on this already in
> this thread.

I recall lots of frustration from regular contributors during a discussion 
about kernel maintainership, where many considered that we went to extremes to 
help first contributors, while very little was done to address the issues of 
regular contributors. Let's keep both sides in mind, otherwise we'll end up 
moving our development process to instagram because, you know, that's where 
the new generation is, people don't use e-mails anymore.

> - Tracking patch series as they evolve from RFC to final reviewed
> version. Patchwork, even with all the extensions we have since years
> in the fd.o one, just can't cope. This might be an artifact of our
> group maintainership + committer model, I think for single maintainer
> patchwork does work a bit better. This is the "patches on mailing
> lists don't scale, I have the T-shirt" problem Linus already
> mentioned. Our PMs/managers also don't like that they can't keep track
> of what the fairly big drm/i915 team is doing :-)

I've pointed out the issue that patch series don't always have fixed 
boundaries in another reply to this thread, and I think that's the core reason 
why this problem isn't solvable. We should have a working solution for the 
common case though, and I fail to see why a tool like patchwork couldn't do it 
(not claiming it does at the moment of course).

> Aside: If you want to be involved in the nitty gritty details (aka
> lots of boring fd.o admin discussions), here's the overall migration
> tracking task:
> https://gitlab.freedesktop.org/freedesktop/freedesktop/issues/69
> 
> >> Whether anything of this will make it into the production drm
> >> processes, no idea. "maybe" is the best answer at this time I think.
> >> 
> >> And yes I hope that by LPC I'll have a bit more solid understanding of
> >> how this gitlab thing works and what we could try out, so this isn't
> >> as much high-level gossipping as it is right now :-)
> 
> Cheers, Daniel

-- 
Regards,

Laurent Pinchart
