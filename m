Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FDF0418A3A
	for <ksummit@lists.linux.dev>; Fri, 17 Jul 2026 13:59:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784296779; cv=none; b=l6x/sBpEvUgOCKij/ap/ehjdLuUE0Y9EuJYr6QNRpRvwlgpLmWF7H1FTSTkLWiPAn+yE1jYeRhHkHETvxTat+gZ/YZqzLAxPl0umFPtGV5j8ePcFggDFhv3UWgrVe/tt1O832BjY6Q3k+pID2wSHkJsB2nOTrqpGUXo4AjRUHMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784296779; c=relaxed/simple;
	bh=A+2TijzeQGLBucbE9W93cNKFWAfAEXwJVqpmTbYd1sI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XKmwVxSL5HNd8bSrgg4mOWoorsi0ETmX+icPWBvYJ/C+A1g19ULAK2nVYT6skrUlgu7tIKwPK2GTrml2/6zawQji6WrjumQRmbysuWwtd5JZFOGzaea5IPlk+77IAYGoYlr75f4HfrvvywixBvGlue5HamsFnS+G8z0GBB+D53A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GOu+CMDI; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GOu+CMDI"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F64A1F00A3A;
	Fri, 17 Jul 2026 13:59:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784296777;
	bh=TfMYL/jRpaJHWKpFsQp6AXM3ICyZmbcBdVtU7/B2Bfw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=GOu+CMDIuAi4P6lv+M6Wzn5W8ZbTvjnaN2EQSYW+JyliuZ67AH9O89LzQQa1oD3iJ
	 52P82DGppHR4cZSqB+KyUNnhkO5+ZzmwOO2Ay7GIaJYKM+gDgLhRYyoqG0fxfgYUP9
	 o5Enq/PjnRFpqdcqF62pXfcWRHwV60IkKq0aIxC1AHzF7zGYCjt5JQmMM1O9nkMbFY
	 gsLzCHIxpxX+Wjys+MOy4HiDTUYNrI9S9roPZbkk+Jf2EA/99A6WIWck0Ayg52P0UZ
	 ygVvsCecz5GVmRwIjLYo7l5atg5WMuT+FUdKmoUk0U/H9txv/4xW0VGHXwmZkvxuwU
	 B726aSDzhASyQ==
Date: Fri, 17 Jul 2026 09:59:36 -0400
From: Sasha Levin <sashal@kernel.org>
To: Jonathan Corbet <corbet@lwn.net>
Cc: ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags, newcomers,
 etc
Message-ID: <alo1SOUZnSNfEqpn@laps>
References: <87wluv7yzc.fsf@trenco.lwn.net>
 <alj4mYFMfZvuarfx@laps>
 <87y0fa7pdm.fsf@trenco.lwn.net>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <87y0fa7pdm.fsf@trenco.lwn.net>

On Thu, Jul 16, 2026 at 12:36:53PM -0600, Jonathan Corbet wrote:
>Sasha Levin <sashal@kernel.org> writes:
>
>> On Thu, Jul 16, 2026 at 09:09:27AM -0600, Jonathan Corbet wrote:
>>>The use of LLMs in the development process appears to be a clear theme for
>>>the upcoming summit.  On top of what others have already suggested, I think
>>>we may want to consider these questions:
>>>
>>>- Do we want to continue naming specific LLMs in the Assisted-by tags, or
>>>  put something more generic?  I *think* that this thread:
>>>
>>>    https://lore.kernel.org/all/20260701-work-coding-assistants-v1-1-a20a94d1d606@kernel.org/
>>>
>>>  reached a consensus that "Assisted-by: LLM" was better than what we
>>>  require now, but it might be good to ratify that in this setting.
>>
>> So originally I've added the full name of the tool and LLM because there was
>> interest in a later audit of the tools to determine how useful (or useless)
>> some of the tools are.
>>
>> If those folks aren't interested in doing so anymore, then sure - we can drop
>> it.
>>
>> But... I find it difficult to see the point of having the tag if we do that.
>
>Folks like Greg have, in the recent past, said that it is useful even
>without specific product-name information:
>
>  https://lore.kernel.org/all/2026070227-payroll-eradicate-8f66@gregkh/

No disagreement it would help reviews, but there's no need to carry it in the
git history after it's merged, so no reason for it to be a tag I think.

Should we move it to under the scissor line? Or move to something along the
lines of:

	[PATCH AI] abc: zzzz

>>>- There are many first-time contributors coming in with LLM-generated
>>>  patches.  At times, I could swear that every one of them is focused on
>>>  documentation typos, but the truth of the matter is that they are
>>>  reaching into subsystems all over the kernel.  We have some brand-new
>>>  contributors making significant changes to dozens of subsystems.  An
>>>  experienced developer would be hard-put to truly understand what those
>>>  changes are doing; a newcomer is unlikely to have that understanding,
>>>  and is unlikely to be around to fix eventual problems.
>>>
>>>  Our maintainers are not scaling to handle this new flood, and I fear we
>>>  are going to see some unfortunate things merged.  One LLM-driven newcomer
>>>  recently nearly succeeded in establishing himself as the maintainer of
>>>  lib/.  How do we hold the line against this stuff while remaining open to
>>>  new developers?
>>
>> Shouldn't it be a merits question rather than a tools question?
>>
>> If the commits are correct, does it matter if they were written with
>> an LLM? we can insist more on supplying tests and demonstrating
>> correctness, something we seem to be doing quite rarely right now.
>
>It's definitely a merit question.  But we're not always all that good at
>determining whether a commit is correct, and we depend a lot on the
>contributor understanding their work and being around if something goes
>wrong with it.  That is part of "merit" too.  How confident are we of
>that merit when a brand-new developer makes significant changes to a
>dozen or more unrelated subsystems?

Third of authors have only one commit, more than half have 2 or less. I'd argue
that we need to be very good about taking driveby commits with the assumption
that we'll never hear back from the author either way.

>>>- Our process is becoming increasingly dependent on proprietary tools.  We
>>>  have done that before and, in 2005, it went pretty badly for us - and
>>>  could have been worse.  How do we prepare for the inevitable rugpull?  I
>>>  raised this last year, and it was largely brushed off, but I still think
>>>  it's something we should be concerned about.
>>
>> Are we dependent on them, or do we just find them very useful? If
>> Claude/Codex/etc goes away next month, will it stall any of our processes?
>>
>> We have AI reviews, we have many AI tools that help both authors and
>> maintainers, but I don't think that any of them play an integral part of our
>> process.
>
>The related discussions have featured a number of maintainers talking
>about how much time Sashiko has saved them.  I believe them.  How long
>will it take until nobody does that level of patch review anymore?  What
>will we do when the current round of corporate generosity ends and that
>tool goes away?  Maybe I'm worrying too much, but this does seem, to me,
>like a possibility we should keep in mind.

It'll slow the process down, I agree, but it wouldn't stop it altogether. I
would agree it shouldn't become a critical part of our workflow, but right now
it seems to me like this tooling just lives on the periphery of our processes,
and having these tools go away won't actually block the process.

-- 
Thanks,
Sasha
