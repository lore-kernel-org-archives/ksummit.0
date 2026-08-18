Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192F03812FB
	for <ksummit@lists.linux.dev>; Tue, 18 Aug 2026 15:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.137.202.133
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787067147; cv=none; b=M2w7coLg+Xzxw/qkU+ecnnbaT1/ycfM24kZdgpo8j6aQRQzO0BaknoHL9CNcXFpU5m5LtloCTGe5BwtIO3KM/NmMMZ1nmh3phlEkXaqXn8jGTBH/3nmRdyFEktZqZhwNZSPprw4yQ3POMqCGeJh3o1Ic6yVDgL+p//UIwC/L7Y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787067147; c=relaxed/simple;
	bh=ZDNtituXXsvg5oNkz3BRjLgy2jfc1v41asy8brDd59Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qfxYpiF3ngGfHR/EoyiOTTw/2oXNA3fDyMnzeawba09O0vWb/hHWKrvOABFIIO3jB4iDenPHU9tOq+s8IlXegMO4GeiZ+ykL2TnJyPPszh6/YnK8BAdmB4/N/lQ8WRdrhfhb+ziH3HsOQ7dTUa36IMbaBhLDQQ9CfE6tJ8AII4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=infradead.org; spf=pass smtp.mailfrom=infradead.org; dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b=eS46l1fW; arc=none smtp.client-ip=198.137.202.133
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=infradead.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=infradead.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="eS46l1fW"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
	:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=WW2g00NRUGJ9L/+4qQVfoTXFoYIgWnbepqYjeuHiP3g=; b=eS46l1fW4WNnRn9MC7APLxqtz3
	mIGX6nx9DDWFb51xGLXo73qN6A0d0usZjnDbs4D5dimUJrzwPYqzuxZrIC1nzNxhUzRsQgyTHYZhM
	p+JRgkW7RQanluJVe6+jyOdNAXNvkJIABlVhTA9OPRFkSio79AEGts1k8bV8av5kW9vy9KODqFZFD
	slVdyHMzBj79km9RvO+p/UVtA3zwnHDP8riJblFZcQMuZfU0L8SVNzSfIc8IMYa+RRW2erR1sgZ75
	NlYygLyUxtsiAPy/NvQXENb9HI7ymUK14EiYl5I+mkonhzsnLCpeo0S6iWKa+GuxqV541JQ3HV/yn
	dDCNOfmg==;
Received: from [38.23.173.23] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwLnX-00000008GyR-13xR;
	Tue, 18 Aug 2026 15:32:19 +0000
Date: Tue, 18 Aug 2026 11:32:07 -0400
From: "Liam R. Howlett" <liam@infradead.org>
To: "David Hildenbrand (Arm)" <david@kernel.org>
Cc: Theodore Tso <tytso@mit.edu>, Steven Rostedt <rostedt@goodmis.org>, 
	"Lorenzo Stoakes (ARM)" <ljs@kernel.org>, Jonathan Corbet <corbet@lwn.net>, 
	Linus Torvalds <torvalds@linux-foundation.org>, James Bottomley <James.Bottomley@hansenpartnership.com>, 
	ksummit@lists.linux.dev, Andrew Morton <akpm@linux-foundation.org>, 
	Dave Airlie <airlied@gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
Message-ID: <jguyya2bs2caylvcxu2gwl3g4sjuajb2fhjrpojwy5osyqyw55@doc2x6d5nm2y>
References: <anfUgiByUVffXlrQ@mit.edu>
 <87y0efi08u.fsf@trenco.lwn.net>
 <20260809170918.218792b2@gandalf.local.home>
 <anmHaRzbnY7rtLX8@gremlin>
 <20260810092003.5fda8e06@gandalf.local.home>
 <1BD1C7E7-CCA5-4BBB-94D4-83A7706E2579@infradead.org>
 <anppSi8oQvvODOI2@mit.edu>
 <od7zzwh6dqabzqyz6tlvd6n4uibcqvnhohikbbmjxwjjtpnjjw@xnkg7kwr2zz2>
 <aoRlKyICddc7U353@mit.edu>
 <fe049a6b-be36-40dc-9d52-506b65b1f74b@kernel.org>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fe049a6b-be36-40dc-9d52-506b65b1f74b@kernel.org>

On 26/08/18 04:21PM, David Hildenbrand (Arm) wrote:
> On 8/18/26 16:02, Theodore Tso wrote:
> > On Tue, Aug 18, 2026 at 09:09:22AM -0500, Liam R. Howlett wrote:
> >>
> >> When succession is happening, it would be good to have the new person
> >> shadow the outgoing person.
> > 
> > That's a good idea, where it's possible.  Have you suggested this to
> > David and Andrew?  I know there are a lot of discussions about the
> > succession within the mm subsystem, and since it's (from an outsider's
> > perspective), it's a large and very healthy community, my personal
> > preference would be to let the mm subsystem work through this
> > succession, and then we can take learnings a year or so after the
> > succession is complete.

I haven't brought it up with Andrew and David, but we do have meetings
about what's going on - although I might have missed one due to time off
recently.

It seems like a good idea to have the shadow option opened for
transitioning and it seems worth bringing up as a process change in its
own right.

> 
> I am not sure why we are suddenly discussing the MM transition here.
> 
> Liam, do you see a particular problem in the way we are currently tackling the
> transition? Or was that just a general comment, independent of the MM thingy?

I was more thinking of a process change, in general.  Even if it's a
note saying 'if you have a known transition of ownership coming, let us
know".

The committee is looking at how to draw a line on the people to go and
leave everything else up to the subsystem maintainers.  This assumes the
committee knows succession planning and actions in the subsystems and
that they keep it top of mind.

There's also the point raised about more changes on the horizon, so we
either make it a part of the process, trust the succession planning
takes MS into account a year (or more) ahead of time, or risk a number
of first timers at MS.

Thanks,
Liam
