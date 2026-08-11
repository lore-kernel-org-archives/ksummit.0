Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 718ED414A30
	for <ksummit@lists.linux.dev>; Tue, 11 Aug 2026 09:06:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786439203; cv=none; b=oo+1M7Alhpzgz1XAYtl86H1xUZyEFmaI6h1yB/LfRiToA1G4KV0ZfcZuDoFYSTfu1g6oYzNivJ1h3gTA2dwUhm46suh1EG24XNydpim+iGV03QbYBEjMZ0Mm7GInOCnyfurHF1vuQkValprDH7o5/IacYVp7/kug3ijqOFdqg1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786439203; c=relaxed/simple;
	bh=Tjo0Dmd/xC6XrpSsiQkgmGU6GKUPNZRQcVgJ6A9xlDY=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=bIxQB1lxz+rZ4GruOIwCmyNdSdEvBHIe+MtCwieWmwJUyD4Ci2WV4mR6auCw+VXBAL/jevtuiH7jOgATz0q313HCvLGPJO4GBtwjYXg2WFNWJN+cuCIOEIwAWfgvF1XJ2/bFBOBGzihascgOTh1Eiz5rmlJ7/TT46y5hMq9ZwSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OZ4iwgkV; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZ4iwgkV"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7FE8F1F000E9;
	Tue, 11 Aug 2026 09:06:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786439202;
	bh=61G5Ost+qQTIFDJaVbbSjoCMDl3hzv5JjT2AMezuBvA=;
	h=Date:From:To:cc:Subject:In-Reply-To:References;
	b=OZ4iwgkVEyBPjwc2++HsnZrKN80aaUHSJuo8vDD2p9Kk22FzO+Q6Dhuk65PuiMz8Y
	 xFJRLPBFjRgcjz7W4/diG0JtcbXvOxXW9SGga40+80UMmrBh07FW5VcCeVxn82TjaU
	 Z5ZL0iCOT1us4y5Z6W5GNX9zvmIQZXz1TZPUPE/LHis7cKglKAN5ygLj2HnAbGSZ+u
	 04mtgg1MLO7Es6p3z/wA6ZwfvyDhBpPRZAYE4MCa1FHJchy135Y56nwu+x0pAdEJWv
	 riPDEgXhM4FbWCHx9UkYmg1zF0SWk8KFAyOZUSTX/tIeLOlqkv+iCruSPONf7SHvJH
	 0WmMSMM6SNcRg==
Date: Tue, 11 Aug 2026 11:06:39 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: "Lorenzo Stoakes (ARM)" <ljs@kernel.org>
cc: Dave Airlie <airlied@gmail.com>, 
    Linus Torvalds <torvalds@linux-foundation.org>, 
    Steven Rostedt <rostedt@goodmis.org>, 
    James Bottomley <James.Bottomley@hansenpartnership.com>, 
    ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
In-Reply-To: <anrWlBpyy6fmfCu4@lucifer>
Message-ID: <7r64n824-1152-7n78-87o1-rq06nso5pop2@xreary.bet>
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com> <20260806194153.6443a3ba@gandalf.local.home> <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com> <anii3u-87kSrB9K3@lucifer>
 <CAPM=9tx7izyUJr_XVQju26fevzepZ-L6vs5vgH2aib9jPPjvRA@mail.gmail.com> <anl7CgkKb6tORavG@lucifer> <CAPM=9tybMTBw0iz2BSQ_p+3ybk=SmoLuRgiyyE6BP+=1+2RkfQ@mail.gmail.com> <anrWlBpyy6fmfCu4@lucifer>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Tue, 11 Aug 2026, Lorenzo Stoakes (ARM) wrote:

> > In my opinion, quite a lot of the problems that get raised by the CFP
> > on this list, often get resolved on this list, which to my mind
> > suggests we just need to have a better year round maintainers list
> > that doesn't get consumed by patches or internal subsystem matters.
> 
> Yeah that's not a bad idea!

I think that the workflows@ ML is more or less pretty much exactly for 
this purpose ... ?

-- 
Jiri Kosina
SUSE Labs

