Received: from out-186.mta1.migadu.com (out-186.mta1.migadu.com [95.215.58.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2E1F370AFC
	for <ksummit@lists.linux.dev>; Wed, 15 Jul 2026 21:37:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.186
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784151474; cv=none; b=CUWzoxXkUyQuFLZCW+0Nx4Ch34PcqxHuq9A/DuaXpaqMCSvTxWsdtjEYZ0BfS1+KF2nH52NRHTQ7xxc52H7c9AG1Kbfrjr2cspsJc6WD/i7I8ODLUDznzkLGYM2yQr2ahM+u5qOau8KKQmgb2YY0ocTfZHcv4fIJLR52EPFCUOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784151474; c=relaxed/simple;
	bh=qhbEfA6n2J37iVlSNJIaK94KEA4lr6sfKVGinDIGrJk=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=s2UFOYrO8FAckuj1rmIBNoeuhseBtLyDkJJrq7GNjHRTJx2zgMib2guaKqJfas1Bb4If48RIGfdJ1I+vuiFyLK2FtoFE9XrWbTSIPePO5ypTsVXBFbrU39TCtnWFMenU7l7hGCF9a5DlmVM4nxgGw/K9mKgVZqrKDfWyhRofkF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=jE9VOsc4; arc=none smtp.client-ip=95.215.58.186
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="jE9VOsc4"
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1784151470;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=qhbEfA6n2J37iVlSNJIaK94KEA4lr6sfKVGinDIGrJk=;
	b=jE9VOsc4iZQCvagvmcjrpX3e2IKGdIy9q6KsttdM5o9ZzO27FGqkWLEsnCD+WjkQJfdiLE
	GTdguqx+lXLNQKyKzpO4ix1KtFeRw4DqMvuRCqWDPerOraEpmp4VPcSA1M6pY0YktsdRNG
	iHZGeMPW/7/Y3LfeOhxJcvBrpXm7Udo=
From: Roman Gushchin <roman.gushchin@linux.dev>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] The place of AI code review in the Linux
 Kernel process
In-Reply-To: <CANiq72nKeDuMqWWy3ipdhOgCwUVyN5xt_MDXnu9AVbixH50PrQ@mail.gmail.com>
	(Miguel Ojeda's message of "Wed, 15 Jul 2026 19:51:33 +0200")
References: <7ia4qzl45h20.fsf@castle.c.googlers.com>
	<CANiq72nKeDuMqWWy3ipdhOgCwUVyN5xt_MDXnu9AVbixH50PrQ@mail.gmail.com>
Date: Wed, 15 Jul 2026 21:37:35 +0000
Message-ID: <7ia4ik6gx7c0.fsf@castle.c.googlers.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Migadu-Flow: FLOW_OUT

Miguel Ojeda <miguel.ojeda.sandonis@gmail.com> writes:

> On Wed, Jul 15, 2026 at 6:55=E2=80=AFPM Roman Gushchin <roman.gushchin@li=
nux.dev> wrote:
>>
>> * Review of LTS patches and kernel releases.
>
> For the backporting case, I think this could help, and there are
> certain things we could ask for, i.e. custom prompts.

+1

> It may also have less noise, in the sense that the AI has the original
> commit in mainline as a baseline, i.e. it is not a completely new
> patch of unknown quality.
>
> I imagine Sasha et al. have experience with this.
>
>> * How to maintain the long-term stability of Sashiko?
>
> How hard do you think it would be to get at least one more AI company
> to donate some tokens (for their own model)? Could that be a simple
> start to begin reducing the single-provider issue?

It's hard to say. Technically it's fairly trivial to make Sashiko using
multiple models for discovery stages 1-7 in parallel, which will almost
certainly improve the review quality. In such case models will
effectively cooperate to produce better reviews, which is our goal.

>> * Handling of pre-existing bugs.
>
> Do you mean the AI would be able to query that database? Or directly
> being part of the prompt for that subsystem/file if it is not too big?

Yes, Sashiko can query the database before reporting pre-existing
issues, e.g. if there is an obvious but not urgent pre-existing bug
there is no point to report it again and again.

Thanks!
