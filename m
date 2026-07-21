Received: from ewsoutbound.kpnmail.nl (ewsoutbound.kpnmail.nl [195.121.94.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EFD5472553
	for <ksummit@lists.linux.dev>; Tue, 21 Jul 2026 23:58:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.121.94.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784678302; cv=none; b=p+KpF1Nqj6dSVl9n4nZ1gtajdcKptjiuaO9xCmvqVA36+E1wZG4k+9JyGM0cSyBa89jN1+k+JLueZg5ntiXnVHRF7erDgZZA2OT2e3YVG6lf3puS6gzmXl5APKlIgV91n0Jj0J376xe0F16Lz7cYrNENSFbnFfo4GccJQ8eviXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784678302; c=relaxed/simple;
	bh=+IoXB7ULmMc2e+XqYWAD+8u/jKwEN4uP+NQrYEuJc5g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lVMOsOW4aXB2EoBLoz5QhnchD3Ykvg8q5YFt59FizVzSnVkRKUhKkDc+YThntPCHG60rfN0YRI4fl2r52q9AcI7cCoztiMeUANdySBRlGFi9DT+A/w/ez6RyIyWSAvYXyEBOtFWtkDhRxmkQcKAVVQ0TczHVjpsLnInFKRNXEdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=xs4all.nl; spf=pass smtp.mailfrom=xs4all.nl; dkim=pass (2048-bit key) header.d=xs4all.nl header.i=@xs4all.nl header.b=QS6hIin9; arc=none smtp.client-ip=195.121.94.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=xs4all.nl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=xs4all.nl
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=xs4all.nl header.i=@xs4all.nl header.b="QS6hIin9"
X-KPN-MessageId: 068436a3-8560-11f1-83b3-005056ab378f
Received: from smtp.kpnmail.nl (unknown [10.31.155.40])
	by ewsoutbound.so.kpn.org (Halon) with ESMTPS
	id 068436a3-8560-11f1-83b3-005056ab378f;
	Wed, 22 Jul 2026 01:58:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xs4all.nl; s=xs4all01;
	h=content-type:mime-version:message-id:subject:to:from:date;
	bh=PFSZWUPJ2ZB4ykNdIeHJQaNKGjAsPF8HBbmf2DJzp3M=;
	b=QS6hIin9gdVytJbSTA+jftU3XzxuZVz10eMn9Hgp9Cm83ZUle/fIfYSClLHuijfZoelWf4LQ2Ml39
	 s/0+8izTVW/KCPFOegDR0WQHWCZR7/MGfeAT4seX4nCKCt9+eP7yNzPDEC9HDD6qCXyomwBsOm6s6h
	 C2azU5ssYgBPZ7WhSoYW1ybAYuwiriCfNZ0fPfXFAkCrgjTjoZSifdDpbhww9m2zry9NhggtXSmfyr
	 7dHrTxez1dKESGqmaWys4QYCms4ETlLTYKv0x5iw+8m1DEor1lNGod3F1xyVq8RjwriUmPxM2ZimWz
	 IzDZMx3WzeccBg+r0y0ZsLoMk1sF1kg==
X-KPN-MID: 33|0Scc7IcFDctCcua861RKjmbydQmDHzN6TodLoRXaPi9ia/Q5UfI1dxmLHCQXs8m
 4aPIaq9NYktwOIRdf4MMSzA==
X-KPN-VerifiedSender: Yes
X-CMASSUN: 33|hVlYALDCJp12O6tdo6y5k8uSlWFDbWX4QR7CF4EmBcMJFjebZawQ9nsp7In0GHk
 nWreseyul5w8xUQDl0JfqSw==
Received: from localhost (unknown [178.226.150.234])
	by smtp.xs4all.nl (Halon) with ESMTPSA
	id 066644f5-8560-11f1-86b1-005056ab7584;
	Wed, 22 Jul 2026 01:58:09 +0200 (CEST)
Date: Wed, 22 Jul 2026 01:58:05 +0200
From: Jori Koolstra <jkoolstra@xs4all.nl>
To: Sasha Levin <sashal@kernel.org>
Cc: Mark Brown <broonie@kernel.org>, Jonathan Corbet <corbet@lwn.net>, 
	ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags, newcomers,
 etc
Message-ID: <amAEIpVXxJbVgT2Z@lt-jori.localdomain>
References: <87wluv7yzc.fsf@trenco.lwn.net>
 <alj4mYFMfZvuarfx@laps>
 <daea687e-46ef-4e00-9188-d14a663f1428@sirena.org.uk>
 <alkFzdJobnnMjJ4v@laps>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alkFzdJobnnMjJ4v@laps>

On Thu, Jul 16, 2026 at 12:24:45PM -0400, Sasha Levin wrote:
> On Thu, Jul 16, 2026 at 05:08:40PM +0100, Mark Brown wrote:
> > On Thu, Jul 16, 2026 at 11:28:25AM -0400, Sasha Levin wrote:
> > > On Thu, Jul 16, 2026 at 09:09:27AM -0600, Jonathan Corbet wrote:
> > 
> > > > - There are many first-time contributors coming in with LLM-generated
> > > >  patches.  At times, I could swear that every one of them is focused on
> > 
> > > >  Our maintainers are not scaling to handle this new flood, and I fear we
> > > >  are going to see some unfortunate things merged.  One LLM-driven newcomer
> > > >  recently nearly succeeded in establishing himself as the maintainer of
> > > >  lib/.  How do we hold the line against this stuff while remaining open to
> > > >  new developers?
> > 
> > > Shouldn't it be a merits question rather than a tools question?
> > 
> > > If the commits are correct, does it matter if they were written with an LLM? we
> > > can insist more on supplying tests and demonstrating correctness, something we
> > > seem to be doing quite rarely right now.
> > 
> > The issue (which a number of projects are facing) is as much one of
> > volume as anything else, the code generation machines are enabling the
> > generation and submision of volumes of code where things were previously
> > constrained by human factors.  It can turn into a bit of a DoS.  I don't
> > have any particularly bright ideas here but it's definitely a thing.
> 
> Sure, we're seeing quite the increase in patch submissions, but I'm trying to
> argue that the issue isn't a new one: lack of maintainers, trusted reviewers,
> and maintainer burnout has been a topic at each kernel summit for as long as I
> can remember. AI just kicks it up a notch.
> 
> My concern is that if we focus on the AI aspect, we still won't be solving the
> underlying issue.
> 
> I'm hoping we can figure out how to get maintainers great tooling, testing, and
> community, rather than figuring out how to block a developer who uses LLM.
> Maybe AI would actually be a great catalyst for that as well?

Can't we just deprioritize invasive contributions to core subsystems by
unknown people? If there is no man in the middle, learning to navigate
the code to do anything even remotely significant takes A LOT of time. I
can know, as I have been doing that recently with the VFS, and I still
know only a few pieces.

I must have spent several hundreds of hours in the past year. What is
the chance someone spends this amount of time as a hobbyist, but then
does not engage with the community in any other way (discussion,
conferences, etc.)?

Of course there are Yitang Zhang's in the world (although he was still
not totally unknown), but this is vanishingly rare.

> 
> -- 
> Thanks,
> Sasha
