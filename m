Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64DE32D2397
	for <ksummit@lists.linux.dev>; Fri,  7 Aug 2026 23:20:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.9.28.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786144810; cv=none; b=AbIO3UvMnaLK+eqNK3naIZq4T3x3LC87X4S6aHD6ZW5A6+0FHAw6Esc5L+ViaRA277ZnjSedMXY0muWVfswcdqBYipm/vtDYaipkbunXUrwOlKu/Xqjuk/MITE7qwYpChZFZdONc6zk2ltAdvg9zttI6DbqaNcd/c+eXVkzAzCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786144810; c=relaxed/simple;
	bh=B0KTKw7/1wY45z+Ga29V9vUr2Zu1LmAEiDvoqlxrzds=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hDV21Ur/ZmlsWumPOrttsK6L30+YyhmgwR1VwZroUounKo2qXgjZeLGIviJzFTmMPw9Dij7QTYPuIuefZJS5sIu5wu9AM+vBIfCFweQsdYE9c3smmDaYl2rrKWnp5X5sfbfaIK0v/zGfaFmGD/MpIlCIi6THVBGPkw5pSKBusDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu; spf=pass smtp.mailfrom=mit.edu; dkim=pass (2048-bit key) header.d=mit.edu header.i=@mit.edu header.b=F2HAWdSV; arc=none smtp.client-ip=18.9.28.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mit.edu
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mit.edu header.i=@mit.edu header.b="F2HAWdSV"
Received: from macsyma.thunk.org ([67.208.186.90])
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 677NJw2u015733
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 7 Aug 2026 19:19:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mit.edu; s=outgoing;
	t=1786144800; bh=u6TVoU043MV9/ZombO8uFwghfi0gMQSwLVkOmWrMYqI=;
	h=Date:From:Subject:Message-ID:MIME-Version:Content-Type;
	b=F2HAWdSVNEfgL8OpgxD4rkeDyE6LB305I3DFstQs/NZIgKcbTpLyvHt4CkMyXwJDG
	 eXgwJ4wXcqAJ03H9iB/DeR6I1+/H4MKA/4MyspZIfi859KnGaPHHJvtrh1DovzhU+G
	 Bds1Ahq2ymOqE0HFz8MF9fsQcKqFkOqMzx2ThIos/y+Cxk7qehKu5QJ9ukMdUgufrx
	 qnUHFIrSA72OgghQ0lVw+LwbFgWkldYKtGpun5GjpILv/h+hXRRRRQfVxqwBzkyt7B
	 gAv11cdegfObyB7BI7vepYpi+Ie/7MxFJo2iQEMKrd3iMrEL/3GrJZEDePmCAMw1v3
	 LeyCdq9uc3pdQ==
Received: by macsyma.thunk.org (Postfix, from userid 15806)
	id 183C0DE9978; Fri,  7 Aug 2026 19:19:57 -0400 (EDT)
Date: Fri, 7 Aug 2026 19:19:57 -0400
From: "Theodore Tso" <tytso@mit.edu>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Cc: ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
Message-ID: <anZi9nDTNu4WNc3s@mit.edu>
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>

On Thu, Aug 06, 2026 at 11:34:09AM -0500, James Bottomley wrote:
> It continued as a 2 day event co-located with
> Ottawa Linux Symposium (still run by USENIX) until 2008 when it mostly
> co-located with Plumbers and was run by the LF.  In 2015 Linus
> complained that he didn't find the KS talks that valuable and he'd like
> to discuss process with a smaller audience, so in 2016 the kernel
> summit was split and the talks went to the kernel summit track in
> Plumbers and a 1 day Maintainer Summit was born.

When the Kernel Summit grew from ~50 people to a bit over 150 people,
it started getting a lot more unwieldy, and it became impossible to
make sure all of the people needed for a particular technical topic
could be issued invites.  The flip side was that when there was that
many people in the room, it was too hard to have focused process
discussions.

So that was the reason why the the split took place; it was getting
too large for process discussions, and it was too small for technical
discussions.

Today, the Maintainer Summit is basically a half-day event, with
around 30 people (plus any sponsored attendees), and is only focused
on process questions, with the technical discussions taking place at
the Plumbers Conference where it is colocated --- the miniconferences,
Refereed and Kernel Summit tracker, and the BOF's.  And I think that's
worked pretty well.

As such, the costs of the Maintainers Summit is actually pretty cheap,
especiallly since there is no A/V, and a room that can hold ~30 people
is not really that big of deal.  So I doubt it is as expensive as what
James has estimated.  If we did want to economize, we could do things
like drop the Kernel Summit dinner and the "sponsor gift".  I can talk
to the Linux Foundation to see what they are willing to fund, but
given some of the process discussions that have taken place such as
"The End of the Rust Experiment"[1], and the discussions around AI
that almost certianly will take place this year, I think the value
Maintainer Summit is one where hopefully the LF would be willing to
support it one way or another.

[1] https://lwn.net/Articles/1049831/


We can split this discussion a couple of different ways.  The first is
how can we make the Maintainers Summit more valuable.  I do think that
in the last couple of years, there *have* been a number of quite
valuable discussions, but it's always worthwhile to consider ways in
which we can improve the discussion.  So that's on the "benefits" side
of the equation.

The second is on the "costs" side of the equation.  There are a couple
of things, such as the dinner and the gift, that we can almost
certainly slim down, if this is becoming too much of a burden to the
LF.

Getting more sponsorship dollars is going to be challenging.
When we had the the technical content in the Kernel Summit as part of
the invite-only portion of the event, companies would pay $$$ because
they wanted to introduce specific technical ideas, to better support
their products because what they were paying for was the attention of
the Kernel Developers.  This "attention economy" dynamic is one of the
things that does still work and drives sponsorship with LSF/MM, by the
way.

						- Ted
