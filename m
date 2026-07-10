Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2A341B374
	for <ksummit@lists.linux.dev>; Fri, 10 Jul 2026 11:44:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783683881; cv=none; b=ePZcQQduNds3cheWIxMTMw3An9qYYfgvtTNZldCIsbpV7fXVbkZPwgJbvaMEwBqUZc0zXTVXEkYv04QA9HCgU2LUoH3fn0RqM5X8Ehr4LkuWI7KpvqWpPBUXNIGEoygcX3houTBbKGfQRfL+1DxUBD+191cjmtLYskwDHWcAa9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783683881; c=relaxed/simple;
	bh=c6m6WBZurZsdw9FftoLvNiIJw9pdSiOMDHdcfbASVPg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=u/jaMnWEP+qF+lWKIb04N0iv4P+ic/Cf8uI3DLhaboQCTKUF9He30RRl6IAbgYwpMD/GEuWG0MKiYCgI+s8HHbWsXJffPtXVMJyyZ2liFDE9El/8oUwMUCFwfov4Ij1W84bTr18yuUjh2LzHBHKJVsA9dIoQICYaXxzTVoF1o6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=sQSrmd/x; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="sQSrmd/x"
Received: from killaraus.ideasonboard.com (2001-14ba-70f3-e800--a06.rev.dnainternet.fi [IPv6:2001:14ba:70f3:e800::a06])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 19CD012F;
	Fri, 10 Jul 2026 13:43:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1783683812;
	bh=c6m6WBZurZsdw9FftoLvNiIJw9pdSiOMDHdcfbASVPg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sQSrmd/xLPan2grdU7PTMWD2KMDufvBnTgbVyFMUnfnwUIB+4MWEK38aJOsSotJT7
	 +KQeOzqy43DGE+FAJjsoYKi7nvz8NqHBuwy/Wn4h+338bQ6VhTO9Aj28z6cLTtXWEg
	 n1/6mH7tfY+qMjiBXvRIN3BP4M2C6lZzZ50pdOFA=
Date: Fri, 10 Jul 2026 14:44:21 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Dan Carpenter <error27@gmail.com>, Matthew Wilcox <willy@infradead.org>,
	Kees Cook <kees@kernel.org>, ksummit@lists.linux.dev
Subject: Re: [TECH TOPIC] Implementing malloc
Message-ID: <20260710114421.GA1127719@killaraus.ideasonboard.com>
References: <akKBVsFBro_4QM74@casper.infradead.org>
 <202607090956.6381F35@keescook>
 <ak_WOfpcaZIuh99t@casper.infradead.org>
 <ak_rr7I4wVPieWYT@stanley.mountain>
 <CAMuHMdUBHvY30ZuV=mpnkQ0Fip4vk0iqb252H9YNiOJ=AtPpyg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAMuHMdUBHvY30ZuV=mpnkQ0Fip4vk0iqb252H9YNiOJ=AtPpyg@mail.gmail.com>

On Fri, Jul 10, 2026 at 01:21:23PM +0200, Geert Uytterhoeven wrote:
> On Thu, 9 Jul 2026 at 20:52, Dan Carpenter wrote:
> > On Thu, Jul 09, 2026 at 06:11:21PM +0100, Matthew Wilcox wrote:
> > > I agree that many memory allocations benefit from providing more semantic
> > > information to both the compiler and the runtime, as you suggest.
> > > What I don't think we benefit from is "And you have to pass this magic
> > > GFP_KERNEL argument too.  Unless it's GFP_ATOMIC or something".
> >
> > You know that most people are using kzmalloc_obj() these days and so
> > they don't pass GFP_KERNEL...
> 
> You know that most people are using the devm_*() allocators  these
> days and so they do pass GFP_KERNEL? ;-)

I know that lots of people overuse the devm_*() allocators in ways that
are very harmfull :-)

Jokes aside, I think Kees mentioned he would extend the object
allocation API to devm_*().

-- 
Regards,

Laurent Pinchart
