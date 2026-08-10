Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60410372EEF
	for <ksummit@lists.linux.dev>; Mon, 10 Aug 2026 08:08:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786349318; cv=none; b=ISXggDYQcsqwXAnK89xOPuZEajHyMCXDm7s9Tc7+i8gWjRn5Dre2sF0dMjkkEj9L/xwc1JvfHnwM1odgEZLnN8NspWW0hXYxTGWIHCleHTnelK9YzBoDB7bBlOIELDUXkv6MIgbfhGqnsLmpopLi0xtsmp1h7fsLuhM4w+gSLFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786349318; c=relaxed/simple;
	bh=017tcBvwLAEFzqVV3L80yxJMsLElU14UppzCv8mdKE8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=urPxMPE31cMPRY+mKIHbQ/5l+qTvSmr6HbNffCXsYPmllyQ0IbfjW2Hza/h8UJ8yRwKxUrRIzrBiAF4w8ckLtRC9NPvL39VNSniB6BIrGbHNRr+FTovPzOnuCMA0rWLCMkMRUdkS1dDJo+1/m37FYyyhub19sRiz56XKlvaEftQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cpaKtnMg; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cpaKtnMg"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F16B1F000E9;
	Mon, 10 Aug 2026 08:08:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786349317;
	bh=ZYkydroJCpCd7NCXuGtdZXrqW/yNsNNwAwdbkSJtBFs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=cpaKtnMgMf9K3ykBCi0Gw9My7SJ//s8VeSixyFhWhkUFJym3fOYcILazkiX0mqhU8
	 vgl6KD2B4W5OLRRZoV06t84gRwXQX3d1MrYfBvEG2RGXBAvsshocSagjMrVvLUZmu7
	 bua2Epca8T0rUsB49kVRqil8xwk9u7ii4k6/r9JA+BAk43TmaM1zGwfx5JWjGXcNLi
	 wn1+7sRPDd3ap44d7Taa3a9GE+kjxM/26rIR4Nze2YsrBvwCdv80yF3kEh+Pbi7HIn
	 rlylWwPBCf5STgozV4GTYDL2ri4twFvAY+I1QWn2h5klfuk/Zqc0DXHH1/ZKpG+G4b
	 EPtcQUFQ8La7A==
Date: Mon, 10 Aug 2026 09:08:32 +0100
From: "Lorenzo Stoakes (ARM)" <ljs@kernel.org>
To: Theodore Tso <tytso@mit.edu>
Cc: "Liam R. Howlett" <liam@infradead.org>, 
	Jonathan Corbet <corbet@lwn.net>, Linus Torvalds <torvalds@linux-foundation.org>, 
	Steven Rostedt <rostedt@goodmis.org>, James Bottomley <James.Bottomley@hansenpartnership.com>, 
	ksummit@lists.linux.dev, Dave Airlie <airlied@gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
Message-ID: <anmD822InwjWKmhy@gremlin>
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
 <20260806194153.6443a3ba@gandalf.local.home>
 <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
 <anfUgiByUVffXlrQ@mit.edu>
 <87y0efi08u.fsf@trenco.lwn.net>
 <006B9A78-D7A3-4684-91C8-BCA700487B65@infradead.org>
 <ankkb2siES7o86qd@mit.edu>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ankkb2siES7o86qd@mit.edu>

+cc David as reference below.

On Sun, Aug 09, 2026 at 09:26:53PM -0400, Theodore Tso wrote:
> On Sun, Aug 09, 2026 at 05:56:45PM -0500, Liam R. Howlett wrote:
> >
> > We could have a reserved number of seats dedicated for specific
> > subject that are temporary seats that would be used for a specific
> > topic.  As a specific topic expert or interested party, they would
> > be less likely to stay quiet or be disregarded as not knowing the
> > workings of a specific policy.
>
> One of the reasons why we discuss maintainers summit topics in advance
> is partially to create the agenda, but to also be aware who some of
> the interested parties will be.  And the program committee *does* take
> that into account.
>
> The other reason why the discussions on the ksummit list are so useful
> is that it *is* a pre-MS discussion.  Everyone gets to hear the voices
> who feel strongly about a particular topic --- for example, such as
> the AI/LLM discussion.  The voices and ideas that are presented in the
> mailing list is absolutely something that influences the discussion
> that happens in the room.

Your emails are really unclear.

They say this:

	The attendees are jointly selected by Linus Torvlads (who has provided
	us with a roughly a dozen maintainers that he would like to attend),
	and the program committee, who choose from maintainers and developers
	who have been the most active in the past year.

(Though I question whether 'most active' is a good metric or one that's
actually being used).

OK cool - as David Airlie says - it's Linus's staff meeting and people he
most interacts with are invited, fine.

But then you say this:

	Anybody proposing a topic before July 24th will be added to the list
	of potential attendees selected by the program committee; other
	potential nominees can be proposed (as a self-nomination or by others)
	by sending a note to the ksumimt list saying why that person's
	presence would help the discussion.

Which is like a CFP at any other conference implying that topic submission
is tied to attendance.

I think you should make it clear that topic suggestion is entirely separate.

Right now it seems to me to be a bit of a muddle.

--
Cheers, Lorenzo
