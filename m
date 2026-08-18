Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC32D3033EB
	for <ksummit@lists.linux.dev>; Tue, 18 Aug 2026 18:18:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787077133; cv=none; b=JT3NFbs4Vom5tdguvzFcQCdUDbVfjTWcpDTeyzBsA7nNg10P3rpAIn8k+Vx1m/gEMjnMJsECe/OttvxsA+Iq7wmXKKvdD72KEl2kPTBXxNLbh/Gdg/cITnkhPard1VdIuYyDMsg72IrjBHRxz5mvlFaugR/3krz8/DfwgtGNAU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787077133; c=relaxed/simple;
	bh=PhVJsXZYcL5/hHF9cDXJ/HKgicki9Xtukxw/32PlP5M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rG0gpAgu2Z/gd9kgKA1hsryeqtBcWMMobT5XDQHGc2lNHSrU/NFNZacAFQlAollS0CvUqRVMqsTCKL5XJwp83HS4jIVCrLI6ssdt5tQPITw/TMDrWh+pxUQ+HVtBHAwsukeeTMztZeEGJsE/9Am0VR2xr3l4rcZ7+KCk70lMj/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BT2PTEM+; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BT2PTEM+"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 526E31F000E9;
	Tue, 18 Aug 2026 18:18:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787077131;
	bh=Ky/nINkPsuNkFlOtENpoAh/4nNhTYCHrvbEGw7lXCxw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=BT2PTEM+4LlJiL0AOXtmodSkzMIra0su3HaeTVQdGtyW60xA1jpRKBJbKlsRued4C
	 x1WaKiX5HICkf1bpjj1gGPkjGAeKEc8l29zKLY/0KLfC0aZXAb1swBAkpsBLwu7vTP
	 pdIW02z+8icF/Vx4mLYgvB1fSONBniXbxywFvffBsN7M+E5iC4Z679UcoRtOHbrDlS
	 70qyoFvfC3KgpnXMjVSPrOtmeaej862zcSIwMk95QGINCEsGUbC1MVvX3cSVbBHdjq
	 BsBxY/fvQM/kVg2Wh7ahpB0M2ExpFZbeBqAuI91ewrvxeC4HU6nOlQf9EAbe7e7Lcw
	 Hnvm4lv8En8vQ==
Date: Tue, 18 Aug 2026 19:18:33 +0100
From: "Lorenzo Stoakes (ARM)" <ljs@kernel.org>
To: Theodore Tso <tytso@mit.edu>
Cc: "Liam R. Howlett" <liam@infradead.org>, 
	"David Hildenbrand (Arm)" <david@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Jonathan Corbet <corbet@lwn.net>, Linus Torvalds <torvalds@linux-foundation.org>, 
	James Bottomley <James.Bottomley@hansenpartnership.com>, ksummit@lists.linux.dev, 
	Andrew Morton <akpm@linux-foundation.org>, Dave Airlie <airlied@gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
Message-ID: <aoShJTlxpvpBdBRD@lucifer>
References: <20260809170918.218792b2@gandalf.local.home>
 <anmHaRzbnY7rtLX8@gremlin>
 <20260810092003.5fda8e06@gandalf.local.home>
 <1BD1C7E7-CCA5-4BBB-94D4-83A7706E2579@infradead.org>
 <anppSi8oQvvODOI2@mit.edu>
 <od7zzwh6dqabzqyz6tlvd6n4uibcqvnhohikbbmjxwjjtpnjjw@xnkg7kwr2zz2>
 <aoRlKyICddc7U353@mit.edu>
 <fe049a6b-be36-40dc-9d52-506b65b1f74b@kernel.org>
 <jguyya2bs2caylvcxu2gwl3g4sjuajb2fhjrpojwy5osyqyw55@doc2x6d5nm2y>
 <aoSMSTIxK0nXHYDr@mit.edu>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aoSMSTIxK0nXHYDr@mit.edu>

On Tue, Aug 18, 2026 at 01:46:15PM -0400, Theodore Tso wrote:
> > There's also the point raised about more changes on the horizon, so we
> > either make it a part of the process, trust the succession planning
> > takes MS into account a year (or more) ahead of time, or risk a number
> > of first timers at MS.
>
> Personally, I'm not worried about first timers; in fact, having a
> first timers is a *feature* not a bug.  The opposite is the complaint
> that it's always the same "clique" attending the Maintainers Summit.

I mean it feels like you're batting things off again here :) if you want
more first timers you would have to make changes, your analysis on that was
rather flawed, another point which wasn't addressed:

"That puts the number of seats filled by one-time attendees at any
conference at 21.6%, not 44.9%."

http://lore.kernel.org/all/anii3u-87kSrB9K3@lucifer

>
> Cheers,
>
> 						- Ted

--
Cheers, Lorenzo
