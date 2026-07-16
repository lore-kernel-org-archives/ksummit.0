Received: from ms.lwn.net (ms.lwn.net [45.79.88.28])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 989BD3ACA4C
	for <ksummit@lists.linux.dev>; Thu, 16 Jul 2026 15:09:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.79.88.28
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784214571; cv=none; b=h8KuirBG4tqvBK/SuH9+5iUW2TVIL1j9kSFVMOOwGg66hP1CDLreytQYHohWz1OWhGh09/pV+5u6UK1bUCp868UL+IMXXx83xF19H096pMQZFIfcjpXCwrHolfKTrvvQENBvMioAg1DqhtOt0A6sPK1KY8j5X8VjlXcWqX6fOLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784214571; c=relaxed/simple;
	bh=/QIM4/gmpAhZsIbFx1IbB9ShcPyTIxspCfDA5FBDT00=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=Q/0+rvpfk6w9tFpQqAPTFzyFzwMf8UlJVkREpJmxXuIPBL+1L3mKlJGTHR7GgkAzQEYF4kB6iPBqhGRoU42F7zkjRk+0eQglRbABp5RkmYkJVf/ttqNH6xpAPTNUtDg/NwHRLlVTQ5Nh0Pu3uHFuhSiZP6qLftiDI3j2Kji7mi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lwn.net; spf=pass smtp.mailfrom=lwn.net; dkim=pass (2048-bit key) header.d=lwn.net header.i=@lwn.net header.b=QhFdZOwL; arc=none smtp.client-ip=45.79.88.28
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lwn.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lwn.net
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lwn.net header.i=@lwn.net header.b="QhFdZOwL"
DKIM-Filter: OpenDKIM Filter v2.11.0 ms.lwn.net 4926C40430
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lwn.net; s=20201203;
	t=1784214568; bh=DJhnvz4HBJxdZKVSNOQ8zO8jUFLO4h65QHOvT1/EEpA=;
	h=From:To:Subject:Date:From;
	b=QhFdZOwL6lBl+b7/AKR/9p6XtYCe9K1gqF8Y56YLhCJ4rLGf/2BViPnwdH98N7ulo
	 j++oxyWxCwHD4I6xB4WdRnS2rxPUhs9eDdTSfCu4gXpS1M+tsURMSPhY9zQ7S0o0Hq
	 Iqhbz8dQD/gt5XRp9Z7xDse2gwzXYKUhYfu28bSLdGI/vg4PB0wyLzZyKaxSq1KBdf
	 b5GO88sx5zVW39ZYO8betlb69T8j3tbSgpK/dmr8Zjl30GdP7IfaQntnyudGrOJ3Dc
	 cnF8n+aRZtfkOk6qGtnfA7xhkq6VNMQ9xcnEexSQ3s6XPvwDCyIiuSyo2CDCaJ/gdm
	 P8pqkKosfER9w==
Received: from localhost (unknown [IPv6:2601:280:4600:27b::1fe])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by ms.lwn.net (Postfix) with ESMTPSA id 4926C40430
	for <ksummit@lists.linux.dev>; Thu, 16 Jul 2026 15:09:28 +0000 (UTC)
From: Jonathan Corbet <corbet@lwn.net>
To: ksummit@lists.linux.dev
Subject: [MAINTAINERS SUMMIT] Other LLM-related topics - tags, newcomers, etc
Date: Thu, 16 Jul 2026 09:09:27 -0600
Message-ID: <87wluv7yzc.fsf@trenco.lwn.net>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain

The use of LLMs in the development process appears to be a clear theme for
the upcoming summit.  On top of what others have already suggested, I think
we may want to consider these questions:

- Do we want to continue naming specific LLMs in the Assisted-by tags, or
  put something more generic?  I *think* that this thread:

    https://lore.kernel.org/all/20260701-work-coding-assistants-v1-1-a20a94d1d606@kernel.org/

  reached a consensus that "Assisted-by: LLM" was better than what we
  require now, but it might be good to ratify that in this setting.

- There is a lot of LLM-generated code that lacks an Assisted-by
  disclosure.  Often, that seems to be the result of ignorance of the
  rules; those contributors will start adding the tags when informed of the
  requirement.  But others just lie about it.  A rule that is widely
  ignored does not help anybody.  Can we come up with a way to get better
  compliance, or should we just drop the tag entirely?

- There are many first-time contributors coming in with LLM-generated
  patches.  At times, I could swear that every one of them is focused on
  documentation typos, but the truth of the matter is that they are
  reaching into subsystems all over the kernel.  We have some brand-new
  contributors making significant changes to dozens of subsystems.  An
  experienced developer would be hard-put to truly understand what those
  changes are doing; a newcomer is unlikely to have that understanding,
  and is unlikely to be around to fix eventual problems.

  Our maintainers are not scaling to handle this new flood, and I fear we
  are going to see some unfortunate things merged.  One LLM-driven newcomer
  recently nearly succeeded in establishing himself as the maintainer of
  lib/.  How do we hold the line against this stuff while remaining open to
  new developers?

- Our process is becoming increasingly dependent on proprietary tools.  We
  have done that before and, in 2005, it went pretty badly for us - and
  could have been worse.  How do we prepare for the inevitable rugpull?  I
  raised this last year, and it was largely brushed off, but I still think
  it's something we should be concerned about.

That's probably enough :)

jon
