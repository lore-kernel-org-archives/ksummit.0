Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 137BC32861E
	for <ksummit@lists.linux.dev>; Mon, 10 Aug 2026 15:50:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786377005; cv=none; b=VMZV131B647qbCTgTDs2VQcMudJFkwgjNvdHg4+BaX0JeFEOcO8Tm+F3BHoYqwwHoU22X3JRdr7TNgK4T/GQgEw7KLk2jPImkAYwD2KFLiz/iKYOX1Psa1A7K/jUNy7cO83LJHsu2A7Tgk90MXRZysrbxjcW1QE9hSK2OP4Jc1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786377005; c=relaxed/simple;
	bh=HMxT6CMgG1CS5ZzrCTmaWcDJVPGmp3fagL4OExOc1R0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aQNNjeH2hFl9mbGmkUiAJ8KSiapthat3c1hUxuloGLPbznMJ2RbpWEAVC1jGd2/xThy0qwtUBAjd/PEn96P4oTgCEcG5TTLsv/TYK1ocTdhcOgqb7SqjVW/gk9YR6F7vjTivLquKVrDYFRmaPgPDcFlnQQJbGQRBD53hiSJ+qSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hE7Vn3NE; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hE7Vn3NE"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B57581F00A3D;
	Mon, 10 Aug 2026 15:50:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786377003;
	bh=DytD3J14FJEiBSD5kqFiIrsEmzeSyATZpOtxY8qShEA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=hE7Vn3NEPc1hy0X1DVJwrc/7pqkzRiLHwl/8Xm6nzeskhS1cJ9+ziCAIqc+JoXy36
	 iwCFFd2RBMqF05jnXkPtwfAjh6UDmX5NcUlHOy8yvXPn2yjJ1UVFzbjRJlreV1AZL0
	 ZEOCimvuXYoOEfsa6uunKObVANDuqMOQTS/iHSwhes4EhhFkC7oAO93h26MZIM8tjA
	 RHSIdBHX30ALu/89lADsHwRi7jHuH33jQtWDHOZkq01xvNoB5DD+GTcJPWUzGf9pEl
	 BrPHe2VYeqBjRf/b3f2UbNnnvF+wT+LXZfPZCvHqPya9wfkGP6vp/SrUb57JZPKYgM
	 +V1hCxmUK8vaw==
Date: Mon, 10 Aug 2026 16:49:46 +0100
From: "Lorenzo Stoakes (ARM)" <ljs@kernel.org>
To: Theodore Tso <tytso@mit.edu>
Cc: "Liam R. Howlett" <liam@infradead.org>, 
	Jonathan Corbet <corbet@lwn.net>, Linus Torvalds <torvalds@linux-foundation.org>, 
	Steven Rostedt <rostedt@goodmis.org>, James Bottomley <James.Bottomley@hansenpartnership.com>, 
	ksummit@lists.linux.dev, Dave Airlie <airlied@gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
Message-ID: <anntucHhrzF_b4sy@lucifer>
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
 <20260806194153.6443a3ba@gandalf.local.home>
 <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
 <anfUgiByUVffXlrQ@mit.edu>
 <87y0efi08u.fsf@trenco.lwn.net>
 <006B9A78-D7A3-4684-91C8-BCA700487B65@infradead.org>
 <ankkb2siES7o86qd@mit.edu>
 <anmD822InwjWKmhy@gremlin>
 <annadqPN0HnRFi8K@mit.edu>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <annadqPN0HnRFi8K@mit.edu>

On Mon, Aug 10, 2026 at 10:56:18AM -0400, Theodore Tso wrote:
> On Mon, Aug 10, 2026 at 09:08:32AM -0500, Lorenzo Stoakes (ARM) wrote:
> > Your emails are really unclear.
>
> Ok, let me trry to clarify.  The current process that we've used for
> the last couple of years work like this.
>
> 1) I send a message to Linus asking for his set of ~10-12 people that
> he definitely would like to attend the Maintainers Summit.  He uses
> some scripts that show who he pulls from the most, but it's also
> modified by his perception of who might be a good people to attend and
> to make sure we have a balance between different subsystems and
> constituencies (e.g., architecture maintainers, people who work for
> distributions, etc.)  People identified by Linus, plus the program
> committee, are on the automatic invite list.  (Roughly half of the 5
> person program committee overlap with Linus's list.)
>
> 2) We send out the Call for Topics, which among other things states
> that (a) anyone who suggests a topic before a cutoff date will get
> added to the list of people whom the program committee will consider,
> and (b) anyone can nominate others, or self-nominate others.
>
> 3) In parallel, I run a set of scripts that look for people who are
> the most active in the past year, which includes people who review
> commits, test commits, author commits, etc.  My scripts are a bit more
> expansive than Linus's (which tend to be much more focused on
> identifying the core maintainers).
>
> 3) The program committee will take a look at the list composed of
> people from (2) and (3), and nominate other people to be considered.
> This falls under the "anyone can nominate others" clause in (2b)
> above, but I call this out because in practice the program committee
> tends to nominate more people than non-program committee member
> (including self-nominations).  It is at this point that if we think
> someone has something important to contribute for a particular topic,
> we might make sure that they are added to the list.
>
> 4) Each program committee then assigns a score from 5 (this person
> must be there) to 1 (while we're at it, why don't we invite Darl
> McBride).  We then average the scores, and for the sake of efficiency,
> we'll decide on cut line where everyone above a particular line will
> be added to the invite list.  But it's not just a mechnical exercise.
> We do try to consider balance, people who might be needed to have a
> robust set of discussions, people who haven't attended recently or at
> all, etc.  HOWEVER, given that we we are limited to inviting 30
> people, our ability to achieev balance or to make sure very single
> point of view on a topic is represented is quite limited.
>
> > (Though I question whether 'most active' is a good metric or one that's
> > actually being used).
>
> It's a starting point (among others) for creating a list of people for
> the program committee to consider.  It's not the most important
> criteria by any means.
>
> The bottom line is that it's complicated, and we are trying to balance
> many competing goals while keeping the size of the summit small enough
> that we can have good discussions.  Can it be changed?  Sure!  I'm
> sure that based on the discussion on the list, it will almost
> certainly come up at the summit.  I can't guarantee that changes will
> be made, since it is very much an over-constrained problem, but it
> will be discussed.
>
>
> It might be helpful if people frame the Maintainer Summit as being no
> different than what happens at the subsystem level, except that it is
> exclusively focused on process issues.  A wise maintainer will take
> the concerns of the subsystem contributors in mind, because you can't
> force volunteers to work on your subsystem --- and you don't want them
> to quit.  But at the same time, it's not a democracy, and a maintainer
> is empowered to make decisions for the good of the subsystem.  The
> mailing list discussion is an important part of what a wise maintainer
> will take into account, and that's why if you want to make sure an
> idea is considered, please make it on the ksummit list.

Thanks, that's all really useful information, and I appreciate you taking
the time to go into detail.

For me the real issue here I think is less how it works and more how it's
perceived to work.

Having insight into the selection criteria and the problems you're trying
to solve is really helpful.

I actually think it'd be really useful to document this somewhere in
Documentation/process/ personally.

But for me again I think there's room for improvement in the Call For
Topics which, at least partly, reads like any other conference CFP and
clearly - that isn't the case.

So I think the simple solution here is to reword the CF[P,T, whatever :P]

The bit I'd change is the topic proposal bit. Something like this:


-	Anybody proposing a topic before July 24th will be added to the list
-	of potential attendees selected by the program committee; other
-	potential nominees can be proposed (as a self-nomination or by others)
+	Potential nominees can be proposed (as a self-nomination or by others)
	by sending a note to the ksumimt list saying why that person's
	presence would help the discussion.

And maybe add something extra to really clarify things:

+	The Maintainers Summit is unlike any other conference in the
+	calendar and as such the primary selection criteria for attendance
+	is upstream engagement.
+
+	Therefore, while topic submissions drive what is discussed at the
+	conference and taken very seriously, they do not guarantee
+	attendance.

Keeping the rest the same.

>
> Cheers,
>
> 						- Ted

--
Cheers, Lorenzo
