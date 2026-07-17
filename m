Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F34630C63A
	for <ksummit@lists.linux.dev>; Fri, 17 Jul 2026 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784297394; cv=none; b=NXzbqPwYugfHKPZ+I4Ht+TFTjk7nskGpYnOYcV8WxL4AvmZpSLnbp3GE1uJeZ+nMXKe1BLg4s9c5N5SzzI5wX8rupJqV5LNOnbpmy6kefeQuP8GxTW30k/eAnm2MeaU0pAmtexA1CIBDg5uZ9zc19O6wQuTqYcTT0w+sUBUsdbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784297394; c=relaxed/simple;
	bh=Rvm0Hhmzx8I6oDQP6xQJKh46744e+qMnfG412uRdQHU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Kutlekb6DaNUn5uFLYNb9IlfFkaoJ+QU7i4Hb/ymxk0aqzwVb/INQrfhvZ6wcZx17FApqT4oVsqcsj3POhbEbE6u0Dk4madZUvfcBkNko6Qk90Om/FizHj4z7fvs+n8bLLMrGFbEBs/unsp4zIYM9bZMuJHM0hzKOk/wTwt71C4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FgndSHND; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FgndSHND"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C11891F00A3A;
	Fri, 17 Jul 2026 14:09:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784297393;
	bh=yYLHXtO5ioCvQYBfBBds0p4KVukrhhXwWKkBptYd9es=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=FgndSHNDvlSg7YPwtwxgQovcsIH4vJZkSt8dd2fGhb/j0Jxefa01pBL2GMmNFsvJv
	 LisIjbEh1YC28RrTsn/b2RW/WCbZ4kbNW6wWXTh212W4v1H5n+6y1w4f1nQw1LfnB+
	 xMCVgyWeGG3h0pIMzMnmPSkp7nmgpwt7SVeQHG+XRA/8Ofsmy6g4m+6Iih21VBEaWa
	 vM/AICt/QzTOw20Q9TInn/J/8+VJYbZWqGgWyL8hn6gJihJ8yuezcNcbmo1nK+Sy+W
	 xYSZmNpqWxq0j9DqmTZONv+AXnK9S4Md216W5LIolcb2LL5NAMqm6OyJMLWx9WpbxG
	 yEDqtS7POPs+w==
Date: Fri, 17 Jul 2026 10:09:51 -0400
From: Konstantin Ryabitsev <mricon@kernel.org>
To: Sasha Levin <sashal@kernel.org>
Cc: Jonathan Corbet <corbet@lwn.net>, ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags, newcomers,
 etc
Message-ID: <20260717-annoying-meek-lobster-c44f2f@lemur>
References: <87wluv7yzc.fsf@trenco.lwn.net>
 <alj4mYFMfZvuarfx@laps>
 <87y0fa7pdm.fsf@trenco.lwn.net>
 <alo1SOUZnSNfEqpn@laps>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <alo1SOUZnSNfEqpn@laps>

On Fri, Jul 17, 2026 at 09:59:36AM -0400, Sasha Levin wrote:
> > Folks like Greg have, in the recent past, said that it is useful even
> > without specific product-name information:
> > 
> >  https://lore.kernel.org/all/2026070227-payroll-eradicate-8f66@gregkh/
> 
> No disagreement it would help reviews, but there's no need to carry it in the
> git history after it's merged, so no reason for it to be a tag I think.
> 
> Should we move it to under the scissor line? Or move to something along the
> lines of:
> 
> 	[PATCH AI] abc: zzzz

Ew, no. :) The subject line is already super overloaded.

I can suggest putting it as a footer, same as base-commit,
prerequisite-patch-id, etc, e.g.:

| ---
| base-commit: abcd...1234
| change-id: 20260717-great-balls-of-fire-abcd1234
| assisted-by: LLM [planning, tests, codegen, tests]

I can easily put this into b4, and if we do add an AGENTS.md file, this can be
described there as well, so series created by LLMs will be more likely to
automatically carry this footer.

-K
