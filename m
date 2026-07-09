Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3FBB4195C5
	for <ksummit@lists.linux.dev>; Thu,  9 Jul 2026 17:39:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783618767; cv=none; b=UWv5b+3DlrkCiNW3U+1yitdQOII7AEil2ufTK85tFHLvSXT7QigVQwSZy5JaL0NoTVZsLEyYjM6prT0iy7G1KWq/XB8rqEfhQyEOYkd+tCFU2bsdAMW8icR7ADBX5oii5d2DRFBAOOq9Fm63fXm8HbE5bhJpSDODFh/gxL60nLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783618767; c=relaxed/simple;
	bh=E4ovvmThRcO2FwUzENGe2+jM/2Pl91yKmsTDDpEYVbw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=l4OOwrvQgCDHaAjnI1CvDMaFEpKcpulbvSMZFIyInLrAOg/0tSeLT1xA/l/7LZr3M7GO3V0WC2agcAArxpYC9fjNXv/LXj05F5fKndZIpyTgMtWRwbBcAPoWZ/+Vjzwt8exn5OTxXcOUd/cVaCAdNLnXmiXfGylNBvZayfnQjck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=a7VgOqM0; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="a7VgOqM0"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DCDD01F00A3A;
	Thu,  9 Jul 2026 17:39:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linuxfoundation.org;
	s=korg; t=1783618766;
	bh=xAQb54+V8G13THqz+57EW4HMUCjju2No12MKLg+kBbE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=a7VgOqM00ahK/CUBGPri1cqGa6gc7FBM89qK0SSkvOIRO7V376ADKK1AOcG41xIOw
	 cmOdD6F5y+ZZ8lRYKhqM4D9LKMcIzXH/+gf5LVndEwYqyoJPFHhigPahyAoq+B3a5Q
	 VOVp2i8Wz1IISyewZu1P1Fx7V/xA7wbBRfe6YDPg=
Date: Thu, 9 Jul 2026 19:39:22 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "H. Peter Anvin" <hpa@zytor.com>
Cc: Matthew Wilcox <willy@infradead.org>, Kees Cook <kees@kernel.org>,
	ksummit@lists.linux.dev
Subject: Re: [TECH TOPIC] Implementing malloc
Message-ID: <2026070951-bovine-exporter-23e5@gregkh>
References: <akKBVsFBro_4QM74@casper.infradead.org>
 <202607090956.6381F35@keescook>
 <ak_WOfpcaZIuh99t@casper.infradead.org>
 <6C80C5B3-7338-41C4-B85D-9526FCA0C8DA@zytor.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6C80C5B3-7338-41C4-B85D-9526FCA0C8DA@zytor.com>

On Thu, Jul 09, 2026 at 10:30:53AM -0700, H. Peter Anvin wrote:
> On July 9, 2026 10:11:21 AM PDT, Matthew Wilcox <willy@infradead.org> wrote:
> >On Thu, Jul 09, 2026 at 09:58:37AM -0700, Kees Cook wrote:
> >> On Mon, Jun 29, 2026 at 03:29:42PM +0100, Matthew Wilcox wrote:
> >> > malloc() is a standard part of the C library.  Yet we force new Linux
> >> > programmers to learn the difference between vmalloc(), kmalloc() and
> >> > kvmalloc().  They even have to acquire an understanding of the difference
> >> > between GFP_KERNEL and GFP_ATOMIC.  If they are particularly unlucky,
> >> > they may have to understand other combinations of GFP flags.
> >> > 
> >> > This topic proposes that we should implement malloc() and calloc().
> >> > Various options will be discussed, their increasing implementation
> >> > complexity corresponding to utility in a greater range of situations.
> >> > This will also benefit Rust as we can use the same infrastructure to
> >> > implement std::alloc.
> >> 
> >> No surprise, but I strongly disagree with this. Those APIs are flawed
> >> and we shouldn't emulate them. This is why we just removed strncpy(),
> >> for example.
> >> 
> >> Allocations need to be type-based, not size-based. When we force people
> >> to reduce it to just byte count tons of metadata that can be used by
> >> both the kernel and the compiler is lost. The size is a by-product of
> >> "what do you need space for?" "I need X many Foo objects" or "I need
> >> Bar with Z many trailing Baz objects" or even "I need a plane of pixels
> >> X by Y". The uncommon case is "I need X many bytes from this stream".
> >
> >I agree that many memory allocations benefit from providing more semantic
> >information to both the compiler and the runtime, as you suggest.
> >What I don't think we benefit from is "And you have to pass this magic
> >GFP_KERNEL argument too.  Unless it's GFP_ATOMIC or something".
> >
> >Maybe I'm confusing / distracting by framing this around "Hey, malloc()
> >is a great interface and we should implement it" when what I really mean
> >is "GFP flags suck and we should strive to redesign the kernel so that
> >the vast majority of allocations don't need them".
> >
> >I'm happy to rephrase the proposal in that way if it'll help.  I thought
> >that malloc() would be the right vehicle for getting my point across,
> >but it seems to be a distraction.
> >
> >What I really don't want to see is a whole pile of Rust changes to
> >accommodate having to pass GFP flags to memory allocations.  Would that
> >be a better vehicle for the discussion?
> >
> 
> If Rust can't deal with different memory allocators then Rust in Linux was a huge mistake that we should rip out right now before it is too late.
> 

Um, rust already handles the GFP flags just fine for the allocators.
What is missing from what is there today?

thanks,

greg k-h
