Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D30C422531
	for <ksummit@lists.linux.dev>; Fri,  7 Aug 2026 12:47:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786106876; cv=none; b=nHMvbg96natOfOPPj1dnfiwQvKJlPovYB4hhCJu6odDnbkzSKU+UQogzJWbbWZ2U+3nPBMSbqplA6yqus/l9+2CijYsfykXXwn2JY5XPfQ1T95jh2GPM3ldt73KfiY3vlvczPEF3d/3mtXG/e+dmI9PxRcN+8Y/sz/z6ABbhGw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786106876; c=relaxed/simple;
	bh=35q/IXFW+9xKHh9wze+f283zvxn1aGRz0RRz4XqLze0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Uz6FrwWAzVlVW0D33A3FUkmD6DGk2b8NegFp/q7AyJWxF5ZqQ2KRaKE9OT03FqoXZDBcs2JrJcqsM0uBwvSeDYBA+p4AtGiieyoBlukiqD9XLR6Df5Yps+fPtOi1c3an1p2x4nX3XdYrEGfbgtWOf1E+bGJ6D3t6pYri0cSPodg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TXNdJOr3; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TXNdJOr3"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E60371F00A3A;
	Fri,  7 Aug 2026 12:47:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786106867;
	bh=tSowzZSAoa1uBdZCDBrHUVdmJJ6kd5Nz8Uj9qWXrRjM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=TXNdJOr3ZOKe4+oIWoG/hfy8zMtQRStQBqaqAWrYYocAJ8X6jFf4kK9woP+ThxyWQ
	 iraVDtAHl2qN1/L51z1RBXKSdKRIQ30eSxSOv31I8OCSUTmwCJj91+mxxHpophNIcg
	 mpxDN58ELoUmOO4JOugi95X5dpinMgvIIl6jcBhpAJY7/X8mM/RUvvQVkkth/34C8F
	 Ws9oPvReMgPbyIBDrS789VoIjiwpx7i6kip07FGBht9QUTT7xRYWVzpj1G8RGqZJGm
	 sxAL6VEQCelQ4wiq0dTJmBYyQ/n+MCElLDCHvy5NHFTvYQG7/WppS+BosBN74h9y7m
	 2ZFx/hv3Dlq6Q==
Date: Fri, 7 Aug 2026 09:47:43 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Matthieu Baerts <matttbe@kernel.org>, Theodore Tso <tytso@mit.edu>,
	Dan Carpenter <error27@gmail.com>,
	Konstantin Ryabitsev <mricon@kernel.org>, Greg KH <greg@kroah.com>,
	Jonathan Corbet <corbet@lwn.net>, ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Coping with the new-developer flood
Message-ID: <anXT7z3kwXnPtGGF@x1>
References: <87y0ekm9nw.fsf@trenco.lwn.net>
 <anSpoxZ9SUBvFOZj@mit.edu>
 <2026080651-bony-hertz-bfb6@gregkh>
 <20260806-industrious-whippet-of-jest-a91eaa@meerkat>
 <anThWLhqipEM34kg@stanley.mountain>
 <anVK-qkUOaIJkt9M@mit.edu>
 <78ee9f53-09b1-4934-82af-25f3652b108a@kernel.org>
 <20260807115603.GH2201016@killaraus.ideasonboard.com>
 <04b4e9abab2831b177228752860bedab1f15a736.camel@HansenPartnership.com>
 <20260807124017.GK2201016@killaraus.ideasonboard.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260807124017.GK2201016@killaraus.ideasonboard.com>

On Fri, Aug 07, 2026 at 03:40:17PM +0300, Laurent Pinchart wrote:
> On Fri, Aug 07, 2026 at 08:28:08AM -0400, James Bottomley wrote:
> > On Fri, 2026-08-07 at 14:56 +0300, Laurent Pinchart wrote:
> > > On Fri, Aug 07, 2026 at 11:20:39AM +0200, Matthieu Baerts wrote:
> > > > On 07/08/2026 05:23, Theodore Tso wrote:
> > > > > There are some few exceptions, where a fix can't be easily
> > > > > backported to the LTS branch, and so a different way of fixing a
> > > > > particular serious patch needs to be applied to the LTS branch. 
> > > > > But normally this will be explicitly stated in the commit
> > > > > description, but we don't do that in a structured way, so it
> > > > > might be hard for a non-LLM bot to figure this out.
> > > > 
> > > > Good point, but instead of looking at the patch description, it
> > > > might be enough to look at the header: an exception could be added
> > > > for patches sent to the stable ML with a version in the prefix.
> > > > 
> > > > But back to the idea of checking if the patch can apply: it might
> > > > not be easy to deal with all the different trees and branches.
> > > > There might be some dependences that are still in review, or
> > > > applied somewhere but not in linux-next yet, or conflicts with
> > > > linux-next, etc.
> > > 
> > > This is an issue that isn't limited to newcomers. As a maintainer, I
> > > sometimes don't know what I should apply a patch series on. We have
> > > the base-commit and prerequisite-patch-id trailers added by b4 that
> > > help a lot there, but not everybody uses them. If a mechanism that
> > > flags the issue for newcomers could also ensure that every patch
> > > series carries proper base information, that would be a very nice
> > > side effect. This may include adding new trailers if some use cases
> > > are not currently covered.
> > 
> > There are two reasons not to insist too rigidly on base commit: firstly
> > because a lot of series are invariant (they apply to any tree because
> > there's been no commits in the areas patched)
> 
> Then the author could pick any base commit available in Linus' tree
> the relevant subsystem tree (typically an upstream release of the next
> branch of the subsystem). Would that have any drawback compared to not
> specifying any base commit at all ?

What if for some reason someone wants to apply it to some base that is
before the one specified? That person would be mislead into thinking
that wouldn't be possible or automation would refuse to do so?

I think if it is _strictly_ need to use some specific base commit, then
that is a requirement, no?

- Arnaldo
 
> > and secondly because the
> > series has a dependency on another posted but not yet applied patch
> > series (i.e. no published base commit at all).  At least make it a
> > Maintainer decision whether to insist on base commit or not.
> 
> Isn't that what prerequisite-patch-id is for ?
> 
> -- 
> Regards,
> 
> Laurent Pinchart
