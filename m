Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEAB4426429
	for <ksummit@lists.linux.dev>; Mon, 10 Aug 2026 15:23:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786375426; cv=none; b=OhqlhVG9LXgMkizrpyGqKP+2HfiPeX7Yna+KsXl0T0EThALb0/TYsWMyoPnZ3w0EgVMMSHZlSgCtteZTWvBY0dLSCiN1ezg1XSeTqDCi+wz55m8iSuRisyt67ncHyCoRw9o4955HQdTZeDXRHN8pSdcqN1sidQByU+ZPbgUt3F4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786375426; c=relaxed/simple;
	bh=Su66lhK19XfZCBzWbqQ1qQzGkAPO8UiJJSxm/olEcWk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GbGCf6eAlcvfBRzTFGgDF+BPpboraBUjSWzU1QpdeLivhaaPfgzSLA5m4rx0POfwHQR+ZJesJ0+TVpGKbxvo3X/ZMBTbaH4zemVdh3bNaZjb0GWwDX5jefMd4gALPRMhoa3LrXJSjbXjCaaGEeIUhM4IUIARMDv+xUluQRGR80A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GPJv3PA0; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GPJv3PA0"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 385B11F00A3D;
	Mon, 10 Aug 2026 15:23:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786375425;
	bh=cyrrEVU31XJO2YM7vc7RUvZlAQBWmTYjwuJjvVTJf6k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=GPJv3PA0IZjO9EgCYPQNvYsrrf1XpCQ23cNBzTpfLzbGNsNwGyAlixhma8iLqh6TF
	 R98As+M11hdDmfv7DWHs2c2ItKTwJHGsp4ZJlznClmfk5BFwbxr5ykfzTiDfIRZ5Vd
	 41pLonIrMpUcvEA1uITsPZynjlXbhxWNkaKnRXlUg2Tg84E0SkADgMsTX+nG445R1l
	 MITghtnIlLkSU1vmIPv4II2529pFoy6vN5wMaJjy7jtFg1UJpQ114CmTCdn6h1IBkY
	 30xX3liBcvTyVmjVdg3wazBdp4Zm3wlXw3ErWSGFQvRgzG/grvc12fNnlT52qU3dnz
	 nt76UfksLRjnA==
Date: Mon, 10 Aug 2026 16:23:41 +0100
From: Mark Brown <broonie@kernel.org>
To: Steven Rostedt <rostedt@goodmis.org>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"Lorenzo Stoakes (ARM)" <ljs@kernel.org>,
	Dave Airlie <airlied@gmail.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
Message-ID: <0a8c1e90-1de1-4a76-b0fa-e367a4bd4f55@sirena.org.uk>
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
 <20260806194153.6443a3ba@gandalf.local.home>
 <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
 <anii3u-87kSrB9K3@lucifer>
 <CAPM=9tx7izyUJr_XVQju26fevzepZ-L6vs5vgH2aib9jPPjvRA@mail.gmail.com>
 <anl7CgkKb6tORavG@lucifer>
 <20260810091154.2d3cd6d5@gandalf.local.home>
 <cc6505e586325cd59ba036cef5429039c9c71ba8.camel@HansenPartnership.com>
 <20260810102423.342c4e9d@gandalf.local.home>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="OQdp1dLDCsh+ZTq9"
Content-Disposition: inline
In-Reply-To: <20260810102423.342c4e9d@gandalf.local.home>
X-Cookie: Polymer physicists are into chains.


--OQdp1dLDCsh+ZTq9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Aug 10, 2026 at 10:24:23AM -0400, Steven Rostedt wrote:
> James Bottomley <James.Bottomley@HansenPartnership.com> wrote:

> > True (well mostly), but the internal complexity is concealed within an
> > external abstraction rather than having it spill all over the kernel
> > ... I would hope DRM does the same.

> That's a good question for Dave Airlie. Is it possible to make a general
> abstraction with DRM (much like VFS)? It sounded to me that the "weird
> architectures" of DRM was the norm not the exception. Perhaps it is more
> like what ARM was before Linus told them to get their act together.

I don't think any of that stuff is really what's causing issues with DRM
externally - for -next the issues I see are the constant cherry picking
(which I gather is also an issue for stable), and outside of that the
thing that comes up a lot is that it can be hard to get someone to take
responsibility for actually applying a patch if you're not a DRM person
since the responsibility is more diffuse.  This can lead to issues like:

  https://lore.kernel.org/r/46b86d82-6ff4-458a-ac7e-cbbae214b4e5@I-love.SAKURA.ne.jp

or things where the DRM parts of a cross tree series look like they're
being ignored.

> > If your assumption is correct, this is internal cat herding ... MM has
> > much the same problem except that it has to deal with somewhat
> > opinionated architecture maintainers (around 22 of them) to agree on
> > the internal abstractions for MM primitives.  Perhaps rather than
> > getting into my problem is bigger than yours type arguments, we could
> > observe that MM might run a bit more smoothly because it gets an
> > additional 3 day conference (LSF/MM) plus a MC at Plumbers to sort
> > itself out?

> I guess the question is, what exactly is being big for DRM that it needs to do
> cherry-picking for their linux-next branch whereas Networking and ARM do
> not? Is DRM bigger than either of those? From what I understand VFS doesn't
> have to do that either. And VFS has a large range of file systems to deal
> with. But it also has one of the best abstraction layers of the kernel.

It's not even all of DRM, it's specifically the AMD and Intel driver
stacks which as far as I can tell just routinely cherry pick all their
fixes between their development and fixes branches without even
considering the possibility of either merging up the fixes branch or
just waiting and letting the fixes propagate back.  None of the rest of
the DRM trees ever seems to cause these issues.

--OQdp1dLDCsh+ZTq9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmp57PwACgkQJNaLcl1U
h9AvzAf+KzY31Pkp5wTTyXtwMCet6Pk5lGhH4QABt2+6brIpvypaQPmhdwPA1BET
e0tgSoIU8tlQi1aw95mE3CT6wT1Fma6uZEjQS1Jxg9Sl3xgrp2upm7QSwlbh1Xmu
nJsMnxV5GoByjR6ATQPH6tvy/A5169GRVXP2VzogNjymA4+pFTgCjqIu9ViDLjU7
UYWND7MuZkW22wS4o6dHNw+q8V61afL46QCF1qq3Cx6tYbta3LLWrmC43MrI/hGj
k0tmmCjeXkAa22QqV0NZxkFDZ2RbAvE7QZbubOapmGqWcju/4owgKyOQNq2mrKCj
J/GzVBEaye4/88wnza2+yHLykjOGIA==
=wTaG
-----END PGP SIGNATURE-----

--OQdp1dLDCsh+ZTq9--
