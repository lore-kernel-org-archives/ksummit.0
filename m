Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AB564334D9
	for <ksummit@lists.linux.dev>; Wed, 22 Jul 2026 17:48:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784742526; cv=none; b=Gl4S/n+HD/F2R9qPWOeaOGwo0XDp9mU+ZvR7dT8lNH7yzF/qLkYI4YPyqLth8rf6BwY88wPEVWGg4BVLdVxKJwBdZMgoKCcxddj2dSZksvoO6rkn2/5rs8CYlm8k7QZr2RKpgHk1HoH8Ig39ai+tixQKLApVi/BAxKZ3pHlweOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784742526; c=relaxed/simple;
	bh=mcx0WTF+QScLYal8du5d7E5KaowdwyQxfClhtMv+iMM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HxmII0gozKEVtbaCdwzWWAGNEkjHjIhsnAO4QCnQ+mCzOafk33NOB8FqJsO9B7qJ/6txP5cPisZMy6DVdDZnrHAn4F+Og5sCcmMMSc7MLhx0QKkLYNPFX2o95WdlbyaEMMs33m0lsJw/Oglyv6hqx8l25NKgRmWIiwhGQwaVISc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l3O9D5pi; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l3O9D5pi"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22FEE1F000E9;
	Wed, 22 Jul 2026 17:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784742522;
	bh=i4uEXLKdyMp2Q0xAhYf7AJOXe4HmmGL+cqkO5p7Ffv8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=l3O9D5piCo1JNzcW3OGvvVflAO7sUxm2c1dmD91VqTGAU9gg59JVemku5hc1WzixL
	 fJZmcwkLhE3mzt8F1lg1f5jQfUn3Ay3d2JBO+uDFMRPQ/cc893mFgH9/Uj4FrAgoKH
	 Wsc93Pk918lb2su6L26VIm5lO3pjBzl+UQ7HtFLJk0CNPjggi9JXGfK21/1vbPEs3g
	 Xt5oZeEQEEHVQtD+tIg+gXfk1MlC8v4Y90vl+cHbE+ZQhlqbE1bm13OajDXzehjXLx
	 ujBTivzKZh7QpXSNxkLLBI6hs++6QxeIFCaL86hmn5NyA2t7w85idFD1jKEZzgFY0m
	 gjaBI0yW5McPg==
Date: Wed, 22 Jul 2026 13:48:40 -0400
From: Konstantin Ryabitsev <mricon@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Jori Koolstra <jkoolstra@xs4all.nl>, Sasha Levin <sashal@kernel.org>, 
	Mark Brown <broonie@kernel.org>, Jonathan Corbet <corbet@lwn.net>, ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags, newcomers,
 etc
Message-ID: <20260722-uncovered-clam-of-bloom-03ebed@meerkat>
References: <87wluv7yzc.fsf@trenco.lwn.net>
 <alj4mYFMfZvuarfx@laps>
 <daea687e-46ef-4e00-9188-d14a663f1428@sirena.org.uk>
 <alkFzdJobnnMjJ4v@laps>
 <amAEIpVXxJbVgT2Z@lt-jori.localdomain>
 <CAHk-=wgbGarE7Ozw4VG6oUKDj9pk-8DRoDiX00bo1MwEMm9UWQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAHk-=wgbGarE7Ozw4VG6oUKDj9pk-8DRoDiX00bo1MwEMm9UWQ@mail.gmail.com>

On Tue, Jul 21, 2026 at 05:57:38PM -0700, Linus Torvalds wrote:
> Or it can happen by looking at the patch itself, and trusting the
> contribution that way (and then the submitter grows his or her trust
> over time that way..
> 
> But basically, without trusting a submission some way, the submission
> shouldn't be accepted.

At the danger of introducing some kind of "karma system," how do we want to
build this trust? We already do end-to-end attestation, but a) not everyone
makes use of it, and b) it still hinges on name recognition.

Do we want to dip our toes into some kind of "how many times have I accepted
patches from this person" automatic accounting system?

-K
