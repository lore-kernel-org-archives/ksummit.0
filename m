Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB5E238AC99
	for <ksummit@lists.linux.dev>; Fri,  7 Aug 2026 03:23:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.9.28.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786073028; cv=none; b=AuDRaKebDxCPp/5yE8pHZ0sqC3avGwSB6kfCFY4cKPaqpRkU6ZZQjxl/NgOeetCcb7kj1Rkf+jmRzx0ODILUwH6sbmfPMmFfy8RcHxsEFybProBwU87mALqe4AhAKZEd+e1sCe+MP18X7j7cep8yRwPJJVszA9MKcc6OqgQ4et4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786073028; c=relaxed/simple;
	bh=UbIvgCi8U5R3yz3kt++CI72zPuitCyWGWj4LusP8bRA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PPwqEVBjP7jnp8TTlku0CRambucdTY/dHZ+iQBqew3opnGTK07ENH2to4LcaineGH9ZjyX8JPtqEEMRrl3Uw+5lcIHipdB5oovAsEhdompGrgbXz7DXGo+CRkR2RjUTl903BKPJIlgWaBvEITSswSWC4ksSpYutnBfy91JIPmNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu; spf=pass smtp.mailfrom=mit.edu; dkim=pass (2048-bit key) header.d=mit.edu header.i=@mit.edu header.b=Aiv0+7Sc; arc=none smtp.client-ip=18.9.28.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mit.edu
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mit.edu header.i=@mit.edu header.b="Aiv0+7Sc"
Received: from macsyma.thunk.org ([67.208.186.90])
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 6773NaUV020000
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 6 Aug 2026 23:23:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mit.edu; s=outgoing;
	t=1786073019; bh=Po8J6e/3SU7cSDjXzSD9V0uZdHckvMMCKLZrq2WDlHw=;
	h=Date:From:Subject:Message-ID:MIME-Version:Content-Type;
	b=Aiv0+7Sc1s7/ZQDGXNuogc+nev00bH9ZVLjYPtBJNj0cht8Xdf4UNrtjO4sbE2A4M
	 PY8dZj2/9dMSbS+fTAlilN7iaDZLa+KhT37j5CkP8repq/cWmLAYgEhPnnXxTNZVVQ
	 ATnb2IoxF9yO5TwvbJztXn9P/GcBc8osI5bXl9ys9e/We/ELObVwgHNTAeXszL5F8O
	 gs2imQ3xysCqaBquz8JcABP11OHW1Q3xDewi55C+gPWNwX3IVqa4Pda8fLXEuYUyjM
	 XJvNyEUkEY0yIJvQHyW4f7Yu4AeOqb0JPfJSHooGxWN2+uAWVSxYYz6n7FngNmh1MK
	 AmRJhvHFJlu7Q==
Received: by macsyma.thunk.org (Postfix, from userid 15806)
	id EF2ABDD3303; Thu,  6 Aug 2026 23:23:35 -0400 (EDT)
Date: Thu, 6 Aug 2026 23:23:35 -0400
From: "Theodore Tso" <tytso@mit.edu>
To: Dan Carpenter <error27@gmail.com>
Cc: Konstantin Ryabitsev <mricon@kernel.org>, Greg KH <greg@kroah.com>,
        Jonathan Corbet <corbet@lwn.net>, ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Coping with the new-developer flood
Message-ID: <anVK-qkUOaIJkt9M@mit.edu>
References: <87y0ekm9nw.fsf@trenco.lwn.net>
 <anSpoxZ9SUBvFOZj@mit.edu>
 <2026080651-bony-hertz-bfb6@gregkh>
 <20260806-industrious-whippet-of-jest-a91eaa@meerkat>
 <anThWLhqipEM34kg@stanley.mountain>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <anThWLhqipEM34kg@stanley.mountain>

On Thu, Aug 06, 2026 at 10:32:40PM -0500, Dan Carpenter wrote:
> On Thu, Aug 06, 2026 at 01:28:25PM -0400, Konstantin Ryabitsev wrote:
> > - actually applies
> > - isn't against a known LTS branch
> 
> No one wants patches against an LTS branch.  That would violate the
> stable rules since everything should be upstream first.

Right, we should issue a warning if it's not a backport from upstream
(e.g., if it's against an LTS branch, it should have an
Upstream-commit: tag).

There are some few exceptions, where a fix can't be easily backported
to the LTS branch, and so a different way of fixing a particular
serious patch needs to be applied to the LTS branch.  But normally
this will be explicitly stated in the commit description, but we don't
do that in a structured way, so it might be hard for a non-LLM bot to
figure this out.  On the other hand, this is a pretty advanced
technique, and it's unlikely that a new kernel developer would be
doing something like this.  So we probably just ignore this case for a
newcomers-focused bot.

						- Ted
