Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F266542A15F
	for <ksummit@lists.linux.dev>; Fri, 17 Jul 2026 14:32:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784298751; cv=none; b=R7UoIz3B8s2+XIezpGR+T71DU84jDvb/ee31r1guFLrw/y0204y7ri781MAKJSmF36nqPr8fXk8t0kY02Dq71ugSOO5UjAeo+CsmQexzMN+HXR7sE18/wXcnlo7bkp8N3E1yCl0TTs7gXXOAj3jcE03aFeTzMwLO39TwnFvewN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784298751; c=relaxed/simple;
	bh=cNA1GS504iiUOVKGkhqVOlFEYC6K4j357tK58UcQU8w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=t/OirkuP+epue+9xxR5i12BzZ4yFAQvB9VvlsIFk+6CgScJEjR4mvOU/AhVLuLvQE7NRznqcWpj0aXSl2roDoiN2qMgVZEElnd1E6MakzH38obv2BdlZjTeWUGukGJ1INmyBtZvtaljvQmedaJQVMMsEjCBzLOwb8qh+et3Tqsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gko4cI5T; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gko4cI5T"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 361AD1F00A3F;
	Fri, 17 Jul 2026 14:32:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784298749;
	bh=qnHVr+H09jHXiQHMtFLCymu3skmYEqopyijHMt/faGA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=gko4cI5TjNO+Tu4Pif/8NNE5pbi21/5XMW367dyQ3x3PRtQxge83/Xxvthx+iNF2w
	 U7/+3G95su/kAZcq7qKSVhJqD9j+9UlWV70wM1oOIsT3ooaJu8RV2whrLpkQWycZbE
	 dS/1dsFxbFwcJ2JBhYEX7IgkOtGzLJSVULK17zBLe5cHC7tCJUcrgS2jnbkksQZcWk
	 ecWb4hnYoEOsTqk9u/pw+rUytTcC3B1jtynVv77R44F3e/vgKMi5oXeRcDOrGTlBZQ
	 grFSG5JlGpJQfvzvYEFrcXbpDv/CYljvV1cHxsrM2aFdkzyNEeRmj1hkJiUBt3qoiW
	 2CHVbHwBhoVqQ==
Date: Fri, 17 Jul 2026 10:32:28 -0400
From: Konstantin Ryabitsev <mricon@kernel.org>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Theodore Tso <tytso@mit.edu>, 
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Jonathan Corbet <corbet@lwn.net>, 
	Sasha Levin <sashal@kernel.org>, ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags, newcomers,
 etc
Message-ID: <20260717-armored-therapeutic-sawfly-e7a3e0@lemur>
References: <87wluv7yzc.fsf@trenco.lwn.net>
 <alj4mYFMfZvuarfx@laps>
 <87y0fa7pdm.fsf@trenco.lwn.net>
 <20260716215342.30e44c2f@foz.lan>
 <allL7jndw6R-3_8S@mit.edu>
 <20260717-hissing-successful-rabbit-fecc0c@lemur>
 <c8bc1bd4-e0ea-47be-ac19-85f8c6906f56@lunn.ch>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <c8bc1bd4-e0ea-47be-ac19-85f8c6906f56@lunn.ch>

On Fri, Jul 17, 2026 at 04:24:15PM +0200, Andrew Lunn wrote:
> > I'd go so far as to say that we DON'T want to feed unfiltered LKML archives
> > into the model -- we probably want to lean on the work done by the cregit
> > folks to identify patch sets that were actually accepted and then work
> > backwards, creating a subset of LKML that resulted in accepted contributions.
> 
> I'm not an LLM person....
> 
> Is there no value in looking at patches which got rejected, and why
> they got rejected, as a template what not to do?

There is, but this is part of the "tuning" bit that I said would be needed and
this would require significant amounts of work. First of all, patches would
need to be considered within the context of the entire discussion, not by
themselves. Subsequent series (v1, v2, vN) would need to be grouped together
and consumed within the same context. Series that resulted in no reviews and
no commits will need to be given a special consideration, because we have no
context why they weren't accepted. It's possible that it was great code that
got missed because the maintainer was overloaded, or if it's useless junk that
nobody even bothered to deign with a response.

So, yeah, we have tons of data, but to be useful for training a model, it will
need to be carefully filtered and weighted.

-K
