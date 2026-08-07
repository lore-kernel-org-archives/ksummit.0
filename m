Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8631684BE
	for <ksummit@lists.linux.dev>; Fri,  7 Aug 2026 13:37:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786109826; cv=none; b=WUab4ZL2RZ1AcJNNB4QInDq62Vu26339fe0UrWKqu95ROmzu9BnueIXu+gm/quMLx/21gQHAcANqOZA97s/7ZHnedQLD9JaubUHIucOGFyQKOljuhlNMX33IKmho4xUfVDRVYKeKzubMTbW1h+B2/zmE+SRz4hVVWk8Ql2Im8lY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786109826; c=relaxed/simple;
	bh=5L8LOHgfdFAsn8ty22J4KE1Nb+12Xnqu4wvc1YYt++k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HW5vD4h40jGMohWKX3Zf6AOXqkJKxPgxyYAgDljGlUPunR3jWlvpeHtf6PPKtWvQWpN/sATIZ0s4miPa7j2zSoReazyhRxEMUuYSBbDp1Kz8E7NcyOQsYlNhREBnnJyBKb9mFd4VOa7FUpvjqsmlx/uK+79W9h0FVn/F3sjnfhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=hfE7GqAL; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="hfE7GqAL"
Received: from killaraus.ideasonboard.com (2001-14ba-70f3-e800--a06.rev.dnainternet.fi [IPv6:2001:14ba:70f3:e800::a06])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id D2990517;
	Fri,  7 Aug 2026 15:35:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1786109748;
	bh=5L8LOHgfdFAsn8ty22J4KE1Nb+12Xnqu4wvc1YYt++k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hfE7GqALTvszcLJByVuXjcVDqlPanCj1jb/llBQSnf6fsvNnLM9FGxK92pF/tFoBM
	 qWxtwZvSjSS/3yB6QOn0+vKn1g860Ip3psJLNe0kTh2VPXvLsGo+72Wfg1KohWWYV1
	 AXyokL5QD5U3f0gMSAkq+G5Fvl3MyksHgUjGztz0=
Date: Fri, 7 Aug 2026 16:36:58 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Arnaldo Carvalho de Melo <acme@kernel.org>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Matthieu Baerts <matttbe@kernel.org>, Theodore Tso <tytso@mit.edu>,
	Dan Carpenter <error27@gmail.com>,
	Konstantin Ryabitsev <mricon@kernel.org>, Greg KH <greg@kroah.com>,
	Jonathan Corbet <corbet@lwn.net>, ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Coping with the new-developer flood
Message-ID: <20260807133658.GO2201016@killaraus.ideasonboard.com>
References: <anSpoxZ9SUBvFOZj@mit.edu>
 <2026080651-bony-hertz-bfb6@gregkh>
 <20260806-industrious-whippet-of-jest-a91eaa@meerkat>
 <anThWLhqipEM34kg@stanley.mountain>
 <anVK-qkUOaIJkt9M@mit.edu>
 <78ee9f53-09b1-4934-82af-25f3652b108a@kernel.org>
 <20260807115603.GH2201016@killaraus.ideasonboard.com>
 <04b4e9abab2831b177228752860bedab1f15a736.camel@HansenPartnership.com>
 <20260807124017.GK2201016@killaraus.ideasonboard.com>
 <anXT7z3kwXnPtGGF@x1>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <anXT7z3kwXnPtGGF@x1>

On Fri, Aug 07, 2026 at 09:47:43AM -0300, Arnaldo Carvalho de Melo wrote:
> On Fri, Aug 07, 2026 at 03:40:17PM +0300, Laurent Pinchart wrote:
> > On Fri, Aug 07, 2026 at 08:28:08AM -0400, James Bottomley wrote:
> > > On Fri, 2026-08-07 at 14:56 +0300, Laurent Pinchart wrote:
> > > > On Fri, Aug 07, 2026 at 11:20:39AM +0200, Matthieu Baerts wrote:
> > > > > On 07/08/2026 05:23, Theodore Tso wrote:
> > > > > > There are some few exceptions, where a fix can't be easily
> > > > > > backported to the LTS branch, and so a different way of fixing a
> > > > > > particular serious patch needs to be applied to the LTS branch. 
> > > > > > But normally this will be explicitly stated in the commit
> > > > > > description, but we don't do that in a structured way, so it
> > > > > > might be hard for a non-LLM bot to figure this out.
> > > > > 
> > > > > Good point, but instead of looking at the patch description, it
> > > > > might be enough to look at the header: an exception could be added
> > > > > for patches sent to the stable ML with a version in the prefix.
> > > > > 
> > > > > But back to the idea of checking if the patch can apply: it might
> > > > > not be easy to deal with all the different trees and branches.
> > > > > There might be some dependences that are still in review, or
> > > > > applied somewhere but not in linux-next yet, or conflicts with
> > > > > linux-next, etc.
> > > > 
> > > > This is an issue that isn't limited to newcomers. As a maintainer, I
> > > > sometimes don't know what I should apply a patch series on. We have
> > > > the base-commit and prerequisite-patch-id trailers added by b4 that
> > > > help a lot there, but not everybody uses them. If a mechanism that
> > > > flags the issue for newcomers could also ensure that every patch
> > > > series carries proper base information, that would be a very nice
> > > > side effect. This may include adding new trailers if some use cases
> > > > are not currently covered.
> > > 
> > > There are two reasons not to insist too rigidly on base commit: firstly
> > > because a lot of series are invariant (they apply to any tree because
> > > there's been no commits in the areas patched)
> > 
> > Then the author could pick any base commit available in Linus' tree
> > the relevant subsystem tree (typically an upstream release of the next
> > branch of the subsystem). Would that have any drawback compared to not
> > specifying any base commit at all ?
> 
> What if for some reason someone wants to apply it to some base that is
> before the one specified? That person would be mislead into thinking
> that wouldn't be possible or automation would refuse to do so?
> 
> I think if it is _strictly_ need to use some specific base commit, then
> that is a requirement, no?

It depends on how we interpret the trailers. base-commit is generated by
b4, and I understand it as meaning the submitter used the specified
commit as a base. It doesn't have to mean that maintainers have to apply
the series on that exact base. Compared to having no base specified, it
tells what base the series *can* apply to. I think that's useful
information.

> > > and secondly because the
> > > series has a dependency on another posted but not yet applied patch
> > > series (i.e. no published base commit at all).  At least make it a
> > > Maintainer decision whether to insist on base commit or not.
> > 
> > Isn't that what prerequisite-patch-id is for ?

-- 
Regards,

Laurent Pinchart
