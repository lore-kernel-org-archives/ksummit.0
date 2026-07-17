Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32AF9223DE9
	for <ksummit@lists.linux.dev>; Fri, 17 Jul 2026 07:49:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784274597; cv=none; b=HtEYFg0fbKGY9qcKgUXZ+9udVl1P1kKWZdnFBHcXvl6xT+bDHzK8kNlDck4M4lvzF3SJDdrwkB8xnPxnO3ziCBrsE/Jyjuxk9TAV6Bf7ViQti6vfZBLwKYLT2K8iTa3a3wns5PIa5aXxCUnHTI5jVI7qKypsK4x/1Ez0y9Qf/O0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784274597; c=relaxed/simple;
	bh=fZwwiyeFHZEYk743WcuuWF2KsopxFmPQB71150DoaEQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pJAWyfyKY4j28YLnz6XubHt4vmhQsJ2U+DWwsdGDCaCEDgaqUc3Gwc9wzFshuN9Ys7b1J/ku85VccKWSNvTwifmFSpEinLItkBdw7FCrYJW+xWWNiX+1Nxekti/XrVIOHzr5ZU8WLz31WDHfdSWiyzYg/Ujz3hAGS2HJgmFbzXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=oVCTy5Y3; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="oVCTy5Y3"
Received: from killaraus.ideasonboard.com (2001-14ba-70f3-e800--a06.rev.dnainternet.fi [IPv6:2001:14ba:70f3:e800::a06])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id BE3118FA;
	Fri, 17 Jul 2026 09:48:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1784274532;
	bh=fZwwiyeFHZEYk743WcuuWF2KsopxFmPQB71150DoaEQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oVCTy5Y3sx1oFAK8WyGlBoxMKqjcMMyxX7CzhEAfgZsPiB4Xc9Yp0ihYHLrUQ2jQw
	 JVP7S6/2UfmvI0CCOxzNFrRsVln/cj4lxvmk+nsmXn7GOlEdgFR9Eu3ids7u6Clgqb
	 zOafjuGoez1RAqtMcJxouiPCn5BU3S9nvNIKDCr8=
Date: Fri, 17 Jul 2026 10:49:48 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: "Liam R. Howlett" <liam@infradead.org>
Cc: Jonathan Corbet <corbet@lwn.net>, Sasha Levin <sashal@kernel.org>,
	ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags, newcomers,
 etc
Message-ID: <20260717074948.GH1735001@killaraus.ideasonboard.com>
References: <87wluv7yzc.fsf@trenco.lwn.net>
 <alj4mYFMfZvuarfx@laps>
 <87y0fa7pdm.fsf@trenco.lwn.net>
 <sg6yidkiqfwegabxwkrcb2dhlfkqjquwyad75xqd4j7w7o7gtx@eh6czm5aoxuy>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <sg6yidkiqfwegabxwkrcb2dhlfkqjquwyad75xqd4j7w7o7gtx@eh6czm5aoxuy>

Hi Liam,

On Thu, Jul 16, 2026 at 04:23:19PM -0400, Liam R. Howlett wrote:
> On 26/07/16 12:36PM, Jonathan Corbet wrote:
> > Sasha Levin writes:
> > > On Thu, Jul 16, 2026 at 09:09:27AM -0600, Jonathan Corbet wrote:
> > >>The use of LLMs in the development process appears to be a clear theme for
> > >>the upcoming summit.  On top of what others have already suggested, I think
> > >>we may want to consider these questions:
> > >>
> > >>- Do we want to continue naming specific LLMs in the Assisted-by tags, or
> > >>  put something more generic?  I *think* that this thread:
> > >>
> > >>    https://lore.kernel.org/all/20260701-work-coding-assistants-v1-1-a20a94d1d606@kernel.org/
> > >>
> > >>  reached a consensus that "Assisted-by: LLM" was better than what we
> > >>  require now, but it might be good to ratify that in this setting.
> > >
> > > So originally I've added the full name of the tool and LLM because there was
> > > interest in a later audit of the tools to determine how useful (or useless)
> > > some of the tools are.
> > >
> > > If those folks aren't interested in doing so anymore, then sure - we can drop
> > > it.
> > >
> > > But... I find it difficult to see the point of having the tag if we do that.
> > 
> > Folks like Greg have, in the recent past, said that it is useful even
> > without specific product-name information:
> > 
> >   https://lore.kernel.org/all/2026070227-payroll-eradicate-8f66@gregkh/
> 
> There are a few classes of LLM users, but as more and more people are
> using LLM, the usefulness of this tag is converging on zero.  We seem to
> have three classes of LLM users.
> 
> We have people leaning hard on LLMs to push more code, but are known
> developers.  The uses of an LLM can be replaced by using an RFC tag for
> things that _really_ should be looked at by others prior to acceptance.
> That is, if they aren't using RFC already.
> 
> We have people using LLMs for writing tests or reviewing code.  A tag
> here is not useful as it seems a false sense of security for reviewers
> and they may skip it. The LLMs are finding off-by-ones, but the larger
> ideas are usually sound and the test cases are actually not all bad.

A clarification here: multiple people have expressed that they find the
tag useful to guide their reviews, not because it tells them they can be
less cautious, but because they want to be more cautious, or keep an eye
open for different patterns of issues.

There's also been a proposal to replace the model/agent name in the tag
with information about how LLMs were used. Among the people who find the
tag useful, there seems to be a consensus that type of usage is the
important information.

> > >>- There are many first-time contributors coming in with LLM-generated
> > >>  patches.  At times, I could swear that every one of them is focused on
> > >>  documentation typos, but the truth of the matter is that they are
> > >>  reaching into subsystems all over the kernel.  We have some brand-new
> > >>  contributors making significant changes to dozens of subsystems.  An
> > >>  experienced developer would be hard-put to truly understand what those
> > >>  changes are doing; a newcomer is unlikely to have that understanding,
> > >>  and is unlikely to be around to fix eventual problems.
> > >>
> > >>  Our maintainers are not scaling to handle this new flood, and I fear we
> > >>  are going to see some unfortunate things merged.  One LLM-driven newcomer
> > >>  recently nearly succeeded in establishing himself as the maintainer of
> > >>  lib/.  How do we hold the line against this stuff while remaining open to
> > >>  new developers?
> > >
> > > Shouldn't it be a merits question rather than a tools question?
> > >
> > > If the commits are correct, does it matter if they were written with
> > > an LLM? we can insist more on supplying tests and demonstrating
> > > correctness, something we seem to be doing quite rarely right now.
> 
> People who don't know what they are doing, cannot write tests that cover
> the code they are changing.  They don't know what to ask the LLM to do.
> 
> Fundamentally, we've given some people a tool that stretches well
> outside what they know, so requesting more testing will not result in
> valid tests.  You end up writing things like "can you please ask your
> LLM to <task>", or more likely something they can copy/paste into it
> because they're saying they did it alone.
> 
> Half the time you tell them why it won't/doesn't work and they come back
> with arguments from an LLM as to why you are wrong.
> 
> Also, they'll respin the reviewed patches within minutes, and that can
> cost you hours to validate if it/they are not acceptable patch(es).
> 
> I've honestly thought about a rule where someone can no longer have
> patches accepted again until the next release as they have exceeded a
> threshold of time wastage.  (A nack merit?)
> 
> > It's definitely a merit question.  But we're not always all that good at
> > determining whether a commit is correct, and we depend a lot on the
> > contributor understanding their work and being around if something goes
> > wrong with it.  That is part of "merit" too.  How confident are we of
> > that merit when a brand-new developer makes significant changes to a
> > dozen or more unrelated subsystems?
> 
> The last class of users..
> 
> We have people writing patch sets across many subsystems and/or first
> time people rewriting entire sections of the kernel to 'fix' things.
> 
> Some of these people are clearly passing off LLM work as their own,
> without any LLM tag.  I am at a loss on how to deal with these.  Either
> they are encouraged to try over and over, or they blow up at the
> suggesting this is LLM and/or a NACK.  Neither method is good and nether
> reduces the flow of bad code.
> 
> In any case, the tag is useless in this case because it's not going to
> be used regardless of what we do.
> 
> So on Greg's note that having an LLM tag is a signal,  I question the
> SNR now and if the signal is the same indicator across all patches.
> 
> > >>- Our process is becoming increasingly dependent on proprietary tools.  We
> > >>  have done that before and, in 2005, it went pretty badly for us - and
> > >>  could have been worse.  How do we prepare for the inevitable rugpull?  I
> > >>  raised this last year, and it was largely brushed off, but I still think
> > >>  it's something we should be concerned about.
> > >
> > > Are we dependent on them, or do we just find them very useful? If
> > > Claude/Codex/etc goes away next month, will it stall any of our processes?
> > >
> > > We have AI reviews, we have many AI tools that help both authors and
> > > maintainers, but I don't think that any of them play an integral part of our
> > > process.
> > 
> > The related discussions have featured a number of maintainers talking
> > about how much time Sashiko has saved them.  I believe them.  How long
> > will it take until nobody does that level of patch review anymore?  What
> > will we do when the current round of corporate generosity ends and that
> > tool goes away?  Maybe I'm worrying too much, but this does seem, to me,
> > like a possibility we should keep in mind.
> > 
> 
> Agreed.  I think we are already dependent enough on them to have a
> visible impact on throughput.  That's going to increase as models become
> better.  When the products shift from market capture to monetization,
> we're going to have a dip in productivity and quality, at best.

-- 
Regards,

Laurent Pinchart
