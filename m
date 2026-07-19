Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6422ECD32
	for <ksummit@lists.linux.dev>; Sun, 19 Jul 2026 09:01:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784451669; cv=none; b=NAnpWAcfwW5kpa8o9onb2DU0sHFBZ1JBQwtCrugRqq7voBAFWKKa3DgQt+WwnzzsHE344CpYMsyhPROEQfc7td+OYZ6i22U/1x9pR/VB1DKUhO0E982r2fW6ZwpMYuyg3DYLHHzJ3olPvNULLmy44tKMXRhToBkP38jHsKUhnrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784451669; c=relaxed/simple;
	bh=Y1SDFiJLy/QsqKD1RJ/WPlZItt/SDSqk5WIc0Tx7ZtU=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Yrw0rfUQo6Dr9/ksWeZZPEnd1qJVZiPSOGokNnPS9Zzn7PE/R48AR8sH9Hj0IrMA2LDJ/q/mIoYqon0tq8hKkNiP+HDVbLEYSQBExMRT4YQpW5qj9lCzA67cSI6lQk5nesDsiNhW8L3Kw+PzFzkhGnf6pdXcolUZO7ra9FSFunQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oI0IXUUA; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oI0IXUUA"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C44D81F000E9;
	Sun, 19 Jul 2026 09:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784451667;
	bh=VRIo8d3okFPriXQdKNmT21lEuL3nSpZx3Pl16CIExQ0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=oI0IXUUA4PpGZzKtMrsl+OGj7ePs54zF/sGK/41OyAC6bT+Pu4I+wW2HNG6WxV05W
	 +PrOd0qC9oGbXrq94S8iaEIwmTGXf7mrlxidiClunOy4VRlWMjx5BpR98GTI1BXgoG
	 7HZcigdIio8KV6l4ul6WZumAVC7LgF/RZZ4UWTXtjoMHPHZAvqsoN6i9WeTI4TZBap
	 mNgqLt4VR6vGUgnUeceHXbvtErGkoHlpnDHnsZvkcDrPU2/5r2FnsuRopVFHdvGuVV
	 YMHK+rwGuW6piv4Ui4CtugO3nA2cNqmP4QSlmNA+V7kxZo1UjhFOOhKQn1ppg/br7H
	 gDMfCccW6xA7Q==
Date: Sun, 19 Jul 2026 11:01:03 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: "Theodore Tso" <tytso@mit.edu>
Cc: Jonathan Corbet <corbet@lwn.net>, Sasha Levin <sashal@kernel.org>,
 ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags,
 newcomers, etc
Message-ID: <20260719110103.04896f34@foz.lan>
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

> I guess we could try running Sashiko using ollama-mlx on a Macbook
> with 128GB, and see how it works, but my assumption is that the answer
> is "not well" --- which is why I really want to look at fine-tuning
> one of these smaller models first.

I'm currently attempting to run Sashiko locally with ollama:
	https://github.com/sashiko-dev/sashiko/issues/200

It sounds that a patch is needed for it to work. I'm working on it
at this RFC (I'm using LLM to generate Rust code):

	https://github.com/sashiko-dev/sashiko/pull/338

Thanks,
Mauro
