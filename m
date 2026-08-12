Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 117A2437456
	for <ksummit@lists.linux.dev>; Wed, 12 Aug 2026 12:48:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786538913; cv=none; b=OlKytjhpYgsGp+Tn8FbiaHxu8H8Xp4WMUMIP7OL/+h2WRf47ns2E7YMRzgAEIg6Kc/yxVzwPr/spmAemTteMqTBcG/VEaOh7UrDpA+BhDKE3KC90UddJgEvlqA7h4C47+xXdx/MAWnrpoZV4nVlgJ6bAluuWBlYlsd+BVQIqxAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786538913; c=relaxed/simple;
	bh=AIjJofSVcOR51sVurLAN+LTg1jaAXjBqfRCPQ6fDC0Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WdtJFlS9N1nBeH0n4t+eS0fB0dll+20fDDCeMDZordcNLhfNd7qwwmFhoclv3/RZde22HoXM8kFsr9CZ/01y7luyrMQMuJa3NERkCbwp9S691yB3xG6Cv60KoMF+B0ZE3SydqL5XEhDzM5kHFaVppsJZJWmfioMQpXY0WnNcpSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hmytrFIb; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hmytrFIb"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE7D91F000E9;
	Wed, 12 Aug 2026 12:48:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786538910;
	bh=SzGIIWr5XMtV9ePm2it2c+TE89IVBuu2C57ZW2LqajQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=hmytrFIbLYPXpKp7RbJyJaEO28JLGFhC6BDcd4vBW4u+FPkIXytMtRQSgy4bVaR7y
	 mweiefFnRl0NTH7Qe/ft3P1jQ4Te5Sg95RvzANW3a1Zv276bGvwHehcHMEZ6uyLXMO
	 UgptzmaIR+n7gq7FIblxlx3hYG1hdg/rvcduwXSPNMWa9jdOdEgWWSXYs3IUquhew6
	 KUjTkNw30MbccGUtd6w2bwBoxMrCl1RHqCdHaneBNF9NmUOd5nVsNt60tRqPHCuHDc
	 a5vZw4nrEtGZ9oRXVwjGRRvn+kC6MXlRYb5Irm5nOzTVVCTwt4qMobUAafECQ3WCux
	 atlcne6JDk8jw==
Date: Wed, 12 Aug 2026 13:48:26 +0100
From: Mark Brown <broonie@kernel.org>
To: Dave Airlie <airlied@gmail.com>
Cc: Greg KH <greg@kroah.com>, Krzysztof Kozlowski <krzk@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	James Bottomley <James.Bottomley@hansenpartnership.com>,
	"Lorenzo Stoakes (ARM)" <ljs@kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
Message-ID: <7de99093-9238-4435-b8eb-ec6f875ca43b@sirena.org.uk>
References: <anl7CgkKb6tORavG@lucifer>
 <20260810091154.2d3cd6d5@gandalf.local.home>
 <cc6505e586325cd59ba036cef5429039c9c71ba8.camel@HansenPartnership.com>
 <20260810102423.342c4e9d@gandalf.local.home>
 <0a8c1e90-1de1-4a76-b0fa-e367a4bd4f55@sirena.org.uk>
 <CAPM=9twB=hJURcbdaiDZjkEeUHTLmOLAoxnD+g0zGTTMq3nySw@mail.gmail.com>
 <0c95dc03-5b33-49aa-8368-bac482b8b40e@kernel.org>
 <CAPM=9twMwxo-yO1Ke45D0Sxmji8Mt23BqxUMv-_GY1gzssVCiA@mail.gmail.com>
 <2026081254-scrubbed-avert-b5b4@gregkh>
 <CAPM=9twhoA2_ngguhxj7t52kvnuR0DGgqznp7cWhTVztX_ryrQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="UdJpvIkZG9A5Eu9t"
Content-Disposition: inline
In-Reply-To: <CAPM=9twhoA2_ngguhxj7t52kvnuR0DGgqznp7cWhTVztX_ryrQ@mail.gmail.com>
X-Cookie: !07/11 PDP a ni deppart m'I  !pleH


--UdJpvIkZG9A5Eu9t
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 12, 2026 at 06:05:32PM +1000, Dave Airlie wrote:
> On Wed, 12 Aug 2026 at 17:43, Greg KH <greg@kroah.com> wrote:

> > Why would anyone need to "stop working" for 2-3 weeks?  That's not what
> > other trees do, the patches just go into a different queue/tree until
> > the merge window is over and then they flow into the normal -next branch
> > (or whatever you want to call it.)

> Where is this magic tree, how do you keep CI on that tree, is there a
> maintainer who isn't saying, I won't review stuff for 3 weeks because
> the merge window is open, etc. There are plenty of examples of

I certainly don't stop looking at stuff, nor do I tell people to stop
sending me stuff.  Currently I don't end up applying non-fix things but
it tends to be in the space where I'm leaving stuff on the list anyway
to give other people a chance to review, it never really seemed to be
causing anyone too many issues.  Since I switched to b4 to drive my
review I might actually start just applying stuff again, I mainly
stopped because it used to flow a bit more neatly with my own scripts.
When I'm not applying stuff I'm generally queueing it, it all gets
dropped into the tree once -rc1 appears and then gets into the tree as
my CI recovers from the onslaught.  When I did actually apply things I
did exactly what drm is doing and just appply them to a branch that
didn't get pushed into -next, my scripting still has all the bits for
that so I'd just have to open the new branch to restart.

Keeping CI available seems like one of the more trivial problems, just
point the CI at a for-ci branch that merges whatever should be CIed or
something.

> maintainers not merging stuff into trees for weeks on end around
> release->rc1 etc, shit developers get used to but it cuts their
> velocity for upstream work. We've had plenty of examples of

That's definitely a thing for some trees, and there's some trees that
close down betwen say -rc6 and -rc3 which is a very big window and I do
feel not ideally helpful.  That length of shutdown is unusual though,
and my inbox tells me that there's plenty of development and review
activity going on during the merge window.

> development been taken in house and then upstreamed by separate teams
> later, which is the result of what we previously did. I hate to sound
> like an asshole, but we tried most of the things people with the 5-10
> developers 5 years ago and 5 years ago before that, and they never
> scaled out. There was always shit falling on the floor because of
> various bottlenecks introduced by the upstream process vs what
> internal teams were trying to deliver. Often you have internal teams
> trying to deliver a coherent driver across non-upstream and when that
> becomes easier or the priority upstream suffers from it.

I think you're overindexing on how much of a snowflake DRM is here TBH,
of course DRM is at the upper end of all the various scaling issues but
there seems to be this big disconnect where you're assuming no other
maintainers can relate to anything you're seeing at all.

> There is a lot of subtley the smaller trees get away with if they do
> one next and one or two fixes pulls to Linus. We send 1-2 next and a
> fixes round for every rc for Intel and AMD, I'm lucky if I get one
> batch of fixes out of qualcomm in the middle of the rc cycle. Despite
> Kryzstof's efforts to convince otherwise, Qualcomm are small potatoes
> from at least a GPU pov.

I dunno, I find myself sending fixes most -rcs.  It really should be all
of them but sometimes I don't get round to it in time or there's
something I want to let cook a bit longer.  I don't think that's super
weird? =20

> We have tried to fix Fixes: and tried to fix cherry-picking, and to be
> honest I've lost track of the objections we've had from the same
> people no matter which way we go.

It might help if someone could write down what's been tried somewhere
people can refer to, that way people could link to that and give a
clearer explanation of things instead of the briefer replies that tend
to happen.  It'd also be a useful reference for people considering
updating their workflows, perhaps there should be some central idea
sharing place for this sort of thing.

It'd also help if there were some work on mitigations for the externally
visible impacts of the unusual workflows drm is adopting.  For example,
I've mentioned the idea of marking the cherry picks as being cherry
picks.  That would help me a bit and I think also the stable people (if
a cherry pick gets tagged as being fixed they could then find the
original commit).  It's difficult to think why it would not be possible
to do this, and it should be low enough effort that even if it only
helps a little it'd be worth it.

Personally I'd also really appreciate it if the branches drm is pushing
into -next had the merges with the fixes branches already done, I
believe those merges do end up happening anyway and it would save me a
huge amount of time.  That's a bit more specialist but others have
mentioned that they also end up merging drm's development branches for
non-next stuff so it wouldn't *just* be me.

--UdJpvIkZG9A5Eu9t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmp8a5kACgkQJNaLcl1U
h9CpqQf9Huil4mnLT5CHQo9hRhDGJOmt5Pa4dGYPQSY+DY2eVWAS4o5SmKT7NPkF
ql06hoCDHJ/KGuZweDVtiit39U6+V6f21mLD6rjOuhKhxSeJovfiS8C1qW80uATa
8H8gzWHAeIG87ZdNtv9VddhE9HPpKgEsrs1O9u42yGiLPpaOZg72gtKdYsnt6E/4
LqVzZvgot0d2lagAnAglEog8+UAatpxJgPrbs1GKk6vtv31Jef+F1MOLwquRH3FH
KQxIXoBwtXsfRC+/yPxPdwyMvbpQkGaPzjqM9oJg1geG0HfSv+FnKn2ElQib7agW
tKLLBurxzITNUe6wxYfqCaT5B/iQ8w==
=XQ/D
-----END PGP SIGNATURE-----

--UdJpvIkZG9A5Eu9t--
