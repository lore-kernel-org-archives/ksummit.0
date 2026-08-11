Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B956F3502A8
	for <ksummit@lists.linux.dev>; Tue, 11 Aug 2026 23:10:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786489815; cv=none; b=ZKMdHoobIuk7FdynvfC4oQWAwRmMCejjwb1w87YbGz86CiaP69iUHJzfamDy+CNQxiO0lAEH15I3QZyB13/loTe4slkwNJ5g7Xp9bHeZUBUqSVITlKwYQTD3mTWInlJebpoJjBgsVYrdBGYqDt+LKrQjgPJtGrsmofyHT8/EJ7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786489815; c=relaxed/simple;
	bh=lnfBtr/8hL2DNrFJxCyrDpTxbJIuebk1Qc/G/OYwTpQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=l4Xh+DtnBm0asIhR58PTF4TutX4QUJF7CFe8hjgAAkS5n5OSiFRuG+IxYqexidLspcIlcoYIflOxwOMnzjommBMpKP+bZ/9PpphX8BqAOq4WWp+BuT4ZzwKXJnPPcEKoAbNc1yqpWe33a2+KWOTyE/rmvzTK/O8mm+VQ/GT9wOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j6OcTX8f; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j6OcTX8f"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 865AA1F000E9;
	Tue, 11 Aug 2026 23:10:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786489813;
	bh=WEW3bhUQoos+HRhdCsytn/+gRvNjiG1cp6Se7T8NE5k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=j6OcTX8fEYx8ijLXR+sAN5HOFxtDLRuVhZBDhc/Gr0c2JXYDY1+cdug+ApQzUqsXf
	 SRtv4WKV4SsDI1LqLtJ+RKL4ruwfc/T6eRGxZqQKJ2dMGOaguGn6r2e8zbiGGf6N2G
	 xpN9QyPDsEL5BG4O75n4qwFsEQ9s4N80Lma4U2Z5w2wCaiZu6Yw6AaQUnQBTWElXw0
	 qzRaCTKO/zbD79BB0lrGQcE/dfdBRANvpEE6wKlxUE72CKOpe5FKuWqOGeLT37FKrn
	 lt7TRNbaHoLe3TaDgD/KyQAPFH3cC4QcQfMoYVdPRncQ+zJJNP9n7h9aWV3Hg0g0Ae
	 WvRltPGb3TsjA==
Date: Wed, 12 Aug 2026 00:10:08 +0100
From: Mark Brown <broonie@kernel.org>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>,
	Jani Nikula <jani.nikula@intel.com>,
	Simona Vetter <simona.vetter@ffwll.ch>,
	Dave Airlie <airlied@gmail.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	James Bottomley <James.Bottomley@hansenpartnership.com>,
	"Lorenzo Stoakes (ARM)" <ljs@kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
Message-ID: <5aa1aa71-3eb5-469e-b285-94df94ac5bef@sirena.org.uk>
References: <anii3u-87kSrB9K3@lucifer>
 <CAPM=9tx7izyUJr_XVQju26fevzepZ-L6vs5vgH2aib9jPPjvRA@mail.gmail.com>
 <anl7CgkKb6tORavG@lucifer>
 <20260810091154.2d3cd6d5@gandalf.local.home>
 <cc6505e586325cd59ba036cef5429039c9c71ba8.camel@HansenPartnership.com>
 <20260810102423.342c4e9d@gandalf.local.home>
 <0a8c1e90-1de1-4a76-b0fa-e367a4bd4f55@sirena.org.uk>
 <CAPM=9twB=hJURcbdaiDZjkEeUHTLmOLAoxnD+g0zGTTMq3nySw@mail.gmail.com>
 <CAMuHMdVBABOiOWDdCKE0zDffj856ui5qr3UFVptwcAn1_Hx7oQ@mail.gmail.com>
 <ant9_jhefKix5TGu@intel.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="IE6bjXrmePHTU7M7"
Content-Disposition: inline
In-Reply-To: <ant9_jhefKix5TGu@intel.com>
X-Cookie: Anything is possible, unless it's not.


--IE6bjXrmePHTU7M7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Aug 11, 2026 at 03:54:38PM -0400, Rodrigo Vivi wrote:

> 1. Increase the risk of hic-ups in other fronts. For instance: patches
> that should had been merged to -fixes only going to next and forgotten
> to be ported to the previous version. And patches that should be new
> features due to the risk of regression, added to the previous version.

> But here one could argue that in a distributed commit rights flow, this
> is exactly why maintainers role is more critical, tto ensure we are not
> missing anything and that the patches are moved to the right place.
> Fair enough, but this makes our hashes more likely to change. We try
> to keep the non-rebasing tree to avoid disruptions in OSVs and many
> other teams that are consuming our trees.

I don't think cherry picking if something gets misdirected would be the
end of the world, it's more the fact that you're both doing it as the
normal and default thing and never marking the cherry picks as such that
causes issues.

> 2. The conflicts would happen anyway. I still see a lot of conflicts
> in the drm-misc flow.

> 3. Harder to manage the conflicts. Our cherry-pick flow brings some very
> obvious conflict resolution to the table. If you are in a newer kernel
> you likely only need to go with it is already in our -next branches,
> if you are in the current -rc based you likely need to go with what
> it ported to -fixes. It really is not something complicated to solve.
> But if you go with a flow that the patches don't have the same baseline
> like we have the -next and our -tip, then you get harder conflicts to
> solve and likely to make more mistakes.

The conflicts that I'm seeing from drm are I would say the hardest to
follow, certainly by far the hardest to follow that I see on such a
frequent and routine basis.  They are often huge because of the lack of
shared history between the two branches, there's often enormous sets of
changes on both sides (not helped by all the unadvertised duplication
making the divergent histories bigger) and there's no structure or
explanation for what's going on.  It's all a huge mess, and as a result
it's the area where I make most mistakes and end up having to do time
consuming stuff like repeat builds and merges.

You do sometimes see more complicated things, I do occasionally end up
doing things like just hold a change at an old version and ask for help,
but it's more like once every couple of releases rather than several
times a week.  However with those more complicated cases understanding
what the conflict is tends to be a lot simpler, you can generally see
the two sets of changes and what they're trying to accomplish quite
easily, and the complexity comes from colliding semantic changes in an
unfamiliar area of code.  The fact that with these cases the developers
concerned are usually surprised to learn of the conflict does help a lot
too.

I think from a -next point of view the smallest change that would help
would be if the -next branches you were publishing had all your -fixes
branches and Linus' tree already merged up up, that way any conflicts
that do come up would be actual conflicts with other things rather than
just the rountine conflict spam that should just have been a merge
instead of a cherry pick in the first place.  I believe that this is
what happens before the drm changes get sent to Linus.  That wouldn't
help the stable people (marking the cherry picks would be the smallest
change for them I think but ICBW?) but I'd guess it would help everyone
doing merges.  You could always do frequent merges on a separate branch
and then redo everything for what gets sent to Linus so we don't end up
with excessive mechanical merges in history.

> Well, I was going to tell about the drm-tip, but that you already know.
> And yes, we cannot have that for-next because it contains topic branches
> we really don't want to send up.

> Dave, Sima, Jani, perhaps we could instrument dim to create a drm-for-next
> that is the merge of all of our relevant branches excluding the topic
> branches?

I think that's in the shape of what I'm suggesting above.

--IE6bjXrmePHTU7M7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmp7q88ACgkQJNaLcl1U
h9Cw6gf+Ly68/A2iEkWawu3HFSvt6dQ1k/p8r2GAmVxm/SJV4k9OZDwLhoPxU2ax
KP05UMH77I2+kdCew48TJvxav3SYEtWqx3Dsq5q9xtMijUotk9IznUApv33pVzRh
iajOMLAPm4u0fcVvD16xVN34HfC/jact/S/qc9vKEnyc+BJKR3SV6CRWdfvHJ/pH
abCQpasCF6Gf5NKv4BW0i0VXx+0bZgKWy+q3sqKsWCf4RMH9E4tdiirfM6cl4oB8
ae0+NGVSr6EyTBoCG3DSmNaqRDyFiKYCzFBBCHsAm7UaAJhZZCRX1c7f/6B4LewL
YuKJTo2X3DVDHpuofZqNImaiZvmmOA==
=Bk2x
-----END PGP SIGNATURE-----

--IE6bjXrmePHTU7M7--
