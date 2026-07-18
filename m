Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1D061862
	for <ksummit@lists.linux.dev>; Sat, 18 Jul 2026 01:09:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784336994; cv=none; b=HoxMVhJpGHnqvarD4kQE0kHh1w75kVi56Hg5n2k3CqQHb9nl7U05nQriGY4RwECH0+N1cXtH9gE1aq+7A6zNxNETfWxb6AhSOxgPc9Nqz/iCUFZiPf6zArmHmnCmzoWOz6kzQID/zf8ZYxITedkKsv5tsd0oiJ3LKt3t7EO/vUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784336994; c=relaxed/simple;
	bh=NJKNCmTaX8FUT2JaV2/JGobPFG3h5TKs08q31JcJvSQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KZyKHo5zwhjcSRQjuv+T7Tup9bEkW9Sl+qF3YBLeTwb4ZxZloQ4k6Lvz7DVraYSbefk5Z9zsthFr1yY5os0Q2BsHi94K/bz9x00SRtkkhUl8Blz2LFSbOV8TLUTrCLr5duJrFRuJBsHvgWwEYDPMIEuYi2fxjHd/HOE2Tk+KjSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=DsFD2zKN; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="DsFD2zKN"
Received: from killaraus.ideasonboard.com (2001-14ba-70f3-e800--a06.rev.dnainternet.fi [IPv6:2001:14ba:70f3:e800::a06])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id AE9D1497;
	Sat, 18 Jul 2026 03:08:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1784336933;
	bh=NJKNCmTaX8FUT2JaV2/JGobPFG3h5TKs08q31JcJvSQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DsFD2zKN4faUEbeHLISbsMaybAG6mN8bSjrqXhxGusqTKn0EqIT+S15uVh160fJ2q
	 vaqeoBb9nViMaSgsLDsHeDThcEfxZQxe0pXgVtXrqDkW8iYM1z6POeFAxxjEzgHd+4
	 p5R4tgZoQYf6hJkTOzodVRD0Ml/PayJUB+vKV994=
Date: Sat, 18 Jul 2026 04:09:49 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Roman Gushchin <roman.gushchin@linux.dev>,
	Jason Gunthorpe <jgg@nvidia.com>, ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] The place of AI code review in the Linux
 Kernel process
Message-ID: <20260718010949.GG1889304@killaraus.ideasonboard.com>
References: <7ia4qzl45h20.fsf@castle.c.googlers.com>
 <20260715185757.GA191552@nvidia.com>
 <7ia4pl0oymo0.fsf@castle.c.googlers.com>
 <CAHk-=wjCcHUr=-Ycsey0khWnn68O6D=ZN-bE+8Sq4NetXpFuPA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAHk-=wjCcHUr=-Ycsey0khWnn68O6D=ZN-bE+8Sq4NetXpFuPA@mail.gmail.com>

On Fri, Jul 17, 2026 at 04:17:06PM -0700, Linus Torvalds wrote:
> On Wed, 15 Jul 2026 at 14:21, Roman Gushchin wrote:
> > Jason Gunthorpe writes:
> > >
> > > I would really like a syzkaller like dashboard of all these
> > > pre-existing issues and a nag/summary email so they actually get
> > > fixed.
> 
> I'd actually be willing to go even a bit further - because I suspect
> we will need to at some point.
> 
> > > I've gone and fixed a bunch on my own, mostly out of fear that they
> > > will just disappear and be lost, but it is an annoying urgency. I'd
> > > rather have as a giant todo list (that maybe other people could help
> > > with too)
> > >
> > > Often alot of tokens are spent to find these things, it feels wrong
> > > that they are effectively lost in the endless stream of reviews..
> 
> I think this ends up being one of those things that easily frustrates
> maintainers: low-grade constant noise from an AI that adds extra
> overhead and another thing people feel they need to look at.
> 
> (Or feel they really don't have time or interest to look at, and then
> just the knowledge that there's that nagging thing that you don't
> really care about adds stress and frustration).
> 
> I think AI code review typically fits fairly well into the pattern we
> already have when people post a patch to the proper list, and then you
> have automation that reacts to it. And whether that automation is
> something we've been doing for years like the 0day bot or Sashiko is
> then almost incidental.
> 
> However, I think that "pre-existing issues" ends up being a pain point
> because it's just a _separate_ thing.
> 
> And honestly, it's been a pain-point long before AI. This is very much
> not a new thing. We've had this discussion at several maintainer
> summits:  some maintainers finding pre-existing issues - whether
> outright bugs or just ugly interfaces - when some patch series is
> posted, and then some trying to make that part of the whole "in order
> to get this patch series accepted, you should fix these pre-existing
> issues that I noticed".
> 
> And that really doesn't work, and has caused friction.
> 
> Developers who do some patch series for X and find that interesting -
> or get paid for that - are *not* necessarily then just going to do Y
> just because the maintainer notices it.
> 
> And then Y doesn't get done, and maybe X doesn't get done _either_,
> just because of some unrelated issue was pointed out as part of the
> discussion.

It has caused and still causes friction, but I wouldn't dismiss it
entirely. I have seen multiple maintainers, including myself, ask for
yak shaving in ways that worked reasonably well. The key was to judge
how much yak shaving is reasonable (and the answer is invariably less
than a maintainer would wish for), and not making it mandatory.

How much to ask for depends a lot on the original series, the type and
extent of the preexisting problems, the person submitting the patches,
their current workload, and probably the phase of the moon. I usually
get very good success asking a person who submitted a series of 15
patches to include one or two small extra ones in a v2, because they
have to send a v2 anyway, and the amount of extra work is small.

I've also had some success getting much larger reworks done, because the
developer found the issue interesting and had time to look at it. It
doesn't happen often, but I think asking nicely is worth a shot when I
know there's a chance it can succeed. I wouldn't try that with an
inexperienced newcomer, or with a regular contributor who I know is
overloaded, or with a person sending drive-by, tree-wide fixes, or in
lots of other cases.

This requires human judgment. I don't expect sashiko to understand it's
not the right time to ask for extra work because developer X has a
newborn baby. Or rather, I really hope AI agents will not get access to
or use that kind of information for as long as possible.

> This whole "Sashiko found a pre-existing issue when looking at a
> patch" very much smells like the same pattern.
> 
> And I don't really think that "we'll have a database of it" is going
> to fix it. Sure, at least things won't get duplicate reports due to
> it, and maybe it won't get forgotten, but it's still going to result
> in the same kind of friction and stress, I feel.
> 
> Which is why I would actually like to at least explore taking the AI
> patch review further:
> 
> > A minor problem is that for prompts there is no point to stick to the
> > kernel release schedule (merge window, etc), which will only slow down
> > things. So it requires Linus being onboard with the idea to accept these
> > pull requests all the time.
> 
> Yeah, I don't want that, but what *would* be interesting is if an AI
> tool that we trust(*) might even build up some kind of "trivial tree"
> for issues and patches it finds as part of the review.
> 
> (*) IMPORTANT NOTE: I do not believe in "trusting the AI tool". The
> reason we'd trust the tool is not because we trust the AI, but because
> we'd trust the person or group who is orchestrating the tool!
> 
> Possibly as just patch series on the mailing list (for "b4 am"), but
> possibly even as a git tree. Very much a "let's get this unrelated
> fixed next merge window".
> 
> We've tried trivial trees before, and they have been mind-numbingly
> boring, and they've never really succeeded at them because of that.
> It requires human effort and tracking, and it's a lot of work, and
> it's by definition not really very interesting - so people start doing
> it because it feels worthwhile, but it's just not motivational for
> anybody.
> 
> That would seem to be the obvious "next step" from just doing patch
> review. Trivial patches that the AI has high confidence in, and we
> have high confidence in the group running the AI.
> 
> Because I think it would reduce stress if we had some sane workflow
> for the trivial noise that is just incidental to the patch review.
> 
> (And again: this would only be for simple and straightforward patches
> with high confidence, and we'd probably have maintainer Ack
> requirements, but the point is that I think it would be good to have
> the AI not just point out problems, but also actively get them fixed.
> At least eventually).

-- 
Regards,

Laurent Pinchart
