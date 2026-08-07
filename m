Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77274470E89
	for <ksummit@lists.linux.dev>; Fri,  7 Aug 2026 11:56:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786103782; cv=none; b=XUG4FmA/95vouos3pPkb20Y0nO/EJux02ILbVo/V9m58P7MBj3k7V2VK6JUDkp15SEDSwv5LH/LUdJNLjDffWDz/eFkIzNiuhs1nsKTbBkY4rUDnIQ0Hz7A8ctZbjLBt2YbL18nwBeniBFqNfBxpneRbHNp3pbkAWqgYl20FV3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786103782; c=relaxed/simple;
	bh=HNKb6oE0FbnY6jdp0bdEObZXCeewlNkeAa1n8N1BXSo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=u0ncrxOeG+CEs4Eq98XK+YWZDImgF9dNbx7Tqs/FKSU/bN5BsrknUEfF+axhE7gHJjYgNmS/mZgRjZLz5Qe40m+Zu8VfwBSqVJedxQXBa+Ib6qgrMUsbjDZkneLxn7U4LTv0vwSEaX0tdR+1GT20kHvPK8GjOrVzMkenMNuBn0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=FNjQ6MgQ; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="FNjQ6MgQ"
Received: from killaraus.ideasonboard.com (2001-14ba-70f3-e800--a06.rev.dnainternet.fi [IPv6:2001:14ba:70f3:e800::a06])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 7D66F741;
	Fri,  7 Aug 2026 13:54:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1786103693;
	bh=HNKb6oE0FbnY6jdp0bdEObZXCeewlNkeAa1n8N1BXSo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FNjQ6MgQBOMOtSYLoZE9GwqjuQqVvTar8pcCm+cOWUSjH+3NsfjJFMVrnS2eus28Z
	 rRSJR/ux6YDxTPiR2kNQmXFckwrsRATDXSeEmZU4ulmeeKwxmD8RS/V/GiDi1jkzfP
	 hEClYaFYjH/xXSTl/ARGRx/X4GQpSZQGkHIQNkjc=
Date: Fri, 7 Aug 2026 14:56:03 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Matthieu Baerts <matttbe@kernel.org>
Cc: Theodore Tso <tytso@mit.edu>, Dan Carpenter <error27@gmail.com>,
	Konstantin Ryabitsev <mricon@kernel.org>, Greg KH <greg@kroah.com>,
	Jonathan Corbet <corbet@lwn.net>, ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Coping with the new-developer flood
Message-ID: <20260807115603.GH2201016@killaraus.ideasonboard.com>
References: <87y0ekm9nw.fsf@trenco.lwn.net>
 <anSpoxZ9SUBvFOZj@mit.edu>
 <2026080651-bony-hertz-bfb6@gregkh>
 <20260806-industrious-whippet-of-jest-a91eaa@meerkat>
 <anThWLhqipEM34kg@stanley.mountain>
 <anVK-qkUOaIJkt9M@mit.edu>
 <78ee9f53-09b1-4934-82af-25f3652b108a@kernel.org>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <78ee9f53-09b1-4934-82af-25f3652b108a@kernel.org>

On Fri, Aug 07, 2026 at 11:20:39AM +0200, Matthieu Baerts wrote:
> On 07/08/2026 05:23, Theodore Tso wrote:
> > There are some few exceptions, where a fix can't be easily backported
> > to the LTS branch, and so a different way of fixing a particular
> > serious patch needs to be applied to the LTS branch.  But normally
> > this will be explicitly stated in the commit description, but we don't
> > do that in a structured way, so it might be hard for a non-LLM bot to
> > figure this out.
> 
> Good point, but instead of looking at the patch description, it might be
> enough to look at the header: an exception could be added for patches
> sent to the stable ML with a version in the prefix.
> 
> But back to the idea of checking if the patch can apply: it might not be
> easy to deal with all the different trees and branches. There might be
> some dependences that are still in review, or applied somewhere but not
> in linux-next yet, or conflicts with linux-next, etc.

This is an issue that isn't limited to newcomers. As a maintainer, I
sometimes don't know what I should apply a patch series on. We have the
base-commit and prerequisite-patch-id trailers added by b4 that help a
lot there, but not everybody uses them. If a mechanism that flags the
issue for newcomers could also ensure that every patch series carries
proper base information, that would be a very nice side effect. This may
include adding new trailers if some use cases are not currently covered.

> Plus note that
> Sashiko will generally complain if it cannot find where to apply it.

-- 
Regards,

Laurent Pinchart
