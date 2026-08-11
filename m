Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 852FD448D03
	for <ksummit@lists.linux.dev>; Tue, 11 Aug 2026 14:26:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786458372; cv=none; b=b/sM6+5yaTwhC1PHyVOhdW2aRbMYjG2Eu/V1FOzaERE1PJ4QuJAXOh4zAgpMJioKdGXPS485GeBqXdEU35mpt4qtDN6KemaYh3UJGCyfmAZmJMoyqgH7iGYBr/JN4GRVqBn0be4ySshCkerZ2s9sb1DRCajnOz0iuRhA5XVOwqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786458372; c=relaxed/simple;
	bh=PXunbhheNrdnkHIlQCISOCno3a/ylSqfHV2WgBYXyWs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ltVQHX/gxFne/rXt3G+R6MeZG9qOTLZ6NTQtINeUvHoQ/1u17NRbo8cqTiFl6tzomP4Od+Q8gmFiF5bTu8cy9zT4xEfIGbKXskfkEp0O6DC7vUKjivMzJFzCpT8iT/UvDKce5bLnOm+dnFa2iZgCbACamUjhK5Hz60zv7eYr2CE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pv3Kp9N5; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pv3Kp9N5"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B68A61F000E9;
	Tue, 11 Aug 2026 14:26:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786458371;
	bh=1PbOJms8TnVxvWDQr4CW3m7sccuccDRu06T9yYcituk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Pv3Kp9N5F/XRkelR4zbNIl/2PYRNC/EFJ/jekiZ8F/z4FQqwRKT7HtsH6bxO/IF8c
	 sQT4D3R2EfhZ2eHHF7TgGRIT6Ao1pnLqJ16fhx+sAEqrlHZv7yUrPkO3cg4w1ctSN/
	 uxhXy53GDsXxaaciODQCwDpLIC1gaEJrERzWdNl1uo4tDGIcv6FF4qpFfssGcRDtZA
	 zg4kzjs/mE0IEhXyvR6f64J5W4nM3z4tVhuCk1ipuSyAmFHmz0d8HmJfkFeiNWHtrk
	 MoaWNePrTSaQiPMK8XgihNo5Gww62nYtfMoUNKKcYQzqV0f3Ja3YNWPdeNgeGtSthd
	 zwNgIo64iiuGQ==
Date: Tue, 11 Aug 2026 15:26:07 +0100
From: Mark Brown <broonie@kernel.org>
To: Dave Airlie <airlied@gmail.com>
Cc: Steven Rostedt <rostedt@goodmis.org>,
	James Bottomley <James.Bottomley@hansenpartnership.com>,
	"Lorenzo Stoakes (ARM)" <ljs@kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
Message-ID: <cab91284-4b9f-4e37-9f65-a4673c6b9de3@sirena.org.uk>
References: <20260806194153.6443a3ba@gandalf.local.home>
 <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
 <anii3u-87kSrB9K3@lucifer>
 <CAPM=9tx7izyUJr_XVQju26fevzepZ-L6vs5vgH2aib9jPPjvRA@mail.gmail.com>
 <anl7CgkKb6tORavG@lucifer>
 <20260810091154.2d3cd6d5@gandalf.local.home>
 <cc6505e586325cd59ba036cef5429039c9c71ba8.camel@HansenPartnership.com>
 <20260810102423.342c4e9d@gandalf.local.home>
 <0a8c1e90-1de1-4a76-b0fa-e367a4bd4f55@sirena.org.uk>
 <CAPM=9twB=hJURcbdaiDZjkEeUHTLmOLAoxnD+g0zGTTMq3nySw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="GghxiJ+JvSaDTmrT"
Content-Disposition: inline
In-Reply-To: <CAPM=9twB=hJURcbdaiDZjkEeUHTLmOLAoxnD+g0zGTTMq3nySw@mail.gmail.com>
X-Cookie: Take me drunk, I'm home again!


--GghxiJ+JvSaDTmrT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Aug 11, 2026 at 01:29:37PM +1000, Dave Airlie wrote:

> > It's not even all of DRM, it's specifically the AMD and Intel driver
> > stacks which as far as I can tell just routinely cherry pick all their
> > fixes between their development and fixes branches without even
> > considering the possibility of either merging up the fixes branch or
> > just waiting and letting the fixes propagate back.  None of the rest of
> > the DRM trees ever seems to cause these issues.

> AMD and Intel are just the two largest teams with the longest
> pipelines of internal engineers and teams. There are between 50 and
> 100 people in those groups, across multiple disjoint teams feeding
> into a single driver. It just doesn't scale for all 50-100 people to
> understand the cycle of the upstream Linus tree at all times for all
> patches.

> Which means for CI reasons and pipeline reasons, things go into -next
> is the default, our -next trees are always open, and get disconnected
> from upstream next from rc6->rc1 so not to mess things up.

> Then there are people who understand the upstream cycle dealing with
> fixes, because they know what goes into rc2 isn't what goes into rc4
> isn't what goes into rc7, and that knowledge is hard to disseminate.
> Having fixes be a free for all has usually meant me refusing trees in
> rc6/rc7 because there are inappropriate patches for that time of the
> cycle.

Having everything be a complete free for all does sound like a bad idea
but there's a fairly big gap of processes between there and what's done
currently which is probably worth exploring.  Having a more limited set
of people who can apply things to the fixes branches, having a flow for
getting fixes integrated into the branches that CI looks at and so on.

It strains credibility that it's not possible for people to work out
that a commit clearly labeled as a bug or erratum fix might want to be
routed as a fix, and that with such large teams it's not possible to
arrange for anyone who might be able to confirm this to take a look and
apply to the right place in a reasonably prompt fashion.  Some things it
might be less obvious and some cherry picking might be a sensible way of
dealing with those after the fact but there's a lot of cases where
that's clearly not the case.

Possibly just always merge the fixes branch into the development branch
immediately (or after going through a pile of fixes), it'd result in a
large number of merge commits which would annoy Linus but perhaps he's
not reading the DRM pull requests in enormous detail anyway?

Even just labelling the cherry picks as cherry picks of the original
would be an improvement, right now the cherry picks are completely
silent which really doesn't help anything.  IIRC the stable people have
mentioned that that's one of the things that causes trouble for them.

--GghxiJ+JvSaDTmrT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmp7MP4ACgkQJNaLcl1U
h9DacQf9HyQsEiMALEoprIePr17C8FTK8v7M1sqi1nqhYKpn7pu8rbX4IS9XIdeL
bImlz7FkDQ9j7vq8U17PDzYQ4+kAwiq0sIjqWbvmcOkbBmzybyIou7m74Af5ebNE
ggYSF2mwS/bkI6hS2+Jw/F5wve0SfwKvHC4Mz9V3Js+fNYaRULBo67DjXHupL8pF
HgLyQd/58VtZoeHBmyaPdt4oTyfuAY7QKwrTyXltbFfpGGZMx1izvduUk3qJtiyd
4iBvlEXVTt6UQ3BJtiqcbUIZtKMkND0jgOhGUM9coaQ8hYgJP/CR1inEcaS1xvUF
x3Z97c6GPdmqugu8kvaPOz5mqEJ47A==
=k5TD
-----END PGP SIGNATURE-----

--GghxiJ+JvSaDTmrT--
