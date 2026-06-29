Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A636410D3E
	for <ksummit@lists.linux.dev>; Mon, 29 Jun 2026 14:29:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=90.155.50.34
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782743390; cv=none; b=CCjxLvv76vyBEln0LzKJYT8e5zBDGc6bEG9/wOVEp+Q8Qj0QoKO7fHp+oDEh+n9zTQQNHBBVPadR5EY8PXdpcBDtPOGOfX6fpZTN45PG7T1/xCV/ATerZw6mfUgzhm648jZtbb1JvFKf3TDoJQd24waqWhK5t1IJ8slX0Iv7NNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782743390; c=relaxed/simple;
	bh=vRunn1CektrccKZ2akiMDyrwrOskpPoiVolI2Txgtos=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=FSPcsMvL5JDn63yDFui1fLU8mtlDRigEbeJwwc8TLHRcS5rl1gzwle3TccXWc7fr5M3UblkGMNNWXs3P/W/UmqtuuW5AcbAEaSclN6hr+2OPOn5EA/CDoj43j+xzy+x6ubpk4moVd+fRBFHWZLkfSTJVhtC1CTIZ2clvSL9BEV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=infradead.org; spf=pass smtp.mailfrom=infradead.org; dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b=duESylJi; arc=none smtp.client-ip=90.155.50.34
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=infradead.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=infradead.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="duESylJi"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:Message-ID:
	Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=B4FmwstoS4GD1i16x0CzhIpaal9fKyJ7grRLUYJmfsA=; b=duESylJif1ntVeiNW1tpeAqSVr
	qZJmkhggPHAmqb0lvPyulE582N9gx0V1gGT+yicd6ROl91AvJcGKJFCjHBx8TQYWCpP34v0bk8Ddz
	l01sY65ZQ0l8sXyvy5IxRfRd6nMAz8wg3aBZB6mGSuthiKIUlYA102s00edA6/HwlsIwgWTWTJvEf
	gUdI7oa7iS6BiZ/4hCtCke053NKmbNEK0ZXF9wcOwKiEJ/O3xpkNNcWdyyhqnvgh8Q7FpchJi5SfF
	9X/9Iv+RRVxkzF6EYU0jT9cYIDTtShEZrzexO+Ae13Ja40b+IVVqLhIzOWvWLFfO0uih4fYAl8Iv4
	uxTXGvWw==;
Received: from willy by casper.infradead.org with local (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weCzX-00000003N5n-0Mpb
	for ksummit@lists.linux.dev;
	Mon, 29 Jun 2026 14:29:43 +0000
Date: Mon, 29 Jun 2026 15:29:42 +0100
From: Matthew Wilcox <willy@infradead.org>
To: ksummit@lists.linux.dev
Subject: [TECH TOPIC] Implementing malloc
Message-ID: <akKBVsFBro_4QM74@casper.infradead.org>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

malloc() is a standard part of the C library.  Yet we force new Linux
programmers to learn the difference between vmalloc(), kmalloc() and
kvmalloc().  They even have to acquire an understanding of the difference
between GFP_KERNEL and GFP_ATOMIC.  If they are particularly unlucky,
they may have to understand other combinations of GFP flags.

This topic proposes that we should implement malloc() and calloc().
Various options will be discussed, their increasing implementation
complexity corresponding to utility in a greater range of situations.
This will also benefit Rust as we can use the same infrastructure to
implement std::alloc.

We'll also discuss the semantics of corner cases (fallibility, zero
sized allocations, overflowing allocations and very large allocations)
as well as out-of-bounds and use-after-free detection.
