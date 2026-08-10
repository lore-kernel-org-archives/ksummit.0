Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9634F30C359
	for <ksummit@lists.linux.dev>; Mon, 10 Aug 2026 14:57:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.9.28.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786373865; cv=none; b=qO0EyCq1HPkgP7Ckq4Yd5AJgoWNeRcQV42BFcFXhjRMseMf6GpfJeqiZqysnZiMLBFJbhyGbX8k4N1aYHvygI7Utz+jnizGyKrebcZqBoCjgt+g6mR4d75eJh8OwDLN0mWcfomXIIsOIaezz4Fli5F30MCyvCwz2qvZZtd9B7m4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786373865; c=relaxed/simple;
	bh=bgLQkFBz8IjXZsj8vCIxaGhO8Aewlpwu/j4IbR3Hic0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KKohckef03rijU/iz/ZfAdmvHLCQT2/gx9sEdBSXmIgL4gbQvZsKNsOFr1v416fYv6c2RyeIlECN3mNQOIn9rZBTyEyvSnca8biRgp7PPiIji6OHnKTgqekvNBAXQklYwumK3l9JbrNjL/EvxxVx61xOhQoBEtd79SsrBOdRCtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu; spf=pass smtp.mailfrom=mit.edu; dkim=pass (2048-bit key) header.d=mit.edu header.i=@mit.edu header.b=Bxq6GLC8; arc=none smtp.client-ip=18.9.28.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mit.edu
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mit.edu header.i=@mit.edu header.b="Bxq6GLC8"
Received: from macsyma.thunk.org (pool-173-48-113-153.bstnma.fios.verizon.net [173.48.113.153])
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 67AEvIfe011700
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 Aug 2026 10:57:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mit.edu; s=outgoing;
	t=1786373843; bh=cXuG109aXjSsGZeauKdsfDKOO7M/cKiNCLv4CIuZc6E=;
	h=Date:From:Subject:Message-ID:MIME-Version:Content-Type;
	b=Bxq6GLC8uUb4jKWOLhvWO+OtIUgfwChjVcjG1/C6VRAiU59zcTsoYFRoy0FCZ1YEw
	 asdEXRmNJd3FbUo9HRg0euoW1y/P31X0vrK+iS+59pTNqIisf8w15cZj48rBZByoVl
	 cvgNj181W+ah5A+NlRYQ2qidurvPDzP9Uq8kIFZlsHoNAUFE7N9C1UJJxCWYvw+317
	 m/w2+RDZqdkZNlyP3Us36DVejV/Rj6aF5Xa8Ouu3iEBeU3RWW69312sBBdCk5BRdLf
	 a7H2F4tNwMQT0kNgI2mfrjUT6OP7YFqQqug+/95aTg5ElLDXOsrIEvUW4NXYWHp17x
	 pT0jUODDIC7nA==
Received: by macsyma.thunk.org (Postfix, from userid 15806)
	id 846FAE61A41; Mon, 10 Aug 2026 10:56:18 -0400 (EDT)
Date: Mon, 10 Aug 2026 10:56:18 -0400
From: "Theodore Tso" <tytso@mit.edu>
To: "Lorenzo Stoakes (ARM)" <ljs@kernel.org>
Cc: "Liam R. Howlett" <liam@infradead.org>, Jonathan Corbet <corbet@lwn.net>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Steven Rostedt <rostedt@goodmis.org>,
        James Bottomley <James.Bottomley@hansenpartnership.com>,
        ksummit@lists.linux.dev, Dave Airlie <airlied@gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
Message-ID: <annadqPN0HnRFi8K@mit.edu>
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
 <20260806194153.6443a3ba@gandalf.local.home>
 <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
 <anfUgiByUVffXlrQ@mit.edu>
 <87y0efi08u.fsf@trenco.lwn.net>
 <006B9A78-D7A3-4684-91C8-BCA700487B65@infradead.org>
 <ankkb2siES7o86qd@mit.edu>
 <anmD822InwjWKmhy@gremlin>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <anmD822InwjWKmhy@gremlin>

On Mon, Aug 10, 2026 at 09:08:32AM -0500, Lorenzo Stoakes (ARM) wrote:
> Your emails are really unclear.

Ok, let me trry to clarify.  The current process that we've used for
the last couple of years work like this.

1) I send a message to Linus asking for his set of ~10-12 people that
he definitely would like to attend the Maintainers Summit.  He uses
some scripts that show who he pulls from the most, but it's also
modified by his perception of who might be a good people to attend and
to make sure we have a balance between different subsystems and
constituencies (e.g., architecture maintainers, people who work for
distributions, etc.)  People identified by Linus, plus the program
committee, are on the automatic invite list.  (Roughly half of the 5
person program committee overlap with Linus's list.)

2) We send out the Call for Topics, which among other things states
that (a) anyone who suggests a topic before a cutoff date will get
added to the list of people whom the program committee will consider,
and (b) anyone can nominate others, or self-nominate others.

3) In parallel, I run a set of scripts that look for people who are
the most active in the past year, which includes people who review
commits, test commits, author commits, etc.  My scripts are a bit more
expansive than Linus's (which tend to be much more focused on
identifying the core maintainers).

3) The program committee will take a look at the list composed of
people from (2) and (3), and nominate other people to be considered.
This falls under the "anyone can nominate others" clause in (2b)
above, but I call this out because in practice the program committee
tends to nominate more people than non-program committee member
(including self-nominations).  It is at this point that if we think
someone has something important to contribute for a particular topic,
we might make sure that they are added to the list.

4) Each program committee then assigns a score from 5 (this person
must be there) to 1 (while we're at it, why don't we invite Darl
McBride).  We then average the scores, and for the sake of efficiency,
we'll decide on cut line where everyone above a particular line will
be added to the invite list.  But it's not just a mechnical exercise.
We do try to consider balance, people who might be needed to have a
robust set of discussions, people who haven't attended recently or at
all, etc.  HOWEVER, given that we we are limited to inviting 30
people, our ability to achieev balance or to make sure very single
point of view on a topic is represented is quite limited.

> (Though I question whether 'most active' is a good metric or one that's
> actually being used).

It's a starting point (among others) for creating a list of people for
the program committee to consider.  It's not the most important
criteria by any means.

The bottom line is that it's complicated, and we are trying to balance
many competing goals while keeping the size of the summit small enough
that we can have good discussions.  Can it be changed?  Sure!  I'm
sure that based on the discussion on the list, it will almost
certainly come up at the summit.  I can't guarantee that changes will
be made, since it is very much an over-constrained problem, but it
will be discussed.


It might be helpful if people frame the Maintainer Summit as being no
different than what happens at the subsystem level, except that it is
exclusively focused on process issues.  A wise maintainer will take
the concerns of the subsystem contributors in mind, because you can't
force volunteers to work on your subsystem --- and you don't want them
to quit.  But at the same time, it's not a democracy, and a maintainer
is empowered to make decisions for the good of the subsystem.  The
mailing list discussion is an important part of what a wise maintainer
will take into account, and that's why if you want to make sure an
idea is considered, please make it on the ksummit list.

Cheers,

						- Ted
