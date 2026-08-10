Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33FE53ED5D9
	for <ksummit@lists.linux.dev>; Mon, 10 Aug 2026 15:08:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.9.28.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786374527; cv=none; b=IBjFSq5QAjqzEAR5cDb3Q7BhXO0z+epkOgKCGGxZY1SZKfBxAlOMTS7L6dtcrtNXp/wmXoFYuEuKD4elzaPDuL4g/i071CqppqhI1irARY/m9/9xQgziH+RJjXS0QYybT6EF6jRxnVW/HPvj0ERpoplZ5HPllx4P+ybfyNciIuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786374527; c=relaxed/simple;
	bh=1ubW86/gb2A6W/48U4RkfJFuOaeqDVNskldH0HbHaps=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QRqBJN/w2lL+Po6BwDCSQaa9GOrXAiHfXhLqJS3ngfrFvwpZQAKvnfi+ej3uUU+YyPROzKVDCxyg6vPwh4eaImSC79fy3Wv5NH6HAGxIp/hds5rypLg/0mNUwApGjjgs5ioYKLv4G7kuB/o85Ctf+LXLs0xR/22wX0qk/zCOoy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu; spf=pass smtp.mailfrom=mit.edu; dkim=pass (2048-bit key) header.d=mit.edu header.i=@mit.edu header.b=GIi01LfF; arc=none smtp.client-ip=18.9.28.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mit.edu
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mit.edu header.i=@mit.edu header.b="GIi01LfF"
Received: from macsyma.thunk.org (pool-173-48-113-153.bstnma.fios.verizon.net [173.48.113.153])
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 67AF8Y15024609
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 Aug 2026 11:08:36 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mit.edu; s=outgoing;
	t=1786374517; bh=dngTPHsYZeEXkvoS2esdjOLLGeb6WaSxaq/8WpBfMyk=;
	h=Date:From:Subject:Message-ID:MIME-Version:Content-Type;
	b=GIi01LfFKXTyAPe4txVPIG3/Nx4m61kn6RIndKlLpYpnYkodTHQmJzCB6vldbzL6/
	 XPmvRCQkJJU3gcoqHaetyKxoEGEMVIoHyNLdFptFgt+xPoWk++ND6OyVpsY9UnNcuM
	 5WtHQ6GYO5yKjvP4PPrLs6Z6/Jp6e6TZR5RzYzEZbXFUstdnmCoIl0YEd4iGIZdvFf
	 WjIW0+vEPjEGdzBdBO4ZmCBTP22VZIKowbKxBYX+fsfwO/2QJrJDmkg9DIPW71BbDf
	 MlCMmBD8PqZnacYiJwRqzduWnLSt75NSgYl31/JSdj95HCOZZeTRMcMnFD8ue/s2zE
	 Wx0eKK2y2xIzQ==
Received: by macsyma.thunk.org (Postfix, from userid 15806)
	id 82DB9E61C14; Mon, 10 Aug 2026 11:07:34 -0400 (EDT)
Date: Mon, 10 Aug 2026 11:07:34 -0400
From: "Theodore Tso" <tytso@mit.edu>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Dave Airlie <airlied@gmail.com>, "Lorenzo Stoakes (ARM)" <ljs@kernel.org>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Steven Rostedt <rostedt@goodmis.org>,
        James Bottomley <James.Bottomley@hansenpartnership.com>,
        ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
Message-ID: <annmzHu_s3X6LxOH@mit.edu>
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
 <20260806194153.6443a3ba@gandalf.local.home>
 <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
 <anii3u-87kSrB9K3@lucifer>
 <CAPM=9tx7izyUJr_XVQju26fevzepZ-L6vs5vgH2aib9jPPjvRA@mail.gmail.com>
 <CAMuHMdWCnGVQeSJiVfWrcBGpcq-Zr_oQGPLNUFhcpxishmT_FQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMuHMdWCnGVQeSJiVfWrcBGpcq-Zr_oQGPLNUFhcpxishmT_FQ@mail.gmail.com>

On Mon, Aug 10, 2026 at 09:42:12AM -0500, Geert Uytterhoeven wrote:
> On Sat, 8 Aug 2026 at 01:20, Theodore Tso <tytso@mit.edu> wrote:
> > Today, the Maintainer Summit is basically a half-day event, with
> > around 30 people (plus any sponsored attendees), and is only focused
> > on process questions, with the technical discussions taking place at
> 
> Forgive my ignorance, how do the sponsored attendees fit into this
> picture?

Sponsored attendees are part of the "pay to play" aspect of how we try
to get sponsorship dollars.  There can be up to 5 sponsored attendees,
but I don't think we've ever had more than 2 sponsored attendees;
sometimes a sponsor won't even send an attendee even if their
sponsorship level would entitle them to do so.

In practice, it's rare that a sponsored attendee actually speaks up at
the Maintainers Summit, and for last 3 years, we haven't had any
sponsors, so more recently Linux Foundation, not the sponsors have
been paying the cost.

The "Pay to Play" model for invite-only workshops has worked much
better for LSF/MM, because companies are generally much more willing
to pay $$$ to get in front of the upstream developers to get them to
consider some technical proposal.  When we had technical discussions
happening at the Kernel Summit, that was definitely the dynamic.  But
most companies are much less interested in trying to inject proposals
into process discussions.  Especially in recent years, allocating
dollars to pay for more AI data centers seem to be more important than
many things, not just conference sponsorships.  :-)

Cheers,

						- Ted
