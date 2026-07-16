Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D34573BE178
	for <ksummit@lists.linux.dev>; Thu, 16 Jul 2026 21:22:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.137.202.133
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784236961; cv=none; b=RHPhfHN/D+kb3GWHouyZPPLLz2VUMqcW2ieFnzmVhVxeCAkNTuEoFIBHmcnlcDUEp5iHMKfnIR7CoFLS+mqmUcmTyH+H7QsIPaBuLG0unDufzaTQ8YKf00C6H0kKbRZCd2NkmJgd8OJOHQ2a9gMJpMjg2ng3GQ9Z/f56lDFGqf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784236961; c=relaxed/simple;
	bh=xjPRGb29ztRJe87wGuWtnm8TTEGeo07ENXZ6dDIT25c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DcSmPIWiziYFF3+cUh2Rb3ov+KDkHLv6G3g8BZQHinEQPiiacFdtNUbn8/SLPtVPxq9YeLF2GfF+xDljtxujCRt+yGuaIspGYR3DbvejwBTsitELQBWCLvWyN6SkNfOewXwFbgrKNj4Y/63a2owoDm/G+uY95v6Bs6Rgpsc9Z+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=infradead.org; spf=pass smtp.mailfrom=infradead.org; dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b=b7EddW2j; arc=none smtp.client-ip=198.137.202.133
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=infradead.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=infradead.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="b7EddW2j"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
	:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=qfDyRMzcmGqcFLFgyDHxn+prqKQ9bqLNuuyYAv3SBFk=; b=b7EddW2jqINVMEi6Uce66QoYk9
	QAUTn7vyax9T6jEeR603acSUde+EfotYSga2kYSKIwlMVkRmbUIwt9Va5wbNY60QZWQ50zd4efjCU
	QJZOtDQ0tlBuYcqqVNo+sz3nILR7WYsSeTAAB3Xx+6l8i3QncPI8VwkkBv2fsHU4zkJbWOJeITgWz
	BhI/UvPJKaTkvORX2NYPTSVuTcF9FAJaAKruiiKJypkLlZ7oVmYmWxdpfIsXwOr5gh0rgP1TcdTaG
	tSPsA0To4LuHi4VQFPeZjX6DnQ5n0jv7DPZu38MYx+X7kaq03688Uxy6JhfzOj2WGZ0FkYBmaynZP
	mqHo6org==;
Received: from [38.23.173.23] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkScH-00000000WEi-3UlL;
	Thu, 16 Jul 2026 20:23:34 +0000
Date: Thu, 16 Jul 2026 16:23:19 -0400
From: "Liam R. Howlett" <liam@infradead.org>
To: Jonathan Corbet <corbet@lwn.net>
Cc: Sasha Levin <sashal@kernel.org>, ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags, newcomers,
 etc
Message-ID: <sg6yidkiqfwegabxwkrcb2dhlfkqjquwyad75xqd4j7w7o7gtx@eh6czm5aoxuy>
References: <87wluv7yzc.fsf@trenco.lwn.net>
 <alj4mYFMfZvuarfx@laps>
 <87y0fa7pdm.fsf@trenco.lwn.net>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87y0fa7pdm.fsf@trenco.lwn.net>

On 26/07/16 12:36PM, Jonathan Corbet wrote:
> Sasha Levin <sashal@kernel.org> writes:
> 
> > On Thu, Jul 16, 2026 at 09:09:27AM -0600, Jonathan Corbet wrote:
> >>The use of LLMs in the development process appears to be a clear theme for
> >>the upcoming summit.  On top of what others have already suggested, I think
> >>we may want to consider these questions:
> >>
> >>- Do we want to continue naming specific LLMs in the Assisted-by tags, or
> >>  put something more generic?  I *think* that this thread:
> >>
> >>    https://lore.kernel.org/all/20260701-work-coding-assistants-v1-1-a20a94d1d606@kernel.org/
> >>
> >>  reached a consensus that "Assisted-by: LLM" was better than what we
> >>  require now, but it might be good to ratify that in this setting.
> >
> > So originally I've added the full name of the tool and LLM because there was
> > interest in a later audit of the tools to determine how useful (or useless)
> > some of the tools are.
> >
> > If those folks aren't interested in doing so anymore, then sure - we can drop
> > it.
> >
> > But... I find it difficult to see the point of having the tag if we do that.
> 
> Folks like Greg have, in the recent past, said that it is useful even
> without specific product-name information:
> 
>   https://lore.kernel.org/all/2026070227-payroll-eradicate-8f66@gregkh/
> 

There are a few classes of LLM users, but as more and more people are
using LLM, the usefulness of this tag is converging on zero.  We seem to
have three classes of LLM users.

We have people leaning hard on LLMs to push more code, but are known
developers.  The uses of an LLM can be replaced by using an RFC tag for
things that _really_ should be looked at by others prior to acceptance.
That is, if they aren't using RFC already.

We have people using LLMs for writing tests or reviewing code.  A tag
here is not useful as it seems a false sense of security for reviewers
and they may skip it. The LLMs are finding off-by-ones, but the larger
ideas are usually sound and the test cases are actually not all bad.

> >>- There are many first-time contributors coming in with LLM-generated
> >>  patches.  At times, I could swear that every one of them is focused on
> >>  documentation typos, but the truth of the matter is that they are
> >>  reaching into subsystems all over the kernel.  We have some brand-new
> >>  contributors making significant changes to dozens of subsystems.  An
> >>  experienced developer would be hard-put to truly understand what those
> >>  changes are doing; a newcomer is unlikely to have that understanding,
> >>  and is unlikely to be around to fix eventual problems.
> >>
> >>  Our maintainers are not scaling to handle this new flood, and I fear we
> >>  are going to see some unfortunate things merged.  One LLM-driven newcomer
> >>  recently nearly succeeded in establishing himself as the maintainer of
> >>  lib/.  How do we hold the line against this stuff while remaining open to
> >>  new developers?
> >
> > Shouldn't it be a merits question rather than a tools question?
> >
> > If the commits are correct, does it matter if they were written with
> > an LLM? we can insist more on supplying tests and demonstrating
> > correctness, something we seem to be doing quite rarely right now.

People who don't know what they are doing, cannot write tests that cover
the code they are changing.  They don't know what to ask the LLM to do.

Fundamentally, we've given some people a tool that stretches well
outside what they know, so requesting more testing will not result in
valid tests.  You end up writing things like "can you please ask your
LLM to <task>", or more likely something they can copy/paste into it
because they're saying they did it alone.

Half the time you tell them why it won't/doesn't work and they come back
with arguments from an LLM as to why you are wrong.

Also, they'll respin the reviewed patches within minutes, and that can
cost you hours to validate if it/they are not acceptable patch(es).

I've honestly thought about a rule where someone can no longer have
patches accepted again until the next release as they have exceeded a
threshold of time wastage.  (A nack merit?)

> 
> It's definitely a merit question.  But we're not always all that good at
> determining whether a commit is correct, and we depend a lot on the
> contributor understanding their work and being around if something goes
> wrong with it.  That is part of "merit" too.  How confident are we of
> that merit when a brand-new developer makes significant changes to a
> dozen or more unrelated subsystems?

The last class of users..

We have people writing patch sets across many subsystems and/or first
time people rewriting entire sections of the kernel to 'fix' things.

Some of these people are clearly passing off LLM work as their own,
without any LLM tag.  I am at a loss on how to deal with these.  Either
they are encouraged to try over and over, or they blow up at the
suggesting this is LLM and/or a NACK.  Neither method is good and nether
reduces the flow of bad code.

In any case, the tag is useless in this case because it's not going to
be used regardless of what we do.

So on Greg's note that having an LLM tag is a signal,  I question the
SNR now and if the signal is the same indicator across all patches.

> 
> >>- Our process is becoming increasingly dependent on proprietary tools.  We
> >>  have done that before and, in 2005, it went pretty badly for us - and
> >>  could have been worse.  How do we prepare for the inevitable rugpull?  I
> >>  raised this last year, and it was largely brushed off, but I still think
> >>  it's something we should be concerned about.
> >
> > Are we dependent on them, or do we just find them very useful? If
> > Claude/Codex/etc goes away next month, will it stall any of our processes?
> >
> > We have AI reviews, we have many AI tools that help both authors and
> > maintainers, but I don't think that any of them play an integral part of our
> > process.
> 
> The related discussions have featured a number of maintainers talking
> about how much time Sashiko has saved them.  I believe them.  How long
> will it take until nobody does that level of patch review anymore?  What
> will we do when the current round of corporate generosity ends and that
> tool goes away?  Maybe I'm worrying too much, but this does seem, to me,
> like a possibility we should keep in mind.
> 

Agreed.  I think we are already dependent enough on them to have a
visible impact on throughput.  That's going to increase as models become
better.  When the products shift from market capture to monetization,
we're going to have a dip in productivity and quality, at best.

Thanks,
Liam

