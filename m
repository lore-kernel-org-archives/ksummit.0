Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ABEF1FECBA
	for <ksummit@lists.linux.dev>; Tue, 18 Aug 2026 17:47:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.9.28.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787075262; cv=none; b=AqpROyux6+H+xcQPgUUzmNIL/HqxNEx1THO0V7W/I1zdI7RubxuQqRTYIx6WMQVqPXx2ZeQ9q9EcMRc0IN/y6sPcaUjIgosjgnkFIm9DYaAH7LNncr8xzOOl7eTPf/+Jy0MLYWbWXz41WjmBEKyfNnXQ3JLbrX4m9iAk8FHqq70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787075262; c=relaxed/simple;
	bh=PCKiQigMYiMLMuHl04IEorzxh3BzizYUUrzOG2xNwD4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hHzFSYFANlkIu0GYvalTWwflXD/nOMn9UwAKWZWZAZNgj7lFUKIosV+Q28TEE61OTMHtEpl3DSTWmUkRlMFqCFkn4HTfmZyWY5pP0CKfP+1+pK5O1lNQ9unWIB/D1RLYKU0OXRaqRi1LuJ+QMQUAEu15HHY5lqvgqmShisf2tGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu; spf=pass smtp.mailfrom=mit.edu; dkim=pass (2048-bit key) header.d=mit.edu header.i=@mit.edu header.b=LKKcSoVO; arc=none smtp.client-ip=18.9.28.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mit.edu
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mit.edu header.i=@mit.edu header.b="LKKcSoVO"
Received: from macsyma.thunk.org (pool-173-48-113-153.bstnma.fios.verizon.net [173.48.113.153])
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 67IHlGBL018472
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 18 Aug 2026 13:47:17 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mit.edu; s=outgoing;
	t=1787075245; bh=BfyLw+i3Rx3j6d2nwTbjTPdXz+6BvJmPuayAE0J+YCM=;
	h=Date:From:Subject:Message-ID:MIME-Version:Content-Type;
	b=LKKcSoVOA/EweZmeM42MQu2MkFL+armG5ampWCcvxt/xjKcPCqxCUqdyKW/R1JrvZ
	 IjxrQ5XP/K66fP7M5CTyDiPDJxGdS1CSGHbbgm/uJuk28K5wd0u5NOyLU30ObivWwn
	 kigIdyftsfFsdHIjL+Ofr0oCPRFwJ9yXKls+sWilcXmNCO2IEd6bpMMNvA9WASA08E
	 pXZo6geVR5pNM+1Tc9mj9eryh8/Xp9ZvCMkrs1Q6rbEyhwP6tl2rmeumljCnfqjSt9
	 46iDw7iFeePTmFWtCbQiI6FBShahKuTvbENxIZ5UgaYv0F48V8OACdwZB5/qyFFrpN
	 SpHIOK/XpV/Pg==
Received: by macsyma.thunk.org (Postfix, from userid 15806)
	id D1B71F7D867; Tue, 18 Aug 2026 13:46:15 -0400 (EDT)
Date: Tue, 18 Aug 2026 13:46:15 -0400
From: "Theodore Tso" <tytso@mit.edu>
To: "Liam R. Howlett" <liam@infradead.org>
Cc: "David Hildenbrand (Arm)" <david@kernel.org>,
        Steven Rostedt <rostedt@goodmis.org>,
        "Lorenzo Stoakes (ARM)" <ljs@kernel.org>,
        Jonathan Corbet <corbet@lwn.net>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        James Bottomley <James.Bottomley@hansenpartnership.com>,
        ksummit@lists.linux.dev, Andrew Morton <akpm@linux-foundation.org>,
        Dave Airlie <airlied@gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
Message-ID: <aoSMSTIxK0nXHYDr@mit.edu>
References: <87y0efi08u.fsf@trenco.lwn.net>
 <20260809170918.218792b2@gandalf.local.home>
 <anmHaRzbnY7rtLX8@gremlin>
 <20260810092003.5fda8e06@gandalf.local.home>
 <1BD1C7E7-CCA5-4BBB-94D4-83A7706E2579@infradead.org>
 <anppSi8oQvvODOI2@mit.edu>
 <od7zzwh6dqabzqyz6tlvd6n4uibcqvnhohikbbmjxwjjtpnjjw@xnkg7kwr2zz2>
 <aoRlKyICddc7U353@mit.edu>
 <fe049a6b-be36-40dc-9d52-506b65b1f74b@kernel.org>
 <jguyya2bs2caylvcxu2gwl3g4sjuajb2fhjrpojwy5osyqyw55@doc2x6d5nm2y>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <jguyya2bs2caylvcxu2gwl3g4sjuajb2fhjrpojwy5osyqyw55@doc2x6d5nm2y>

On Tue, Aug 18, 2026 at 11:32:07AM -0500, Liam R. Howlett wrote:
> The committee is looking at how to draw a line on the people to go and
> leave everything else up to the subsystem maintainers.  This assumes the
> committee knows succession planning and actions in the subsystems and
> that they keep it top of mind.

I suspect that for major subsystems, if it *can* be planned, everyone
will know about it.  I didn't want to talk about the details of
internal deliberations of the program committee, but it's safe to say
that Linus explicitly mentioned it, it was discussed by the program
committee, and we extended invitations to both Andrew and David.

There were people on this thread that seemed to assume that the
program committee had completely ignored the situation, but that
wasn't the case.

> There's also the point raised about more changes on the horizon, so we
> either make it a part of the process, trust the succession planning
> takes MS into account a year (or more) ahead of time, or risk a number
> of first timers at MS.

Personally, I'm not worried about first timers; in fact, having a
first timers is a *feature* not a bug.  The opposite is the complaint
that it's always the same "clique" attending the Maintainers Summit.

As long as the new subsystem maintainers are experienced kernel
engineers, that's the most important issue.  As far as process
concerns, as long as major subsystems give a heads to Linus (not to
mention discussions at LSF/MM, or Plumbers, both of which have
happened with different senior developers planning their upcoming
retirement), I don't think we really need to worry about the community
getting taken by surprise.  So if things aren't broken, I'd argue that
we not add more formal procedures where they might not be necessary.

Cheers,

						- Ted
