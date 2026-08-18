Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 771B747D920
	for <ksummit@lists.linux.dev>; Tue, 18 Aug 2026 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787073954; cv=none; b=TiSUie/b0S997DLRdUW7UAuxXQZG+KEqGIzK2uNoSWJEOI3kRDKB7KLzhmhneD4c17doE2KGihRVz8OyMI2qwjLpRUteEF3UEPDboXZdjlbafRgrGpW9zYRqkjsteRZeI5WmiX+u60Tnup8ixFISWTa4srpeR9c0gvFkOsGzU0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787073954; c=relaxed/simple;
	bh=5oNB8pfsLDCP2/IFajESPPHmmSQRatCH3WVBqXGtnew=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GWDMK8ucHyB4IWft5pOtWQOFyEiosJRX7fD1/YLJAE/FpB0SzYW/AIVygpXN7h0GPfxchis1gZObdTcEDd4n8wpS+hN3BPI8+UEkdZiFjSufDIGITlRPPmZ74Qtgme3rc7nLKtSmpZXIDTr6VCDZ2ZQcP5sAfleykD5e4Or++WQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oZDII/B4; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oZDII/B4"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97C7B1F000E9;
	Tue, 18 Aug 2026 17:25:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787073953;
	bh=qmq9MK/S4W931ItbYQChBFNxFDVjTAbmZEBOAwvsCVI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=oZDII/B4OYSTLZqhkiG/xO/7P+pZDGqQwo5lFc78+LvCzk7QINa8IntSEx9+XLs0p
	 WeAICf9fSXpcCg9YqDvWYsO7klzs4cODViBjjLpGmSovcxeRhl42C3oF5l1QWEeeZe
	 tHEP3qrUFDaG0i96gl/QtAY05IgOfXQiDOZRRJYZ2yWAf9c1e4mdSyZop9aZIFtKDp
	 0HRPS9ZmhKQlUYESP7Y6RO9gVLCJE0xXn5qae/YzYk8Yn2vLlNFOBTwoc3JFlPBX+g
	 r9po2TaUqFrOdSd2GinFTON4Rgbmh7G8JLzWkKT5JyFc4HmPyIpsUSzu8Nv7K1xgJm
	 ofbk5rtphAccQ==
Date: Tue, 18 Aug 2026 18:25:47 +0100
From: "Lorenzo Stoakes (ARM)" <ljs@kernel.org>
To: Theodore Tso <tytso@mit.edu>
Cc: "Liam R. Howlett" <liam@infradead.org>, 
	Steven Rostedt <rostedt@goodmis.org>, Jonathan Corbet <corbet@lwn.net>, 
	Linus Torvalds <torvalds@linux-foundation.org>, James Bottomley <James.Bottomley@hansenpartnership.com>, 
	ksummit@lists.linux.dev, "David Hildenbrand (Arm)" <david@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>, Dave Airlie <airlied@gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
Message-ID: <aoSNkGUJUxWfUPaM@gremlin>
References: <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
 <anfUgiByUVffXlrQ@mit.edu>
 <87y0efi08u.fsf@trenco.lwn.net>
 <20260809170918.218792b2@gandalf.local.home>
 <anmHaRzbnY7rtLX8@gremlin>
 <20260810092003.5fda8e06@gandalf.local.home>
 <1BD1C7E7-CCA5-4BBB-94D4-83A7706E2579@infradead.org>
 <anppSi8oQvvODOI2@mit.edu>
 <aoRwK2L8CjtnhTK7@lucifer>
 <aoSIANv2L18fV4RN@mit.edu>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aoSIANv2L18fV4RN@mit.edu>

On Tue, Aug 18, 2026 at 12:45:52PM -0400, Theodore Tso wrote:
> On Tue, Aug 18, 2026 at 03:51:16PM -0500, Lorenzo Stoakes (ARM) wrote:
> > TBF I did make concrete process suggestions myself here:
> >
> > https://lore.kernel.org/all/anntucHhrzF_b4sy@lucifer/
> >
> > And here (documentation):
> >
> > https://lore.kernel.org/all/anntucHhrzF_b4sy@lucifer/
>
> These are the same URL; cut and paste error?

Yup sorry I hadn't realised I'd made both points in the same email :)

>
> > And they got ignored, so I'm not _entirely_ sure that's what you
> > guys are after here :)
>
> The above message was essentially a suggestion to (a) improve the
> Maintainer Summit Call for Topics, and (b) document the full process,
> with all of the details in the Documentation directory.  The first is
> something that wasn't immediately actionable --- it's something to do
> for next year, and the second is one that we could do eventually, but
> to be honest, it didn't seem super urgent given that it's documented
> in this e-mail thread, and many of us have other things with shorter
> timelines (such as the merge window) that is keeping us busy.
>
> I'm sorry that you feel ignored, but we all have tons and tons on our
> things screaming for our attention.

I mean honestly that isn't very convincing - the entire thread was
low-priority and we're all very very busy.

So I'll eat my hat if either of those suggestions ever actually get
actioned :) [or you can choose a suitable actually edible alternative if
you hold me to this ;)]

It's all rather embelmatic of the MS as a whole - appearance of community
but structurally not that. And what complicate it is that it probably _has_
to be that way for things to be functional, as discussed ad infinitum in
these threads.

I do still feel that we should just be honest about that (that's what my
suggestions were about), but you know, hat, fork :)

>
> Cheers,
>
> 						- Ted

--
Cheers, Lorenzo
