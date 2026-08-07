Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E15540A944
	for <ksummit@lists.linux.dev>; Fri,  7 Aug 2026 12:58:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786107517; cv=none; b=aBBqnu54JNTzTIq3rS1xo+dhcnFTLkhEWSysnbm1b3QzorhyHP8Tb7+jLBK70NdupuR4xapWZ9zs2oOy2cTK/xJMQWc6sWsfyrMY+pmn5QBrd1dlUrSk/ZtedC4Pzi0K6jnHi88lVwJqHfwY2cPKXCXMiHQ8GsSVDsCNXrlYL3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786107517; c=relaxed/simple;
	bh=SHq2F+PiRSHjeDexq794pGsrM3BGfu5JbR0UftAd8CQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rqvPAfhkpB+GdKtRBJBTrlO3z42OcrfvB/j9iKgpmURPXDgatBFSUpV8F7JsIiJYis6Cyvzh2hIJYiSU/9Y4Qh1DUZD/Nz8hgYeUTUAoErAYFU96FvOZLAfgkx7nXYhNQcUFcd51sNvAbnPByhfYtVHyjYA3jdRPee2NjhfoPb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=r9UmSJcH; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="r9UmSJcH"
Received: from killaraus.ideasonboard.com (2001-14ba-70f3-e800--a06.rev.dnainternet.fi [IPv6:2001:14ba:70f3:e800::a06])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 6BFD056D;
	Fri,  7 Aug 2026 14:57:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1786107435;
	bh=SHq2F+PiRSHjeDexq794pGsrM3BGfu5JbR0UftAd8CQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=r9UmSJcHEgLvRdeWoV0T7g/fgfrTpUd94elNlovanrUxdzYKURked5CR6zbT9OWnG
	 D5z8EEwrD5SuFisU7pZeCY1DZTmZD2H3C+BCRSNSF+PRY6pcb8QPpvouC2HnftuDxS
	 M0p9ThRxDMDTunPyXM/OOUo2tOLUBSQGzoBVcprU=
Date: Fri, 7 Aug 2026 15:58:25 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Cc: ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
Message-ID: <20260807125825.GL2201016@killaraus.ideasonboard.com>
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>

On Thu, Aug 06, 2026 at 11:34:09AM -0400, James Bottomley wrote:
> What got me thinking about this is the obvious funding problem: MS is
> free to attendees, but only had one sponsor in 2024, none in 2025 and
> is on track to have none this year.

The sponsorship prospectus ([1]) indicates that the "attendee gift"
category is sold out, does it mean one sponsor signed up ?

[1] https://events.linuxfoundation.org/wp-content/uploads/2026/08/sponsor-kernel26_080626.pdf

> Since Plumbers has a reasonably
> successful sponsor model and the LF brought the problem up in recent
> conversations, we thought we'd take a look.  A colleague remarked that
> it should be easy to sell seats to a room with Linus, which on the face
> of it looks to be true, but when examined more deeply isn't
> straighforward.  The problem is conferences like Plumbers, LSF/MM and
> MS are usually sponsored by engineering not marketing where budget is
> much harder to come by and the justification for ponying up the cash
> has to be very clear; effectively they pay for outcomes not access or
> publicity (although access is required to get successful outcomes). 
> When you look at the actual outcomes of MS 2025
> 
> https://lwn.net/Articles/1049982/
> 
> there isn't really anything that would move the needle for a potential
> sponsor.  Equally, there's nothing really that couldn't have been part
> of a wider discussion at Plumbers or LSF/MM, so I'm not sure there's
> anything that actually required discussion at this event (i.e. nothing
> to move the needle for kernel developers either).
> 
> Before I go into potential solutions, it might be beneficial to review
> the history:  The kernel summit began as a stand alone event in 2001
> run by USENIX and was the first time many kernel developers had
> actually met each other. It continued as a 2 day event co-located with
> Ottawa Linux Symposium (still run by USENIX) until 2008 when it mostly
> co-located with Plumbers and was run by the LF.  In 2015 Linus
> complained that he didn't find the KS talks that valuable and he'd like
> to discuss process with a smaller audience, so in 2016 the kernel
> summit was split and the talks went to the kernel summit track in
> Plumbers and a 1 day Maintainer Summit was born.  It can be argued that
> the decline in sponsors began with the 2016 split and thus, as the
> sponsors apparently see it, the decline in outcomes as well.  Oh and
> for those of you who keep saying the LF doesn't fund Linux: without
> sponsors the LF is eating the cost of the entire event which, based on
> what Plumbers costs, will be somewhere north of US$100k.
> 
> As for fixes, one possibility is definitely keeping MS as is and moving
> the sponsor responsibility to Plumbers, but unless I can strap Linus
> down and sell companies on pitching to him directly, I fear that would
> end up creating a US$100k hole in our budget.  Perhaps there are
> actually outcomes we could sell to sponsors but, because of the reduced
> audience, we simply don't get to hear about them ... so if you think
> that now would be the time to say what they are.  Another solution that
> seems viable would be folding the MS into one of our existing sponsored
> events, like Plumbers or LSF/MM.  Structurally either would be a fit
> for the past discussion topics and both could probably accommodate
> (although I don't think either could expand to a fourth day to do it).
> A final thing we might do is change the structure of the event itself
> to have more sponsorable outcomes; perhaps simply making the event more
> like the kernel summit of old, so moving back the KS track from
> Plumbers would be enough?

The maintainer summit is limited to 30 guests, plus up to 7 sponsored
attendee according to [1]. Assuming neither Linus nor the program
committee are counted as guests, that would be 43 people in total, so a
rough cost of $2500 per person for one day. I understand that hosting
events in large venues is expensive, but if the maintainer summit is an
invite-only, separate event, would it be an option to drastically cut
costs by hosting it in a nearby but separate location ?

-- 
Regards,

Laurent Pinchart
