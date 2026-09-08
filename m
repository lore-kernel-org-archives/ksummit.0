Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B2DB545D8E
	for <ksummit@lists.linux.dev>; Tue,  8 Sep 2026 13:56:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.9.28.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788875806; cv=none; b=GUlMPSW8zeGLt/CWVHGLxyJmTSDmrnWppL+cndlce/jmxkKvwLQBuFbUraDpbtnIk+Ku2E8kR/n+ToZsAxtP1DyKPl4PdSF66UTpnNLijNUV8gG4/suQTDDuvSTnHt/u5ptK5r9iaTmcB0wnD0viqWDQVeLbbtPcG0xR1xHadx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788875806; c=relaxed/simple;
	bh=GRUufrBJD/ZDZ5SXtHQQVAM2IBZzR3ZGCqlYBWQuhYM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=G8zYp0ABsWcIf98HNIyzumLFyFHgybD6Wb1Rq17GeuXLhjSe0k52MG/8h1QbNx0kYwY2OdHzJKn3jqE3AOH7rzM6nBAj32R3zCKnLPKcgtZUF2UUODVkjb+QKyEQsMkLfTHVrLMh8KWcpBxgxBxs4H5e0Veyw0qwDTfBJ4S9SCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu; spf=pass smtp.mailfrom=mit.edu; dkim=pass (2048-bit key) header.d=mit.edu header.i=@mit.edu header.b=GiW9yZwF; arc=none smtp.client-ip=18.9.28.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mit.edu
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mit.edu header.i=@mit.edu header.b="GiW9yZwF"
Received: from macsyma.thunk.org (pool-108-26-156-127.bstnma.fios.verizon.net [108.26.156.127])
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 688DuR3Q016737
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 8 Sep 2026 09:56:28 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mit.edu; s=outgoing;
	t=1788875790; bh=Jnl9iGmqrL2EUuXaTbhzyuEIY+jf+m4r8Qlkz43dSIE=;
	h=Date:From:Subject:Message-ID:MIME-Version:Content-Type;
	b=GiW9yZwF2P8KaF5kDd8Lf2dcjIgC9tkE04mMcCxeNCiVfaDSk8XFvvC09G8wrQVjd
	 VqS0Kr8JtL0Ua7V8zWfHzqLy3VT1Tu7Ulm3BLSfMLus6/ksP3R77oVGn15ofGYdLWY
	 Bb/+L914qfCLcxGaHNikdyOYlm1OosjmevRtaCKRY1KLLOROWv6xCduah6dLaeHzFD
	 oW8IjNnx4rsXn7K7tfts8BJzrF9yfJwi4pupfaTSbNw1NcAtq4xH3yFwbqbZQqmvhv
	 +am0itp+F2+bw5/KNwc6rwT5ckFz3jMjNsnOyzQ2xXR9AKMyzuZIPoWrLOuRRdl6Q9
	 0LjIU5/M88xnA==
Received: by macsyma.thunk.org (Postfix, from userid 15806)
	id 4651013DD27D; Tue,  8 Sep 2026 09:55:27 -0400 (EDT)
Date: Tue, 8 Sep 2026 09:55:27 -0400
From: "Theodore Tso" <tytso@mit.edu>
To: "igor.stoppa@gmail.com" <igor.stoppa@gmail.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, ksummit@lists.linux.dev,
        istoppa@nvidia.com
Subject: Re: [TECH TOPIC] Improving kernel security & integrity by
 generalizing ad-hoc safety mechanisms
Message-ID: <aqARgWGWYG5kZW9g@mit.edu>
References: <CAH2bzCTjmRnSj5ppEEOKf7_jky54xAK6FroHhs207CqcqXJPaQ@mail.gmail.com>
 <2026090747-carless-trio-ae92@gregkh>
 <CAH2bzCSn4C94iWHdwWv=vwSnattvLTjYN2EPiP=6kx+wBtFfYQ@mail.gmail.com>
 <ap-AmsGgDNFYLlw8@mit.edu>
 <CAH2bzCS8DzBqR_4ELtg__4x8dX0+SYihKK0LLy3-pJmu=pRnsg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAH2bzCS8DzBqR_4ELtg__4x8dX0+SYihKK0LLy3-pJmu=pRnsg@mail.gmail.com>

On Tue, Sep 08, 2026 at 01:14:48PM -0500, igor.stoppa@gmail.com wrote:
> AFAIK PREEMPT_RT was driven by specific functional needs only.
> We need to deal also with additional regulatory requirements that affect
> the shape of the code, not only its behavior.
>
> To the best of my knowledge, this aspect is perhaps a new addition to the
> typical kernel coding criteria.
> And that is what I wanted to discuss.

If the certification requires restricting and slowing down what 99% of
the other Linux developers need to do, supporting 99% of the business
value of Linux, it's not going to be something that people will be
enthusiastic about.

In practice, certification requires paying $$$$$ to a certification
agency, so realistically, the vast majority of Linux kernel releases
will not be safety certified.  So tying everyone's hands when going to
have approximately business value most of the time, and only if *all*
of your Linux "safety" patches are accepted, and you would then have
veto power over all future Linux development.... is not going to be
something that most people would consider the worthwhile just to
extend Linux's world-wide domination by 0.00001%, and where your
company would be capturing nearly all of the business value.


Worst, you're asking us to buy a pig-in-a-poke.  There are no patches,
and you want us to agree ahead of time to constrain and inconvenience
tens of thousands of kernel developers for something that won't
benefit most of them or their companies?

It may be that some of your patches will improve safety, without
actually achieving full certification.  Call that "soft" Linux safety
as opposed to "hard" Linux safety, much like "soft" vs "hard"
real-time.  If there cheap ways that we can make Linux more robust
without compromising speed (so no checks on fast paths) and without
compromising maintability, great!

Yes, it's slower, but there are no shortcuts.  The PREEMPT_RT patches
show that it is possible, however.  (But only if the business value
makes it worthwhile.  And if business value isn't strong enough, they
why should we pay the cost ahead of time, and accept a huge amount of
developer velocity and aggravation?)

Cheers,

							- Ted
