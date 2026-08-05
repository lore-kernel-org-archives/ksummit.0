Received: from ms.lwn.net (ms.lwn.net [45.79.88.28])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6BD1D5CFE
	for <ksummit@lists.linux.dev>; Wed,  5 Aug 2026 23:26:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.79.88.28
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785972374; cv=none; b=bXXK2UzPawqryqGXPq1BWC1T8I9uxIfT4eCQDomRY3wybKdCAA80K/J0cUS+FXSG1lNhreO56I+BzEjoyrPceRiB9Unwx8wgUedKqKli2uY6MW+UE2PcZ++5sYsSs8d5g+ejM0Y3Y4sP489CsuNsiOF7OBF5T5BNo5e2yKcDsZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785972374; c=relaxed/simple;
	bh=0+Wfokj+NTEvZE+iHgpvh1TkoFYU3kh4drJnGPzSrMM=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=Hy12qDASgYVkYpRpbru8TIBgsnDcRFfF1ObSc4XOhQNDkLwbzuLpgGRBGQeEtsY0CGExCyw2sQ5f94DAyLA4qqw42M/V419nGX8NBqJ/N09XW4ZCd6eiqZOev+c0TqtMBmsjtXpo5F30gMPzJMHS0dBhgVXigix6GXZo+YDUW5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lwn.net; spf=pass smtp.mailfrom=lwn.net; dkim=pass (2048-bit key) header.d=lwn.net header.i=@lwn.net header.b=dFLk9vCm; arc=none smtp.client-ip=45.79.88.28
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lwn.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lwn.net
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lwn.net header.i=@lwn.net header.b="dFLk9vCm"
DKIM-Filter: OpenDKIM Filter v2.11.0 ms.lwn.net 10505408DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lwn.net; s=20201203;
	t=1785972372; bh=8x2aa9qHlge55kaSjSSBq5OMojlrkXVXbgPNH335vaU=;
	h=From:To:Subject:Date:From;
	b=dFLk9vCmfoc2IzgzHH4gO1tpWaEpf3zVu56BYhvVqHMklKikGdp94HmmKHNy2aenX
	 IIjipIlaDs41joCrL7xGjUP+Poj9+JJ2BF++ZoxYfrG6RcCIudbjqx84s8X9M9dxSv
	 /rxcoDzbvQppaSfvouGsMbuBGCvRyyuXO9OdzLtN1BRkLboPrSvFiDrc04clTgNsEH
	 6ruQaJQLjlHlKWahreQbwTelorhtqdb/B69yNo7vC2llmyaLbXnjzK5GH2tfx17Hxv
	 0UbxjxYPDgwqpTXonWFMyXs9yCfjDRt8bpVeeadCVHcJeqDhCmUvtoACRvBoA4fshc
	 zWm9sZeSRQjIw==
Received: from localhost (unknown [IPv6:2601:280:4600:27b::1fe])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by ms.lwn.net (Postfix) with ESMTPSA id 10505408DA
	for <ksummit@lists.linux.dev>; Wed,  5 Aug 2026 23:26:12 +0000 (UTC)
From: Jonathan Corbet <corbet@lwn.net>
To: ksummit@lists.linux.dev
Subject: [MAINTAINERS SUMMIT] Coping with the new-developer flood
Date: Wed, 05 Aug 2026 17:26:11 -0600
Message-ID: <87y0ekm9nw.fsf@trenco.lwn.net>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain

This topic came to mind after a rather unsatisfying exchange with a
would-be contributor today.

The 7.1 kernel included work from 530 first-time contributors.  That was
a record - but a short-lived one.  As of -rc6, 7.2 has merged patches
from 565 first-time folks.  A regression to the long-term mean (2-300)
seems unlikely in the near future.

A flood of new contributors may be a high-quality problem, but it still
can be a problem.  We have folks coming in who are unaware of our ways,
are often LLM-driven (without disclosing it), and who may have
objectives that are not entirely compatible with ours.  Maintainers end
up having to educate these people; that is part of a maintainer's job,
but an increase in that work doesn't help people who are already feeling
overwhelmed.

Do we need some sort of more organized onboarding structure and, if so,
are we able to create and sustain it?

At a minimum, one could imagine a bot that notices a patch posted by
somebody who has not been seen before and responds with a "Welcome!
Here's how we do things here" email.  In a better-funded world, we could
consider setting up a small group of folks who reach out to first-time
people, help them to get their work in order, and ensure that they are
connected to the right maintainer.  Note that, for 7.2, the rate of
first-time people is running at about ten per day, so this isn't really
a task for a part-time volunteer.

Improving our handling of new contributors has the potential to turn
more of them into regular, useful contributors while reducing the
training load on maintainers.  But, as can be seen here, I don't have a
lot of great ideas for how to do that.  Maybe others are more
imaginative?

jon
