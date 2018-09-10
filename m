Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E3EDCCD7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 19:59:18 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[213.167.242.64])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 19F6D766
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 19:59:18 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Mon, 10 Sep 2018 22:59:26 +0300
Message-ID: <2789743.8CivUegSaj@avalon>
In-Reply-To: <CAOesGMjoe3XGeAoLhVpY2a-8q0Pgvc2bt9Dt58MYx=ZTuKHZTQ@mail.gmail.com>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<20180910153806.GR16300@sasha-vm>
	<CAOesGMjoe3XGeAoLhVpY2a-8q0Pgvc2bt9Dt58MYx=ZTuKHZTQ@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>
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

Hi,

On Monday, 10 September 2018 19:33:09 EEST Olof Johansson wrote:
> On Mon, Sep 10, 2018 at 8:38 AM, Sasha Levin wrote:
> > On Mon, Sep 10, 2018 at 05:10:48AM -1000, Linus Torvalds wrote:
> >> On Mon, Sep 10, 2018 at 5:08 AM James Bottomley wrote:
> >>> On Mon, 2018-09-10 at 04:53 -1000, Linus Torvalds wrote:
> >>>>   "Live without email - possible?"
> >>> 
> >>> Can I propose one small alteration to the topic:
> >>>         "Patches without Email - Possible?"
> >>
> >> Yes, better. That's what I meant anyway.
> >>
> >> I still want the pull requests as email, and I still think email is
> >> often the best way to discuss things.
> >>
> > Yes, email is great for discussions, but one concern I have is that once
> > discussions ended and a patch was merged, a lot of those discussions are
> > lost forever.
> 
> It's great for ephemeral discussions of the current patch set, but
> several of your points sort of indicate that it _isn't_ a good
> discussion forum either.
> 
> > It's somewhat easy to google a patch and look in lkml archives to see
> > some discussion as a result of the patch, but that's far from perfect:
> > 
> > 1. For different patch revisions, some discussions manage to hide in
> > the archives.
> > 2. Discussions that resulted in a patch being sent aren't linked to the
> > patch itself.
> > 3. Any discussions after the patch was merged aren't easy to locate,
> > specially if they're not in the same thread as the original patch.
> > 
> > This makes the lives of stable/distro folks more difficult than it
> > should be.
> > 
> > Yes, some maintainers started adding links to lkml archives, but those
> > are very inconsistent and often just point to the patch submission
> > rather than relevant discussions.
> 
> It makes it a pain for me as well. The way we deal with code coming in
> is that very often we don't see patches until they're sent to us in a
> pull request. I look through them (i.e. a light review), and if I find
> something, I'll go look for the patch on the mailing list and reply on
> it.
> 
> If that patch is up at higher versions, there's no way for me to
> easily find all previous discussion about it, which sometimes means I
> will have conflicting feedback from some other maintainer. If it's
> minor feedback that isn't a really big deal, it's better to see the
> other side early on and just not introduce the noise and conflicting
> requests to the contributor.
> 
> Having worked in several corporate setups, none of them are ideal, but
> some of them do fill the gaps we have while they introduce others.
> There is definitely lots of opportunity for better tooling all around.

One of the issues here is that patch series don't have fixed boundaries over 
their lifetime, the same way patches don't. A patch can evolve in scope from 
version to version, and similarly so can a patch series. It's not uncommon for 
patches to be dropped or added and for series to be split or merged. I've in 
the past incorporated part of an RFC patch series in the v1 of a series with a 
larger scope (after discussing it with the original developer of course).

While in many cases we can version both patch and series, it's not uncommon 
for subjects to be changed and scopes to be extended or shrunk. I would 
distrust a system claiming it can automatically track all patch series over 
their lifetime, always keeping history linked together.

That being said, if we could make that tracking information easily accessible 
in the common case where it actually exists, that would already be a good step 
forward in tooling improvement.

> > I'm not sure what's a good way to solve this, but I'd really like to
> > stop losing this valuable information as a result of the current
> > process.
> 
> I think any tool we choose can/should/will have an email backed such
> that email archives could always be a canonical historical fallback.
> Especially for services where URLs to pull requests might not be
> around 5 years from now, etc. We've already gone through a cycle of
> this for email archives recently.

-- 
Regards,

Laurent Pinchart
