Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA572DA74C
	for <ksummit@lists.linux.dev>; Sun,  9 Aug 2026 01:51:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.9.28.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786240292; cv=none; b=eLWScam0e2BAtAcCO2DEs5FrVCDxtWAcBJaZvKzjaPxooIUbIGDwQtQjm8AQ8UDJYiJ77bqGSnvfSsX7npS0RjSZZUKzKqUfBQwjG5CXkk68bxx96KzIIbfc6CQffaDcCDHklc1576RWX4I7KM9KKicpa31ATjlbWZ2FqruoBR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786240292; c=relaxed/simple;
	bh=SYEU1OvMOGtTBhSgmJqVJ6fgiehyx0UOMchcpHSoZzA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fAswJsc8X8kVehOGCNx0RpweowncPpunsMthd5VQ+mtQy+AIMVXusWy17/JsK8g7kFyNavYy0Pj2Rit3430IuJk12IccyO0hxqBaEay0etPKlGYHjI9aAzIJnvfOutjZqhPSwOsYB2iDIC92BbJXoCr7x68w6l28UY36U/IfeIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu; spf=pass smtp.mailfrom=mit.edu; dkim=pass (2048-bit key) header.d=mit.edu header.i=@mit.edu header.b=kJ3ZzaIg; arc=none smtp.client-ip=18.9.28.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mit.edu
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mit.edu header.i=@mit.edu header.b="kJ3ZzaIg"
Received: from macsyma.thunk.org ([67.208.186.90])
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 6791pG6S030245
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 8 Aug 2026 21:51:17 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mit.edu; s=outgoing;
	t=1786240279; bh=WAxYNN5tgB6qi2sDeBkFSCLI2lfkJFYTctYDbOemtS8=;
	h=Date:From:Subject:Message-ID:MIME-Version:Content-Type;
	b=kJ3ZzaIgp2lguA/108EZh8NjRR8cq3zxbllXPYxTHJOt+2Q4nKIegByU477VxW8fj
	 snQC3oSXH4j9vekebxkQUtmPF1hxsAuuXXRO+fbX3bQSZYVWeuVippCzehVqICA1P4
	 xPb0bJ8ptXtllaGevfzW3vZDJWkYEicS/miDLcYs1p9qJcc/RvQq1Uz9+AhEG8Gkow
	 KSZNGeA0Luw603BpYBbg8CJvj/AaCldKk8s2wX8l4yKkQlaDDNe7y+X6IKHGTDO2sZ
	 PUsUwwfEKfDO/yF3alXG2HjIrrYcwIDzcbYWE6GyTkifAV/0vDkg0eK9qlxXlhqH7P
	 FtUpliFbO8+Yw==
Received: by macsyma.thunk.org (Postfix, from userid 15806)
	id 5FA52E0880C; Sat,  8 Aug 2026 21:51:13 -0400 (EDT)
Date: Sat, 8 Aug 2026 21:51:13 -0400
From: "Theodore Tso" <tytso@mit.edu>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Steven Rostedt <rostedt@goodmis.org>,
        James Bottomley <James.Bottomley@hansenpartnership.com>,
        ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
Message-ID: <anfUgiByUVffXlrQ@mit.edu>
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
 <20260806194153.6443a3ba@gandalf.local.home>
 <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>

On Fri, Aug 07, 2026 at 10:27:27AM -0500, Linus Torvalds wrote:
> The maintainer summit being a pretty constant "in-group" is
> fundamental, but it still feels a bit sad and wrong to me.

I was curious about the data, so I looked at the spreadsheets for the
last four Maintainers Summit (from 2022 to 2026) to see how many
people had attended all four Summits... or 3, or 2, or 1.  Here they
are:

# Summits
Attended   #      %
------------------------
4 	   9	18.37%
3          8	16.33%
2         10	20.41%
1         22	44.90%

I'll be honest; these numbers surprised me.  I can understand Linus's
statement about how it feels like it's pretty much the constant
"in-group", since I had the same feeling --- but it's much less of the
same "in group clique" than what I at least had expected.

Probably, some of it is that there is a certain set of biases and
thinking that comes from people who are "core maintainers" -- such
that even if 20% have only attended two out of the past 4 summits, and
45% have attended only 1 of the past summits, those attendees probably
approached our discussions the same way as someone who has been at all
of the past 4 summits.

If there are things that we could change in terms of how to make it be
less of an "in group", I think that would be a good thing to consider.
Should we invite people who might have a very different sets of
opinions --- for example, while Kent Overstreet was an in-tree
maintainer, should we have invited him?

And I'm only half-joking here, even though I would have found it
personally uncomfortable if Kent was at one of the Summits.  But
perhaps we *should* be a little uncomfortable.  Furthermore, one of my
original goals behind starting the kernel summit is that sometimes we
can work better together when we've broken bread over a shared meal
together.  That being given tht many of us had a chance to work with
Kent at LSF/MM/BPF and (I think) Plumbers, I'm not sure it would have
made that much different to what happened with the Kent situation.

As another thought, when we had 100+ people attending the Kernel
Summit, that we would make a *point* of inviting people who had never
attended Kernel Summits before, so we would get new blood attending
the Summit.  After we significantly reduced the the size of the
Maintainers Summit to 30, we've stopped doing this as a deliberate
practice.  Should we change this?  For example, we could decide to
include a few people who aren't currently acting as a maintainer, but
are fairly prolific contirbutors / reviewers.  I do *include* such
people for consideration in our ballots, but they tend not to be
chosen by the program committee.  Should we change our criteria to
explicitly include a few such folks?

Cheers,

					- Ted
