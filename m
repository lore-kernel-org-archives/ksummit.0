Received: from relay.hostedemail.com (smtprelay0016.hostedemail.com [216.40.44.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A76AC35674E
	for <ksummit@lists.linux.dev>; Fri,  7 Aug 2026 19:51:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=216.40.44.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786132282; cv=none; b=S8hSJaTsoPoknvyUPBTXMYo+2cOnj0TZTrQO6ltgE4RAvGmhVLYI0KTz2lOyQda5hkJ8FjteF1MiLyn4p22e/O+KL/NNCGuc3mcI+vT3TWJ6+X12atwEWrxPdBH5u5eGSqRVN0iQJ3hIJEXsBcAygcWTKGJR0noASIzB4IuFTBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786132282; c=relaxed/simple;
	bh=5epEKrKFmxlhSMme5KZKzrdrdxqeYci/eypm1eZmH4k=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=bolNGW6QiQjv7IvMf0+IlchxHdo8UYVcJZlFmVqkV3QAS+48CwgWJBVgzZCciyGVq7HAizeSs59nBLE3EhFg8GkIpO4aNdj6ChAueRXwq0v309VdSVCHgod05k9Io0G/VKtD+aEfmVoie6Seh6md/1zc8tVYxyjgXxjH8LSQ4xA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org; spf=pass smtp.mailfrom=goodmis.org; arc=none smtp.client-ip=216.40.44.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=goodmis.org
Received: from omf07.hostedemail.com (lb01a-stub [10.200.18.249])
	by unirelay10.hostedemail.com (Postfix) with ESMTP id 2AA37C01AA;
	Fri,  7 Aug 2026 19:51:19 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf07.hostedemail.com (Postfix) with ESMTPA id 9BA9F2002E;
	Fri,  7 Aug 2026 19:51:17 +0000 (UTC)
Date: Fri, 7 Aug 2026 15:51:20 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
 ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
Message-ID: <20260807155120.7142e78b@gandalf.local.home>
In-Reply-To: <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
	<20260806194153.6443a3ba@gandalf.local.home>
	<CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
X-Mailer: Claws Mail 3.20.0git84 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 9BA9F2002E
X-Stat-Signature: dxmspurthkztb4pkbj6xburk7wea9uy8
X-Rspamd-Server: rspamout03
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX18yeJEsLPHX1f2F+QlmjbhV5b8wtsgvewk=
X-HE-Tag: 1786132277-78022
X-HE-Meta: U2FsdGVkX1+8Xw06LKBZYfoY2udSLYdJwMIHOa5LBCIrqOw+cmQswrtescxDSFvXnnZXM+TPORzr9JUpcQrP5YBl9ev6eI0cpvQeIiOq3n/rQkbrV8T9XYzMwn0get6WdOSplGQnc1FBy8FUdDMy1dXOqy3D1GO4ZM0f3+++1m183IA07FD8oOWHqfhgQ7zbUQNFYTVZb+D+th/Oz7KQEj4SboIWxOKcyh4p48w/hL3m+YsKJaYK7se10omXNdOnzMVsdHAqUYR3+7T1EHWRZYlfcwEWxUpSnbjoq4mYSPT7FZiBv1TviwX4AKqIr2TdkvsnBZ3+iRURJ9Qsnc7oQCvHeatt+i0wbHuSRZ+kvyxN67ClFvvZ7PgsrX4BCpartHQRmsMQHJIIcV5rW4p3e2A0p3cDTtuv

On Fri, 7 Aug 2026 10:27:27 -0700
Linus Torvalds <torvalds@linux-foundation.org> wrote:

> The maintainer summit being a pretty constant "in-group" is
> fundamental, but it still feels a bit sad and wrong to me.

That's because Linux has matured quite a bit. In any project or even
company that has been around for a long time, you will see those that have
been around for the longest time become a common participant in leadership
meetings. It makes sense as those same people likely have the most
experience.

But we do have new blood when new things start to appear. Look at Miguel
Ojeda for example. He was the one to push Rust into the kernel and now even
though he's a relatively new (and young) maintainer, he's becoming one of
those "in-group" participants.  This to me shows that we do encourage new
people to join the leadership ranks when it makes sense.

And I expect that soon (in 5 years) we'll likely start seeing more of the
top maintainers start to back off and let others take over. Andrew Morton
has recently posted that he's entering that process. I suspect that those
of us in our 50s and older will be looking for new blood to fill our shoes.
I'm already starting to look for myself ;-) (Although, I'm not ready to
retire, I have that feeling I need to find others to do what I do).

-- Steve
