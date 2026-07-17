Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEA5532F770
	for <ksummit@lists.linux.dev>; Fri, 17 Jul 2026 07:19:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784272783; cv=none; b=d+QKpyhgsWX+Yx2v2WsztAKHahg5GReEWdh/vFwrJ9Sk0j0qL7k9kCNkmjQHXcUmfC/ZShpelOp5q4M/YdemLcYfM3Qlcq/MctkN0uITS/eT6/eqASH31+4bka26Jj8K2b+ecHHfXEgYBwQ6XOVfD1IRP/dE77GzFJc4sFi10aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784272783; c=relaxed/simple;
	bh=YEsxkvb1rvTQvPRu/2xLFIcTNW3J+TnM0/lZdjo1neU=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=mCoxPsTWuNULRuc1lQi8nr4UrE9/kUgOvqgoKu0h1eUi1Dp7kozaNuTNiHIN3i16AQh8kMbRFMmOZFdTV+gwwV4zO5CbTcQEMiooH7PY53hCy0hpQ7szLjjNfO42FjfYmqyFF6XKhxtgt1f8dcsV+GX9yizXitGfIswosTp/GVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AFHkxoyz; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AFHkxoyz"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F6E81F000E9;
	Fri, 17 Jul 2026 07:19:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784272782;
	bh=rArRGQBrqy9FvKhYlGk3uNbdvmHIkzv48mYGZhZhN+k=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=AFHkxoyzTcGi5EQVamegO4bG0LqDEV2emC0iH3q6bi0QO04cFfMY2/cNTYH0aSHFi
	 fWYlLW4VyvS//WuNl4C9dmjPFOXLCULUFzgFEZnGZfZcalpmcWS00JwrceCqt8XXaz
	 LPj7+Z4p98f7DhxB7K/eHU1IzTQcgjU1GlA868wo49e6M54WYfvbzgvIwz3RL4QWIP
	 RbpcnRVOVLdnriBp1wjxtEwsNpniBjJUNdb2aIRol75PU7gFm813Ko/HT+uWGSJOYA
	 A9Cpz/jK9fjpD+atYM1ejen4xkzabogMOXBXzevc/6Qhdge00u2SNQFY5AhDelZL4g
	 atD3Ntkeeeqkg==
Date: Fri, 17 Jul 2026 09:19:38 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: "Theodore Tso" <tytso@mit.edu>
Cc: Jonathan Corbet <corbet@lwn.net>, Sasha Levin <sashal@kernel.org>,
 ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags,
 newcomers, etc
Message-ID: <20260717091938.58e30986@foz.lan>
In-Reply-To: <almM2epxzBmN0Nb0@mit.edu>
References: <87wluv7yzc.fsf@trenco.lwn.net>
	<alj4mYFMfZvuarfx@laps>
	<87y0fa7pdm.fsf@trenco.lwn.net>
	<20260716215342.30e44c2f@foz.lan>
	<allL7jndw6R-3_8S@mit.edu>
	<20260717025812.2397d792@foz.lan>
	<almM2epxzBmN0Nb0@mit.edu>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 16 Jul 2026 22:27:54 -0400
"Theodore Tso" <tytso@mit.edu> wrote:

> On Fri, Jul 17, 2026 at 02:58:12AM -0500, Mauro Carvalho Chehab wrote:
> > 
> > The main point is: do we really need 671B parameters? Those models
> > speak a lot of different languages, have medical databases, and a lot
> > of other random knowledge that are useless for kernel development.  
> 
> Fair; but I do think we need to fine-tune it with a lot LKML text so
> that it has the knowledge that we actually need for kernel development
> before I'd trust the smaller models.
> 
> > I've been playing for a while with qwen 3.6 with 24KB context size,
> > 36B parameters (3B activated), 4bits kv quantization and it does produce
> > some decent results. The main limitation is the context size: it is
> > probably not big enough to test big files (*)  
> 
> I've been playing with qwen3-next with 256k context context size, 80B
> parameters (3B activated), with 8bit quantization, but I haven't been
> willing to trust it with generating kernel code.  I have experimenting
> to see how it compares with Gemini 3.1 when creating a python script
> to send e-mail[1] or creating a bash completion script[2] for my
> fstests test appliance.

Most of my tests are also to generate ancillary python scripts too.
I did some tests using it and using chatgpt and deepseek (using a free
account). On my tests, qwen3.6 code (36B, 3B activated) had similar 
quality.

As we're aiming on patch review, we don't need a model capable of
generating kernel code. Instead, we're aiming on one that helps to
review it. A well trained model using lore may end giving similar
results.

As a quality criteria, I'd say if the simpler model would have maybe
80%-90% quality when compared with using a frontier model, it sounds
worth having it, not only for people to run locally but also as a
continuity plan if/when we end running out of free passes to run it
on server-grade GPU hardware.

> [1] https://github.com/tytso/xfstests-bld/commit/dfadb2014da446ecb967de51904ee531f7be8bd5
> [2] https://github.com/tytso/xfstests-bld/commit/dfadb2014da446ecb967de51904ee531f7be8bd5
> 
> However, from Roman tells me, Sashiko is running muliple LLM passes
> using a frontier model for each commit review.  So what Sashiko does
> is quite a bit more complicated than a series of prompts such as:
> 
>    Create a python program which submits an e-mail message using the
>    Submission Port (port 587), It should enable encryption using
>    STARTTLS and it should obtain the username and password from a
>    config.ini file.  Model the python program using the send-mail.py
>    in the sandbox directory.  It should support the same command-line
>    options but instead of sending the e-mail using sendgrid, it should
>    send the e-mail using the Submission protocol.
> 
>    Please add pydoc documentation to send-mail-smtp.py.
> 
>    Please enhance the program you just created (send-mail-smtp.py) to
>    support specifying a path to a certificate file in the
>    configuration file in case the user doesn't want to use the system
>    provided top-level trusted certificates.
> 
>    Please add support for a configuration file parameter which
>    specifies whether TLS should be mandatory, optional, or disabled.
>    Update the pydoc documentation as necessary.
> 
>    Please integrate the functionality found in send-mail.py into
>    send-mail-smtp.py.  Instead of getting the Sendgrid API key from an
>    environment variable, change it to obtain the Sendgrid API key from
>    the configuration file.  If the Sendgrid API key is specified, use
>    sendgrid instead of the SMTP submission protocol.  Update the pydoc
>    documentation strings.
> 
> .... which does work pretty well even on less capable models that I
> can run locally.
> 
> I guess we could try running Sashiko using ollama-mlx on a Macbook
> with 128GB, and see how it works, but my assumption is that the answer
> is "not well" --- which is why I really want to look at fine-tuning
> one of these smaller models first.

I agree with you: without distilling a smaller model, it may not work well. 
However, frontier models may spend a lot more tokens than small models 
for the same prompt, due to mult-step reasoning and the huge amount of
parameters, so we could have some surprise here. Sounds worth trying it.

Thanks,
Mauro
