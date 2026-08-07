Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0900B442399
	for <ksummit@lists.linux.dev>; Fri,  7 Aug 2026 13:28:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786109339; cv=none; b=EmOyFiL3s0YVajjScFV8+bO3Ty2UI5ZvbuM9udNeOIaZTp3imb3W44SM0v0WG8Yto5QGOecEu3Az1bavYmLIKEsRcIb7k7vBmMywH8h9F3ovJOay+m93TUhixKWEbg9YVJ6DgMVTnH0naSVLRjfsX9C0f+1lCfBSdQ8iYjn4GYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786109339; c=relaxed/simple;
	bh=hLYFnrrUGVJdeB9Vwceu7x4of47fQZhBIzlr/duq8OQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=V+AkagLpomPQ8I3vhW9kW9rZpgnyZVFXVMKmP1aXkGeyqO0OkQzVWw/FaAXOf0a333gV1n0p+MO6ZSS2D36Q+uQ9jasUKif0PNKwXkId9QP+w4kCLacjp88Otc5fqudHCzV8cJk1DX6xRbnm7uiVXDmAExP5uYOvSfazkwk2PEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=mJ0a8AWW; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="mJ0a8AWW"
Received: from killaraus.ideasonboard.com (2001-14ba-70f3-e800--a06.rev.dnainternet.fi [IPv6:2001:14ba:70f3:e800::a06])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 5AD9E324;
	Fri,  7 Aug 2026 15:27:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1786109262;
	bh=hLYFnrrUGVJdeB9Vwceu7x4of47fQZhBIzlr/duq8OQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mJ0a8AWWVi8ZBYRRov0CxjI95xNm8LW4o8RA906qWnUVjSiVWOVq/8azmtMD3+uRy
	 tVJrqI/RmWbS2WyS9hGb6fr1wmXzg0Lgm/H17wYuR4oeUIBLnFVg6Z59E/X/1sEvUx
	 EwQ+N3Ok4cCgCJinOhPvidE1smM7/CMtAokEqI4Y=
Date: Fri, 7 Aug 2026 16:28:52 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Cc: ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
Message-ID: <20260807132852.GM2201016@killaraus.ideasonboard.com>
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
 <20260807125825.GL2201016@killaraus.ideasonboard.com>
 <8f07d379f3f4c67b2a9a62330e43066d312d42a4.camel@HansenPartnership.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <8f07d379f3f4c67b2a9a62330e43066d312d42a4.camel@HansenPartnership.com>

On Fri, Aug 07, 2026 at 09:09:05AM -0400, James Bottomley wrote:
> On Fri, 2026-08-07 at 15:58 +0300, Laurent Pinchart wrote:
> > On Thu, Aug 06, 2026 at 11:34:09AM -0400, James Bottomley wrote:
> > > What got me thinking about this is the obvious funding problem: MS
> > > is free to attendees, but only had one sponsor in 2024, none in
> > > 2025 and is on track to have none this year.
> > 
> > The sponsorship prospectus ([1]) indicates that the "attendee gift"
> > category is sold out, does it mean one sponsor signed up ?
> 
> The LF paid for the attendee gift last year. Since they have to be
> ordered some way ahead of the conference I'd guess the same is true
> this year.
> 
> [...]
> 
> > The maintainer summit is limited to 30 guests, plus up to 7 sponsored
> > attendee according to [1]. Assuming neither Linus nor the program
> > committee are counted as guests, that would be 43 people in total, so
> > a rough cost of $2500 per person for one day. 
> 
> I take it you've never seen the bill for attending a USENIX (or a lot
> of other) one day events.

USENIX, no. That was unfortunately before my days.

> > I understand that hosting events in large venues is expensive, but if
> > the maintainer summit is an invite-only, separate event, would it be
> > an option to drastically cut costs by hosting it in a nearby but
> > separate location ?
> 
> Is there any point wittering about your speculated numbers vs mine? 
> The bottom line is there is a cost and someone has to pay it if there
> are no sponsors.

Please don't speculate that I'm speculating. I've organized multiple
one-day events for crowds between 15 and 25 people, at costs of around
100€ per attendee for a meeting room and lunch. I know it doesn't scale
linearly, and I'm sure we don't want to organize the maintainers summit
at the lowest possible cost, but there's quite a gap.

-- 
Regards,

Laurent Pinchart
