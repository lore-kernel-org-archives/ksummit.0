Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC943191D3
	for <ksummit@lists.linux.dev>; Sat, 18 Jul 2026 09:26:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.135.223.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784366797; cv=none; b=tgFOOmu6OehenirIi2fC3ZCH34oRMQ5A+kqj2G7BO51I03knvIuCAv/qdkO6dMaji71t28aHCRSWH+t4eqzAys57TKI+yH2CU2c469QcsGX46viqcrakj3urbJQaYEBv54ZY9sq/tt6jrfQipFvtz1kzdDQyXsOcTNo5WTMn56w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784366797; c=relaxed/simple;
	bh=wf32g9/tCJ7ggfQCAYAAgGBHn1VVVvG6A5G5nwSVyuM=;
	h=Date:Message-ID:From:To:Cc:Subject:In-Reply-To:References:
	 MIME-Version:Content-Type; b=LEMyqSCVmaeDw6pd9KGZY85mbsWOTLBEXhKdqibXaT8LTNZ4O2yzlFzETkZpZfPgPiQz7Zx/B7khOwMZlgOWBytFMtO9oG+HRFURpRGT4GUl1RbaeR/yXk8ssURiTjxqPifiaNaAxhJHz4A6SAy+yeRmKDjuufrBDi1pW8+jUL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=suse.de; spf=pass smtp.mailfrom=suse.de; dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b=q8cgmEFk; dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b=gnr/d4WG; dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b=q8cgmEFk; dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b=gnr/d4WG; arc=none smtp.client-ip=195.135.223.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=suse.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.de
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="q8cgmEFk";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="gnr/d4WG";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="q8cgmEFk";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="gnr/d4WG"
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 4E3AE79383;
	Sat, 18 Jul 2026 09:26:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1784366788; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=F2JCxJgva8Bi5agn7vTmOdJkdBP3e9pI+Ki5kWyZm/c=;
	b=q8cgmEFkjElZ+qTxoF9LdtmTYSQQ5MKT157sqfv7cHXQC+qbpKjZdPM0g/W+R9DCozELqf
	A4HVmN+mjfkaTKtfs4FMCGILlN82MRIoqZ+t/Kx8H/Jxd+tk0oxCS0fAgwhVW8kjv1XLmr
	ZBfkuDpfqYf7VlsfpKWfXP4s3WTCbPI=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1784366788;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=F2JCxJgva8Bi5agn7vTmOdJkdBP3e9pI+Ki5kWyZm/c=;
	b=gnr/d4WGgoM0v0NCshfnI8kPL0jfAjbTYv23cgJeaRfYhXeBKn2LXdVoqP+UZvGHsUX4Tw
	xeqVh4ACKOlqxJCw==
Authentication-Results: smtp-out1.suse.de;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=q8cgmEFk;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b="gnr/d4WG"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1784366788; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=F2JCxJgva8Bi5agn7vTmOdJkdBP3e9pI+Ki5kWyZm/c=;
	b=q8cgmEFkjElZ+qTxoF9LdtmTYSQQ5MKT157sqfv7cHXQC+qbpKjZdPM0g/W+R9DCozELqf
	A4HVmN+mjfkaTKtfs4FMCGILlN82MRIoqZ+t/Kx8H/Jxd+tk0oxCS0fAgwhVW8kjv1XLmr
	ZBfkuDpfqYf7VlsfpKWfXP4s3WTCbPI=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1784366788;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=F2JCxJgva8Bi5agn7vTmOdJkdBP3e9pI+Ki5kWyZm/c=;
	b=gnr/d4WGgoM0v0NCshfnI8kPL0jfAjbTYv23cgJeaRfYhXeBKn2LXdVoqP+UZvGHsUX4Tw
	xeqVh4ACKOlqxJCw==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 223BB779AA;
	Sat, 18 Jul 2026 09:26:28 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id gMuABsRGW2p6RQAAD6G6ig
	(envelope-from <tiwai@suse.de>); Sat, 18 Jul 2026 09:26:28 +0000
Date: Sat, 18 Jul 2026 11:26:27 +0200
Message-ID: <87o6g4sl6k.wl-tiwai@suse.de>
From: Takashi Iwai <tiwai@suse.de>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: "Theodore Tso" <tytso@mit.edu>,
	Jonathan Corbet <corbet@lwn.net>,
	Sasha Levin <sashal@kernel.org>,
	ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags, newcomers, etc
In-Reply-To: <20260717025812.2397d792@foz.lan>
References: <87wluv7yzc.fsf@trenco.lwn.net>
	<alj4mYFMfZvuarfx@laps>
	<87y0fa7pdm.fsf@trenco.lwn.net>
	<20260716215342.30e44c2f@foz.lan>
	<allL7jndw6R-3_8S@mit.edu>
	<20260717025812.2397d792@foz.lan>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) Emacs/30.2 Mule/6.0
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
X-Spam-Flag: NO
X-Rspamd-Action: no action
X-Spam-Level: 
X-Spamd-Result: default: False [-2.01 / 50.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	NEURAL_HAM_SHORT(-0.20)[-1.000];
	MIME_GOOD(-0.10)[text/plain];
	MX_GOOD(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[huawei];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	ARC_NA(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:mid,suse.de:dkim];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	DKIM_TRACE(0.00)[suse.de:+]
X-Rspamd-Server: rspamd2.dmz-prg2.suse.org
X-Rspamd-Queue-Id: 4E3AE79383
X-Spam-Score: -2.01

On Fri, 17 Jul 2026 02:58:12 +0200,
Mauro Carvalho Chehab wrote:
> 
> > So it's one say to say, we should figure out how to try to run Sashiko
> > on a local LLM, using open-weight models.  But it's going to be a lot
> > easier to propose such a thing than to actually do it.
> 
> The main point is: do we really need 671B parameters? Those models
> speak a lot of different languages, have medical databases, and a lot
> of other random knowledge that are useless for kernel development.
> 
> I've been playing for a while with qwen 3.6 with 24KB context size,
> 36B parameters (3B activated), 4bits kv quantization and it does produce
> some decent results. The main limitation is the context size: it is
> probably not big enough to test big files (*)
> 
> (*) my GPU has 16GB and it is not dedicated to LLM - still, it does
>     present results on a reasonable time (a couple of minutes) and
>     with decent precision.

I've been testing the kernel commit reviews with 16GB VRAM GPU, too.
It's an agent program based on Chris Mason's review prompts, and
targeted mainly for the verifications of our backport patches.  The
main models I tried were Qwen-3.6 35B, Gemma-4 26B and GPT-OSS 20B
(all 4-bit quantized).  And, my conclusion was that even such small
models can catch real bugs.

Yes, there are definitely many false-positives, and they don't always
follow the recent changes.  Also they cover much less changes than
Sashiko.  So, the results must be read with lots of grains of salt :)

The code review is different from the code generation, and the agent
divides the tasks so that the model can concentrate on each small
single task.  With that, small models can achieve in some level, too.


FWIW, the agent code is found at
  https://github.com/tiwai/kernel-review-agent.git

with HTML renderer and console viewer programs
  https://github.com/tiwai/review-table-gen.git
  https://github.com/tiwai/kreview-ui-rs.git


Takashi
