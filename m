Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 45425F21
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 15 Jun 2019 10:55:45 +0000 (UTC)
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
	[209.85.167.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 64147775
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 15 Jun 2019 10:55:44 +0000 (UTC)
Received: by mail-oi1-f193.google.com with SMTP id w7so3840595oic.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 15 Jun 2019 03:55:44 -0700 (PDT)
MIME-Version: 1.0
References: <1559836116.15946.27.camel@HansenPartnership.com>
	<20190606155846.GA31044@kroah.com>
	<1559838275.3144.6.camel@HansenPartnership.com>
	<20190613105916.66d03adf@coco.lan>
	<20190614101222.GA4797@pendragon.ideasonboard.com>
	<20190614102424.3fc40f04@coco.lan> <20190614135807.GA6573@kroah.com>
	<20190614121137.02b8a6dc@coco.lan>
	<1560525785.27102.16.camel@HansenPartnership.com>
	<20190614124305.65eb8dbd@coco.lan>
	<1560527386.27102.23.camel@HansenPartnership.com>
	<20190614130456.6c339c01@coco.lan>
	<1560528994.27102.34.camel@HansenPartnership.com>
In-Reply-To: <1560528994.27102.34.camel@HansenPartnership.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Sat, 15 Jun 2019 12:55:30 +0200
Message-ID: <CAKMK7uGcrbarVy8DOXcZJLLmDqf2h+Fkk7EgbvDq2YRCDb_JpQ@mail.gmail.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	media-submaintainers@linuxtv.org,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Pull network and Patch
 Acceptance Consistency
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jun 14, 2019 at 6:16 PM James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
> On Fri, 2019-06-14 at 13:04 -0300, Mauro Carvalho Chehab wrote:
> > Em Fri, 14 Jun 2019 08:49:46 -0700
> > James Bottomley <James.Bottomley@HansenPartnership.com> escreveu:
> >
> > > On Fri, 2019-06-14 at 12:43 -0300, Mauro Carvalho Chehab wrote:
> > > > Em Fri, 14 Jun 2019 08:23:05 -0700
> > > > James Bottomley <James.Bottomley@HansenPartnership.com> escreveu:
> > > >
> > > > > On Fri, 2019-06-14 at 12:11 -0300, Mauro Carvalho Chehab wrote:
> > > > > [...]
> > > > > > If you think this is relevant to a broader audience, let me
> > > > > > reply with a long answer about that. I prepared it and
> > > > > > intended to reply to our internal media maintainer's ML
> > > > > > (added as c/c).
> > > > > >
> > > > > > Yet, I still think that this is media maintainer's dirty
> > > > > > laundry and should be discussed elsewhere ;-)
> > > > > >
> > > > > > ---
> > > > >
> > > > > So trying not to get into huge email thread, I think this is
> > > > > the key point:
> > > > >
> > > > > [...]
> > > > > > Currently, I review all accepted patches.
> > > > >
> > > > > This means you effectively have a fully flat tree.
> > > >
> > > > Yes.
> > > >
> > > > > Even if you use git, you're using it like an email transmission
> > > > > path.  One of the points I was making about deepening the tree
> > > > > is that the maintainer in the middle should trust the
> > > > > submaintainer they pull from, so there should be no need to
> > > > > review all the patches because of that trust.
> > > >
> > > > It is not a matter of trust. It is just that the media subsystem
> > > > is a complex puzzle. Just the V4L2 API has more than 80 ioctls.
> > > >
> > > > So, the goal here is to do my best to ensure that patches will
> > > > get at least two reviews.
> > > >
> > > > > This is how deepening the tree helps to offload maintainers
> > > > > because review is one of the biggest burdens we have and
> > > > > deepening the tree is a way to share it.  Without trust, we
> > > > > achieve no offloading and therefore no utility from deepening
> > > > > the tree.
> > > >
> > > > Yeah, I know one day this won't scale. The day it happens, I'll
> > > > just start picking pull requests. As we already use git, a
> > > > change like that would be trivial.
> > > >
> > > > > So, to get back to the original question, which was *should* we
> > > > > deepen the tree: why don't you feel you can let branches with
> > > > > patches you haven't reviewed into your
> > > > > tree?  I've characterised it as a
> > > > > trust issue above, but perhaps it isn't. I think this is a key
> > > > > question which would help us understand whether a deeper tree
> > > > > model is at all possible.
> > > >
> > > > One of the aspects is that developers nowadays are specialists on
> > > > a subset of the media devices. Most of them are working on
> > > > complex camera support, with envolves a subset of the APIs we
> > > > have. They never worked on a driver that would use other parts of
> > > > the API, like DVB, Remote Controllers, TV, V4L2 streaming
> > > > devices, etc.
> > > >
> > > > So, having someone with a more generalist view at the end of the
> > > > review process helps to identify potential problems that might
> > > > affect other devices, specially when there are API changes
> > > > involved[1].
> > > >
> > > > [1] Since when I started maintaining the subsystem, back on 2005,
> > > > on almost every single Kernel review there are API changes in
> > > > order to support new types of hardware.
> > >
> > > Actually, this leads me to the patch acceptance criteria: Is there
> > > value in requiring reviews?  We try to do this in SCSI (usually
> > > only one review), but if all reviewers add a
> > >
> > > Reviewed-by:
> > >
> > > tag, which is accumulated in the tree, your pull machinery can
> > > detect it on all commits in the pull and give you an automated
> > > decision about whether to accept the pull or not.  If you require
> > > two with one from a list of designated reviewers, it can do that as
> > > well (with a bit more complexity in the pull hook script).
> > >
> > > So here's the question: If I help you script this, would you be
> > > willing to accept pull requests in the media tree with this check
> > > in place?  I'm happy to do this because it's an interesting
> > > experiment to see if we can have automation offload work currently
> > > done by humans.
> >
> > We could experiment something like that, provided that people will be
> > aware that it can be undone if something gets wrong.
> >
> > Yet, as we discussed at the Media Summit, we currently have an
> > issue: our infrastructure lack resources for such kind of
> > automation.
>
> This one doesn't require an automation infrastructure: the script runs
> as a local pull hook on the machine you accept the pull request from
> (presumably your laptop?) so  the workflow is you receive a pull
> request, pull it into your tree and if the pull hook finds a bogus
> commit it will reject the pull and tell you why; if the script accepts
> the pull then you do whatever additional checks you like, then push it
> to kernel.org when you're satisfied it didn't break anything.

Jumping in here with a +1 on sharing scripts. We have the drm
inglorious maintainer scripts which originated from drm-intel.git, but
is now used for drm-misc.git and drm.git overall two. There's
essentially now three kinds of trees we pull into drm.git:

- the well-maintained ones that use those scripts: Experienced
maintainers and reviewers make sure the big picture is solid, and the
scripting makes sure all the details are done correctly too (e.g.
we've recently added the Fixes: validation that linux-next started
reporting). Processing those pulls is a button-push fire&forget
affair.

- well-maintained trees without good tooling. High level will be all
solid, but our scripting will catch the oddball screwed up Fixes: tag,
misformatted sob or slightly botched last-minute rebase. So
occasionally it's not just single button push but takes another
iteration to report the issues and create a revised pull.

- the not-so-well maintained trees. Usually just a handful of patches
(or less) per release cycle. Those you actually have to look at
patches and check a pile of things. I'm trying to get them merged into
bigger existing teams (like drm-misc.git) so they could benefit&learn
from all the tooling and experience, but for some folks it's a hard
sell. And I don't want to be too obnoxious about enforcing certain
process and maybe annoying the maintainer of that driver.

As a rule everytime someone screws up and the script doesn't catch it,
we volunteer them to improve the scripting.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
