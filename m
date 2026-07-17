Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0390342903D
	for <ksummit@lists.linux.dev>; Fri, 17 Jul 2026 14:24:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784298263; cv=none; b=bwBv0aOaOGWCBi1m0EX/3+z1laq1yjIE/06amUtMaNFRpBtjPp4nC14uMGitw5+DpbvHzauY8l8Qv59zTobLCkcPJEJvbBqxboJL+cbKFY+DRgGaUc0I9kxE7KW239rv7a/ViaZPuC2KNYAnCgBufCSspCsl2ykJsi1Q4ZHKvvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784298263; c=relaxed/simple;
	bh=o0xKOvUpTXLl6i9L+F4K30zGz0x50qtNh26WLXP8sCc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lDXFTcVEPBC7UCRD/xRDDvK4dGPY4k/63eXkI6w/khGsZzfu6nDWx7b23Oz07PbjVCNbmLd0kJQi7Ary5p9QeJCb1W8EJr4Xjv/V6eiZfXlPgxrC+Vasab39Zlqn+lXsxuyFmoLWpdufLaxuJRKDuGRlVduoJlK1Uk/9pFtr13A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=xriZQdo1; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="xriZQdo1"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=yOdTduftQXHNllRS69A379WRLvwsf27mpdxpXMEI2gc=; b=xriZQdo15R0TR4scQWbTLTEWSj
	h974Yg04ITsnwd+0hVekq+15wcEQLHxurWcuKW11SV0y+YXr+KfO9iBMuwxbO9zxvzgV/qsfhYIUU
	nPFXlbEope+/7YpTpp3Kig0lmWjHZPjnL4nmZfzcGzV4LQRWoMMFos5KuIO34eLLBFj0=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1wkjU7-00Cp7Z-R7; Fri, 17 Jul 2026 16:24:15 +0200
Date: Fri, 17 Jul 2026 16:24:15 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Konstantin Ryabitsev <mricon@kernel.org>
Cc: Theodore Tso <tytso@mit.edu>,
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>, Sasha Levin <sashal@kernel.org>,
	ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags, newcomers,
 etc
Message-ID: <c8bc1bd4-e0ea-47be-ac19-85f8c6906f56@lunn.ch>
References: <87wluv7yzc.fsf@trenco.lwn.net>
 <alj4mYFMfZvuarfx@laps>
 <87y0fa7pdm.fsf@trenco.lwn.net>
 <20260716215342.30e44c2f@foz.lan>
 <allL7jndw6R-3_8S@mit.edu>
 <20260717-hissing-successful-rabbit-fecc0c@lemur>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260717-hissing-successful-rabbit-fecc0c@lemur>

> I'd go so far as to say that we DON'T want to feed unfiltered LKML archives
> into the model -- we probably want to lean on the work done by the cregit
> folks to identify patch sets that were actually accepted and then work
> backwards, creating a subset of LKML that resulted in accepted contributions.

I'm not an LLM person....

Is there no value in looking at patches which got rejected, and why
they got rejected, as a template what not to do?

As a reviewer, most of what i do is tell people what they got wrong,
please change it to do it this way instead. An LLM that can parrot me
when it sees the same errors would be useful, when it is doing
reviews.

    Andrew
