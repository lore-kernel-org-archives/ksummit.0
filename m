Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 029063D88E0
	for <ksummit@lists.linux.dev>; Thu, 16 Jul 2026 15:28:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784215708; cv=none; b=uxDSHQe1nTLSSe66c1cePoyJ0dqmWkQIq32ZtDhTsAybVYjSaBpa09W2+09q5TeDKJOlEB9gBRYMoo4oSEjJPT57HhTGBGtXC4s+FooIQuuwnsEU1aWF09OoaGtPmzZmLw7lsbH1ZODh8VcVDsM6zkKqEXuVzLTECtf7RpXMUXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784215708; c=relaxed/simple;
	bh=awtcSoJfBGhJLMLS0aiyQKRtiAmIYQXHUUGG1cQ0QVU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lXcSbsdAVwd7eMpV14Peql4LRKWCpUvG09SD6UChc25CzyPHsDGt9EDiAbVv2JhoYxgYpFKvwetcG/qGq4UtyJzu5LyJKtIYsEg9a0h0E5FqL1M9locF/q/qCt7CyNEmvTRygmbrE9oMG0PhNpTgt7vHM4K5FHd8oBUryl7OhLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RJ0Ju2Kr; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RJ0Ju2Kr"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A054E1F000E9;
	Thu, 16 Jul 2026 15:28:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784215706;
	bh=kPRIJ8BWBuRIy/ZyJvUKFe+nI2CjZAo1YowyTE9tGFU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=RJ0Ju2KrlT2z7OQTQHXprTtMmXxoZN3Wmo1KZrrf9gzurmpGKULMxTiggXehG5m7n
	 0TEAVBeQlgT2jBknXK8fiecAUIilPqMIjMPLZNKvUXYXIdrEKLrCOzYF6XZoBrmBbS
	 fKzfQUNdBC0S2isnS8LpawXGC7d+4sCW1Cumi29q+2qnf6jKV4lw9LQDmWOW7B0r57
	 skfXGeGNQRkJSY05CFfLDc5rfuanHGc6bzqa/B3+PF7mrK/8qjOxvjOBplPTcjXNvz
	 YKXqN6cFXkktmTw2YZu4ReimZMI1iuE4ZmLsdrAJhC1ingf5YGiHDQG73XCyNhT8Nz
	 DX+LIq/+QwCAQ==
Date: Thu, 16 Jul 2026 11:28:25 -0400
From: Sasha Levin <sashal@kernel.org>
To: Jonathan Corbet <corbet@lwn.net>
Cc: ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags, newcomers,
 etc
Message-ID: <alj4mYFMfZvuarfx@laps>
References: <87wluv7yzc.fsf@trenco.lwn.net>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <87wluv7yzc.fsf@trenco.lwn.net>

On Thu, Jul 16, 2026 at 09:09:27AM -0600, Jonathan Corbet wrote:
>The use of LLMs in the development process appears to be a clear theme for
>the upcoming summit.  On top of what others have already suggested, I think
>we may want to consider these questions:
>
>- Do we want to continue naming specific LLMs in the Assisted-by tags, or
>  put something more generic?  I *think* that this thread:
>
>    https://lore.kernel.org/all/20260701-work-coding-assistants-v1-1-a20a94d1d606@kernel.org/
>
>  reached a consensus that "Assisted-by: LLM" was better than what we
>  require now, but it might be good to ratify that in this setting.

So originally I've added the full name of the tool and LLM because there was
interest in a later audit of the tools to determine how useful (or useless)
some of the tools are.

If those folks aren't interested in doing so anymore, then sure - we can drop
it.

But... I find it difficult to see the point of having the tag if we do that.

>- There is a lot of LLM-generated code that lacks an Assisted-by
>  disclosure.  Often, that seems to be the result of ignorance of the
>  rules; those contributors will start adding the tags when informed of the
>  requirement.  But others just lie about it.  A rule that is widely
>  ignored does not help anybody.  Can we come up with a way to get better
>  compliance, or should we just drop the tag entirely?

Similarily, I think that one of the bigger reasons for the tag was fear of the
unknown. We figured that we can tag those commits, and if we ever needed to do
something about it (revert commits because of copyright issues, broken tools,
UMN v2, etc) it would make our job easier.

I think that there's room to improve the machinery here (AGENTS.md in the root,
for example).

>- There are many first-time contributors coming in with LLM-generated
>  patches.  At times, I could swear that every one of them is focused on
>  documentation typos, but the truth of the matter is that they are
>  reaching into subsystems all over the kernel.  We have some brand-new
>  contributors making significant changes to dozens of subsystems.  An
>  experienced developer would be hard-put to truly understand what those
>  changes are doing; a newcomer is unlikely to have that understanding,
>  and is unlikely to be around to fix eventual problems.
>
>  Our maintainers are not scaling to handle this new flood, and I fear we
>  are going to see some unfortunate things merged.  One LLM-driven newcomer
>  recently nearly succeeded in establishing himself as the maintainer of
>  lib/.  How do we hold the line against this stuff while remaining open to
>  new developers?

Shouldn't it be a merits question rather than a tools question?

If the commits are correct, does it matter if they were written with an LLM? we
can insist more on supplying tests and demonstrating correctness, something we
seem to be doing quite rarely right now.

>- Our process is becoming increasingly dependent on proprietary tools.  We
>  have done that before and, in 2005, it went pretty badly for us - and
>  could have been worse.  How do we prepare for the inevitable rugpull?  I
>  raised this last year, and it was largely brushed off, but I still think
>  it's something we should be concerned about.

Are we dependent on them, or do we just find them very useful? If
Claude/Codex/etc goes away next month, will it stall any of our processes?

We have AI reviews, we have many AI tools that help both authors and
maintainers, but I don't think that any of them play an integral part of our
process.

-- 
Thanks,
Sasha
