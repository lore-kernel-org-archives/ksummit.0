Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3162D474274
	for <ksummit@lists.linux.dev>; Fri,  7 Aug 2026 12:40:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786106437; cv=none; b=TCK9JsMLvdJzSyEsXti52vijP3EZywfAdvQb5B5knchA2qxqZrHVq3cnpAXFupm6aAdJDunWwyon1xat04Dqboh4WHMtc2PHOwPF+OD7a98693hDKS+vF5o0PXz9YtP+JMqRmHzrRzBgw8CAqpZ1+RU4QBg1A38gsB4gwx5CtPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786106437; c=relaxed/simple;
	bh=PWKvM3l2wa6Y6OCIsb81CeS06yIM1UEDwlQMq75tG3k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZJKJT8qT2sLocpr8cPlHOJAK5f80QuiHpRqP8dkRC0/48CcUhu3sH04SIpBQbpt3VYQKKH/i8l4ZRSHVrAFIb7aplvJZZwo9zBHhp6kmi/T5FfbLoVAu8Flmwrf5qe/i/YV9IFXh9QJ0q7Hr5zekc/ISOOhei7r2vGrySBHfKKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=g90vVQrl; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="g90vVQrl"
Received: from killaraus.ideasonboard.com (2001-14ba-70f3-e800--a06.rev.dnainternet.fi [IPv6:2001:14ba:70f3:e800::a06])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 6410356D;
	Fri,  7 Aug 2026 14:39:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1786106347;
	bh=PWKvM3l2wa6Y6OCIsb81CeS06yIM1UEDwlQMq75tG3k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=g90vVQrlFSgsxrVEs6Il5fxv7pOgNMUSAImm99pBrejGRWndym4YymWIXhMQGzwQO
	 KreQ1F6jp4m9u7TQEQjiV891uRRUziVUVHA4Z5pgVih2UCdynfjMx/t1H5bpw2r++q
	 ZYpoLzfSbGWVreJPllXFs1sMqIyfwH0Z6fZEpDv0=
Date: Fri, 7 Aug 2026 15:40:17 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Cc: Matthieu Baerts <matttbe@kernel.org>, Theodore Tso <tytso@mit.edu>,
	Dan Carpenter <error27@gmail.com>,
	Konstantin Ryabitsev <mricon@kernel.org>, Greg KH <greg@kroah.com>,
	Jonathan Corbet <corbet@lwn.net>, ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Coping with the new-developer flood
Message-ID: <20260807124017.GK2201016@killaraus.ideasonboard.com>
References: <87y0ekm9nw.fsf@trenco.lwn.net>
 <anSpoxZ9SUBvFOZj@mit.edu>
 <2026080651-bony-hertz-bfb6@gregkh>
 <20260806-industrious-whippet-of-jest-a91eaa@meerkat>
 <anThWLhqipEM34kg@stanley.mountain>
 <anVK-qkUOaIJkt9M@mit.edu>
 <78ee9f53-09b1-4934-82af-25f3652b108a@kernel.org>
 <20260807115603.GH2201016@killaraus.ideasonboard.com>
 <04b4e9abab2831b177228752860bedab1f15a736.camel@HansenPartnership.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <04b4e9abab2831b177228752860bedab1f15a736.camel@HansenPartnership.com>

On Fri, Aug 07, 2026 at 08:28:08AM -0400, James Bottomley wrote:
> On Fri, 2026-08-07 at 14:56 +0300, Laurent Pinchart wrote:
> > On Fri, Aug 07, 2026 at 11:20:39AM +0200, Matthieu Baerts wrote:
> > > On 07/08/2026 05:23, Theodore Tso wrote:
> > > > There are some few exceptions, where a fix can't be easily
> > > > backported to the LTS branch, and so a different way of fixing a
> > > > particular serious patch needs to be applied to the LTS branch. 
> > > > But normally this will be explicitly stated in the commit
> > > > description, but we don't do that in a structured way, so it
> > > > might be hard for a non-LLM bot to figure this out.
> > > 
> > > Good point, but instead of looking at the patch description, it
> > > might be enough to look at the header: an exception could be added
> > > for patches sent to the stable ML with a version in the prefix.
> > > 
> > > But back to the idea of checking if the patch can apply: it might
> > > not be easy to deal with all the different trees and branches.
> > > There might be some dependences that are still in review, or
> > > applied somewhere but not in linux-next yet, or conflicts with
> > > linux-next, etc.
> > 
> > This is an issue that isn't limited to newcomers. As a maintainer, I
> > sometimes don't know what I should apply a patch series on. We have
> > the base-commit and prerequisite-patch-id trailers added by b4 that
> > help a lot there, but not everybody uses them. If a mechanism that
> > flags the issue for newcomers could also ensure that every patch
> > series carries proper base information, that would be a very nice
> > side effect. This may include adding new trailers if some use cases
> > are not currently covered.
> 
> There are two reasons not to insist too rigidly on base commit: firstly
> because a lot of series are invariant (they apply to any tree because
> there's been no commits in the areas patched)

Then the author could pick any base commit available in Linus' tree
the relevant subsystem tree (typically an upstream release of the next
branch of the subsystem). Would that have any drawback compared to not
specifying any base commit at all ?

> and secondly because the
> series has a dependency on another posted but not yet applied patch
> series (i.e. no published base commit at all).  At least make it a
> Maintainer decision whether to insist on base commit or not.

Isn't that what prerequisite-patch-id is for ?

-- 
Regards,

Laurent Pinchart
