Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD6E2418A5C
	for <ksummit@lists.linux.dev>; Fri, 17 Jul 2026 14:09:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784297399; cv=none; b=IZ+vXZ4pzenrreBcJ6qNACtShYNsog7+NZaAHlBnuaI8JlnLS54dfTwtR1voM7Z5gv6VN2gs6utKrEMwhSklXfSt8oKyi6Qjs3d1Jo5f0x3aLrqgzXam+fv4A6tsiRyFAiNZ3boEi/H0v4AZcKG5UIooIxMFYeC4gkOtBO849NU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784297399; c=relaxed/simple;
	bh=/BnOTPQxcdvi3G+3Gg5N2wZHETtq9/mfZUmUglZNF9I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Et1oO/LutF0YrtXHAIDqzZO8vuC/iir0103KmG+rj15iptSX5Utjh6qYhEUnTu1eAx4dof/wvZsFkP7btY1zGm/ohDk4l238hAX4kIMBhcBADLPbxhurus0Dh8yiBc6unsOc/YftL4jLt28xTNiTVOKtdP+Jy75RFZgmhFHiPFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i+NXSqSK; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i+NXSqSK"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 581CD1F00A3A;
	Fri, 17 Jul 2026 14:09:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784297397;
	bh=/umZNKSivz554VIRmsPCgtKVulKAnHmAqPNHmgWKpAE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=i+NXSqSKwAhyM3V+nx6NM8M/5im6dkTyY7o0Nxf7lmZqhnN1SaFcul7GFklI91QKV
	 Beyv9IyLldnxL10K2eAw6fSn7LeCEN1of40dPdWmJRLxbwwH8L4fTQyF9DH3qCQuuH
	 eGDFMdCV9SAgB2Ee2wgdq/UzvdednN7SW7/CY7Tp/dE5S8zKsMYcStZfMXAVSlOTW/
	 qAT0lpEaMn+cjdqXtt1XCvcvdjnQ4Y4HshDSfjbnW+no4axxrws1QPR0E/SiJZH9gh
	 yFiqqNOhpf0kvSjgLygT2/zi2jvEBl9kkbxtmDlW3ePs/MQ6v/kYfXHwlEF2hWOqkk
	 +5ILdllkjEqIg==
Date: Fri, 17 Jul 2026 10:09:56 -0400
From: Sasha Levin <sashal@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Mark Brown <broonie@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
	ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags, newcomers,
 etc
Message-ID: <alo3tBAc_tBNgtg0@laps>
References: <87wluv7yzc.fsf@trenco.lwn.net>
 <alj4mYFMfZvuarfx@laps>
 <daea687e-46ef-4e00-9188-d14a663f1428@sirena.org.uk>
 <alkFzdJobnnMjJ4v@laps>
 <20260716203810.GF1735001@killaraus.ideasonboard.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20260716203810.GF1735001@killaraus.ideasonboard.com>

On Thu, Jul 16, 2026 at 11:38:10PM +0300, Laurent Pinchart wrote:
>Hi Sasha,
>
>On Thu, Jul 16, 2026 at 12:24:45PM -0400, Sasha Levin wrote:
>> On Thu, Jul 16, 2026 at 05:08:40PM +0100, Mark Brown wrote:
>> >On Thu, Jul 16, 2026 at 11:28:25AM -0400, Sasha Levin wrote:
>> >> On Thu, Jul 16, 2026 at 09:09:27AM -0600, Jonathan Corbet wrote:
>> >
>> >> > - There are many first-time contributors coming in with LLM-generated
>> >> >  patches.  At times, I could swear that every one of them is focused on
>> >
>> >> >  Our maintainers are not scaling to handle this new flood, and I fear we
>> >> >  are going to see some unfortunate things merged.  One LLM-driven newcomer
>> >> >  recently nearly succeeded in establishing himself as the maintainer of
>> >> >  lib/.  How do we hold the line against this stuff while remaining open to
>> >> >  new developers?
>> >
>> >> Shouldn't it be a merits question rather than a tools question?
>> >
>> >> If the commits are correct, does it matter if they were written with an LLM? we
>> >> can insist more on supplying tests and demonstrating correctness, something we
>> >> seem to be doing quite rarely right now.
>> >
>> > The issue (which a number of projects are facing) is as much one of
>> > volume as anything else, the code generation machines are enabling the
>> > generation and submision of volumes of code where things were previously
>> > constrained by human factors.  It can turn into a bit of a DoS.  I don't
>> > have any particularly bright ideas here but it's definitely a thing.
>>
>> Sure, we're seeing quite the increase in patch submissions, but I'm trying to
>> argue that the issue isn't a new one: lack of maintainers, trusted reviewers,
>> and maintainer burnout has been a topic at each kernel summit for as long as I
>> can remember. AI just kicks it up a notch.
>>
>> My concern is that if we focus on the AI aspect, we still won't be solving the
>> underlying issue.
>>
>> I'm hoping we can figure out how to get maintainers great tooling, testing, and
>> community, rather than figuring out how to block a developer who uses LLM.
>> Maybe AI would actually be a great catalyst for that as well?
>
>Didn't you argue in another part of this thread that we're in no danger
>of being depending on AI for our processes ? I see a contradiction here.

Hey Laurent,

Not sure I follow here.

My thinking was that trying to improve our processes and tooling has been a
topic for the past decade or two. One of the times we discussed it was the 2019
maintainer's summit (https://lwn.net/Articles/799134/) where we decided to
create the workflows@ mailing list to share our tooling and workflows. Not much
of that has been happening :)

In the past year or two I was able to rewrite most of my ugly scripts, automate
so many of the processes I used to do manually, and just improve so many
quality of life items thanks to AI. Look even at the CVE process that was
created last year: so much of the infrastructure used to drive it was created
with AI.

Now, if AI suddenly goes away tomorrow it'll suck for me, but I'll just go back
to writing my tools manually like I did before. I don't think that I somehow
became "dependant" on it.

-- 
Thanks,
Sasha
