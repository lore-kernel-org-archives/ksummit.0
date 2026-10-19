Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=18.9.28.11
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792441746;
	b=uxySXBb4IJkrQgEn6uuJXEiqoweRlqtKKKGcE7cICZQgoaHiCK9w2QN32LWj8OwG6jAs
	 MLl01YoEuo/Ny+6DDGAh8RAAaI8AGn269KUpbNTUz4r8Nh3BrQjTkRUhRBfYH04pWC8rX
	 fOU7cahK50LY9Ly2e0pz+Q2lqCLiQuzzvv4TujXwhWhI1r7eJtUs/g0thYBu2D/BBntYK
	 4tX057wlRvYPoHb14wj5QmCenrSt/926FO2DqhHyzQa8XsNUy0nERkTZrZiv5IOlRFnUO
	 Fu34OBPAIl8LsSSLLD7YcqY+XeSjoGAaC97cHZqNe1gxhfN1h/y8iCWDEDQn6yb61Gg==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792441746;
	h=DMARC-Filter:Received:DKIM-Signature:Received:Date:From:To:Cc:
	 Subject:Message-ID:References:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To;
	bh=lBQQJXPS0c8nHhzRDXav8WgcwPtIGLyWbDIiDbZx1iU=;
	b=bWx+sqOo4foBGqBkydRlJBbYaHjZiO9SZPFb4BPfyuYX5K2ccMU06D4qRdC0HVZMcnxb
	 jQbmRWlVDzH/HM5wwwmKSqmGqCrmIFOfd/c8bxHXdJV7qyM8YfATGVCARwrjke1l10tgI
	 bXbxNyraBlDlbOaE3vxlSFgGxeS628m8mDIWuoYb+6ep7IEIv2APHqn7prwVwuw8G0ao2
	 BfAsDFNnNr3cojcNgfcOx2eF7McUOAU435WRyWKCv2i962dAmLmn7Ab5MUq2Y2mukhoHR
	 avVnWJRlvarCxfSbYYHDP5mKDpNE6HHyoDGYY48QJPaC8fbn/V8ZKjWP8USZehjiNGg==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=mit.edu;
	spf=pass smtp.mailfrom=mit.edu;
	dkim=pass header.d=mit.edu header.i=@mit.edu header.a=rsa-sha256 header.s=outgoing header.b=HOqg0L9O;
	arc=none smtp.remote-ip=18.9.28.11
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113D2606A31C
	for <ksummit@lists.linux.dev>; Mon, 19 Oct 2026 20:29:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 113D2606A31C
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mit.edu
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=mit.edu header.i=@mit.edu header.a=rsa-sha256 header.s=outgoing header.b=HOqg0L9O
Received: from macsyma.thunk.org (pool-173-48-113-115.bstnma.fios.verizon.net [173.48.113.115])
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 69JKSmvT025159
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 19 Oct 2026 16:28:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mit.edu; s=outgoing;
	t=1792441731; bh=lBQQJXPS0c8nHhzRDXav8WgcwPtIGLyWbDIiDbZx1iU=;
	h=Date:From:Subject:Message-ID:MIME-Version:Content-Type;
	b=HOqg0L9Oq9gewSxZCo8lVd6NFqEfVSQXMXMb8m5GIC8r0zOh8dpKRwi4YlTB7FpLb
	 XCMnY+9nRA9fDqrhNfIlKY/owa4Ig9mPc7ak5LdlAcM+8TxucR2p11y+0xFAOsiv3y
	 3zUFdKs4CD3vIkH9s6OFO1ogD0hZ4RbkasziuvQB7ZYLd4If0YYibVTs9H/w7GKgpy
	 9fmqb0VaSf9FAYxNHPh5g6iNhacB5s1X8d4LxCaADK/QA7rPcTST72Wr1gxrX5vybT
	 N/1XuPEDmh03mDJWC2pPTivgXVHyWKOZnuYB7zfVdN8f8sEn7Z1EXpg+dZlqNpbZkw
	 E4WgsWL8+P89w==
Received: by macsyma.thunk.org (Postfix, from userid 15806)
	id 0CBD7219E5BF; Mon, 19 Oct 2026 16:27:48 -0400 (EDT)
Date: Mon, 19 Oct 2026 16:27:47 -0400
From: "Theodore Tso" <tytso@mit.edu>
To: johannes.goede@oss.qualcomm.com
Cc: Jiri Kosina <jikos@kernel.org>, ksummit@lists.linux.dev,
        sashiko@lists.linux.dev
Subject: Re: Patch pre-submission to Sashiko
Message-ID: <atZ4J86j7CXF82HX@mit.edu>
References: <nn69829p-nn62-ppn7-968q-64o246ss90or@xreary.bet>
 <atO3pCuUxI950ftN@mit.edu>
 <3354ebda-5158-489b-a577-5cb10e5d5fb0@oss.qualcomm.com>
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Post: <mailto:ksummit@lists.linux.dev>
List-Help: <mailto:ksummit+help@lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
List-Owner: <mailto:ksummit+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3354ebda-5158-489b-a577-5cb10e5d5fb0@oss.qualcomm.com>

On Mon, Oct 19, 2026 at 01:02:55PM -0500, johannes.goede@oss.qualcomm.com wrote:
> > It's not that hard for people to set up a local Sashiko. and then use
> > either an local LLM, or their own cloud-hosted AI tokens.  Perhaps
> > that's something we can encourage.
> 
> Actually it is that hard. Even if you spend the 2000 - 3000usd
> necessary to run somewhat large-ish models locally the results are
> still quite slow (which by itself would be ok) and they catch
> a lot less then the actual Shashiko service.

I was thinking about difficulty in setting up, but it's fair to point
out that not everyone will have access to a high-end GPU or a M5 Max
or RTX/DGX Spark setup.  On the other hand, not everyone is going to
big development/build machine. either.

So we might need to consider what a hobbyist or student might have
access to, versus a corproate-sponsored emplyoee/contractor at
different companies, etc.  The former might only have a personal "Pro"
level subscription, but some other folks might have company sponsored
token budgets which even in the post-token-maxxing era, might be a bit
more generous than a subscription plan.

As someone else has pointed out, students / hobbyists just use
OpenCode with the review prompts with one of their free models, such
as "Big Pickle".  That or a local quen3-coder-next (my current local
LLM, when I'm not using my employer's cloud hosted models) might not
be as good as Sashiko, but you can find a lot of the obvious issues
first, before you send it to the public list.

	       	      	       	     	 - Ted
