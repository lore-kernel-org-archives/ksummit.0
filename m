Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCAD930DD10
	for <ksummit@lists.linux.dev>; Tue, 18 Aug 2026 14:51:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787064696; cv=none; b=q7JLs/BUTZ1kfyO0jopMRIK0UsDgJ9NX//+0R8LziHyYy87I8zat/Tx4CVptRu8s+bkLIyl5x9kzTtjL3aj/lQPqqqsjDovJLMm6V7het2J0gvEvzBi1ZfQ63ffikdSFccqqQNkux+UH1u+p2cYbfOrJSRU632GLmcAOyUZ7pjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787064696; c=relaxed/simple;
	bh=4kUuZf1JHV1tZZ2cENSgjm7vU0/dSWrm5U4TxeNzHWQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uEafqRWTY8P9oYXFZuxEP5Qfr1na4NBOQopHKfqLgxY8XLzC3uy8hT3DrhNwE6BzGWfWIAm/9cyP1ua4R81DguZx/42o9ENLA3bWOi08QzHFVY/kACxlef9JpIWaXJajFU4vh8UYnNk2m8A8x0uRQA634ous4LsIQuwhv0KsH8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lCWM3gVK; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lCWM3gVK"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 183BE1F000E9;
	Tue, 18 Aug 2026 14:51:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787064695;
	bh=zFXjgQ8X+PsYZVKHv5caQE2KGVRtqRkwmZ+xG2I5iQU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=lCWM3gVKj6gkDli4YCkTeYLavFm1Bov7kfZ8vF5kUuexmZrQz9S72WGOny0YMkn5o
	 z3OyGlEH+RfczdR9swrX65opQPLpnqNqzEa8h7S6ENk3r3ZT7RpBqdpliY3TJwI7cl
	 qrZOqBS1Cvx5MQGxKrQmhI35dnBbLzeuMxzWM7n9EHDPrpAg91cSuC/cIt3evFKkHq
	 XRI24qbbSpJnjqARfrPYwLkUvS3h/x7zzm8VC4CV5RSeY9xFzcvALQoNOqQ/Feq41r
	 DJR5xa7SznaXIInyalLfU8sRgzleTPsho3w+3jmvctAWnEBModo+q0I6stSzNJklBA
	 hzWHmLlPnN+6A==
Date: Tue, 18 Aug 2026 15:51:16 +0100
From: "Lorenzo Stoakes (ARM)" <ljs@kernel.org>
To: Theodore Tso <tytso@mit.edu>
Cc: "Liam R. Howlett" <liam@infradead.org>, 
	Steven Rostedt <rostedt@goodmis.org>, Jonathan Corbet <corbet@lwn.net>, 
	Linus Torvalds <torvalds@linux-foundation.org>, James Bottomley <James.Bottomley@hansenpartnership.com>, 
	ksummit@lists.linux.dev, "David Hildenbrand (Arm)" <david@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>, Dave Airlie <airlied@gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
Message-ID: <aoRwK2L8CjtnhTK7@lucifer>
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
 <20260806194153.6443a3ba@gandalf.local.home>
 <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
 <anfUgiByUVffXlrQ@mit.edu>
 <87y0efi08u.fsf@trenco.lwn.net>
 <20260809170918.218792b2@gandalf.local.home>
 <anmHaRzbnY7rtLX8@gremlin>
 <20260810092003.5fda8e06@gandalf.local.home>
 <1BD1C7E7-CCA5-4BBB-94D4-83A7706E2579@infradead.org>
 <anppSi8oQvvODOI2@mit.edu>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <anppSi8oQvvODOI2@mit.edu>

On Mon, Aug 10, 2026 at 08:14:51PM -0400, Theodore Tso wrote:
> On Mon, Aug 10, 2026 at 04:35:48PM -0500, Liam R. Howlett wrote:
> >
> > I don't want to be invited.  My only reason for being vocal is to
> > facilitate process improvements.
>
> Liam, do you have any concrete process improvements that you'd like
> propose?

(Since this thread popped up again...)

TBF I did make concrete process suggestions myself here:

https://lore.kernel.org/all/anntucHhrzF_b4sy@lucifer/

And here (documentation):

https://lore.kernel.org/all/anntucHhrzF_b4sy@lucifer/

(I also repeated both in a couple places)

And they got ignored, so I'm not _entirely_ sure that's what you guys are after
here :)

It seemed like the thread digressed rather and all will be forgotten again until
next it comes up...

>
> Thanks,
>
> 						- Ted

--
Cheers, Lorenzo
