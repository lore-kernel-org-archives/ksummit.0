Received: from relay.hostedemail.com (smtprelay0013.hostedemail.com [216.40.44.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4301237F8DD
	for <ksummit@lists.linux.dev>; Mon, 10 Aug 2026 13:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=216.40.44.13
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786367516; cv=none; b=eTlz6QSSC9UtZ0B1GotJ7j4WHNiu1e9yc/jdyxNKujc0i2H6866VqMaP8n1K8WLAbDAU4wvE3V9x9qol7FPAEUMYGm77603opfG2AtfTWwQP7k14h7HEwFP8b0c5HzA1Sm7oMzEfzQxZ9wsomrS9EYeqpfw04ZgrhZiVtXn4TRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786367516; c=relaxed/simple;
	bh=wY8nSDC9Y/9H/lk3G2t9h6H+sQEiDwvuMYIIMZ0rOew=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ZuLbId54n5vjvdKhs/3xmuqojSjEt3hHTUbySr0JYRh0F1SzkUNPUiBZkmtlCECKSRQFuVWc7riF+jT2/2nRoOBUaEKKmjvj6NHhqA9A8sTgjgXK8wlVhnm33Kkw3uVzGPUIiqL+MMyEIxmx4CnOk9QQP7/jdt69R7RK/7dNpBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org; spf=pass smtp.mailfrom=goodmis.org; arc=none smtp.client-ip=216.40.44.13
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=goodmis.org
Received: from omf15.hostedemail.com (lb01a-stub [10.200.18.249])
	by unirelay05.hostedemail.com (Postfix) with ESMTP id 83A884016C;
	Mon, 10 Aug 2026 13:11:46 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf15.hostedemail.com (Postfix) with ESMTPA id CEBF318;
	Mon, 10 Aug 2026 13:11:44 +0000 (UTC)
Date: Mon, 10 Aug 2026 09:11:54 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: "Lorenzo Stoakes (ARM)" <ljs@kernel.org>
Cc: Dave Airlie <airlied@gmail.com>, Linus Torvalds
 <torvalds@linux-foundation.org>, James Bottomley
 <James.Bottomley@hansenpartnership.com>, ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
Message-ID: <20260810091154.2d3cd6d5@gandalf.local.home>
In-Reply-To: <anl7CgkKb6tORavG@lucifer>
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
	<20260806194153.6443a3ba@gandalf.local.home>
	<CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
	<anii3u-87kSrB9K3@lucifer>
	<CAPM=9tx7izyUJr_XVQju26fevzepZ-L6vs5vgH2aib9jPPjvRA@mail.gmail.com>
	<anl7CgkKb6tORavG@lucifer>
X-Mailer: Claws Mail 3.20.0git84 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: rspamout01
X-Rspamd-Queue-Id: CEBF318
X-Stat-Signature: j5937wp9jj15wka511qwzzq5p689jge5
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX1/TLyy8Jf8cDITo35QE8LqnBoDRcXcfo+0=
X-HE-Tag: 1786367504-67383
X-HE-Meta: U2FsdGVkX1+NO5z0expRFRJeZteQmY6FseC0FZ+c0bArX1r3+my0YB1kLZ8z7pwqJKPOjwAzs07BKmbVtfTJcWdqUHaSkZSJhFj/Om5HIdopxUcnPkdcrQj2Wait2BfeEKgillrv68pnbcovE6JmwzsOvNRhB8HMb/dFdzt+k3zlaCDzKhCyNTpaiw1z4n96u6EBXL5wOHITu9lj1jtVVMRABLOcVX+yjg9y5SqLmYekiDktfO9jccAHIBGIfHHyxbGLPfYDRnWRAOCYlCX5FdrdiKYA5VEiigqOb5AeyZwtIo4ZrIkBJI5m1W7uOKkP8kMeWkF5yGaGpts+Wf/Zl/swKchXEkLJQlYwZHfwwqF0PBOTL5t6Sg==

On Mon, 10 Aug 2026 08:26:36 +0100
"Lorenzo Stoakes (ARM)" <ljs@kernel.org> wrote:

> > Voting on what though, I'm already over the number of times
> > maintainers with small potato problems think that the lives of
> > maintainers with big potato problems would be much simpler if they
> > just adopted their niche one-person mutt based review process. =20
>=20
> Ah good to know core mm is small potatoes ;)

=46rom my understanding of what Dave ranted about last time, MM would be
small potatoes.

I think it's because DRM has a wide arrangement of different types of
hardware under one umbrella. It sounded to me a bit like herding cats.

MM may be a large and critical subsystem, but most hardware acts pretty
much the same. Where most developers are working together on a common
platform. Even with minor differences between architectures. Architecture
specifics of how to create memory mappings can be mostly be abstracted out.

I don't know DRM at all, but just from listening to Dave, it sounded to me
like everyone is doing things their own way and Dave needs to manage it all
with a more complex process. Where networking and arm may be the only ones
to rival the complex process of DRM.

Dave, feel free to correct me where I'm wrong.

-- Steve
