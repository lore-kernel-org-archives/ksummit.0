Received: from ewsoutbound.kpnmail.nl (ewsoutbound.kpnmail.nl [195.121.94.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD62643B4A2
	for <ksummit@lists.linux.dev>; Tue, 21 Jul 2026 23:24:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.121.94.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784676301; cv=none; b=LvDOyCbzeyXYaj3g1H/PdQw4gMs9iNNIxhmksHAV0usOx8DBdWAVbCbYGfiyhaM1qJWNFKaiUwFEKgBCYtli672ltUYjm7HuADJ1trul3/QaOOvXAKCYH1txolat0h3i5xJtHKCmh2q1SFGtJFQxqecFjhwsm9XHFKVGb9oez24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784676301; c=relaxed/simple;
	bh=bM7eFoClRoQoAnotAEe8J8MxmRukvDcJafgIuYOZ3i8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TK64rO5HiBJ190G5bdhKdzvV1cyJns5/GqXxxieHcgHjOp9T0s5myEcsA6H5l8rwKug3IrriX0U6nDV/Xyg4BPmWKHc0g5XVDm136OMazwiNJ2QeSxIrYgGLuHhzAfwf6XRCEoAZONKaovDSZCtLxJmuEFTkB44a7Plh6RlnptE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=xs4all.nl; spf=pass smtp.mailfrom=xs4all.nl; dkim=pass (2048-bit key) header.d=xs4all.nl header.i=@xs4all.nl header.b=m2qa6aaV; arc=none smtp.client-ip=195.121.94.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=xs4all.nl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=xs4all.nl
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=xs4all.nl header.i=@xs4all.nl header.b="m2qa6aaV"
X-KPN-MessageId: 5dc5606c-855b-11f1-8f54-005056992ed3
Received: from smtp.kpnmail.nl (unknown [10.31.155.6])
	by ewsoutbound.so.kpn.org (Halon) with ESMTPS
	id 5dc5606c-855b-11f1-8f54-005056992ed3;
	Wed, 22 Jul 2026 01:24:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xs4all.nl; s=xs4all01;
	h=content-type:mime-version:message-id:subject:to:from:date;
	bh=91AArmSi6/ZN6uoEJjrJZY9ts+BWsR+FALWAS0ZnItI=;
	b=m2qa6aaVeZGLBvJKuRUnn3jjD2de4NR0eaWWqj+CvoMCUEKtw3y4oBB2wFunDMZ9gV/kDq1Fn4UJu
	 3IOIEiKQgLRTrOgA/AJxXwfNmBp0Dbx/RXLTnzxXmTrtHhPE+QNvjlbjObIf/lxPma+aZtswvF1bNn
	 +3oyCK760GRF3zvGWKIki+1+aPeiFftllgcgaeIhcqJ661aL0qCCscwOyypZKA5qMZ1+J5wt/c2pJT
	 +GIwwA5g1JJUPWmJwaicSgXNOVLeAXsujLiouq63ecbxZl+SKR4DwgQN/4HP9LyUoGzSb02MFRlQx0
	 8dWbPhDFJSL7nPTn6DBv6tdVuXSNgng==
X-KPN-MID: 33|THmluRkyclCt3b6FbyYoBWmpm/3Dgo08t+b/Wcu3eApnMcvfdV2eC5hBfkrBxaZ
 Do510bJQrccDH+42m1QejzPZ7kNEhO4QCp+CEWyHrq74=
X-KPN-VerifiedSender: Yes
X-CMASSUN: 33|ESckbk6x/mwDSX/E31ynRuCM4Yl3+eB4urPzhbGMAIeDAUhZhtd/XZtl2EohrQh
 c/2KsgNj3QXrs4WJoUqf1cg==
Received: from localhost (unknown [178.226.150.234])
	by smtp.xs4all.nl (Halon) with ESMTPSA
	id 5d5fcedf-855b-11f1-a787-00505699772e;
	Wed, 22 Jul 2026 01:24:48 +0200 (CEST)
Date: Wed, 22 Jul 2026 01:24:48 +0200
From: Jori Koolstra <jkoolstra@xs4all.nl>
To: Jonathan Corbet <corbet@lwn.net>
Cc: ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags, newcomers,
 etc
Message-ID: <al_-mbbw8r4otafe@lt-jori.localdomain>
References: <87wluv7yzc.fsf@trenco.lwn.net>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87wluv7yzc.fsf@trenco.lwn.net>

On Thu, Jul 16, 2026 at 09:09:27AM -0600, Jonathan Corbet wrote:
> The use of LLMs in the development process appears to be a clear theme for
> the upcoming summit.  On top of what others have already suggested, I think
> we may want to consider these questions:
> 
> - Do we want to continue naming specific LLMs in the Assisted-by tags, or
>   put something more generic?  I *think* that this thread:
> 
>     https://lore.kernel.org/all/20260701-work-coding-assistants-v1-1-a20a94d1d606@kernel.org/
> 
>   reached a consensus that "Assisted-by: LLM" was better than what we
>   require now, but it might be good to ratify that in this setting.
> 
> - There is a lot of LLM-generated code that lacks an Assisted-by
>   disclosure.  Often, that seems to be the result of ignorance of the
>   rules; those contributors will start adding the tags when informed of the
>   requirement.  But others just lie about it.  A rule that is widely
>   ignored does not help anybody.  Can we come up with a way to get better
>   compliance, or should we just drop the tag entirely?
> 
> - There are many first-time contributors coming in with LLM-generated
>   patches.  At times, I could swear that every one of them is focused on
>   documentation typos, but the truth of the matter is that they are
>   reaching into subsystems all over the kernel.  We have some brand-new
>   contributors making significant changes to dozens of subsystems.  An
>   experienced developer would be hard-put to truly understand what those
>   changes are doing; a newcomer is unlikely to have that understanding,
>   and is unlikely to be around to fix eventual problems.
> 
>   Our maintainers are not scaling to handle this new flood, and I fear we
>   are going to see some unfortunate things merged.  One LLM-driven newcomer
>   recently nearly succeeded in establishing himself as the maintainer of
>   lib/.  How do we hold the line against this stuff while remaining open to
>   new developers?
> 
> - Our process is becoming increasingly dependent on proprietary tools.  We
>   have done that before and, in 2005, it went pretty badly for us - and
>   could have been worse.  How do we prepare for the inevitable rugpull?  I
>   raised this last year, and it was largely brushed off, but I still think
>   it's something we should be concerned about.
> 
> That's probably enough :)
> 
> jon

Hi Jonathan,

Paul McKenney made me aware that this list is in fact public, so I
wasn't aware of this discussion. I thought only the commitee members had
access to that email; maybe that is something that should be more clear
in the announcement. Ah well... it was proposed in good faith :)

Best,
Jori.
