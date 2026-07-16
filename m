Received: from ms.lwn.net (ms.lwn.net [45.79.88.28])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2DF12F2914
	for <ksummit@lists.linux.dev>; Thu, 16 Jul 2026 18:37:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.79.88.28
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784227023; cv=none; b=IFyQ+sLRBRh7xD8ndttWdsIfb70Mn41012kdR4pL6ehM8rEM+yu7DL5DKzLvIuqnzIL612NuAnOvzmjPoCi68ExP7wln4ZcrKctVnQT1A28S31KUV+NUjsczxX1q3oURN0rWj6h75W35goh/afL3v6FFar6kK0etyZ930ZaLFtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784227023; c=relaxed/simple;
	bh=D905v8YPKzc0G/V8cop24ULJPnaYW8yZN1CI73/P2X8=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=NNQ4yHwytpdKC85EKGzk1rN0NTidCHeyLjMF9sed7JwFzzYC0d50ojcqQT7xewcZgKy/ESmegZoaT05eLlXyQZrbHOc0/LhGE+oNmdneoQFbAUFXJVQ7/758+eV8x68evteYutb5AvbF4qyFKUFupIfJ2npCj865buM7FgGQjyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lwn.net; spf=pass smtp.mailfrom=lwn.net; dkim=pass (2048-bit key) header.d=lwn.net header.i=@lwn.net header.b=nLKASH0w; arc=none smtp.client-ip=45.79.88.28
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lwn.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lwn.net
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lwn.net header.i=@lwn.net header.b="nLKASH0w"
DKIM-Filter: OpenDKIM Filter v2.11.0 ms.lwn.net AEBCC41599
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lwn.net; s=20201203;
	t=1784227014; bh=6nWQMIqoEYkcHR8UcnMJAjLoDvib9ro9RrKHDEZj3j8=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=nLKASH0w+9Ev/xA44uhQ0ss46XJMuMEcsSTp41KnAuXp/T3wEq8JqwbbQ2Ehnt5cl
	 gtOLGkY1g5/DHaEdq4iGxdsRn8e1HD7j0n8ivDB17NoM8qCzd70DvAAAMOSRHK8RaF
	 TMQruDEntejRmGBn1rBepwght0wGg69HutK8Rs5EVZ6/M7KuaQQ9OBRDixHLhuTF9e
	 z178wSLRBBawpcsxyHAUyUiXJiWjNA56j/x35DG8XJhTouCJF7AaXTiRvGkLYog5EZ
	 5q0ieIe9z32E8p2tIKDJRer2dITzByg0BjLdzg9d0YxYPyvVrqhai8IBDPefHHmkFE
	 Y45juaLfb4Mrg==
Received: from localhost (unknown [IPv6:2601:280:4600:27b::1fe])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by ms.lwn.net (Postfix) with ESMTPSA id AEBCC41599;
	Thu, 16 Jul 2026 18:36:54 +0000 (UTC)
From: Jonathan Corbet <corbet@lwn.net>
To: Sasha Levin <sashal@kernel.org>
Cc: ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags,
 newcomers, etc
In-Reply-To: <alj4mYFMfZvuarfx@laps>
References: <87wluv7yzc.fsf@trenco.lwn.net> <alj4mYFMfZvuarfx@laps>
Date: Thu, 16 Jul 2026 12:36:53 -0600
Message-ID: <87y0fa7pdm.fsf@trenco.lwn.net>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain

Sasha Levin <sashal@kernel.org> writes:

> On Thu, Jul 16, 2026 at 09:09:27AM -0600, Jonathan Corbet wrote:
>>The use of LLMs in the development process appears to be a clear theme for
>>the upcoming summit.  On top of what others have already suggested, I think
>>we may want to consider these questions:
>>
>>- Do we want to continue naming specific LLMs in the Assisted-by tags, or
>>  put something more generic?  I *think* that this thread:
>>
>>    https://lore.kernel.org/all/20260701-work-coding-assistants-v1-1-a20a94d1d606@kernel.org/
>>
>>  reached a consensus that "Assisted-by: LLM" was better than what we
>>  require now, but it might be good to ratify that in this setting.
>
> So originally I've added the full name of the tool and LLM because there was
> interest in a later audit of the tools to determine how useful (or useless)
> some of the tools are.
>
> If those folks aren't interested in doing so anymore, then sure - we can drop
> it.
>
> But... I find it difficult to see the point of having the tag if we do that.

Folks like Greg have, in the recent past, said that it is useful even
without specific product-name information:

  https://lore.kernel.org/all/2026070227-payroll-eradicate-8f66@gregkh/

>>- There are many first-time contributors coming in with LLM-generated
>>  patches.  At times, I could swear that every one of them is focused on
>>  documentation typos, but the truth of the matter is that they are
>>  reaching into subsystems all over the kernel.  We have some brand-new
>>  contributors making significant changes to dozens of subsystems.  An
>>  experienced developer would be hard-put to truly understand what those
>>  changes are doing; a newcomer is unlikely to have that understanding,
>>  and is unlikely to be around to fix eventual problems.
>>
>>  Our maintainers are not scaling to handle this new flood, and I fear we
>>  are going to see some unfortunate things merged.  One LLM-driven newcomer
>>  recently nearly succeeded in establishing himself as the maintainer of
>>  lib/.  How do we hold the line against this stuff while remaining open to
>>  new developers?
>
> Shouldn't it be a merits question rather than a tools question?
>
> If the commits are correct, does it matter if they were written with
> an LLM? we can insist more on supplying tests and demonstrating
> correctness, something we seem to be doing quite rarely right now.

It's definitely a merit question.  But we're not always all that good at
determining whether a commit is correct, and we depend a lot on the
contributor understanding their work and being around if something goes
wrong with it.  That is part of "merit" too.  How confident are we of
that merit when a brand-new developer makes significant changes to a
dozen or more unrelated subsystems?

>>- Our process is becoming increasingly dependent on proprietary tools.  We
>>  have done that before and, in 2005, it went pretty badly for us - and
>>  could have been worse.  How do we prepare for the inevitable rugpull?  I
>>  raised this last year, and it was largely brushed off, but I still think
>>  it's something we should be concerned about.
>
> Are we dependent on them, or do we just find them very useful? If
> Claude/Codex/etc goes away next month, will it stall any of our processes?
>
> We have AI reviews, we have many AI tools that help both authors and
> maintainers, but I don't think that any of them play an integral part of our
> process.

The related discussions have featured a number of maintainers talking
about how much time Sashiko has saved them.  I believe them.  How long
will it take until nobody does that level of patch review anymore?  What
will we do when the current round of corporate generosity ends and that
tool goes away?  Maybe I'm worrying too much, but this does seem, to me,
like a possibility we should keep in mind.

jon
