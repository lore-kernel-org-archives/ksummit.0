Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BD90331237
	for <ksummit@lists.linux.dev>; Thu, 16 Jul 2026 21:23:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.9.28.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784237024; cv=none; b=LOFrWY1LvZWCPHvukKNJVCXz8oo6LXdrnsJevYnOgBNwsQ0G9a1lqYE9pDXloDZCbmoRBlXjcjBejWp3P7cBmcYXM36LyTJHsHal5ebcZoVrZ7YqIOdXJxt5eKoMhjPq4Lp9Nkc5cw4k4zVoKn6/TZ7BIKsNvJEX6tDo+8YvK9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784237024; c=relaxed/simple;
	bh=gi0gL7cFSV+Qq1nsAum9hQUuiBcug5Ms2AH6e87aSvw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EZJHy9KT2iEJx6p6u0FSG9Qx9Vv2HopqqJUvavVQZdf9g6k3wwbUzxM0tJs6oHhjl6q65khFAFKBdbd4jm/UtaQnG8/E/uSudfQHINgf18ZOzrHTtLjiyxw49VoP2L1Jg9u/CfTiQk+xU9aXyW+9CzvwybNvr+1JlL+SdXN4qYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu; spf=pass smtp.mailfrom=mit.edu; dkim=pass (2048-bit key) header.d=mit.edu header.i=@mit.edu header.b=DGV/B/tE; arc=none smtp.client-ip=18.9.28.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mit.edu
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mit.edu header.i=@mit.edu header.b="DGV/B/tE"
Received: from macsyma.thunk.org ([151.240.45.27])
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 66GLNaHj007030
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 16 Jul 2026 17:23:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mit.edu; s=outgoing;
	t=1784237019; bh=/z0cyisW9Sj8unCfx9OB75dUBAPsQWcI/RBjqW7CnZY=;
	h=Date:From:Subject:Message-ID:MIME-Version:Content-Type;
	b=DGV/B/tElJYBd/mdY0PwrfsD4dZ1FLtAuwqzBxxKn2j/XFni1kLlqz2hQh6Q0B1Pd
	 MOdgQIn7JF7UzjgC8RuUyEn+qVzUUQEcChVl1e8i30diTgBLT26UoalPJ8PnWTGiQp
	 55oaqHY6rE83neZBTyRvkluuxBOmjAGzApbTgm7PoI+ayW+6SKl5G/OwOSCOSfuEAK
	 p6VdiB+W448Fu3us6ZLBpOt0e9I1QQ1XKPwEzRCgL3EIWAHU7sXNRxWHiHESnn7eSp
	 rDzvXb/Rl5Q6q/ykqhYSmbjK8ccKe3rvgx6/fjtPFxQ/+YT44QHxl4ZOisVps3sw08
	 W99IVIXw1LZuQ==
Received: by macsyma.thunk.org (Postfix, from userid 15806)
	id D6365A559C1; Thu, 16 Jul 2026 17:23:35 -0400 (EDT)
Date: Thu, 16 Jul 2026 17:23:35 -0400
From: "Theodore Tso" <tytso@mit.edu>
To: Jonathan Corbet <corbet@lwn.net>
Cc: Sasha Levin <sashal@kernel.org>, ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags, newcomers,
 etc
Message-ID: <allGeaXQ6DFv1M14@mit.edu>
References: <87wluv7yzc.fsf@trenco.lwn.net>
 <alj4mYFMfZvuarfx@laps>
 <87y0fa7pdm.fsf@trenco.lwn.net>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87y0fa7pdm.fsf@trenco.lwn.net>

On Thu, Jul 16, 2026 at 12:36:53PM -0500, Jonathan Corbet wrote:
> The related discussions have featured a number of maintainers talking
> about how much time Sashiko has saved them.  I believe them.  How long
> will it take until nobody does that level of patch review anymore?  What
> will we do when the current round of corporate generosity ends and that
> tool goes away?  Maybe I'm worrying too much, but this does seem, to me,
> like a possibility we should keep in mind.

Sashiko finds issues that human reviewers wouldn't necessarily notice.
Before Sashiko, at least for ext4, I'd find those sorts of issues by
running 24 VM hours worth of fstests, and rely on that testing to find
problems that I might miss when doing the initial patch review.  Could
I have found it by spending 3 times as much time looking at each
commit, and thinking deeply?  Sure.  But I don't have the time for
that, so I've *already* relied on Google contributing roughly two
dollars of VM time for each 24 hour regression test run.  Sashiko
might be a bit more expensive on a per-patch basis, but just as I
never viewed fstests as a replacement for human-level review, I don't
think Sashiko is complete substitute human review.

We still need experienced human reviewers to ask whether the fix is
being done in the right place, or whether the right solution is to
*remove* code as opposed to *adding* code, etc.  This is critical if
we want the code to be maintainable in the long-term.  I agree that if
reviewers stop doing this, we would be in a world of hurt --- but that
can happen if people were to start relying on kunit tests passing as a
substitute for code review.

						- Ted
