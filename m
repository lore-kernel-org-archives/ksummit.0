Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 035BC3403E9
	for <ksummit@lists.linux.dev>; Fri, 17 Jul 2026 15:56:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.137.202.133
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784303765; cv=none; b=fvFO/R07Z6XMoRU83Eym0ckhL19Dhe2u3kU58igMqB5LDMnpB4/G58FHNFJfylMu/zPHz1YCkbYLsH3o/Mj/0kszOSUWaHY8LIm8oGMQ4ZhKUDP/JPGU46MpCnb2+UEiQZRZAH6oTCX7Aix1KLryTc4YWEVHTk4PUW5dSkrt3MI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784303765; c=relaxed/simple;
	bh=UbFGK1zBTk8HGZEVNv5lX5zGjQ3ECD8paOr4zB90zAY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bLUk/rVr9mg8Grt0+oseof/ZGYrqWi1dKh9hnXZSOyYnOqbmP1hiC+XJtFK+mY5SAqTtHIulcZMC5NNd6p9e3EZBFX8kolNZV1MGFfMX0Ia1+zFEzoaZOYUDV/weKBHBEEG/KkjQu9fBaXD2x0Y8k0UwE7rk8heZXUdT7nl/O7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=infradead.org; spf=pass smtp.mailfrom=infradead.org; dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b=d9jJcuA4; arc=none smtp.client-ip=198.137.202.133
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=infradead.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=infradead.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="d9jJcuA4"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
	:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=EHXRB7/imVETNVDOXcTUC9ms6ZMs/OFJyp71NccR36g=; b=d9jJcuA4eotKshcbANKJltUt8q
	dun5lxAt02v+/9qCMij/gb9bMBIMHnYMD5fl2lDH5w8TMO0LTgwOG3hoZLsFYdLn7zh5jgEQzhM7x
	VEjjQ4LYYgP1Y0r09PU4MJDlgsxqT/zDa8qVD0cNDDGrrm7uImMDbeeqOD8suPIAH/yt4e4oOg7Tf
	npivRgJ2F23FZ9/WTwVk6CPPE5syiMP7CDnixr4FKFH1TRNGjXlBJ29MCD/pLx/0+4piPC+xNiXGk
	U7jY7Z5Zs6fJPGC2STQ3YT8JhWIsq9wMM/Qk3TyDTECTgJM15qHc3DtFXI71Y5sAksggGdjjmpHk0
	hxERAxkQ==;
Received: from [38.23.173.23] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkkuv-00000002gEz-1J6D;
	Fri, 17 Jul 2026 15:56:01 +0000
Date: Fri, 17 Jul 2026 11:55:59 -0400
From: "Liam R. Howlett" <liam@infradead.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Sasha Levin <sashal@kernel.org>, 
	ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags, newcomers,
 etc
Message-ID: <zaftqtxgsmk5lytvaskz7sbgprwosg3jzvb7g7znnwnq75bzj2@6mnuqlb7746d>
References: <87wluv7yzc.fsf@trenco.lwn.net>
 <alj4mYFMfZvuarfx@laps>
 <87y0fa7pdm.fsf@trenco.lwn.net>
 <sg6yidkiqfwegabxwkrcb2dhlfkqjquwyad75xqd4j7w7o7gtx@eh6czm5aoxuy>
 <20260717074948.GH1735001@killaraus.ideasonboard.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260717074948.GH1735001@killaraus.ideasonboard.com>

On 26/07/17 10:49AM, Laurent Pinchart wrote:
> Hi Liam,
> 
> On Thu, Jul 16, 2026 at 04:23:19PM -0400, Liam R. Howlett wrote:
> > On 26/07/16 12:36PM, Jonathan Corbet wrote:
> > > Sasha Levin writes:
> > > > On Thu, Jul 16, 2026 at 09:09:27AM -0600, Jonathan Corbet wrote:
> > > >>The use of LLMs in the development process appears to be a clear theme for
> > > >>the upcoming summit.  On top of what others have already suggested, I think
> > > >>we may want to consider these questions:
> > > >>
> > > >>- Do we want to continue naming specific LLMs in the Assisted-by tags, or
> > > >>  put something more generic?  I *think* that this thread:
> > > >>
> > > >>    https://lore.kernel.org/all/20260701-work-coding-assistants-v1-1-a20a94d1d606@kernel.org/
> > > >>
> > > >>  reached a consensus that "Assisted-by: LLM" was better than what we
> > > >>  require now, but it might be good to ratify that in this setting.
> > > >
> > > > So originally I've added the full name of the tool and LLM because there was
> > > > interest in a later audit of the tools to determine how useful (or useless)
> > > > some of the tools are.
> > > >
> > > > If those folks aren't interested in doing so anymore, then sure - we can drop
> > > > it.
> > > >
> > > > But... I find it difficult to see the point of having the tag if we do that.
> > > 
> > > Folks like Greg have, in the recent past, said that it is useful even
> > > without specific product-name information:
> > > 
> > >   https://lore.kernel.org/all/2026070227-payroll-eradicate-8f66@gregkh/
> > 
> > There are a few classes of LLM users, but as more and more people are
> > using LLM, the usefulness of this tag is converging on zero.  We seem to
> > have three classes of LLM users.
> > 
> > We have people leaning hard on LLMs to push more code, but are known
> > developers.  The uses of an LLM can be replaced by using an RFC tag for
> > things that _really_ should be looked at by others prior to acceptance.
> > That is, if they aren't using RFC already.
> > 
> > We have people using LLMs for writing tests or reviewing code.  A tag
> > here is not useful as it seems a false sense of security for reviewers
> > and they may skip it. The LLMs are finding off-by-ones, but the larger
> > ideas are usually sound and the test cases are actually not all bad.
> 
> A clarification here: multiple people have expressed that they find the
> tag useful to guide their reviews, not because it tells them they can be
> less cautious, but because they want to be more cautious, or keep an eye
> open for different patterns of issues.
> 
> There's also been a proposal to replace the model/agent name in the tag
> with information about how LLMs were used. Among the people who find the
> tag useful, there seems to be a consensus that type of usage is the
> important information.

This would go a long way to make the tag more useful.  The way AI was
used is more interesting than the name and build of the agent used, imo.

Thanks,
Liam
