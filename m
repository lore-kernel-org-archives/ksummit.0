Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1951485CC3
	for <ksummit@lists.linux.dev>; Thu,  6 Aug 2026 17:28:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786037309; cv=none; b=SuMikZd8FPJVpWuD5NRZELNVRahIQQHaF9u4I301DOlaEG0yJb3rGgwJBW+hAIbysB+Cp1aemjLDDo+yfTyQhMGkagPAnDqk0LT4yMyd8Ap/Agfjuy/fN94zMeNUhGpJ2u7UdNQZLKXa3QM0Q2/bXU7Hg4/xPLYJ3pq9iIIY9/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786037309; c=relaxed/simple;
	bh=9UmTcJsWimeV4ur/tWlQ27zwSS0L6WaUPb1U5mjBzjU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nUWQIrbJ8QpUVNq4dZ332nowX8QmNgGetFtWGl7ZTdDacoBvJHDdA8OP/sFcQEWDkYXez/eoAUtWfvg4TqWQsySNEzUp3zPa98UlxUKNdkcQHH9E4iuw+losdhv7Na+0RGPhDzPqICdTwuT6JtRZPgbwde+CWwGhkHi13ezLJsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dx8KlaNK; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dx8KlaNK"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 70F2C1F000E9;
	Thu,  6 Aug 2026 17:28:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786037307;
	bh=gSM7drabchXhMstqtWZyiACDG4XAaLVEw18HLn0dWlA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=dx8KlaNK7JU/emcHqC2r4LDLXCSRSAMvbnHoN3PY2vw/Uem8sc8UOSE36ltk1juFw
	 u+Ojv2fcApVCZt1wImC3RSc8Y4ygYQg/frztnNznmhoDDTj6e0J0SIQvBB1QRcH5o7
	 +PsIX6rsbo0cctmE93xW/DVbWECclHqo8pu6OSvS4uPzBSICcrbVsZHRmD2QgdQPXd
	 vrpeRB7iSily4NM34Vb7yzguzhmhygj6rwVhBJp7GU+vAkdB/gnVUJqFTB4l0JIJ/2
	 T7ut+2KKzOCz8RGSnEBxnG6v7XauM6mWGKBS2ybs+kc493O88vN6RUSa/Oye9/TOwT
	 G80iTzH9S+NGg==
Date: Thu, 6 Aug 2026 13:28:25 -0400
From: Konstantin Ryabitsev <mricon@kernel.org>
To: Greg KH <greg@kroah.com>
Cc: Theodore Tso <tytso@mit.edu>, Jonathan Corbet <corbet@lwn.net>, 
	ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Coping with the new-developer flood
Message-ID: <20260806-industrious-whippet-of-jest-a91eaa@meerkat>
References: <87y0ekm9nw.fsf@trenco.lwn.net>
 <anSpoxZ9SUBvFOZj@mit.edu>
 <2026080651-bony-hertz-bfb6@gregkh>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <2026080651-bony-hertz-bfb6@gregkh>

On Thu, Aug 06, 2026 at 05:57:54PM +0200, Greg KH wrote:
> > > At a minimum, one could imagine a bot that notices a patch posted by
> > > somebody who has not been seen before and responds with a "Welcome!
> > > Here's how we do things here" email.

I can probably do this, since I run a bunch of bots on list messages already
and this seems like a service that would benefit all subsystems.

> > I wonder if we could make the bot more sophisticated than just sending
> > a welcome message.  If the patch is white-space damaged, or doesn't
> > apply against upstream (or if there are indications that it was
> > applied against an LTS branch without an explicit LTS tag or something
> > indicating that it is a backport), one could imagine having the bot
> > sending a newer contributor a more specific set of constructive
> > criticisms.

Preferably, this would be purely deterministic, such as:

- carries "base-commit"
- has a signed-off-by
- actually applies
- isn't against a known LTS branch

Failing all these on top of being an unknown/new developer could trigger a
quick "here's what you did wrong, oh and welcome btw."

-K
