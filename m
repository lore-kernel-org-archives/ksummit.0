Received: from relay.hostedemail.com (smtprelay0016.hostedemail.com [216.40.44.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 144A534D90C
	for <ksummit@lists.linux.dev>; Mon, 10 Aug 2026 14:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=216.40.44.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786371864; cv=none; b=JPYx4EWBna66jH3pzwPzvjuT7vEH/lY3rS7wIePbLmw542vgSX0kywJ0oux0rRI0x2nspvtbmVfDPLZWmAEdZrSHmoY14ZcsV6hsI67/5o+WF7ikltbwDGFaBhwTkgtnvtAX4KV+Rxy64QvJ34r6p3/yEAJ9Aj7JJQhcWOHYxew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786371864; c=relaxed/simple;
	bh=FfmF+HAi8vaVoyv044mzQpFrJg30hPCa/crvcSPh9Zo=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=hXPE6BGz0w5a2T5D1tGSmkgECw3WMvqwv5kgYiRWX9qNcKyr0qkcebWYJ75Du4/9fBU7Ri9b3/jOi1YrdmVybvPjBKE+aecsssUVjXxpRSZMkVUgmsPO1SpaVZUrVyZczqzPxn6o7Jcx6DNRfQUiQTfmZbQP2rRaEuwnkAF/2e0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org; spf=pass smtp.mailfrom=goodmis.org; arc=none smtp.client-ip=216.40.44.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=goodmis.org
Received: from omf12.hostedemail.com (lb01a-stub [10.200.18.249])
	by unirelay10.hostedemail.com (Postfix) with ESMTP id 17118C0196;
	Mon, 10 Aug 2026 14:24:16 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf12.hostedemail.com (Postfix) with ESMTPA id 48AEE19;
	Mon, 10 Aug 2026 14:24:14 +0000 (UTC)
Date: Mon, 10 Aug 2026 10:24:23 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Cc: "Lorenzo Stoakes (ARM)"  <ljs@kernel.org>, Dave Airlie
 <airlied@gmail.com>, Linus Torvalds  <torvalds@linux-foundation.org>,
 ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
Message-ID: <20260810102423.342c4e9d@gandalf.local.home>
In-Reply-To: <cc6505e586325cd59ba036cef5429039c9c71ba8.camel@HansenPartnership.com>
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
	<20260806194153.6443a3ba@gandalf.local.home>
	<CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
	<anii3u-87kSrB9K3@lucifer>
	<CAPM=9tx7izyUJr_XVQju26fevzepZ-L6vs5vgH2aib9jPPjvRA@mail.gmail.com>
	<anl7CgkKb6tORavG@lucifer>
	<20260810091154.2d3cd6d5@gandalf.local.home>
	<cc6505e586325cd59ba036cef5429039c9c71ba8.camel@HansenPartnership.com>
X-Mailer: Claws Mail 3.20.0git84 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Stat-Signature: eoq4wkes5wrfjacepfgf6ub17cpmqnhw
X-Rspamd-Server: rspamout02
X-Rspamd-Queue-Id: 48AEE19
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX1/FMr1c0vFNz1MupxNsyHgFZ0T8lrFfWWg=
X-HE-Tag: 1786371854-676396
X-HE-Meta: U2FsdGVkX18bbTFeSYeQ/Rb2msLbGxoGe6iSTIvvClAoX8FRTcF1rryB/H+76aWtGpFAr0FF0Cw3HhhctTBmRW6CTgEN+oghCRyKcvM+qYK1Qsh9ruSpg4R0bVrC2tD/S5zZnp2dWX7VK0vMjDLolPAnYxMD1/dZS0jyhrHk7gH+5CWDqUk2uiy55XJK9SDysEBhhwOuEv4LVmbHTYeMdaOSu50kG8ck4gIYjet5inVIKToFbv7G7eQyLX89ZZn9o7x9i3HTwAt0f3KBTlX4Jku+uHUoLI/XmgixRDEaEp1WXMI1HZeU0+EfPXd42n0AFAR40CMbLwIJyUN1L4/uB7uukelp5TR4cu70dfBTr1m5t9wIAucgaMfE0VRmaXfddJ40434EeNPfkv8NlpJEhkoFaMAuuHsh

On Mon, 10 Aug 2026 09:32:24 -0400
James Bottomley <James.Bottomley@HansenPartnership.com> wrote:

> > MM may be a large and critical subsystem, but most hardware acts
> > pretty much the same.  
> 
> Have you met some of the weird architectures with their super strange
> VM extensions and the even weirder confidential computing extensions?

But they are "weird architectures". That is, basically something that is
not the norm, and needs to work with the main core to come up with
solutions. Heck this is what we had to do to get RT working. 

> 
> >  Where most developers are working together on a common
> > platform. Even with minor differences between architectures.
> > Architecture specifics of how to create memory mappings can be mostly
> > be abstracted out.  
> 
> True (well mostly), but the internal complexity is concealed within an
> external abstraction rather than having it spill all over the kernel
> ... I would hope DRM does the same.

That's a good question for Dave Airlie. Is it possible to make a general
abstraction with DRM (much like VFS)? It sounded to me that the "weird
architectures" of DRM was the norm not the exception. Perhaps it is more
like what ARM was before Linus told them to get their act together.

> 
> > I don't know DRM at all, but just from listening to Dave, it sounded
> > to me like everyone is doing things their own way and Dave needs to
> > manage it all with a more complex process. Where networking and arm
> > may be the only ones to rival the complex process of DRM.  
> 
> If your assumption is correct, this is internal cat herding ... MM has
> much the same problem except that it has to deal with somewhat
> opinionated architecture maintainers (around 22 of them) to agree on
> the internal abstractions for MM primitives.  Perhaps rather than
> getting into my problem is bigger than yours type arguments, we could
> observe that MM might run a bit more smoothly because it gets an
> additional 3 day conference (LSF/MM) plus a MC at Plumbers to sort
> itself out?

I guess the question is, what exactly is being big for DRM that it needs to do
cherry-picking for their linux-next branch whereas Networking and ARM do
not? Is DRM bigger than either of those? From what I understand VFS doesn't
have to do that either. And VFS has a large range of file systems to deal
with. But it also has one of the best abstraction layers of the kernel.

Perhaps we can look at the process of these other big subsystems to see how
it could help out DRM. Maybe this would make Dave's job easier?

-- Steve
