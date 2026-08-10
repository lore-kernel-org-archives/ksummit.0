Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADB6438E8AC
	for <ksummit@lists.linux.dev>; Mon, 10 Aug 2026 08:15:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786349701; cv=none; b=UJW7aAe+hzhtj8qdyWfEwLRKU+yGHOak91h390JSW4UU//AtDyfQd/1o7G1ySkJRLlrJ4uR4Z11MkYQYsWGgTM6YalfXs/JUteIxpk6u3XruaUFT+qxgrtLKRIwGkDnX/NfUDtTK0CXyF0a0R3L1pqieek4V8HswQ9gs4eOfjUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786349701; c=relaxed/simple;
	bh=9lewauBXqNHPSWZBGTaEr4WSn0+5aZFBOoSLt1Vrsik=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CfcHsa6pPQXKfRkskiLCYKdxoLzz8gqrBbjXMi/1lFuHlKc379mIsqV5ki/oAG3PpPxBsqroz2NgbKNx4GCpPass1Njn6nzmJaLzqnfdmMtJv5funMLAlZBMhUddRCH6+X9EuhuZWLnaGjouIg+R044GfSuQbxFSwdW0Esh6cN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YgmeUB6G; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YgmeUB6G"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 421E11F000E9;
	Mon, 10 Aug 2026 08:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786349700;
	bh=9lewauBXqNHPSWZBGTaEr4WSn0+5aZFBOoSLt1Vrsik=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=YgmeUB6GBT7z/Su6NxfSi3e8EB0GYbRYk6F1axeOw44dHIBbvDWBXQXlt8IQGWH1V
	 OKDQdxSlexQqQy1OnYJbX9QurRGWJBVww5zvV99wPjvDvcilBDNMq6aa79AD8rwwOr
	 aAW8XNC8ao8TW6EtpXQGOLZih11rAqeEQTjWr7XOS4f9EQC2cMvlSN1kNcXl8w9kLA
	 lAQoTsu6vLXFvXOYUVs7yDW47HB9AjSDhIqMQaHXFRfqUZVbB3e2whHvCZEQHHzPbi
	 tzPxy6FcKXGk7Yd3XN/JHoAOib9rYsrpMziS1JpoRIhFp9DLHCWVusJooZJwGdetHL
	 j1omiVYUJIerg==
Date: Mon, 10 Aug 2026 09:14:56 +0100
From: "Lorenzo Stoakes (ARM)" <ljs@kernel.org>
To: Steven Rostedt <rostedt@goodmis.org>
Cc: Jonathan Corbet <corbet@lwn.net>, Theodore Tso <tytso@mit.edu>, 
	Linus Torvalds <torvalds@linux-foundation.org>, James Bottomley <James.Bottomley@hansenpartnership.com>, 
	ksummit@lists.linux.dev, "David Hildenbrand (Arm)" <david@kernel.org>, 
	"Liam R. Howlett" <liam@infradead.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Dave Airlie <airlied@gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
Message-ID: <anmHaRzbnY7rtLX8@gremlin>
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
 <20260806194153.6443a3ba@gandalf.local.home>
 <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
 <anfUgiByUVffXlrQ@mit.edu>
 <87y0efi08u.fsf@trenco.lwn.net>
 <20260809170918.218792b2@gandalf.local.home>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260809170918.218792b2@gandalf.local.home>

+cc 2*David, Liam, Andrew as referenced below

On Sun, Aug 09, 2026 at 05:09:18PM -0400, Steven Rostedt wrote:
> This should not hinder new people from being invited. As the kernel
> changes, new people start to have more stake in the kernel. People like
> Miguel and I would even argue for Lorenzo ;-)

That's very kind of you and Miguel ;)

However I'm nowhere near the caliber of attendee the LF describes and if anybody
from mm should attend it should be David as Liam also suggested :)

In fact as David is taking over (albeit for a transitional period) from Andrew,
it makes sense that he be invited _this_ year in my view.

Linus will soon be interacting with him a lot :) so he also fulfils David
Airlie's description of the MS (which I do think is the accurate one).

--
Cheers, Lorenzo
