Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6B81DDC1B
	for <ksummit@lists.linux.dev>; Sat, 18 Jul 2026 01:14:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.9.28.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784337262; cv=none; b=o40JyITaSfgflSPWZIY2tzAzKcUUtggteznT+nrrC79h2Kv8DuCBlnQS6B9HfN8tFcSI5ifYnmobUTGFXmB1aFqJ9EeDM1cnjAceqoeR7eCaP9ltjwEhBuBeEcwa36LIRmHU5g3LRBGiKkm0XDv9RgyJPERGHLbH/RXdvYg5ftw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784337262; c=relaxed/simple;
	bh=uOGFZ69s5FFSUjMgtvF/YaFaGgFqcDgdu+qKbqo6xvA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y3O8fTxrzqctZxvSTc9PUCZkkn8jldkIQPhIiEfYmauI2xiwUHq2cQ4JmyfIepc/CutKt5WqjtwVEotjk2+ViGNnP0wFDK7xdbi7B3pZlmsdEPxpoRb2+qCC5ZmrRtexazQGdelfC94HoypummyqeXBthSpfjFc+5COaGxJK9MI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu; spf=pass smtp.mailfrom=mit.edu; dkim=pass (2048-bit key) header.d=mit.edu header.i=@mit.edu header.b=gSm+qZkP; arc=none smtp.client-ip=18.9.28.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mit.edu
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mit.edu header.i=@mit.edu header.b="gSm+qZkP"
Received: from macsyma.thunk.org ([151.240.45.25])
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 66I1DncM011061
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 17 Jul 2026 21:13:50 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mit.edu; s=outgoing;
	t=1784337232; bh=/jYyUkwPFUuz4ZKDQdMcGjCRO9UpYRdJzLmgIx763Ts=;
	h=Date:From:Subject:Message-ID:MIME-Version:Content-Type;
	b=gSm+qZkPpXkS7vD6gYJnKK1ERbLpuVspmSeJYlpWlg22bSiKjWmuRTyLGozCJPZl/
	 0xqXWdz5S0ixifjvYGy+u0z2PIitXL7Qu8c+oszz1mS5IedIwyAt5GmTDi/5luRJdT
	 b/JGnBB7LeAUAEIWKTd5/JNZgkBhY01wIRmwcKlQBFSmtIcOloI1Rd8Hx+Wj+S50aq
	 7TVsLTGXUnlQXaMRVm1ZqMgrKKiiLGpu+Fdp5GpV5guqsJ5Rp5/60dQRKwhjL6X+MV
	 xNyVXj3pONTtCqwB88+14rCFYZH+CikeQw/xUj9GWUoaXhEVS1gkVXbWFnlD2AlOT+
	 M+9IQAH5Zz4Ng==
Received: by macsyma.thunk.org (Postfix, from userid 15806)
	id E63B2A71113; Fri, 17 Jul 2026 21:13:48 -0400 (EDT)
Date: Fri, 17 Jul 2026 21:13:48 -0400
From: "Theodore Tso" <tytso@mit.edu>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Cc: Dan Carpenter <error27@gmail.com>, "Liam R. Howlett" <liam@infradead.org>,
        Jonathan Corbet <corbet@lwn.net>, Sasha Levin <sashal@kernel.org>,
        ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags, newcomers,
 etc
Message-ID: <alrIyYVSN-kReQQU@mit.edu>
References: <87wluv7yzc.fsf@trenco.lwn.net>
 <alj4mYFMfZvuarfx@laps>
 <87y0fa7pdm.fsf@trenco.lwn.net>
 <sg6yidkiqfwegabxwkrcb2dhlfkqjquwyad75xqd4j7w7o7gtx@eh6czm5aoxuy>
 <a6898b221ef656a053352e41cf8fd130ce434d60.camel@HansenPartnership.com>
 <adnloao5zqp7xkpryijdbrbtqo4n2iucfvxn6rtcd23s3hsvgg@fjlzj3jborxc>
 <4adc1ace832afefd30e48f0a05b27b58d9fbd604.camel@HansenPartnership.com>
 <alp0A8ThbUr6uRNc@stanley.mountain>
 <48472b6d7c4803c5bf76235e4a8f5f9f69fcd047.camel@HansenPartnership.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <48472b6d7c4803c5bf76235e4a8f5f9f69fcd047.camel@HansenPartnership.com>

On Fri, Jul 17, 2026 at 02:42:09PM -0500, James Bottomley wrote:
> They're not really enforced at all.  It's the legal equivalent of a
> representation, it just means I read the DCO and I represent I conform
> to what it says.  Externally we have no verification mechanism that the
> person signing off actually did this ... although if they're regular
> contributors the trust factor is higher, and if they get caught faking
> signoffs then the trust factor goes down.

This is something that perhaps we should ask legal council.  The DCO
states (among other things):

(a) The contribution was created in whole or in part by me and I
    have the right to submit it under the open source license
    indicated in the file; or

(b) The contribution is based upon previous work that, to the best
    of my knowledge, is covered under an appropriate open source
    license and I have the right under that license to submit that
    work with modifications, whether created in whole or in part
    by me, under the same open source license (unless I am
    permitted to submit under a different license), as indicated
    in the file; or ...

Given, however, that we don't know whether it might mean that
vis-a-vis code which is generated by AI, we might want to ask
competent legal counsel questions such as:

1) Should we change the DCO to require disclosure if the code
was generated by an LLM?

2) If so, what detail is needed?  Does it matter, or potentially
matter, what model(s) was used to generate the code?

3) Does it matter, or potentially matter, whether the LLM was used to
generate code out of whole cloth, or to fix existing code?  For
example, if the LLM inserts a spin_unlock() call, or modifies the
prexisting code to add a scoped guard to avoid a memory leak, the
chances that this might have copyright implication might be different
compared if the LLM is asked to generate a new device driver for some
graphics card.

4) Does the prompt or series of prompts that were used matter, or
potentially matter?  If so, do we need to record them in the git
commit description, much like we sometimes include the coccinelle
script?

					- Ted
