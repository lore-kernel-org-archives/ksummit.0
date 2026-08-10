Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D08C525B0A3
	for <ksummit@lists.linux.dev>; Mon, 10 Aug 2026 01:27:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.9.28.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786325239; cv=none; b=P+F9NVEZOm1n2+HJ5mxhhBe0dhJGIGub/v3wMRWTPQq+7oF9rD6f1zUPWJiRQBfaUDAF+DlpdqF07okvm9JIEPVstiCUKyvG4mlujzCY8AZe2oJufmE4SDGi0i5o3gqJihyc0wPDLhO3THaW7oqtk56t72sNooH2BYlexkw74Tg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786325239; c=relaxed/simple;
	bh=uXdQnjCU8aSYcyojddCv6GnA48bxDAFhwNWh0kaiw3k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Bei+gJAaHSyqrIiIFGCyOB8Xo+o3/Eyx2JPmMdL2bAvmrIed3jzsuI26K940uY1CetJ+7bitkQNkE5H+Zl62HyfGIcOa8Oi6wzlK5g6t+9eccBzKHCDKRqFc/rWyG693ZR/IaofrZt9R8pxUQ4YZUJUaiSQ6gtZJkWi9D7IBUNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu; spf=pass smtp.mailfrom=mit.edu; dkim=pass (2048-bit key) header.d=mit.edu header.i=@mit.edu header.b=UePFpmfs; arc=none smtp.client-ip=18.9.28.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mit.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mit.edu
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mit.edu header.i=@mit.edu header.b="UePFpmfs"
Received: from macsyma.thunk.org (pool-173-48-113-153.bstnma.fios.verizon.net [173.48.113.153])
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 67A1Qs6X013542
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 9 Aug 2026 21:26:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mit.edu; s=outgoing;
	t=1786325218; bh=5zMbj4rTKw8P0/7cV3gJQMGnAMfT+IXPtGOO63hwvp4=;
	h=Date:From:Subject:Message-ID:MIME-Version:Content-Type;
	b=UePFpmfsEeUMAj+gAi5DBAl4LeJ44xprWwe0MIodR+T3SlEqST4LQscqnSy7sIwAT
	 bGACzm1XcHtN8DNfsjZ0/Si8ZgTF2X0Ups26gRXoyqoUH8e65XTARwh+kgHAB2RNzs
	 Li3DrHXDvfUqogjaMN5rd7bgXM4vgKGs9C7PxWOnsT43Ejz/N4SMaivf6f0LLLs2Ad
	 7uD9cFLWcducx/v7FR2WHLqBkl7ViRo+jyQDzf/B8Evhx8s4YN3M5mZydNj2SJeEll
	 gO0qcYHvhCjmtlB7I5iFJtlWrRznq83UMTmN1vCDOMOq19Vbe/71/R10K4y/6sPFuc
	 KhakA+QfJ4cGw==
Received: by macsyma.thunk.org (Postfix, from userid 15806)
	id D171BE24166; Sun,  9 Aug 2026 21:26:53 -0400 (EDT)
Date: Sun, 9 Aug 2026 21:26:53 -0400
From: "Theodore Tso" <tytso@mit.edu>
To: "Liam R. Howlett" <liam@infradead.org>
Cc: Jonathan Corbet <corbet@lwn.net>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Steven Rostedt <rostedt@goodmis.org>,
        James Bottomley <James.Bottomley@hansenpartnership.com>,
        ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
Message-ID: <ankkb2siES7o86qd@mit.edu>
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
 <20260806194153.6443a3ba@gandalf.local.home>
 <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
 <anfUgiByUVffXlrQ@mit.edu>
 <87y0efi08u.fsf@trenco.lwn.net>
 <006B9A78-D7A3-4684-91C8-BCA700487B65@infradead.org>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <006B9A78-D7A3-4684-91C8-BCA700487B65@infradead.org>

On Sun, Aug 09, 2026 at 05:56:45PM -0500, Liam R. Howlett wrote:
> 
> We could have a reserved number of seats dedicated for specific
> subject that are temporary seats that would be used for a specific
> topic.  As a specific topic expert or interested party, they would
> be less likely to stay quiet or be disregarded as not knowing the
> workings of a specific policy.

One of the reasons why we discuss maintainers summit topics in advance
is partially to create the agenda, but to also be aware who some of
the interested parties will be.  And the program committee *does* take
that into account.

The other reason why the discussions on the ksummit list are so useful
is that it *is* a pre-MS discussion.  Everyone gets to hear the voices
who feel strongly about a particular topic --- for example, such as
the AI/LLM discussion.  The voices and ideas that are presented in the
mailing list is absolutely something that influences the discussion
that happens in the room.

> This brings to mind something else which I've been think for some
> time, we should have delegates when someone cannot make it in
> person.  Not as a replacement, but as someone that can speak up when
> things are relevant to their particular expertise - and potentially
> to help the succession planning of that subsystem.

As far as succession planning of a subsystem, I'd argue that MS isn't
the best place.  For example, at this year's LSF/MM/BPF, the
discussion over succession planning of the mm subsystem took place
there.  There was also a discussion about how the FUSE developers
would organize themselves that took place at LSF/MM.  Those
discussions would not be of interest to most the attendees of the
Maintainers Summit, since most of those decisions are quite
decentralized, where a networking or BPF maintainer isn't going to be
dictating succession planning of MM subsystem (for example).  This is
why other venues, such LSF/MM. KVM Forum, Networking Summit, Plumbers
Miniconfs or BOF's, are probably suitable for those sorts of
discussions.

Cheers,

					- Ted
