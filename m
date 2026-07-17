Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0BA23F825F
	for <ksummit@lists.linux.dev>; Fri, 17 Jul 2026 16:09:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.137.202.133
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784304592; cv=none; b=CGNkuziZR4butij9YRGaFPv8ihMui2iyHGoL4nHpsz1dd+AVsl9iWoNWUalX7XFJLfpcX9bO2z/D8Q3lg5vAX+BgcX3/yZuq4dZlTJaE1bUz2j4kpVJWJokKb/bzbRh6nvdufCUUFzTjQeECzSKHnOP+gOcEn5nW/gXSrvyJlCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784304592; c=relaxed/simple;
	bh=OAvpCiwBL5T/KkTlYiH66/6brCn5Xkl4lapcvFUW9iU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GlAC/TZtNdX5X9RNc/tfCvNEo/fOUZG2ktZQM36fJD7gFRH9dLJZi8YUV9QPw8sh2yv4CnP93HUyQ1rFnrfGCXe5LlfuaNB/BUb770RJNVRheExPr7EyIU1YrM5gLIswyUT5eowlFR3iAxR45jZuvNLadqbuRnZD4zivEzIMFaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=infradead.org; spf=pass smtp.mailfrom=infradead.org; dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b=nZ9TsAoc; arc=none smtp.client-ip=198.137.202.133
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=infradead.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=infradead.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="nZ9TsAoc"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
	:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=PQi3wsAYDVTizmyOTisH5m7pOUy1eb03AoW3erxwHyg=; b=nZ9TsAocZjYUbFkNSN16jTtuR5
	RtF5s4i0h+4lOh2qk/+3I6FmAmRlq5DWtcchLi6qAXyUqppBeDbUgpGOtaDJ4JjYlFRSu0Dm1oAra
	vA8KBLEELAIlgVCsq9YPdV6ll5XDUGzDGVNvvBRwihgKe2oVTcYFU/sbutYlxaq3OfGdJwFhmvwtT
	twjeX1shYYU3lblXI+Q1/9fRxDT6WorJcie0QV3V47QCRDcWOA5qz0Yzo9CmzCdnRJZqHnl2mVBwl
	gWNLTfRgqpUmzDI0RYOseWKTfMv0+JPkAmxX0CuXlFjgh4YPyroq1P23ewy+61F36K2CCn2bG+/qL
	xjdTe7FQ==;
Received: from [38.23.173.23] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkl8C-00000002hv5-06pm;
	Fri, 17 Jul 2026 16:09:44 +0000
Date: Fri, 17 Jul 2026 12:09:42 -0400
From: "Liam R. Howlett" <liam@infradead.org>
To: Johannes Weiner <hannes@cmpxchg.org>
Cc: Jonathan Corbet <corbet@lwn.net>, Sasha Levin <sashal@kernel.org>, 
	ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags, newcomers,
 etc
Message-ID: <mrnuncddsbtgw3q5r2ibvy32frl6gkblvm35qq5ttt2xkdc2cz@ubynpfj5ipv7>
References: <87wluv7yzc.fsf@trenco.lwn.net>
 <alj4mYFMfZvuarfx@laps>
 <87y0fa7pdm.fsf@trenco.lwn.net>
 <sg6yidkiqfwegabxwkrcb2dhlfkqjquwyad75xqd4j7w7o7gtx@eh6czm5aoxuy>
 <20260717145447.GH6843@cmpxchg.org>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260717145447.GH6843@cmpxchg.org>

On 26/07/17 04:54PM, Johannes Weiner wrote:
> On Thu, Jul 16, 2026 at 04:23:19PM -0400, Liam R. Howlett wrote:
> > So on Greg's note that having an LLM tag is a signal,  I question the
> > SNR now and if the signal is the same indicator across all patches.
> 
> Yes. The possible range of involvement is massive. The question I
> would find more interesting than a binary flag is who was doing what
> part of the thinking at each step of creating the patch(es).
> 
> You can use agents to draft code, make tests, run experiments, analyze
> data, and review for bugs. The human can apply a high level of
> direction, scrutiny and steering on each of these steps. Or they can
> just not do any of that and still get some kind of result.
> 
> Once a workable direction is found, the final result that gets sent to
> the list could be a clean-room implementation written by the human, it
> could be fully written by an agent, or anything in between.
> 
> And finally the human could have reviewed the work end-to-end,
> line-by-line; delegated it all to a review agent; or neither.
> 
> The process behind a patch with this tag could be anywhere on this
> spectrum. And reviewer interpretation of the tag is just as varied.
> 
> It poorly communicates what actually occurred. And there is clearly a
> stigma attached to it at this point, with the expected consequences,
> which further distorts the signal. The latter part might go away if
> there was a better protocol to convey the development process.
> 
> But I'm not sure it's practical to even try to capture all these
> nuances and precise division of labor questions in commit metadata...

Yeah, well said.

And at that point, why even have a tag?  Maybe something in the cover
letter would be better to explain what went on, but this is hardly what
and why things changed.  And without a standard way of communicating how
the tool was used, then we're back to a signal/noise issue again.

Which, I think is covered by your statement of the 'commit metadata' not
being practical for the task.

To your point of stigma being attached to patches, this is probably why
some people insist LLMs were not used when they clearly were.

Thanks,
Liam

