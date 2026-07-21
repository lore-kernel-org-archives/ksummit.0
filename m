Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC4AF471250
	for <ksummit@lists.linux.dev>; Tue, 21 Jul 2026 18:21:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784658108; cv=none; b=T1+y1C4acqFOctFfJnxjBZ96wKJu/5RoasbTCsj57u6dR1w5JOV8owBZW9Z2vHx3YnnO0OIyzInevGFFP1zRFpgOCa4+T1sae7Axcm3TssWEvCBb5OgQ0XdjYvjQO2K58Ymb5iHhm7GXwBe0aDkCR1wdmtJxGZvLNV+N3kcETRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784658108; c=relaxed/simple;
	bh=AKPSdAUxD7XM6e3wnZcduBMupCXHr01eojqf45XXJE4=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=BAo2jl3o21fXivw5RidLeAHNzhCs5EMZnNqybfiglTzazzVcKKQ/g5X6ygkuyJnqys6dxkpD43jtnORtj46YbpShxDoZc246vElplEv+UGMUHp0MjCKaqRX0hJ5RWzPQZxqYvF2r7nA3nGtk6bnxRwshKq7CafrVW2iAnuHJJpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XLZwAZFn; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XLZwAZFn"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B03EA1F00A3D;
	Tue, 21 Jul 2026 18:21:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784658106;
	bh=JtCg+exEpZFQPAFBvlBXrdMcgymNbYalJ1eXm+WyyXk=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=XLZwAZFncxMnHqj9OCABll16qodMJFZzWb/7DYBPCByMQQxse/FiJ8T4m/3luNmpb
	 Caz4vuAWqqrsahTmEfasa9FE/ggQT7U1/MP94bkLbb48tP70MZ/GONcUBpxh+HC6y0
	 Q2RzJ5SfiYrePZHMO+geZCmZNS3iFBr+iPNNUySf1YdE0KWZYfCLpsKFPCcWfF/ZFQ
	 uY71i6HbusXkbqiopq8v0YJNcI1oFgzKuAYyB6BKbYQgNKZ3duL86qTX708/elue2Y
	 JLovR94uk+7ps4hcUf5EVbaoabob2H2I3pd1q0r2uUwWor7/v7BlMtYf4jaBcrYe0i
	 eKzVXIsQVBR7A==
Date: Tue, 21 Jul 2026 20:21:43 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: "Theodore Tso" <tytso@mit.edu>
Cc: Jonathan Corbet <corbet@lwn.net>, Sasha Levin <sashal@kernel.org>,
 ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags,
 newcomers, etc
Message-ID: <20260721202143.5506c36f@foz.lan>
In-Reply-To: <20260719110103.04896f34@foz.lan>
References: <87wluv7yzc.fsf@trenco.lwn.net>
	<alj4mYFMfZvuarfx@laps>
	<87y0fa7pdm.fsf@trenco.lwn.net>
	<20260716215342.30e44c2f@foz.lan>
	<allL7jndw6R-3_8S@mit.edu>
	<20260717025812.2397d792@foz.lan>
	<almM2epxzBmN0Nb0@mit.edu>
	<20260719110103.04896f34@foz.lan>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sun, 19 Jul 2026 11:01:03 +0200
Mauro Carvalho Chehab <mchehab+huawei@kernel.org> wrote:

> On Thu, 16 Jul 2026 22:27:54 -0400
> "Theodore Tso" <tytso@mit.edu> wrote:
> 
> > I guess we could try running Sashiko using ollama-mlx on a Macbook
> > with 128GB, and see how it works, but my assumption is that the answer
> > is "not well" --- which is why I really want to look at fine-tuning
> > one of these smaller models first.  
> 
> I'm currently attempting to run Sashiko locally with ollama:
> 	https://github.com/sashiko-dev/sashiko/issues/200
> 
> It sounds that a patch is needed for it to work. I'm working on it
> at this RFC (I'm using LLM to generate Rust code):
> 
> 	https://github.com/sashiko-dev/sashiko/pull/338

Sashiko merged today the Ollama patches from my PR. It should now be
easier to test running it on your local machine for the ones that
prefer running it locally.

On my tests so far (on a cheap AMD rDNA4 GPU with 16GB VRAM), it 
doesn't take too much time to review one or two patchs (something like 
10-20 minutes per patch, using a model with thinking). 

Considering such preliminary results, that's probably not good enough
for real reviews, but, as technology advances, maybe we might have
something doable to use locally in the next few years.

I'm now running some tests on some machines I have access do do more
GPU testing. They have high end old GPUs. My main goal is to see how 
it performs there. 

The major problem I got is that those models sometimes don't produce
proper JSON output. Such errors reduced when I increased the context
and token size, but we're limited to the maximum context size that
such models accept. The models I tested had either 128k or 262k
max size. There are some open-weight models with bigger ones.
For instance, mistral3 has 393216 max. There is one model I have
at ollama (but I didn't test yet) that has 1MB max context size:

Model: Maoyue/mistral-nemo-instruct-2407:latest
-----------------------------------------------
  family: llama
  parameter_size: 12.2B
  quantization_level: Q4_K_M
  architecture: llama
  finetune: Instruct
  license: apache-2.0
  parameter_count: 12247782400
  context_length: 1024000
  model: gpt2
  modified_at: 2026-07-08
  parameters: 
        stop                           "[INST]"
        stop                           "[/INST]"
  capabilities: completion, tools

but it is gpt2, so probably not good enough.

Thanks,
Mauro
