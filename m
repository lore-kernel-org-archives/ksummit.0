Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8C3A21D3E8
	for <ksummit@lists.linux.dev>; Fri, 17 Jul 2026 00:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784249897; cv=none; b=V/gfUKb4DPcPdAo34lY1SSQJwGz08Sogx21CZpFG4fMWctq2FxiAgQmGllWQ+f3eFDz3mH6VyPr0eIvhwtd4ZyKnnbAeh/oih/8kxhK9GR8B4YYUOffrXvKhzKXK72XSD7EX06ixgEr+MUuPOHfjJz4kwlEDx1CYGtJjWJ48DOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784249897; c=relaxed/simple;
	bh=4D4QOcL38OwiNnETDKxe8jZ5Gp+OrXTrOJaSNgXJDdw=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=muBVwjoJC/cWnS6PcJsPWpi4ASydNYm3uovnxF2gu3JEfbLEpbf5QMJBiG3tpZxV27UbjWbEj6udKwxPDg7uwYeDu1hrT1Cj1ArtolIvm//a4XO1l9bCXKbhHj/xqepsH8UlUQR3R2Tjsl8LZa2Hlc8kEX2ahDgZzvdMzNLTQmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BMy4AWmg; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BMy4AWmg"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4DEFD1F000E9;
	Fri, 17 Jul 2026 00:58:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784249896;
	bh=JU1k6OUo4+wt5r6U8WU2JWJMRCnacifgI5j0k6hy0M0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=BMy4AWmg5oafKsNuLScjViyWsbzqSdfh78+UDR/SnWh9EHKwawGn/HaujjCpnFiQW
	 +gJxKjOmTJSpDgyoLLthwWevpX9iWEQRXMPVfA5uB+D1nLPF9/a0FJ2x7KJSub7f4d
	 XhvGKkXP/8zt+NXP7kgGfGmnnh+V6Wu7xQLx1TZPDYHaVsAa1Lv921Mr0Ls7zye043
	 DrkB180Gpfmd96CQZLpN8LBSMZEdpunvPa1R5jDThS3N+kL9QhE47uKtnZS/5nkLlf
	 Z/kTfW70zLVFV7JUQ1kiLLltHDDXIsTxeIFP8Nl+b15sOzLrsmnZ20PQsatoIONfO2
	 2UdlGdGSyKCiw==
Date: Fri, 17 Jul 2026 02:58:12 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: "Theodore Tso" <tytso@mit.edu>
Cc: Jonathan Corbet <corbet@lwn.net>, Sasha Levin <sashal@kernel.org>,
 ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags,
 newcomers, etc
Message-ID: <20260717025812.2397d792@foz.lan>
In-Reply-To: <allL7jndw6R-3_8S@mit.edu>
References: <87wluv7yzc.fsf@trenco.lwn.net>
	<alj4mYFMfZvuarfx@laps>
	<87y0fa7pdm.fsf@trenco.lwn.net>
	<20260716215342.30e44c2f@foz.lan>
	<allL7jndw6R-3_8S@mit.edu>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 16 Jul 2026 19:59:02 -0400
"Theodore Tso" <tytso@mit.edu> wrote:

> On Thu, Jul 16, 2026 at 09:53:42PM -0500, Mauro Carvalho Chehab wrote:
> > > What
> > > will we do when the current round of corporate generosity ends and that
> > > tool goes away?  Maybe I'm worrying too much, but this does seem, to me,
> > > like a possibility we should keep in mind.  
> > 
> > This is a serious concern. It sounds risky to rely on that, as there's
> > no free lunch. We need to rely on something that can be managed in
> > an affordable way, prioritizing models that can run on affortable GPUs
> > and are open source.  
> 
> This gets tricky.  We can divide ML models into a couple of
> different classes:
> 
>      1. Those that can fit on a mobile phone
>      2. Those that can fit on low-end developer machine (16GB-32GB
>         unified memory, or 16GB of VRAM in your GPU)
>      3. Those that fit in High-end developer machines (128GB unified
>         memory, such as could be found in a M5 Max Macbook Pro, a DGX
>         Spark, or an AMD Strix Halo)
>      4. Those that fit into one or more Enterprise servers with 8 H100
>         GPU's --- that is, frontier models.
> 
> Machines in category 3 run about $4k (on the low-end, without a
> monitor) and go up from there.  About six weeks ago, I invested in a
> M5 Max Macbook Pro with 128GB, and it set me back $6,214 USD
> (including tax).  When Apple increased their prices due to the
> DRAMpocalypse, for the first time, I've seen a computer *appreciate*
> in value after being purchased --- by $1,400 USD.  :-)   So questions of
> access equity is already an issue with machines in this category.

I'd say the best would be to aim on (3) and (4). Not as powerful
as H100 GPUs, but it may end work.

> Machines in category 4 run around $400,000 each.  (Of course, after
> the dot.COM bubble implosion, Sunfire E10K's that startups paid
> $100,000 ended up selling for pennies on the dollar.  So after a
> Neocloud company go out of business, maybe thse machines will be
> affordable by individual developers.  However, even then your partner
> might not be enthusiastic about the heat and sound from one of these
> data center servers being run in your office or living room --- not to
> mention the electricity bill.  :-)

Those are really noisy. I don't think it is realistic to use it.
Maybe there is an alternative, but I've no idea about how it
actually works: having multiple machines sharing the same model.
I heard some people using DGX Spark and AMD Strix Halo on such
configurations, but I suspect that performance would seriously
drop.

> Now, a H100 has 80 GB of High Bandwidth Memory (HBM) which has a
> bandwidth of 2 TB/s.  So a server with 8 H100's has a 640 GB of HBM
> and an aggregate bandwidth of 16 TB/s.  In contrast, a M5 Max with
> 128 GB and a 40-core GPU has a memory bandwidth of 614 GB/s.  (A
> normal M5 Macbook Pro has 153 GB/s memory bandwidth and maxes out at
> 32GB.)
> 
> Running the 671 billion parameter Deepseek R1 model at full precision
> requires 1.5TB of VRAM --- so two of these 8x H100 servers.  Of could
> try to run them using quantization techniques, by collapsing each
> parameter from 16 bits to 4 bits, or even 1 bit to reduce the size of
> the ML rig required.  However, you lose a lot of accuracy when you do
> that, and when models are much more prone to hallucinate when you use
> the more aggressive levels of quantization.

There are kv-algorithms that provide a good compromise, like turbo-quant.
the precision is still good with 4 or 3 bits.

> So it's one say to say, we should figure out how to try to run Sashiko
> on a local LLM, using open-weight models.  But it's going to be a lot
> easier to propose such a thing than to actually do it.

The main point is: do we really need 671B parameters? Those models
speak a lot of different languages, have medical databases, and a lot
of other random knowledge that are useless for kernel development.

I've been playing for a while with qwen 3.6 with 24KB context size,
36B parameters (3B activated), 4bits kv quantization and it does produce
some decent results. The main limitation is the context size: it is
probably not big enough to test big files (*)

(*) my GPU has 16GB and it is not dedicated to LLM - still, it does
    present results on a reasonable time (a couple of minutes) and
    with decent precision.

Sure, while we have free tokens for sashiko, we can afford using
bigger models, but at the same time we should invest some effort
to make it viable on smaller models as well.

> What we *might* be able to try doing is to take an open-weight model
> that can fit on a 128GB machine, and then fine-tuning it by feeding it
> several years of LKML archives which we convniently have in public
> inbox format.  This might allow us to create a specialized model which
> is optimized for the Linux kernel, and it would be interesting to see
> how this compares with a general frontier model.
> 
> But even if we did that, it use would be limited to those people who
> can afford one of these 128GB unified memory machines or can otherwise
> get access to one of these machines.

I think we should aim on training an open-wight model up to 36B parameters
with 3-4B parameters activated. Those will run easily on 64B unified 
memory even with a big context and may still work on machines with
16GB or with 32GB VRAM GPU (with partial CPU offload - specially
with 16GB).

Thanks,
Mauro
