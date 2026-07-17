Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E921D514E
	for <ksummit@lists.linux.dev>; Fri, 17 Jul 2026 14:50:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784299831; cv=none; b=K7K8Hwc+1aQCbsVBpcUeE6MTttEWl77iHSnVDc8SsgcXn//r1KUlp2OKK7qvazvLLUPkVsnsEEPYn5g04GPjJ96eLLSPYbJ730eQn+r5s5fq2WQEio99KLDQzsU1fvNYaeGnKyVGccLxYr1i25sM5xXD1kezU5pYoPZ0cUiRf9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784299831; c=relaxed/simple;
	bh=Ppu9n9bv6M3q8sVgqGVCHyN45bKxe57CrCPtxLWYXYI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TruatqY/Dw9EKO5MlvkQELAwgeDHlLEWXiN+bj6yF/wCrDrV5N+Xp63PXuBnAB/QrbN8NhjqurieAvgbTK9ih/cskCowPeGTVxYCGHYa/Q95megRIqJAIWkttVjFhNFxlZjih+WwA+ocxqZJmNbujbMvrC3Vvr7jlqHUk1+5ivc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=Q0qRPt83; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="Q0qRPt83"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=L7v0tE9C4QwFQacBPITetPStOe1LJQhoiyfH8K/NTQA=; b=Q0qRPt836Qs3BR09eWqed5Qait
	ttzI+BFFEn1dnVuwrr0/CM0fe8gRQwxsUeThHTMkupXE9nXoBvksZkx1mffU95xQA5ch5+fAxWvb/
	yMqylQR/A0DpUvfGI9QUyeZW9aKfmCQz2ssO/O3TRvnSjSNljB3raxOQKkpsRExDjHKs=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1wkjtP-00CpJx-FX; Fri, 17 Jul 2026 16:50:23 +0200
Date: Fri, 17 Jul 2026 16:50:23 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Konstantin Ryabitsev <mricon@kernel.org>
Cc: Theodore Tso <tytso@mit.edu>,
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>, Sasha Levin <sashal@kernel.org>,
	ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags, newcomers,
 etc
Message-ID: <88d147f7-cdf9-4f49-8994-7357e0128066@lunn.ch>
References: <87wluv7yzc.fsf@trenco.lwn.net>
 <alj4mYFMfZvuarfx@laps>
 <87y0fa7pdm.fsf@trenco.lwn.net>
 <20260716215342.30e44c2f@foz.lan>
 <allL7jndw6R-3_8S@mit.edu>
 <20260717-hissing-successful-rabbit-fecc0c@lemur>
 <c8bc1bd4-e0ea-47be-ac19-85f8c6906f56@lunn.ch>
 <20260717-armored-therapeutic-sawfly-e7a3e0@lemur>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260717-armored-therapeutic-sawfly-e7a3e0@lemur>

On Fri, Jul 17, 2026 at 10:32:28AM -0400, Konstantin Ryabitsev wrote:
> On Fri, Jul 17, 2026 at 04:24:15PM +0200, Andrew Lunn wrote:
> > > I'd go so far as to say that we DON'T want to feed unfiltered LKML archives
> > > into the model -- we probably want to lean on the work done by the cregit
> > > folks to identify patch sets that were actually accepted and then work
> > > backwards, creating a subset of LKML that resulted in accepted contributions.
> > 
> > I'm not an LLM person....
> > 
> > Is there no value in looking at patches which got rejected, and why
> > they got rejected, as a template what not to do?
> 
> There is, but this is part of the "tuning" bit that I said would be needed and
> this would require significant amounts of work.

O.K. So there might be some low hanging fruit. netdev makes use of a
bot reading replies to patches looking for 'pw-bot: <status>' in the
message. If it sees status as 'changes-requested' or 'cr' it drops the
patchset from our CI, because we expect the submitter to make a
change.

https://www.kernel.org/doc/html/latest/process/maintainer-netdev.html#updating-patch-status

So these would make good training for the negative side, don't do
this.

	Andrew
