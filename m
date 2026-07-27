Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3170C40862A
	for <ksummit@lists.linux.dev>; Mon, 27 Jul 2026 17:56:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785174970; cv=none; b=i8/ROpRQ517H1S86R6tqSwvmOcZZ453xOvDjfihRG4sLPTzQ/2KInxaSHsl5rWFhQ8g2l0XqAYa6x6AH/0ZIWOWKBBd8W5vVWAHkeesN2pClH3s+yDzO78PdJ/Prk7GNOdGYdIprxKsymME/DFMGtb7kgmy4Exi0gua2ShtWqCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785174970; c=relaxed/simple;
	bh=8YJzon6s428W2h1+9oXuBd9WMq/mM3ouuc46aEBSjhc=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=koPymYqxexkJ2hePBAMaVvJU7N2dgw3vXGLmV3inlBs9H3Lo4HQdH/yKmvQ9P26KnccKMoip9BZI4tRYDQSSjwZb0biyRrGl79d210lsmvmLrsBr8ZIvEOLWO4lLKKhhZ4X7dCOGIEPAkGraprH+1vQxGKa5ynwSO1Lb9Bg7Zh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d03TVYZd; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d03TVYZd"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53E871F000E9;
	Mon, 27 Jul 2026 17:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785174962;
	bh=ebppLtrSCTxBSpnIq9Ie8n1wiPkLtG2Gf0p9BzyME8w=;
	h=Date:From:To:cc:Subject:In-Reply-To:References;
	b=d03TVYZdplri5m71FyE1iaO4m0MIt8tk6W+kv6nAKUvWlhb6jjbT4GemI/sjtHttX
	 EiyZk/1QLTxQ7UuXCKVxYJ2J2y1zm0Py24scg/FhAzPm3znvCdF5LB6/5FeuolzTM1
	 dvRaxhrUNQbPmQRHVTNLVFclOFyS9+xPTVDhbHX/4G3km4081UFBwXmac5IgZTRUMa
	 lnPBx+EhZkM4LjoYvg96eAQCns24JYt6mBLAFN+SYl1b8PsryJo7/zel/+258ygFo/
	 rkdjNGLzYoPPGOfZC7xMK9ekCvhs0pZ2Xilp6TZJIPHhaawNxhgT0dNPQh1GElugWq
	 dPGgcgPypfRlA==
Date: Mon, 27 Jul 2026 19:56:00 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
cc: Sasha Levin <sashal@kernel.org>, ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Scaling our security process
In-Reply-To: <CAHk-=wgy3T=jxMy0kv0T1+6M0ahVbmWcXOwWOZU5efo=9U_XMg@mail.gmail.com>
Message-ID: <n541ns52-1n7r-q240-1so5-qn79o55o9332@xreary.bet>
References: <albMUqack9yMq0rF@laps> <241384q7-s5n1-0267-64ps-13r514r4o123@xreary.bet> <CAHk-=wgy3T=jxMy0kv0T1+6M0ahVbmWcXOwWOZU5efo=9U_XMg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Mon, 27 Jul 2026, Linus Torvalds wrote:

> I refuse to have anything to do with linux-distros.
> 
> They have a hard mandatory disclosure policy which I think is completely 
> unacceptable. It means that if you send actual exploits to the channel 
> those exploits will be made public too. There is absolutely no value in 
> that, and it seems completely crazy to me.
> 
> Yet exploit code - or at least a PoC - are hugely useful to
> developers. So you do want to have people who figure out some security
> issue - or any other bug, for that matter - to include such code, but
> that does not mean that it should be made public.

I totally agree with you on this, but it's not the case with 
linux-distros@ any more. Let me quote Alexander from 2023 [1] specifically 
on this:

=====
I've just relaxed the policy on posting exploits.  It used to say:

"If you shared exploit(s) that are not an essential part of the issue
description, then at your option you may slightly delay posting them to
oss-security but you must post the exploits to oss-security within at
most 7 days of making the mandatory posting above."

Now it says:

"If you shared exploit(s) that are not an essential part of the issue
description, then at your option you may delay or withhold posting them
to oss-security, and you're encouraged to post the exploits to
oss-security in 1 to 30 days of making the mandatory posting above. The
delay may reasonably match your estimate for independent development of
such exploits."

So it's no longer a requirement ("or withhold" is now an option), and
the recommended delay is now 1 to 30 days (which covers the real-world
range from the old Exim bug to the recent Linux StackRot bug).  I also
added a sentence suggesting how to choose the delay.
=====

So it's encouraged (which is still of course questionable), but it's no 
longer mandatory and it's up to the reporter's discretion.

[1] https://www.openwall.com/lists/oss-security/2023/09/08/4

-- 
Jiri Kosina
SUSE Labs

