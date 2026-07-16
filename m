Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C45443F093
	for <ksummit@lists.linux.dev>; Thu, 16 Jul 2026 23:59:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.9.28.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784246351; cv=none; b=hGnAMp0BkWybplQs5LGkhEWWkBjPVc1aCvBFpSPFqgdiRrP/wlbnwoeayYUCkoRskJP2q0s/+mZ+y787Nq2USY1MZs+RJ6SoYcufSC/eEoi36S9oKKK6zyfdYiOl2wVlzbQ6YKaaQshkdKfH0qF4RWuYus177o9EsEn2As8RIAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784246351; c=relaxed/simple;
	bh=cJluEvY+OdPWHxNZ4vVtmiJgvPKlXH4dkGGNg40B5Jk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sUF82OelsOHdxm0hu/ZjXSgqc8iKDQzbHySlYccau5ujzQY5NQIgxuaR6WcGII3wmye0FeJcbK+B25QS6bXz3OQ7XAl9A+mcTjrFVkCqbUAmhqwWY+T1lhVN0yKdeHv98V1WY20c77WTjUGRGOkLnxbXuKenNJL5yiX1z2UE2t4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu; spf=pass smtp.mailfrom=mit.edu; dkim=pass (2048-bit key) header.d=mit.edu header.i=@mit.edu header.b=FnrT1P6L; arc=none smtp.client-ip=18.9.28.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mit.edu
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mit.edu header.i=@mit.edu header.b="FnrT1P6L"
Received: from macsyma.thunk.org ([151.240.45.27])
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 66GNx3j3001104
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 16 Jul 2026 19:59:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mit.edu; s=outgoing;
	t=1784246345; bh=VrIhAcZk5rb9QED7JC6pkEnLekhJCcl/Z9Acuo485nQ=;
	h=Date:From:Subject:Message-ID:MIME-Version:Content-Type;
	b=FnrT1P6Lfkq2TRc9MaW6snm9OgwMC5VkNeMRL8OdeKep7trcyZLWM2jMlgHHPusFL
	 qg/NSdUMBum98zvIq1dOklVAL2M17RxRl1N7BpZY/XBGTAmITkUvi7qBS+59U65UX1
	 asGNoP5ouGaiJuqfy9zkbKnKJOhqkLly3yZZVtTpjBgXfGKzMB6p5qKc700LmkngWq
	 MWptv6DARS8na+FlhSjc+C4NREUo/FivZgsCWVOUVd55mqOvhf79h83vGc0kqF52/Y
	 NkKBKhNHNL45KpW/p8fdFxovFps8QHPDe5rQ6TOjSuOYtpvzN8MtLiTKVRuQIQFWNz
	 UIUhSQZ+DnkQA==
Received: by macsyma.thunk.org (Postfix, from userid 15806)
	id D83FCA5A1BE; Thu, 16 Jul 2026 19:59:02 -0400 (EDT)
Date: Thu, 16 Jul 2026 19:59:02 -0400
From: "Theodore Tso" <tytso@mit.edu>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: Jonathan Corbet <corbet@lwn.net>, Sasha Levin <sashal@kernel.org>,
        ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags, newcomers,
 etc
Message-ID: <allL7jndw6R-3_8S@mit.edu>
References: <87wluv7yzc.fsf@trenco.lwn.net>
 <alj4mYFMfZvuarfx@laps>
 <87y0fa7pdm.fsf@trenco.lwn.net>
 <20260716215342.30e44c2f@foz.lan>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260716215342.30e44c2f@foz.lan>

On Thu, Jul 16, 2026 at 09:53:42PM -0500, Mauro Carvalho Chehab wrote:
> > What
> > will we do when the current round of corporate generosity ends and that
> > tool goes away?  Maybe I'm worrying too much, but this does seem, to me,
> > like a possibility we should keep in mind.
> 
> This is a serious concern. It sounds risky to rely on that, as there's
> no free lunch. We need to rely on something that can be managed in
> an affordable way, prioritizing models that can run on affortable GPUs
> and are open source.

This gets tricky.  We can divide ML models into a couple of
different classes:

     1. Those that can fit on a mobile phone
     2. Those that can fit on low-end developer machine (16GB-32GB
        unified memory, or 16GB of VRAM in your GPU)
     3. Those that fit in High-end developer machines (128GB unified
        memory, such as could be found in a M5 Max Macbook Pro, a DGX
        Spark, or an AMD Strix Halo)
     4. Those that fit into one or more Enterprise servers with 8 H100
        GPU's --- that is, frontier models.

Machines in category 3 run about $4k (on the low-end, without a
monitor) and go up from there.  About six weeks ago, I invested in a
M5 Max Macbook Pro with 128GB, and it set me back $6,214 USD
(including tax).  When Apple increased their prices due to the
DRAMpocalypse, for the first time, I've seen a computer *appreciate*
in value after being purchased --- by $1,400 USD.  :-)   So questions of
access equity is already an issue with machines in this category.

Machines in category 4 run around $400,000 each.  (Of course, after
the dot.COM bubble implosion, Sunfire E10K's that startups paid
$100,000 ended up selling for pennies on the dollar.  So after a
Neocloud company go out of business, maybe thse machines will be
affordable by individual developers.  However, even then your partner
might not be enthusiastic about the heat and sound from one of these
data center servers being run in your office or living room --- not to
mention the electricity bill.  :-)

Now, a H100 has 80 GB of High Bandwidth Memory (HBM) which has a
bandwidth of 2 TB/s.  So a server with 8 H100's has a 640 GB of HBM
and an aggregate bandwidth of 16 TB/s.  In contrast, a M5 Max with
128 GB and a 40-core GPU has a memory bandwidth of 614 GB/s.  (A
normal M5 Macbook Pro has 153 GB/s memory bandwidth and maxes out at
32GB.)

Running the 671 billion parameter Deepseek R1 model at full precision
requires 1.5TB of VRAM --- so two of these 8x H100 servers.  Of could
try to run them using quantization techniques, by collapsing each
parameter from 16 bits to 4 bits, or even 1 bit to reduce the size of
the ML rig required.  However, you lose a lot of accuracy when you do
that, and when models are much more prone to hallucinate when you use
the more aggressive levels of quantization.

So it's one say to say, we should figure out how to try to run Sashiko
on a local LLM, using open-weight models.  But it's going to be a lot
easier to propose such a thing than to actually do it.

What we *might* be able to try doing is to take an open-weight model
that can fit on a 128GB machine, and then fine-tuning it by feeding it
several years of LKML archives which we convniently have in public
inbox format.  This might allow us to create a specialized model which
is optimized for the Linux kernel, and it would be interesting to see
how this compares with a general frontier model.

But even if we did that, it use would be limited to those people who
can afford one of these 128GB unified memory machines or can otherwise
get access to one of these machines.

Cheers,

					- Ted
				

