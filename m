Received: from relay.hostedemail.com (smtprelay0015.hostedemail.com [216.40.44.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB7DB3AE706
	for <ksummit@lists.linux.dev>; Mon, 10 Aug 2026 21:05:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=216.40.44.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786395927; cv=none; b=VNqTvKCUZ4BvXvFIJM2gBsolFDjC42BKw32WSNCgNWLtKTZZl9MLgc5x2z9LGk9A5xoTGoES7pNWSeQ3TmIoP8sx4JZkfYWx5C/4Fb+gYlvKB52r5OpuT2+PTqs4OENlqXJ12DtJVKGkHXqhUsSHIrdHBsgIkTmGx92rAtTRZr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786395927; c=relaxed/simple;
	bh=/2GeTWRPGZH88ko2QRcUaeju5voy89yIUu465/MgRJ8=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Zh0AoWxwmlbK0GbKCPlZkXqlKkq9/JYJmUPKPR6pmmOXfOe+dsbDN0/cP2W0MZk50t2CtLxLNHdnL2tQPXkOUiXsmmyFOAs3QAD3IyCi/csRrGQhVJZu6epSz0zMcHwnjxEybRHGaC+nNuqQMh7IHzg65wN2paaliR4dNDs/yho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org; spf=pass smtp.mailfrom=goodmis.org; arc=none smtp.client-ip=216.40.44.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=goodmis.org
Received: from omf11.hostedemail.com (lb01a-stub [10.200.18.249])
	by unirelay01.hostedemail.com (Postfix) with ESMTP id A5F371C0B9B;
	Mon, 10 Aug 2026 21:05:23 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf11.hostedemail.com (Postfix) with ESMTPA id 6A73F2002C;
	Mon, 10 Aug 2026 21:05:21 +0000 (UTC)
Date: Mon, 10 Aug 2026 17:05:31 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: "Liam R. Howlett" <liam@infradead.org>
Cc: "Lorenzo Stoakes (ARM)" <ljs@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Theodore Tso <tytso@mit.edu>, Linus Torvalds
 <torvalds@linux-foundation.org>, James Bottomley
 <James.Bottomley@hansenpartnership.com>, ksummit@lists.linux.dev, "David
 Hildenbrand (Arm)" <david@kernel.org>, Andrew Morton
 <akpm@linux-foundation.org>, Dave Airlie <airlied@gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
Message-ID: <20260810170531.321eb9f0@gandalf.local.home>
In-Reply-To: <1BD1C7E7-CCA5-4BBB-94D4-83A7706E2579@infradead.org>
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
	<20260806194153.6443a3ba@gandalf.local.home>
	<CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
	<anfUgiByUVffXlrQ@mit.edu>
	<87y0efi08u.fsf@trenco.lwn.net>
	<20260809170918.218792b2@gandalf.local.home>
	<anmHaRzbnY7rtLX8@gremlin>
	<20260810092003.5fda8e06@gandalf.local.home>
	<1BD1C7E7-CCA5-4BBB-94D4-83A7706E2579@infradead.org>
X-Mailer: Claws Mail 3.20.0git84 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: rspamout01
X-Rspamd-Queue-Id: 6A73F2002C
X-Stat-Signature: yt3extnqh5gd94ny4cdg5q9ziht68bfh
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX19M9r9Vt6U0xSAxdR9KAA35PFxPFFiAFyE=
X-HE-Tag: 1786395921-413206
X-HE-Meta: U2FsdGVkX1/jQSdsbM2HP9CZ4fZvhUqAQt008NZLdCf6Lvcekau3i9JvwC9jskSGJULhikjOFHlFSMMj7Zl7T0qgvJoP3bHh9kT5LLV1ynlE6RjivyHz3S7e++NeEvD05gaEyiMa753bIfn2OK7Q9Hk1c7cC2bUfsj+PWXKfQd/xVANtICjCH7fx9EcT+F5Q1R7fGuK2ukG5FEH+8S84uR4AE4MyBk212a2qYEsEybWAV0U6cfBWQuhHCa2oof7ND5jFuoLpj4Pt/uEGsBvf8jRA1SuDLCmP9Fsa/h4wq/KKjabPRa9ghFE6irsTP2KvvUA10/sS8lHQ2CeqIf6o5wgFD/I6grpkY0QGea4PYl/1FpSWU6nwqBFUErhsJ+osS6KyLEkDq+0Y1hOsRp3q3bJWoMjso/5i7QIGOyAzowJOR26/BM1SaQ==

On Mon, 10 Aug 2026 16:35:48 -0400
"Liam R. Howlett" <liam@infradead.org> wrote:


> I don't want to be invited.  My only reason for being vocal is to facilitate process improvements.

So... if this topic is selected for the MS agenda, you would be a perfect
person to invite ;-)

-- Steve

