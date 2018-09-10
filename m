Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5BDC5EBE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 15:56:21 +0000 (UTC)
Received: from mail-it0-f66.google.com (mail-it0-f66.google.com
	[209.85.214.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 312AD798
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 15:56:20 +0000 (UTC)
Received: by mail-it0-f66.google.com with SMTP id p79-v6so30174887itp.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 08:56:20 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CA+55aFyCdGstDu2u11veh3YxabpQrfaPEzuZB2x=eRXpw89prA@mail.gmail.com>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<CA+55aFyCdGstDu2u11veh3YxabpQrfaPEzuZB2x=eRXpw89prA@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 10 Sep 2018 17:56:18 +0200
Message-ID: <CAKMK7uEChffffb+iJT1UHHBnw+ocnGG3W64q-H9FDZgy-fZ46g@mail.gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
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

On Mon, Sep 10, 2018 at 4:53 PM, Linus Torvalds
<torvalds@linux-foundation.org> wrote:
> On Sun, Sep 9, 2018 at 10:59 PM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
>> - Assuming it gets accepted I think my LPC talk on "migrating to
>> gitlab" will raise some questions, and probably overflow into hallway
>> track or a BOF session.

First a bit more context: This is a different talk than the other
"stuff drm people are doing" talks I've done in the past: We haven't
done anything yet. We haven't even really started planning the
migration yet :-)

The idea here was that for once I don't do a talk when it's all done,
but way ahead of that when we're still figuring things out. The
underlying reason for the migration is that fd.o admins want to shut
down their home-grown collage of services and replace it with
something that's much easier to maintain, provides solid 2FA and
allows them to offload a lot of the admin work (handing out access
rights and stuff) to all the projects their hosting. Plus stop the
shell access services, if that's ever possible.

So right now this is only about moving the git server from one place
to the other. And we haven't even done the full plan for that
migration (it's a pile of repos and stuff). So really very early. But
now that we do have this modern thing, a lot of people are looking
into all the shiny features it offers, and trying to figure out
whether they're useful for us or not. And that's what I want to go
through in the talk - the title is a bit on the clickbait side :-)

> I've not used gitlab personally, but I *have* used github for a much
> smaller project.
>
> I have to say, the random and relaxed model is enjoyable. I can see
> how somebody coming from that, then finds the strict kernel rules (and
> _different_ rules for different parts) off-putting and confusing.
>
> At the same time, I have to say that people need to keep in mind that
> the kernel is *different*. We're not a small project with five
> developers that isn't all that critical. Some of our off-putting
> development models are there for a very very good reason. I think a
> lot of people who find the kernel unfriendly just don't appreciate
> that part.
>
> The kernel used to be pretty free-wheeling too. 20+ years ago.

What I definitely don't want is a free-wheeling thing a la your
standard github repo. There's also the issue that github massively
optimizes for small projects in their entire setup. I've done a blog
post about that a while ago and chatted with a bunch of githubbers,
they're really not interested in big-project workflows that much.

gitlab otoh is very interested in that, and they picked up some of the
concepts around how we use topic branches and pull requests in the
kernel. It's by far not all implemented yet, but a lot more promising
than anything else I've looked at. And we can always just keep using
our existing tooling ofc.

Aside from this there's a bunch of other reasons fd.o admins picked
gitlab (against other contenders they checked out), but this is one of
the big ones. At least from the kernel's pov. For anyone bored enough,
here's the full details of the why from fd.o admins:

https://www.fooishbar.org/blog/gitlab-fdo-introduction/

> And I still hate how github ends up making it really really easy to
> make horribly bad commit messages, and it encourages a "just rebase on
> top of the integration branch" model, and I do not believe that it
> would ever work for the kernel at large. Too much room for chaos.
>
> BUT.
>
> I do think it's still instructive to look at how those "fun small
> projects" work. Having the whole web interface and a more relaxed
> setup is a good thing. And it's probably *better* than the strict
> rules when you don't really need those strict rules.
>
> So I do believe that it could work for a subsystem. Because "too much
> room for chaos" ends up being nice when you don't want to worry about
> the proper channels etc.
>
> For example, we've had the "trivial tree", which tends to be a really
> thankless project, that might well be managed way more easily by just
> having a random tree that lots of people can commit to, and we could
> even encourage the github (gitlab?) model of random non-kernel people
> just sending their random trees to it, and have then the group of
> committers be able to merge the changes (and at least on github, the
> default merge is just a fast-forward, so it actually acts more like a
> patch queue than a git tree).

Yeah, the trivial/"fun first contributions" process is a lot more
polished on many of these projects, and there's a bunch such things we
kinda want to look into longer-term. And this really is all long-term,
because just the initial git server migration most likely won't even
start until next year.

A much bigger thing for us is CI integration. patchwork + patch bombs
+ lots of tears and gin do kinda work, but it's super painful and a
real chaos no one has any overview over. gitlab has really neat
integrated CI for anything that you can run on containers/virtual
machines (already played with it, pretty dope, and I have 0 clue about
this docker/container stuff). And also seems to have good support to
tie all kinds of exterrnal CI validation into pull requests (well
gitlab calls them merge requests, it's the same).

One thing we're at least planning to experiment with is to take the
driver pull requests from drm, auto-convert them into gitlab merge
requests (or just ask people to directly do that), and then let to
bots go wild. Would give us a nice single point where you can check
all the information from all the different checks and vendor CI and
everything. Not even that much with the goal to do the merge using the
web ui, just to integrate all the testing and validation in one spot.

> And the reason I mention the trivial tree is not because the trivial
> tree itself is all that interesting or because I'd like to belittle
> that model ("that will only work for trivial unimportant stuff"), but
> because it might be a good area to experiment in, and a way to get
> people used to the flow.
>
> Because if somebody is willing to every once in a while look at
> trivial tree pull requests and merge them to the trivial tree, maybe
> that person will start using the same flow for their "real" work.
>
> And I do think that "patches by email" doesn't scale. I've been there,
> done that, and I got the T-shirt.
>
> I used tools that some people absolutely hated to get out of that
> rat-hole. When that failed, I had to write my own.
>
> So I very much do think that email doesn't really work at scale.
>
> But I know the kernel people who still do real development (as opposed
> to me) work that way.
>
> So let me suggest a topic for the maintainer summit:
>
>   "Live without email - possible?"
>
> just to get that ball rolling

I'd say "nope", even with the s/live/patches/. Definitely not for
anything spanning subsystems. Even within gitlabd the cross-tree
support is not (yet) there. And we definitely need to have a solid
gitlab/mailing list gateway, which is somewhere on the huge list of
things fd.o admins need to do. It exists, but SMTP is pain, and fd.o
is volunteer run, so all takes time. And then the gateway might be too
much garbage to be useful.

My goal at least with this is much more in figuring out new workflows,
and running a pile of experiments. As mentioned, we don't yet even
have a plan for all this, the goal here is to spark some discussions
and figure out whether maybe others want to come along for the ride.

Whether anything of this will make it into the production drm
processes, no idea. "maybe" is the best answer at this time I think.

And yes I hope that by LPC I'll have a bit more solid understanding of
how this gitlab thing works and what we could try out, so this isn't
as much high-level gossipping as it is right now :-)

Cheers, Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
