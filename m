Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487C0335BA
	for <ksummit@lists.linux.dev>; Sat, 18 Jul 2026 12:55:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784379304; cv=none; b=VUmzizoJnyLdjUcyebVpQiy2Lm5F4es9uNuXMERkXkJgLgm1oqUIpCDBikum8I5txGWzMIxBRkG3aZQ6NGY2mPzBYeAQRWq/ATwYpBeEoOUu5EEYlxUK8qdEnIurqMWjCQhfjxhj4d72zuuT28AD/91ZdfclbMVMWsdV7hREwL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784379304; c=relaxed/simple;
	bh=x2/RzC7jn2popOrjkjHhQFKB5uyQSQhr5WBjTIhJRpU=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=AWKUEwXVT4+TblN6HB2Skhkf1FyuQ+4IAu+mJN0BxJgSWksIxgtSByoT9ZUhljqO3ZIzZSiWhJN8aJRIzblmu7el1OSaJNLyRntPai9nbJvdp6gJxKP2kX/Tq94SI3E9jU3n/+qeY9cpg8zRej0t0W3HCMHsfxq7G47qiepzUiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FFZYX2vN; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FFZYX2vN"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 880491F000E9;
	Sat, 18 Jul 2026 12:55:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784379302;
	bh=IL7k6NdODbmLmuE1ejLlqj5W22ZXi5Xdh40mrvknoRU=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=FFZYX2vNiX8kzwGdCCONoJUgWBRQHtGUm/tdBMO82gzxo3L2WtmpbrA4WbKixGeVl
	 IIz3W9cedkxeecWxvLnyIUexLeJt02T+WEE6TsG+weYT3W86V/y6fsaQwfWhMh6iiA
	 ZM6DoIXrzfksLXlZXWvUTQXs4CRLf6Ayk2S9KNI5P1JsDj17E1yh8sv7imJHGLlDwj
	 hw66bgwcj+SvaCoMOZZIeyGR4WseH8maEL4YJNSqaOf3s4YY8P6kd0XQGyeLwORY6a
	 +F0DJuc5QCyQ3OV9Jigf0W0vg/Ibsw8+wz2hCCQXtVSgzDFoLM2PLfxFQNbbulp+8U
	 3Az0DGIywZvxg==
Date: Sat, 18 Jul 2026 14:54:58 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: "Theodore Tso" <tytso@mit.edu>
Cc: Konstantin Ryabitsev <mricon@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Sasha Levin <sashal@kernel.org>, ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags,
 newcomers, etc
Message-ID: <20260718145458.09710e0f@foz.lan>
In-Reply-To: <alp-zVPGXg0Hub5e@mit.edu>
References: <87wluv7yzc.fsf@trenco.lwn.net>
	<alj4mYFMfZvuarfx@laps>
	<87y0fa7pdm.fsf@trenco.lwn.net>
	<20260716215342.30e44c2f@foz.lan>
	<allL7jndw6R-3_8S@mit.edu>
	<20260717-hissing-successful-rabbit-fecc0c@lemur>
	<alp-zVPGXg0Hub5e@mit.edu>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 17 Jul 2026 16:21:19 -0400
"Theodore Tso" <tytso@mit.edu> wrote:

> On Fri, Jul 17, 2026 at 09:55:02AM -0500, Konstantin Ryabitsev wrote:
> > I'd go so far as to say that we DON'T want to feed unfiltered LKML archives
> > into the model -- we probably want to lean on the work done by the cregit
> > folks to identify patch sets that were actually accepted and then work
> > backwards, creating a subset of LKML that resulted in accepted contributions.  
> 
> I agree that we can do better by tagging various e-mails from the LKML
> archives as "this commit was rejected" or "the patch or e-mail was
> ignored because it was obviously AI SLOP" or "this is a review by
> someone who is known to be a bad reviewer such that maintiners have
> stock e-mails explaining to new contributors that it's OK to ignore
> reviews from that reviewer".
> 
> > (Not that any other AI companies are bothered with this detail, as they are
> > scraping everything as fast as they can.)  
> 
> Yeah, precisely.
> 
> The frontier models are trained by grabbing everything, and that's
> what the kernel review prompts use.  If we use one of the smaller
> models that can fit in smaller machines, those smaller models won't
> have as much of the "knowledge" that was gained by the training that
> was done by scraping everything, since the smaller models were created
> by distilling the larger models.  Detailed knowledge about Linux kenel
> would be diminished along with the distillation process --- along with
> all other bits of knowledge, including internal combustion engines,
> how to create meth, etc.  So we could add it back via the fine tuning
> process.  More information can be found here[1].
> 
> [1] https://unsloth.ai/docs/get-started/fine-tuning-llms-guide/datasets-guide
> 
> If we do this, it's probably not the patches which are the most
> interesting, it would be the review comments, since that would inform
> the model about what maintainers worry about when they are reviewing
> code.
> 
> Note that there are multiple kinds of fine-tuning.  One approach just
> simply sends unstructured text in small chunks.  There are more
> powerful ways which require a lot more structuring where we give it
> instruction and answer pairs[2].
> 
> [2] https://wandb.ai/capecape/alpaca_ft/reports/How-to-Fine-Tune-an-LLM-Part-1-Preparing-a-Dataset-for-Instruction-Tuning--Vmlldzo1NTcxNzE2
> 
> So there are many different ways that we could feed data when we do
> the fine tuning, and I think we'd need to experiment a bit to see what
> works.

As the models it current using are just picking everything, if the
distilled model is fine-tuned with unstructured text, I would expect
a similar result to what Sashiko currently produces.

Sure if someone or some code could manually weight multiple patch
series version with their merge status and reviews, the trained
model will probably work better.

As models are usually trained multiple times with the same database,
perhaps we can start with unfiltered lore data.


Thanks,
Mauro
