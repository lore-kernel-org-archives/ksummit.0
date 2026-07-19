Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C9613806D7
	for <ksummit@lists.linux.dev>; Sun, 19 Jul 2026 09:29:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784453369; cv=none; b=gO/5Cxhx1sudCoLWquZHn3Mhk0fJeRAvOIbNW5UFYb3iNCRIIpS6fKoUhj4kV0zqtbZ3YQd77V8CaNTWsiPAW3tU5C4DfsQ3f0AMSsPXDgjwxgyOAroqdmfoOesB8eQE0oLtjY+SA0u/ynJkCMHQgpeVLthXsQ/tKkqhVnByppQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784453369; c=relaxed/simple;
	bh=oGJNIWxTbX5ihoGmLkYQhj5MjU0ZPuNokelE6vz4I1g=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=hvflWk8Kuoy1x7NicueIVowAZ/IWYXIvklZbOYKw+WYOGSoFQhFmRqnMZifszJlNmeOA1vSaOS8BsHWfGmiFvWvig/hXa1VPCqm2okngRHQEgpyhNJm8oDy1KdclngErWJIpZanJZAtwK0ddLGiP4AzNSU+baqQwqrUFwggHoN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OIM4G2AE; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OIM4G2AE"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D64E71F000E9;
	Sun, 19 Jul 2026 09:29:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784453368;
	bh=yQvDnpQXXI5HL3qx8Nmd1brL7/ndpo75SOCARF1f1gg=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=OIM4G2AEb3LJvjjeBFfrxJtQ32vErDiezrWAzpuxvdMPk7fwbf4wIQ+ZasWQMvMgP
	 8brlZ0ijnr58tPVKNaKqTWz8rt6Hj5lbc5W1hmglstdqwRt6XUVG1HnGRKgTq87a0h
	 3yryytbCGU0Z7U+ekP4rVxlTfCe1kg806cUFnCsRbYpqtQRMTyEh5BvTUwxO2mAqtT
	 ObBg73lf5nf/gZHRKCbrIgygTZgZbsZAPg24AghZ6TgAJs4iFZbL6ECodDrfOieNKH
	 zJJxMfnAKu0eQ8r2x/KWiz6uWARg5t21xjH88kXd2sll8Bj8Of89uxEsxRR3RP2dCg
	 Qpq9crE3FH1wQ==
Date: Sun, 19 Jul 2026 11:29:24 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Takashi Iwai <tiwai@suse.de>
Cc: "Theodore Tso" <tytso@mit.edu>, Jonathan Corbet <corbet@lwn.net>, Sasha
 Levin <sashal@kernel.org>, ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags,
 newcomers, etc
Message-ID: <20260719112924.2f97086d@foz.lan>
In-Reply-To: <87o6g4sl6k.wl-tiwai@suse.de>
References: <87wluv7yzc.fsf@trenco.lwn.net>
	<alj4mYFMfZvuarfx@laps>
	<87y0fa7pdm.fsf@trenco.lwn.net>
	<20260716215342.30e44c2f@foz.lan>
	<allL7jndw6R-3_8S@mit.edu>
	<20260717025812.2397d792@foz.lan>
	<87o6g4sl6k.wl-tiwai@suse.de>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sat, 18 Jul 2026 11:26:27 +0200
Takashi Iwai <tiwai@suse.de> wrote:

> On Fri, 17 Jul 2026 02:58:12 +0200,
> Mauro Carvalho Chehab wrote:
> >   
> > > So it's one say to say, we should figure out how to try to run Sashiko
> > > on a local LLM, using open-weight models.  But it's going to be a lot
> > > easier to propose such a thing than to actually do it.  
> > 
> > The main point is: do we really need 671B parameters? Those models
> > speak a lot of different languages, have medical databases, and a lot
> > of other random knowledge that are useless for kernel development.
> > 
> > I've been playing for a while with qwen 3.6 with 24KB context size,
> > 36B parameters (3B activated), 4bits kv quantization and it does produce
> > some decent results. The main limitation is the context size: it is
> > probably not big enough to test big files (*)
> > 
> > (*) my GPU has 16GB and it is not dedicated to LLM - still, it does
> >     present results on a reasonable time (a couple of minutes) and
> >     with decent precision.  
> 
> I've been testing the kernel commit reviews with 16GB VRAM GPU, too.
> It's an agent program based on Chris Mason's review prompts, and
> targeted mainly for the verifications of our backport patches.  The
> main models I tried were Qwen-3.6 35B, Gemma-4 26B and GPT-OSS 20B
> (all 4-bit quantized).  And, my conclusion was that even such small
> models can catch real bugs.
> 
> Yes, there are definitely many false-positives, and they don't always
> follow the recent changes.  Also they cover much less changes than
> Sashiko.  So, the results must be read with lots of grains of salt :)
> 
> The code review is different from the code generation, and the agent
> divides the tasks so that the model can concentrate on each small
> single task.  With that, small models can achieve in some level, too.
> 
> 
> FWIW, the agent code is found at
>   https://github.com/tiwai/kernel-review-agent.git
> 
> with HTML renderer and console viewer programs
>   https://github.com/tiwai/review-table-gen.git
>   https://github.com/tiwai/kreview-ui-rs.git

I just did a Sashiko review test using Ollama locally after applying 
this PR:

	https://github.com/sashiko-dev/sashiko/pull/338

The code was AI generated with qwen3.6 with Claude Opus reasoning
(hf.co/rico03/Qwen3.6-27B-Claude-Opus-Reasoning-Distilled-GGUF:Q4_K_M).

I'll try to play with it a little bit to see how it works with
real patch reviews.

Thanks,
Mauro
