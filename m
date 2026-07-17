Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C43A348C5E
	for <ksummit@lists.linux.dev>; Fri, 17 Jul 2026 15:53:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.137.202.133
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784303592; cv=none; b=n53TNsDQ6KUfXFwFlA3V1PldSEsvMKg4uc3fwN/G9uKP8VyMVeOr2xPOg8+trunnHGCVvbyPbi9lcFf3KmB8ivd9KJg7T+BRc1HV4x37gfSZXEdIwZPtHUwOnocTboWCRW7jzhj1uFP/JOqO95V1dibJqUr0aVQ5YPkAIgfcxY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784303592; c=relaxed/simple;
	bh=yYtCW1yR099R+yPO50U2cXPRCKaOw7d6cgmtDNhTH4E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kYqWNmSPx/NsYY9H8EEJYAH9uBhEakH85mhTN8M5maCv/fk4PYbO7yprlq76GqTWwrwkWiU/rLqkpPvbdkO+u5LL1jrkOGlg8gxH77Il98pfedTCiWu67kLkuA2TkH9dYfILfULLhMH0eDkUD6GSfGtPtg2DRUrAuD4B/zmfXVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=infradead.org; spf=pass smtp.mailfrom=infradead.org; dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b=b8Oa3UfR; arc=none smtp.client-ip=198.137.202.133
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=infradead.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=infradead.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="b8Oa3UfR"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=0fk5qTGMKuYwOGs1Ab4466bDV+6sTsUUm/kSnHBH0wI=; b=b8Oa3UfRk0qISTikl7nz/p1lse
	SD9GNQXIrpiNVlirUza/katL8EIbl/LBnJodgUp1bPJoHyq2q4uOK0EMigBMgZ7vInPDmraz71pL/
	e17gIPBvkxLuEpNv1GyIQLQMkRWcB2ElxFItDnAr+sQSQYpfsCX10Plv9OJJq9ZO/mUPo6R/TQmu9
	FdEJZjtwcO5qf8hvaVhbnG4/AvgXpA/jMuTNqeSs3lmO8oAS0hGFetO2WUvqgTkXWsCkemMB3JXJz
	izVANysoLGbF2nLpHWebfS1JYTu9pa/8g3xbHmfEnbuecwObCU8nOOzFl8GNkXg4/RnsE0zRLSvcZ
	KKhPG0qg==;
Received: from [38.23.173.23] (helo=localhost)
	by bombadil.infradead.org with esmtpsa (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkks7-00000002frg-08sQ;
	Fri, 17 Jul 2026 15:53:07 +0000
Date: Fri, 17 Jul 2026 11:53:00 -0400
From: "Liam R. Howlett" <liam@infradead.org>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Sasha Levin <sashal@kernel.org>, 
	ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags, newcomers,
 etc
Message-ID: <adnloao5zqp7xkpryijdbrbtqo4n2iucfvxn6rtcd23s3hsvgg@fjlzj3jborxc>
References: <87wluv7yzc.fsf@trenco.lwn.net>
 <alj4mYFMfZvuarfx@laps>
 <87y0fa7pdm.fsf@trenco.lwn.net>
 <sg6yidkiqfwegabxwkrcb2dhlfkqjquwyad75xqd4j7w7o7gtx@eh6czm5aoxuy>
 <a6898b221ef656a053352e41cf8fd130ce434d60.camel@HansenPartnership.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a6898b221ef656a053352e41cf8fd130ce434d60.camel@HansenPartnership.com>

On 26/07/17 07:57AM, James Bottomley wrote:
> On Thu, 2026-07-16 at 16:23 -0400, Liam R. Howlett wrote:
> > On 26/07/16 12:36PM, Jonathan Corbet wrote:
> > > Sasha Levin <sashal@kernel.org> writes:
> > > 
> > > > On Thu, Jul 16, 2026 at 09:09:27AM -0600, Jonathan Corbet wrote:
> > > > > The use of LLMs in the development process appears to be a
> > > > > clear theme for the upcoming summit.  On top of what others
> > > > > have already suggested, I think we may want to consider these
> > > > > questions:
> > > > > 
> > > > > - Do we want to continue naming specific LLMs in the Assisted-
> > > > > by tags, or  put something more generic?  I *think* that this
> > > > > thread:
> > > > > 
> > > > >   
> > > > > https://lore.kernel.org/all/20260701-work-coding-assistants-v1-1-a20a94d1d606@kernel.org/
> > > > > 
> > > > >  reached a consensus that "Assisted-by: LLM" was better than
> > > > > what we require now, but it might be good to ratify that in
> > > > > this setting.
> > > > 
> > > > So originally I've added the full name of the tool and LLM
> > > > because there was interest in a later audit of the tools to
> > > > determine how useful (or useless) some of the tools are.
> > > > 
> > > > If those folks aren't interested in doing so anymore, then sure -
> > > > we can drop it.
> > > > 
> > > > But... I find it difficult to see the point of having the tag if
> > > > we do that.
> > > 
> > > Folks like Greg have, in the recent past, said that it is useful
> > > even without specific product-name information:
> > > 
> > >  
> > > https://lore.kernel.org/all/2026070227-payroll-eradicate-8f66@gregkh/
> > > 
> > 
> > There are a few classes of LLM users, but as more and more people are
> > using LLM, the usefulness of this tag is converging on zero.
> 
> It's not just about whether you find it useful, it's also about whether
> it has utility to the project history.  Remember the purpose of the
> original signed-off-by tag was to track copyright origin in case of
> another SCO like allegation.  Given the current US Copyright position
> on generative AI
> 
> https://www.copyright.gov/newsnet/2025/1060.html
> 
> Whether AI is used or not affects the copyright status of the patch. 
> Therefore it is a fairly vital piece of information to preserve, even
> if the current advice changes over time.
> 

I think this supports the fact that the usefulness of the tag is going
to zero, at least in the current form.. but I'm not a lawyer.

On the mm side of thing, we have sashiko looking at things and getting
pointed to the reports, so that means all mm code is getting inspected
by an AI.  Adding a tag specifying that is useless noise, and certainly
does not affect the copyright according to your link.

Are you thinking that, at some point a specific AI might be ruled a
copyright violation and we will need to audit the commits?

Thanks,
Liam
