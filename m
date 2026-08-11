Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D471A25B0A4
	for <ksummit@lists.linux.dev>; Tue, 11 Aug 2026 13:29:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786454982; cv=none; b=K2tyr2Hd437sknTJTaeLjeF5/VQNXOu5IYngkkk3aRdNcKftwCzRPXTpP0M1wp0taLw4WgkhSG+Ty6oOyJu1Bkey3iZIyQ8TAmvqWQgbXxbbrItGrZolrgcx2zyD8nbnDh5xjsJCNPL8wdU7mS1fBMWwRe+fkAdDoUJ1j08KRcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786454982; c=relaxed/simple;
	bh=rweqcDlOgqS7dEhzZTEQrw3t0jFTfphq8zd++UFIk38=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XegYJ/SS4OTAiTga2q9W/1YGwu8beZCmxS15p9I1Ka+vmw2kSM5h+iTyu97Nb2Myu0vxhA90VLOYR+II52O/Dz4Ja5l3nPqSY84hx13WFAV3oavueUn2ulEzppPu/EQWwE27y02vjejzsW6hXtmqytMSxngSeoKxC5IIrYm7fr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zh+bqUmP; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zh+bqUmP"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0B541F000E9;
	Tue, 11 Aug 2026 13:29:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786454981;
	bh=xYQeanklZYCbtFNXKjErFohhtXCryEJX4c9sZKtiX9w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Zh+bqUmP+UulciJ8tMrBpa0y2eSK5voMkSBiIkCGtghxHUM6zs73mluD5+6jDEODe
	 9QnNu99IMczjuIEY7TmB594UdkcFo6lZqpZorvdroYjaiQaFc73nKzPF9aUaOjf+lB
	 j0gSh+vwq4XtqpEov24pyZxTo2lQS3KW0MihdgAdi6YbMns1UvW3NSlTI+iD0PcyuL
	 ypJqUYcCntC2PERVDj7b3Fg61rj4l74iYi/RM1h+PU3pIEzABZgnVfz1j0wSUcvWhN
	 l5Z2AOywZ/yPCS8iRR/ZI5hkmFY8UBQXYLzciCz+HNdv4UAe2BzQNiLwEAKvme/WCN
	 bifHQHlIZUAew==
Date: Tue, 11 Aug 2026 14:29:36 +0100
From: Mark Brown <broonie@kernel.org>
To: Dave Airlie <airlied@gmail.com>
Cc: Randy Dunlap <rdunlap@infradead.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	James Bottomley <James.Bottomley@hansenpartnership.com>,
	"Lorenzo Stoakes (ARM)" <ljs@kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
Message-ID: <9b46fcb5-7651-4405-a972-3efa0a829830@sirena.org.uk>
References: <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
 <anii3u-87kSrB9K3@lucifer>
 <CAPM=9tx7izyUJr_XVQju26fevzepZ-L6vs5vgH2aib9jPPjvRA@mail.gmail.com>
 <anl7CgkKb6tORavG@lucifer>
 <20260810091154.2d3cd6d5@gandalf.local.home>
 <cc6505e586325cd59ba036cef5429039c9c71ba8.camel@HansenPartnership.com>
 <20260810102423.342c4e9d@gandalf.local.home>
 <0a8c1e90-1de1-4a76-b0fa-e367a4bd4f55@sirena.org.uk>
 <aa8f4e34-906c-4a37-a8c6-623389addece@infradead.org>
 <CAPM=9ty=Kb7rqNg14UCJWz=GJuMbQMZpvsDxfEdgeqePDD1gXw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fo/oGuz544G6+tS9"
Content-Disposition: inline
In-Reply-To: <CAPM=9ty=Kb7rqNg14UCJWz=GJuMbQMZpvsDxfEdgeqePDD1gXw@mail.gmail.com>
X-Cookie: Take me drunk, I'm home again!


--fo/oGuz544G6+tS9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Aug 11, 2026 at 01:24:20PM +1000, Dave Airlie wrote:
> On Tue, 11 Aug 2026 at 01:52, Randy Dunlap <rdunlap@infradead.org> wrote:

> > > or things where the DRM parts of a cross tree series look like they're
> > > being ignored.

> Is there any tag I can put somewhere that for cross-tree patches that
> are just changing and interface, or cleaning up an API change, that we
> give you an Ack without getting one, it's really a pointless bit of
> review theater if something needs changing.

> or can I offer drm-misc commit rights I suppose, but yes we don't have
> a good responsible person for acking non-drm patches, and they can
> fall down the cracks. But if it's something that can get handled via
> another tree, then I'm usually fine with it just going in via that
> tree.

The cases I remember were DRM adding something that was then built on by
ASoC (this will have been something to do with HDMI audio I guess, can't
specifically remember).  I guess for that case whoever's pushing the DRM
side ought to either commit stuff and send a PR or be more proactive in
saying "this is OK for DRM, you should take it".  The usual pattern
would be that you'd see an ack from the relevant maintainer on the patch
and know it was OK to pick it up.

--fo/oGuz544G6+tS9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmp7I78ACgkQJNaLcl1U
h9BviAf+OjYD/l8UgBdOMozY+P26Iki4H8x/rNklB7BxhNn2fSTl3R0ChcmgL973
RZI763XqgUG8fsbVQUrUNiYlIms98d/5xvM4MVyNpypA7MjAqKUav4oKF+mwkOBR
jFEyGWDwmk5CC+byAnQZKD1RkyO/khAf3XyvIGaxR1Pc/VfB1tET0uzHV4Oo+ut2
MNsl2kh5p1Dr9THBojMP2xJmAO+D/e0uGfj/REnW40rq7PgZWj7rqe7MzyLj8YSE
u5Lzyx2GoVt0cTfdqCat3uNajMN19nPanOA8ypIplSP5Aa0Mpj0LTGpvve6yq6CY
YYT1v4uPUlYVYFQnNT6sWfUWhn0Ldw==
=ABvI
-----END PGP SIGNATURE-----

--fo/oGuz544G6+tS9--
