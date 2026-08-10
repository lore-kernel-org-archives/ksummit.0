Received: from relay.hostedemail.com (smtprelay0011.hostedemail.com [216.40.44.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577BC223708
	for <ksummit@lists.linux.dev>; Mon, 10 Aug 2026 13:20:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=216.40.44.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786368006; cv=none; b=JUaSvSEZKiccxe7BoGkfctiUO5Jp5X8+S9xCkb/Oya7CSMW5rRTpo4ngW9nbM6gzC9N44e3IqNPgttCAiDOL6hJ3hoS03WybnyCRQOMUuD8Sc8iuTuY+wj07XVbuXWrTbJA3V6j2/YZvxkwZsU45xg3Rn8Pq9cpfKUdjcTrQbiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786368006; c=relaxed/simple;
	bh=Eh8ZSGJIO6Z3MduP25RRimEMZF0oaCZeKrhfICKG5Os=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=bbSfAgKBwYvtYgpko3xj3btN3DzEe0Qs2yXu0h+S1HkDYdhK0mGSLk6IbcGpM1FOAqyu4lOqZuX4KcbmwjGreOCV8hzoZPRz1Lxz97Mb4EX546vPwA+KagBQ9z/Fg1E6KRe1fYHqSzh5MMGOqpzNYYniyosCFuw+ULZi65pqQXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org; spf=pass smtp.mailfrom=goodmis.org; arc=none smtp.client-ip=216.40.44.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=goodmis.org
Received: from omf19.hostedemail.com (lb01a-stub [10.200.18.249])
	by unirelay07.hostedemail.com (Postfix) with ESMTP id 70C7D160153;
	Mon, 10 Aug 2026 13:19:56 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf19.hostedemail.com (Postfix) with ESMTPA id 497F420029;
	Mon, 10 Aug 2026 13:19:54 +0000 (UTC)
Date: Mon, 10 Aug 2026 09:20:03 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: "Lorenzo Stoakes (ARM)" <ljs@kernel.org>
Cc: Jonathan Corbet <corbet@lwn.net>, Theodore Tso <tytso@mit.edu>, Linus
 Torvalds <torvalds@linux-foundation.org>, James Bottomley
 <James.Bottomley@hansenpartnership.com>, ksummit@lists.linux.dev, "David
 Hildenbrand (Arm)" <david@kernel.org>, "Liam R. Howlett"
 <liam@infradead.org>, Andrew Morton <akpm@linux-foundation.org>, Dave
 Airlie <airlied@gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
Message-ID: <20260810092003.5fda8e06@gandalf.local.home>
In-Reply-To: <anmHaRzbnY7rtLX8@gremlin>
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
	<20260806194153.6443a3ba@gandalf.local.home>
	<CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
	<anfUgiByUVffXlrQ@mit.edu>
	<87y0efi08u.fsf@trenco.lwn.net>
	<20260809170918.218792b2@gandalf.local.home>
	<anmHaRzbnY7rtLX8@gremlin>
X-Mailer: Claws Mail 3.20.0git84 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 497F420029
X-Stat-Signature: bms34tj67rr9ahuhcmzp4jh7adyxx3bd
X-Rspamd-Server: rspamout03
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX19DXgLCCrzue32eyfMkRfDuiGX3/sw8ZIQ=
X-HE-Tag: 1786367994-65620
X-HE-Meta: U2FsdGVkX19MZb3a9mHL4P83O5WC3WCnyGeFZctWBfRRxHS+r3VLewZMn+f2kG9iin1+U4Pko9mzdoEYKDVm+4gDaEE2Gp2vj9u5bwAO9FfH9ctRm6AOpCJQu1pWBC536E4jdNjztPQ5NHIZAa/7rWTAjSiFsZQlKGat3iQJ/yIQRu144fF+KCVTooDG7pz1Bq+AvhefrxRehmDW4U3z/+iATecvwaHle+PTE8Ab3dozuvOZBWmRDbGhePfxR4IwsSqIj/SOex1kgJzEoYeKHzYoNjhkACNzmUw2gIMciHs4ghbM39cqNdgFfhb+l2kH8+a4kP4lGgg3kv7sWOUvYSR2yrE7Utwr79B8H9U9JRnU34apAoZj7A==

On Mon, 10 Aug 2026 09:14:56 +0100
"Lorenzo Stoakes (ARM)" <ljs@kernel.org> wrote:

> +cc 2*David, Liam, Andrew as referenced below
> 
> On Sun, Aug 09, 2026 at 05:09:18PM -0400, Steven Rostedt wrote:
> > This should not hinder new people from being invited. As the kernel
> > changes, new people start to have more stake in the kernel. People like
> > Miguel and I would even argue for Lorenzo ;-)  
> 
> That's very kind of you and Miguel ;)

Oops, Miguel didn't say that. I worded that wrong. Or at least I didn't add
enough commas:

  "People like Miguel, and I would even argue for, Lorenzo"

As in, People like Miguel and Lorenzo. And I would argue for you.

> 
> However I'm nowhere near the caliber of attendee the LF describes and if anybody
> from mm should attend it should be David as Liam also suggested :)
> 
> In fact as David is taking over (albeit for a transitional period) from Andrew,
> it makes sense that he be invited _this_ year in my view.

It's also about who is able to articulate issues, not just their standing in
the community. You are very vocal and able to bring up things that should
be talked about. If we have someone that is higher up the maintainer
hierarchy, but doesn't speak up, they may not be as useful.

I'm not saying that David or Liam wouldn't speak up. What I am saying is
that it's not the only criteria.

> Linus will soon be interacting with him a lot :) so he also fulfils David
> Airlie's description of the MS (which I do think is the accurate one).

It is partially Linus's "staff meeting", but to me, it's about maintainers
coming together to settle differences about what is happening within the
Linux kernel community. I view Linus as more of the "Judge" who stays
mostly quiet and just listens and then if things do not get settled between
developers, he will speak up. Similarly to what he does on the mailing list.

-- Steve
