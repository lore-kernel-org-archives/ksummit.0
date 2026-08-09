Received: from ms.lwn.net (ms.lwn.net [45.79.88.28])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E65DA390CB7
	for <ksummit@lists.linux.dev>; Sun,  9 Aug 2026 19:04:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.79.88.28
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786302314; cv=none; b=kbUCxZOuai2kFWjr5E/4EcjCMTEY024wTjaosEcsCgChcODS9xLSPlXuhof4XQ3QCRilgkunL8xywvof8QfT8JoWs+XDhLioDszh3Lfym7xeYxSJmLb7ZQT0j3JjvgCNCKqxcxBsUYwiTgp7kOi7hMWxXcw+gO5iDA6lfvleFcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786302314; c=relaxed/simple;
	bh=oJDWN2zcE6MBIrqcfjDGg4L6Yd7OICnY5pAqDVVaGog=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=RytQVgodBWZj8eEqgLxPsdh21UfcbJ+dMDeIqeVkWVFIiNElyvaC4GzzMHLNLVFTTBIeKV6T77pv7Mxyh00LCsbfYWTtykjfUu6WYmWT3i7ThNGprytmk0tyFpZfWJrnOhL/8+o1ac8eo3XHXSfOLgBz14D78haN/WKRDqna9/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lwn.net; spf=pass smtp.mailfrom=lwn.net; dkim=pass (2048-bit key) header.d=lwn.net header.i=@lwn.net header.b=PxexqIj9; arc=none smtp.client-ip=45.79.88.28
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lwn.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lwn.net
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lwn.net header.i=@lwn.net header.b="PxexqIj9"
DKIM-Filter: OpenDKIM Filter v2.11.0 ms.lwn.net 00220408BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lwn.net; s=20201203;
	t=1786302274; bh=880bOuFD9t0FVzgQ7jKywhlMYeoPZA6I73X2jc3tsEY=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=PxexqIj9DAP9gNzZn14mJTMS7WiaKEMgWQh9cFJKQV1ONhFo4IeliL8MzbB0gVPNk
	 c9I6QQWZQ0RLbWJjaJMDKYUmrq4FCtaaYY+OaupIYhMD9dLdUkBdQo0f+oDV0r4ISk
	 1fgKcya4mW26bzfTQ0rc6KgmDRyoMPHlEUFDNWMBs5jMB3J4mkQpXT/2cUZuJwY9LD
	 6TTaC6KD7YqSCE2n1ErqLyoZYds6dlLkLI2cmbsTGDMv6dGu3Qm2XixdSthmzsdslM
	 rLFdkVl8L8Tl2F46Ou6PBUUr2h1uZUEne3fgcMNLnwYIc8V/z0OlK3yyR+bF3DADB1
	 zovAp0xyNobwA==
Received: from localhost (unknown [IPv6:2601:280:4600:27b::1fe])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by ms.lwn.net (Postfix) with ESMTPSA id 00220408BB;
	Sun,  9 Aug 2026 19:04:33 +0000 (UTC)
From: Jonathan Corbet <corbet@lwn.net>
To: Theodore Tso <tytso@mit.edu>, Linus Torvalds
 <torvalds@linux-foundation.org>
Cc: Steven Rostedt <rostedt@goodmis.org>, James Bottomley
 <James.Bottomley@hansenpartnership.com>, ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
In-Reply-To: <anfUgiByUVffXlrQ@mit.edu>
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
 <20260806194153.6443a3ba@gandalf.local.home>
 <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
 <anfUgiByUVffXlrQ@mit.edu>
Date: Sun, 09 Aug 2026 13:04:33 -0600
Message-ID: <87y0efi08u.fsf@trenco.lwn.net>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain

"Theodore Tso" <tytso@mit.edu> writes:

> As another thought, when we had 100+ people attending the Kernel
> Summit, that we would make a *point* of inviting people who had never
> attended Kernel Summits before, so we would get new blood attending
> the Summit.  After we significantly reduced the the size of the
> Maintainers Summit to 30, we've stopped doing this as a deliberate
> practice.  Should we change this?

FWIW, in my role in the program committee, I have always tried to think
about who we should bring in that hasn't been there before - with a
certain amount of success, I hope.

We could perhaps do better, maybe with a rule that N% of the seats
should be filled by first-time attendees.  But we do also have to be
sure that the right people are in the room handle the topics under
consideration, and that will inevitably include a number of old-timers
who have been there before.

jon
