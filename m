Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0239271443
	for <ksummit@lists.linux.dev>; Wed, 22 Jul 2026 09:53:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.135.223.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784713991; cv=none; b=TN4eh2BwsoRD4sAqNK2q6i20tuLcdTjq3x25oMnJvop46AcIKmrxy3UZ31cw1gqdYTuet9PACot9Ou+ZAjEcVRq21oe37RZ5JqZvSTjjvgOJLyZbxtRH2W7hD1EnLsWWkzH056yg5hEspn/t+SGS0ltb+ho3v2cRlJnXM2HprEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784713991; c=relaxed/simple;
	bh=OKB6vQqo7gVHUb0hJfvhmObr+WovRutqbq1aInNZ9wI=;
	h=Date:Message-ID:From:To:Cc:Subject:In-Reply-To:References:
	 MIME-Version:Content-Type; b=kwhSsofx4jBQO2alyfWfkIbUEr/OMG8nEzpzd+J6W3+SRtc5Y5u5hmMp1Ixc1qXTIuGhlmqbjuHtISZjoiFPCMxtvo9C87UsNKtjRcCeBpdyYxJpylIuoCYBGMR9vZPkprqV+Ws5GOvz8sTkY5H2iBvEMQst2aBY/UBxt53W2Vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=suse.de; spf=pass smtp.mailfrom=suse.de; dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b=qhApSf3n; dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b=tMh9cMLY; dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b=AQnbNnNu; dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b=u+NBVjqw; arc=none smtp.client-ip=195.135.223.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=suse.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.de
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="qhApSf3n";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="tMh9cMLY";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="AQnbNnNu";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="u+NBVjqw"
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id F23843E33;
	Wed, 22 Jul 2026 09:53:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1784713982; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=UhAPRPI/Lx7NJGwnmXEM4gsjUjbTdmBNrVbJZ5524dg=;
	b=qhApSf3nJa4Aob6KIXq2Ic8j4o8pNOwSqLGkHthXDRD4b3Rar6HdoJtVOYeAvklAO3Apac
	7YaEUcd5eAurEKDPZzeBoaCig7d1UhyfpkCFc/rAjdgjWljvxR4pLgj7L/QrEabDsEQQ5y
	Kx7eVNZrLOtKLHV8v2Z3KP5Idkt9opk=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1784713982;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=UhAPRPI/Lx7NJGwnmXEM4gsjUjbTdmBNrVbJZ5524dg=;
	b=tMh9cMLYuVGJ4Ia1M78xnX7XWxNCC5HxNJQOhD6Ts60nMziFvQ7nGo5a26KaDm6CrSP05I
	e49pGRqws++vS5AA==
Authentication-Results: smtp-out2.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1784713981; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=UhAPRPI/Lx7NJGwnmXEM4gsjUjbTdmBNrVbJZ5524dg=;
	b=AQnbNnNubxottJWx1eZt05n/r61i9pXwlp9mCxwX7phZPkxpZiSaZcRzQSgBNd1kF4Hgha
	aq0pIh8+zLLArmFtXvoAjVDVwuvaYQx2maJhaJTNNO09detGVm9tXxnpLgGM/XBqjWXAm/
	JG85UdNVLPaZ3JB+RXs8D0x42IN1EFI=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1784713981;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=UhAPRPI/Lx7NJGwnmXEM4gsjUjbTdmBNrVbJZ5524dg=;
	b=u+NBVjqwFCFivJlFXFqb3e7daVUMVf9XJSS6dNHW1MAh+Rqma2Jaj1+Jobq9ICQPFR1QNq
	fP5tW49+oe/TmgAQ==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id C7697779B0;
	Wed, 22 Jul 2026 09:53:01 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id Suh2L/2SYGoVVgAAD6G6ig
	(envelope-from <tiwai@suse.de>); Wed, 22 Jul 2026 09:53:01 +0000
Date: Wed, 22 Jul 2026 11:53:01 +0200
Message-ID: <87h5lrgxky.wl-tiwai@suse.de>
From: Takashi Iwai <tiwai@suse.de>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: Takashi Iwai <tiwai@suse.de>,
	"Theodore Tso" <tytso@mit.edu>,
	Jonathan Corbet <corbet@lwn.net>,
	Sasha
 Levin <sashal@kernel.org>,
	ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags, newcomers, etc
In-Reply-To: <20260719112924.2f97086d@foz.lan>
References: <87wluv7yzc.fsf@trenco.lwn.net>
	<alj4mYFMfZvuarfx@laps>
	<87y0fa7pdm.fsf@trenco.lwn.net>
	<20260716215342.30e44c2f@foz.lan>
	<allL7jndw6R-3_8S@mit.edu>
	<20260717025812.2397d792@foz.lan>
	<87o6g4sl6k.wl-tiwai@suse.de>
	<20260719112924.2f97086d@foz.lan>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) Emacs/30.2 Mule/6.0
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
X-Spam-Flag: NO
X-Spam-Score: -1.80
X-Spamd-Result: default: False [-1.80 / 50.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	NEURAL_HAM_SHORT(-0.20)[-1.000];
	MIME_GOOD(-0.10)[text/plain];
	TO_DN_SOME(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_RCPT(0.00)[huawei];
	RCVD_TLS_ALL(0.00)[];
	DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:email,suse.de:mid,imap1.dmz-prg2.suse.org:helo]
X-Spam-Level: 

On Sun, 19 Jul 2026 11:29:24 +0200,
Mauro Carvalho Chehab wrote:
> 
> On Sat, 18 Jul 2026 11:26:27 +0200
> Takashi Iwai <tiwai@suse.de> wrote:
> 
> > On Fri, 17 Jul 2026 02:58:12 +0200,
> > Mauro Carvalho Chehab wrote:
> > >   
> > > > So it's one say to say, we should figure out how to try to run Sashiko
> > > > on a local LLM, using open-weight models.  But it's going to be a lot
> > > > easier to propose such a thing than to actually do it.  
> > > 
> > > The main point is: do we really need 671B parameters? Those models
> > > speak a lot of different languages, have medical databases, and a lot
> > > of other random knowledge that are useless for kernel development.
> > > 
> > > I've been playing for a while with qwen 3.6 with 24KB context size,
> > > 36B parameters (3B activated), 4bits kv quantization and it does produce
> > > some decent results. The main limitation is the context size: it is
> > > probably not big enough to test big files (*)
> > > 
> > > (*) my GPU has 16GB and it is not dedicated to LLM - still, it does
> > >     present results on a reasonable time (a couple of minutes) and
> > >     with decent precision.  
> > 
> > I've been testing the kernel commit reviews with 16GB VRAM GPU, too.
> > It's an agent program based on Chris Mason's review prompts, and
> > targeted mainly for the verifications of our backport patches.  The
> > main models I tried were Qwen-3.6 35B, Gemma-4 26B and GPT-OSS 20B
> > (all 4-bit quantized).  And, my conclusion was that even such small
> > models can catch real bugs.
> > 
> > Yes, there are definitely many false-positives, and they don't always
> > follow the recent changes.  Also they cover much less changes than
> > Sashiko.  So, the results must be read with lots of grains of salt :)
> > 
> > The code review is different from the code generation, and the agent
> > divides the tasks so that the model can concentrate on each small
> > single task.  With that, small models can achieve in some level, too.
> > 
> > 
> > FWIW, the agent code is found at
> >   https://github.com/tiwai/kernel-review-agent.git
> > 
> > with HTML renderer and console viewer programs
> >   https://github.com/tiwai/review-table-gen.git
> >   https://github.com/tiwai/kreview-ui-rs.git
> 
> I just did a Sashiko review test using Ollama locally after applying 
> this PR:
> 
> 	https://github.com/sashiko-dev/sashiko/pull/338
> 
> The code was AI generated with qwen3.6 with Claude Opus reasoning
> (hf.co/rico03/Qwen3.6-27B-Claude-Opus-Reasoning-Distilled-GGUF:Q4_K_M).
> 
> I'll try to play with it a little bit to see how it works with
> real patch reviews.

Thanks!  Let me know if you can compare the review results from
different models qualitatively.  It'd be interesting.


Takashi
