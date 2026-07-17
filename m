Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31687384CCA
	for <ksummit@lists.linux.dev>; Fri, 17 Jul 2026 20:21:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.9.28.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784319694; cv=none; b=a59KtQeFG6Rpl5jPPZxdgutff7t6m18fU9p6d8rL7TcR2xq994ew4zu8IvSm5GKQI94ohOkgbj/cGIQtX7S1Rm3/p9oYIV0SVykdFD3dn1N36wKnwkGeKjrjunwd8iluglZBiDNOoIve8wPEzGR2iO5UP3fVCJrQ8F+EEas/mvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784319694; c=relaxed/simple;
	bh=sag3x88jp7Jrx3XBIVwbNAbCOVE3B3aPeBOQw+4tUf4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tYjnGZfZcR7VHAOrMQhOxy/sEh2RNiztTfDHLgjPbUfao4yNDlBNr74/L4A2nnBUnoV6HxoBsqkDz+RtEZ+DxHrlUYSGBFQQ2MlBszdUxarJjUxj8en9EAZ3WKZ7zMT20dN3wALmUHIxS5ASGpuE+hZahj9ufG3Bg020HEaazGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu; spf=pass smtp.mailfrom=mit.edu; dkim=pass (2048-bit key) header.d=mit.edu header.i=@mit.edu header.b=D80tWpBA; arc=none smtp.client-ip=18.9.28.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mit.edu
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mit.edu header.i=@mit.edu header.b="D80tWpBA"
Received: from macsyma.thunk.org ([151.240.45.25])
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 66HKLKh2026732
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 17 Jul 2026 16:21:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mit.edu; s=outgoing;
	t=1784319682; bh=d/cRMi7bBZ6hBrSAjjJxfbm8XQ9NCH9bh0Xuc7n5dZ0=;
	h=Date:From:Subject:Message-ID:MIME-Version:Content-Type;
	b=D80tWpBAaAUcEALDZFKN0hwh4gsO+RmaPIcMDjkq9HyX3JtDJbNHukZcT45znaSJm
	 EB6bjB0a3LJZ5DAGux1/PqPexqHgStgXdThSWC5ltD1eKPTAuRwVMVSeU1lKh/Hgzo
	 iC4bKxtnxcmklTSuu6SCVfdQbaUFeOFvUG8+bweTE6+CTbR6eL/s4D03e3joYz986R
	 UtjbLNz8o1cASJPM1WUClmW2hrwQDhSr604OOkfqB3Kud2U1h6WcCigQatXoed0LnS
	 +he0z8AEfdQ93JstBpfOfttAJDv6wOzQQF2mmEiiVjopqfv2HyCpitV1kF/9Dp5fUj
	 INEgKy/X1LgYQ==
Received: by macsyma.thunk.org (Postfix, from userid 15806)
	id AB446A6BC02; Fri, 17 Jul 2026 16:21:19 -0400 (EDT)
Date: Fri, 17 Jul 2026 16:21:19 -0400
From: "Theodore Tso" <tytso@mit.edu>
To: Konstantin Ryabitsev <mricon@kernel.org>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
        Jonathan Corbet <corbet@lwn.net>, Sasha Levin <sashal@kernel.org>,
        ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags, newcomers,
 etc
Message-ID: <alp-zVPGXg0Hub5e@mit.edu>
References: <87wluv7yzc.fsf@trenco.lwn.net>
 <alj4mYFMfZvuarfx@laps>
 <87y0fa7pdm.fsf@trenco.lwn.net>
 <20260716215342.30e44c2f@foz.lan>
 <allL7jndw6R-3_8S@mit.edu>
 <20260717-hissing-successful-rabbit-fecc0c@lemur>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260717-hissing-successful-rabbit-fecc0c@lemur>

On Fri, Jul 17, 2026 at 09:55:02AM -0500, Konstantin Ryabitsev wrote:
> I'd go so far as to say that we DON'T want to feed unfiltered LKML archives
> into the model -- we probably want to lean on the work done by the cregit
> folks to identify patch sets that were actually accepted and then work
> backwards, creating a subset of LKML that resulted in accepted contributions.

I agree that we can do better by tagging various e-mails from the LKML
archives as "this commit was rejected" or "the patch or e-mail was
ignored because it was obviously AI SLOP" or "this is a review by
someone who is known to be a bad reviewer such that maintiners have
stock e-mails explaining to new contributors that it's OK to ignore
reviews from that reviewer".

> (Not that any other AI companies are bothered with this detail, as they are
> scraping everything as fast as they can.)

Yeah, precisely.

The frontier models are trained by grabbing everything, and that's
what the kernel review prompts use.  If we use one of the smaller
models that can fit in smaller machines, those smaller models won't
have as much of the "knowledge" that was gained by the training that
was done by scraping everything, since the smaller models were created
by distilling the larger models.  Detailed knowledge about Linux kenel
would be diminished along with the distillation process --- along with
all other bits of knowledge, including internal combustion engines,
how to create meth, etc.  So we could add it back via the fine tuning
process.  More information can be found here[1].

[1] https://unsloth.ai/docs/get-started/fine-tuning-llms-guide/datasets-guide

If we do this, it's probably not the patches which are the most
interesting, it would be the review comments, since that would inform
the model about what maintainers worry about when they are reviewing
code.

Note that there are multiple kinds of fine-tuning.  One approach just
simply sends unstructured text in small chunks.  There are more
powerful ways which require a lot more structuring where we give it
instruction and answer pairs[2].

[2] https://wandb.ai/capecape/alpaca_ft/reports/How-to-Fine-Tune-an-LLM-Part-1-Preparing-a-Dataset-for-Instruction-Tuning--Vmlldzo1NTcxNzE2

So there are many different ways that we could feed data when we do
the fine tuning, and I think we'd need to experiment a bit to see what
works.

Of course, we can also do this by enhancing the prompts that we give
to the review bot, but this chews up context window space, and
information in the review prompts have to be processed for every
single patch being reviewed.  (Possibly multiple times if the review
bot using multiple passes.)

						- Ted
