Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221C837D128
	for <ksummit@lists.linux.dev>; Thu, 16 Jul 2026 16:24:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784219092; cv=none; b=AQmplUdc7yS2tdUldwr2aOxccbIvM88u1jIEOOWJ8pusS/G2dgYzo4IGoYySBYTWjLv5oAC8rPn6SRh8pI+MM+T/TyJU1rk54Y2BO+PtbPi14nOUV1U18KpWfYFx342YdefVXJcd8fFONrDAk245YjvWiaKlvbXZ2fFgGRrwWIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784219092; c=relaxed/simple;
	bh=21IOVytMuxaz1rf74s6zaLjlisyV+7kn4litpa6FFdA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=upIH1kyrpfUlOOU63qZHmbnp2RPhwFXUikHpuHsNADSdQJhZeLo3c3AJaXmjSXvt+gvNf8+P32dN1lqYRpOevnDZwNDf3gFSvbwa3ZfzjEiWlacRRHVXCMz3DyN8iaZVcbwPntg0hf+p5ek2Vymjcb9yv3BZiDZFIGzTsExv1tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=htR9sclW; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="htR9sclW"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C5B81F000E9;
	Thu, 16 Jul 2026 16:24:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784219087;
	bh=MleDbpdbY6I6RvIDRgLmMx3DvnIJOPacaA2keI+EZbs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=htR9sclWGdXxkbl1KblaqOb1qwD0RxOBM9tFzTFSfKSxkXHByV95YaH0v6wHEkInb
	 UMENZHDr8mi2wZZ6fCMvpwHAXgTuu0OGlsED8No+2jyGBvyXs9Y327eJk6eA9ugq2j
	 w5dcAszjWQHH9YIes+uIYmHole0iI+F5h98tTQGyRIs4Am7A6+03XLXKaQSERJwB75
	 NNssOl8T7Xh0HG3qL6ooWq2Lc1KJMN16QuIaqmqLIlMGYJ88EYiQpMW2zIw78QH/D3
	 Y/FD5rTdAGkg1AoUZjjf4rlk1LS2I1pwLTaFeIfzJJpBR46ljnL/apTE5Kw/uqVb3q
	 et6Ifrt3Y3xsg==
Date: Thu, 16 Jul 2026 12:24:45 -0400
From: Sasha Levin <sashal@kernel.org>
To: Mark Brown <broonie@kernel.org>
Cc: Jonathan Corbet <corbet@lwn.net>, ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags, newcomers,
 etc
Message-ID: <alkFzdJobnnMjJ4v@laps>
References: <87wluv7yzc.fsf@trenco.lwn.net>
 <alj4mYFMfZvuarfx@laps>
 <daea687e-46ef-4e00-9188-d14a663f1428@sirena.org.uk>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <daea687e-46ef-4e00-9188-d14a663f1428@sirena.org.uk>

On Thu, Jul 16, 2026 at 05:08:40PM +0100, Mark Brown wrote:
>On Thu, Jul 16, 2026 at 11:28:25AM -0400, Sasha Levin wrote:
>> On Thu, Jul 16, 2026 at 09:09:27AM -0600, Jonathan Corbet wrote:
>
>> > - There are many first-time contributors coming in with LLM-generated
>> >  patches.  At times, I could swear that every one of them is focused on
>
>> >  Our maintainers are not scaling to handle this new flood, and I fear we
>> >  are going to see some unfortunate things merged.  One LLM-driven newcomer
>> >  recently nearly succeeded in establishing himself as the maintainer of
>> >  lib/.  How do we hold the line against this stuff while remaining open to
>> >  new developers?
>
>> Shouldn't it be a merits question rather than a tools question?
>
>> If the commits are correct, does it matter if they were written with an LLM? we
>> can insist more on supplying tests and demonstrating correctness, something we
>> seem to be doing quite rarely right now.
>
>The issue (which a number of projects are facing) is as much one of
>volume as anything else, the code generation machines are enabling the
>generation and submision of volumes of code where things were previously
>constrained by human factors.  It can turn into a bit of a DoS.  I don't
>have any particularly bright ideas here but it's definitely a thing.

Sure, we're seeing quite the increase in patch submissions, but I'm trying to
argue that the issue isn't a new one: lack of maintainers, trusted reviewers,
and maintainer burnout has been a topic at each kernel summit for as long as I
can remember. AI just kicks it up a notch.

My concern is that if we focus on the AI aspect, we still won't be solving the
underlying issue.

I'm hoping we can figure out how to get maintainers great tooling, testing, and
community, rather than figuring out how to block a developer who uses LLM.
Maybe AI would actually be a great catalyst for that as well?

-- 
Thanks,
Sasha
