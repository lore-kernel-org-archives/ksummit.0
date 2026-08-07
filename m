Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BCA647A894
	for <ksummit@lists.linux.dev>; Fri,  7 Aug 2026 13:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786109679; cv=none; b=KVHxsbHIiP+Gp6e7ZFQ0ctAs3SyZvjKURgk1nhpD79V8OszZUrDHp34y/fxeE6mnumGfz62WDxRFs5ZHRsFewXgu4Rk4jEqOEgCwNftYrcSwnRGsIM8GyhoTnvBn88at2fDQrOTwURUt2pTWrc/ZFxxboaE4oVE8T1CMKdTb7u0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786109679; c=relaxed/simple;
	bh=eFeYVq0z2jxs/nOaFRr+kFuY49EYbvyg369USkMewUY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AjuVi4JgQKEePQpJekFna+sCkslUzB3wfp+vHofN8p4uUEoUUgM1X9p2Bt/qf/rmj2ysLH9EKYwTSa5g+d05S/GAmH/cZ7mQSBwXyMGYR4VvSzjg96QAe15X7Zj+9Y/ifR6RHuKA+yZ+xw4cB9bRWPfagBOG/gynOhVxGRhe5oU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=i6xUzDw6; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="i6xUzDw6"
Received: from killaraus.ideasonboard.com (2001-14ba-70f3-e800--a06.rev.dnainternet.fi [IPv6:2001:14ba:70f3:e800::a06])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 8892F517;
	Fri,  7 Aug 2026 15:33:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1786109599;
	bh=eFeYVq0z2jxs/nOaFRr+kFuY49EYbvyg369USkMewUY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=i6xUzDw64evrO24ABVizAFJF0ZyuhlOkUQoKD8gxqI4FS2s2v9MQnSWhiKREQ7QxO
	 F3B77Bp+N+GpU6mlJnMg86NDGGalrs0T+rlaCipy3kO87YJvMD2HmCzKcvkjoroQ89
	 7a/Mttc3iwDugbjU/QoWmHoGyIWorj3nfn5lXx6k=
Date: Fri, 7 Aug 2026 16:34:30 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Cc: Matthieu Baerts <matttbe@kernel.org>, Theodore Tso <tytso@mit.edu>,
	Dan Carpenter <error27@gmail.com>,
	Konstantin Ryabitsev <mricon@kernel.org>, Greg KH <greg@kroah.com>,
	Jonathan Corbet <corbet@lwn.net>, ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Coping with the new-developer flood
Message-ID: <20260807133430.GN2201016@killaraus.ideasonboard.com>
References: <anSpoxZ9SUBvFOZj@mit.edu>
 <2026080651-bony-hertz-bfb6@gregkh>
 <20260806-industrious-whippet-of-jest-a91eaa@meerkat>
 <anThWLhqipEM34kg@stanley.mountain>
 <anVK-qkUOaIJkt9M@mit.edu>
 <78ee9f53-09b1-4934-82af-25f3652b108a@kernel.org>
 <20260807115603.GH2201016@killaraus.ideasonboard.com>
 <04b4e9abab2831b177228752860bedab1f15a736.camel@HansenPartnership.com>
 <20260807124017.GK2201016@killaraus.ideasonboard.com>
 <9190410e0173138f9cc95e6e7f68c4ca14b2d333.camel@HansenPartnership.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9190410e0173138f9cc95e6e7f68c4ca14b2d333.camel@HansenPartnership.com>

On Fri, Aug 07, 2026 at 08:51:50AM -0400, James Bottomley wrote:
> On Fri, 2026-08-07 at 15:40 +0300, Laurent Pinchart wrote:
> > On Fri, Aug 07, 2026 at 08:28:08AM -0400, James Bottomley wrote:
> [...]
> > > There are two reasons not to insist too rigidly on base commit:
> > > firstly because a lot of series are invariant (they apply to any
> > > tree because there's been no commits in the areas patched)
> > 
> > Then the author could pick any base commit available in Linus' tree
> > the relevant subsystem tree (typically an upstream release of the
> > next branch of the subsystem). Would that have any drawback compared
> > to not specifying any base commit at all ?
> 
> It's just pointless hassle given the maintainer workflow is ignore the
> base commit and do git (or b4) am on the current branch and only if
> that rejects either try and upport based on the base commit or ask for
> a respin (the latter being the most common course of action).
> 
> > > and secondly because the series has a dependency on another posted
> > > but not yet applied patch series (i.e. no published base commit at
> > > all).  At least make it a Maintainer decision whether to insist on
> > > base commit or not.
> > 
> > Isn't that what prerequisite-patch-id is for ?
> 
> Dear god, absolutely not.  I can't match a patch hash to a series, I
> want the lore link of the prerequisite series in the cover letter.

I thought lore was indexable by patch-id as well, maybe I'm mistaken. If
that's not the case, it could be a useful feature.

The message-id of a prerequisite series is certainly better. There's
apparently a b4 trailer for that, prerequisite-message-id. See [1] for
an example. I don't know how automated, or automatable, adding that
trailer is.

[1] https://lore.kernel.org/lkml/20260805-tegra264-pcie-v9-0-fa2ed7350ae1@nvidia.com/

-- 
Regards,

Laurent Pinchart
