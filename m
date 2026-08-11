Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91B5D3B3880
	for <ksummit@lists.linux.dev>; Tue, 11 Aug 2026 08:22:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786436553; cv=none; b=nYHD9RtzMVBdL1gzq5Ja24JeVEBM8F/UnmP0V7S2ckXExJWKVSb08eNdf30dLI8+Fb7ybmXG9UyRcuU+xvZrnYv6/92HTCkqi/IjG+Zzo/N2MbGViqcwnrYm5gg7//3pX1Oc5vE4Iz1Zg1ZvRaNtksHa2Xz4tJKgDE3UkOQfDW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786436553; c=relaxed/simple;
	bh=gRki98APDPRqSWREyTYXvgQAe8SsX/5CH+cG45hGjIg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AIuProLQpPFu3B7BCgsIQMvjs5rJT8eV1rMPyqMfLvXAeWzr8Bw4wG5tXBWN4v4Q0U0/C0A1gFqFOt6tiPagei+Y9NxErJc8fnkXVy4uebe6aYNhAGX1pQRftf/pgCusu5afINQy/t44wBm22ENw5m/k3xxwr802prcIkD6WLvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aascn4dD; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aascn4dD"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D1331F00A3A;
	Tue, 11 Aug 2026 08:22:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786436552;
	bh=hcg9ea/0gqwiQ+Z8uqqSphVTiw8s0hyjObyOYE7Nyzw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Aascn4dDREfQIgPo+bq/iWMF8/URFjuh2iherJmSz3S1R++whjPIpbAYUjN/H0p5c
	 DH7ThcFiWox8P/EwofehwXIDBTk85IwW3DDNhoR/vnFJGzkZf1eFOiD7XbmVb1VPzt
	 QfWTz+JOqpl2jkBwPlxFloF2q9In7nOt70l3gv94gkggVbWt+AiFRU5QIjOuNeWdDY
	 RbXr/VuiVYm8S6ixi9I5BX9hnB1WuRpue9yKKFQMivOpgzadzO/3ecdtEbM66oXVPm
	 03oOrdwFPafOVg9BMELfosZaBYJYFwjnsAN6W75SR+KBpIRxOFxULsBbTVbXzLveU8
	 8/ajcOIKfQ7IA==
Date: Tue, 11 Aug 2026 09:22:14 +0100
From: "Lorenzo Stoakes (ARM)" <ljs@kernel.org>
To: "Liam R. Howlett" <liam@infradead.org>
Cc: Dave Airlie <airlied@gmail.com>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Steven Rostedt <rostedt@goodmis.org>, 
	James Bottomley <James.Bottomley@hansenpartnership.com>, ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
Message-ID: <anrbfJoATQiCbgna@lucifer>
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
 <20260806194153.6443a3ba@gandalf.local.home>
 <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
 <anii3u-87kSrB9K3@lucifer>
 <CAPM=9tx7izyUJr_XVQju26fevzepZ-L6vs5vgH2aib9jPPjvRA@mail.gmail.com>
 <anl7CgkKb6tORavG@lucifer>
 <CAPM=9tybMTBw0iz2BSQ_p+3ybk=SmoLuRgiyyE6BP+=1+2RkfQ@mail.gmail.com>
 <F06EE533-9F8C-4869-9C27-5D8D79D8DC8A@infradead.org>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <F06EE533-9F8C-4869-9C27-5D8D79D8DC8A@infradead.org>

On Mon, Aug 10, 2026 at 05:45:29PM -0400, Liam R. Howlett wrote:
> On 10 August 2026 17:30:48 GMT-04:00, Dave Airlie <airlied@gmail.com> wrote:
> >On Mon, 10 Aug 2026 at 17:26, Lorenzo Stoakes (ARM) <ljs@kernel.org> wrote:
> >>
> >> On Mon, Aug 10, 2026 at 08:10:21AM +1000, Dave Airlie wrote:
> >> ...
> >> > I think people really have a misconception about what goes on at the
> >> > maintainer summit, the best explanation I've been given was that it is
> >> > Linus's staff meeting. The people that Linus works with closest, get
> >> > invited to talk to Linus and help him figure out where the overall
> >> > ship is going and where things are going wrong.
> >> ...
> >> > Your language choice already makes it feel like you see it as some
> >> > elite or special group. It's a bunch of technical project managers
> >> > talking about the processes of producing the kernel. If a talk about
> >> > the technical content of the kernel sneaks in it's very rare and also
> >> > usually not of interest to half the room.
> >> ...
> >> >
> >> > > I mean I don't know, maybe it's necessary to run it as a tight ship of
> >> > > trusted people, but I think we should at least be more clear about that.
> >>
> >> I mean this is kinda my point.
> >>
> >> It is being advertised as X but is actually Y. So say it's Y.
> >>
> >> That's not what Ted's posts or the write ups or generally any comms about the MS
> >> say it is.
> >>
> >> The CFP-ish bit is probably pretty redundant too on this basis?
> >
> >In my opinion, quite a lot of the problems that get raised by the CFP
> >on this list, often get resolved on this list, which to my mind
> >suggests we just need to have a better year round maintainers list
> >that doesn't get consumed by patches or internal subsystem matters.
> >
>
> Reviewed-by.. err.  Yeah, this sound like a decent idea to explore.

Reviewed-by: Lorenzo Stoakes (ARM) <ljs@kernel.org> also ;)

(I finally made an emacs macro my rubber-stam... err reviewing purposes)

--
Cheers, Lorenzo
