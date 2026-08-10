Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AA062F0C62
	for <ksummit@lists.linux.dev>; Mon, 10 Aug 2026 22:47:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786402037; cv=none; b=hiIb5tKY1Pm0fEQZWX8NERlPzL2MCUi9nkgkh/cHxEFsmDVo5IsplXcN+lw0ruecVr6jFrdP2sMvwOTehXvQwH18cUW2ukJYjJ6P4esLH1+lnJVDOfIdVD5/VPgt4MBijRUbclg4uILzsJxU2ycfYQ7y/HwZx8hRybbvHufnUtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786402037; c=relaxed/simple;
	bh=qeoM0WAHex8xUKOq2nRFFpnoan8umeo2aQTl7Ko7PqU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QjznlVmSwXOuyouIE4bI0HPJeHzfgOCiEtUcS1J80XRTYA1Y7wY2Tm/xdKep8ETnd++Y5xd2wzfdOqgemZIYlxgZxubOsjVd80UKbXlfQOxB2+HaJcboDttDJlCGshP6mab43eRWP5+9vFT0mzO+qKC8kJyt14UjgZdFFwy1RpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AEyD0qkd; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AEyD0qkd"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BCDEC1F000E9;
	Mon, 10 Aug 2026 22:47:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786402036;
	bh=J5xk24pC70jZS3eOJlFZ4nDjEJ+3AQo3NOWmARzPbCc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=AEyD0qkdx2NVri9+d57kky3REtcDbVRMrw/2HHTB/J5QZlWpOm59vodHFNOL84TZc
	 /HX7x8beHq8AVhhavm94IPA7XNnZorsH8jiQHqhzm0ts5fq0GJUxok2vZCGv5x+/+D
	 aoFOULOhVsErJvXi7b20PWeun5rrjmW9OwUU1g0aqSEur4qurqdRZFY+z3zW2IB6V1
	 5qSr6n9ACCUGodLI9wd2aX9t9q8vteqtMrTlmkDvZDKJB0NYulVT8eiqFCbF9o8y3I
	 j1L7P5L7qvIcsi6GQwXW3v/Gzipk7OIBF97JcLpi8wl8q7858re+O3jn8W/z85lDfU
	 7AWrTfUK1+PNQ==
Date: Mon, 10 Aug 2026 23:47:12 +0100
From: Mark Brown <broonie@kernel.org>
To: Steven Rostedt <rostedt@goodmis.org>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"Lorenzo Stoakes (ARM)" <ljs@kernel.org>,
	Dave Airlie <airlied@gmail.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
Message-ID: <0a723972-7be8-453b-8fd1-d934e3c422af@sirena.org.uk>
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
 <20260806194153.6443a3ba@gandalf.local.home>
 <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
 <anii3u-87kSrB9K3@lucifer>
 <CAPM=9tx7izyUJr_XVQju26fevzepZ-L6vs5vgH2aib9jPPjvRA@mail.gmail.com>
 <anl7CgkKb6tORavG@lucifer>
 <20260810091154.2d3cd6d5@gandalf.local.home>
 <cc6505e586325cd59ba036cef5429039c9c71ba8.camel@HansenPartnership.com>
 <20260810102423.342c4e9d@gandalf.local.home>
 <0a8c1e90-1de1-4a76-b0fa-e367a4bd4f55@sirena.org.uk>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="NXYutNHVGVFB2Hfy"
Content-Disposition: inline
In-Reply-To: <0a8c1e90-1de1-4a76-b0fa-e367a4bd4f55@sirena.org.uk>
X-Cookie: Words must be weighed, not counted.


--NXYutNHVGVFB2Hfy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Aug 10, 2026 at 04:23:41PM +0100, Mark Brown wrote:

> I don't think any of that stuff is really what's causing issues with DRM
> externally - for -next the issues I see are the constant cherry picking
> (which I gather is also an issue for stable), and outside of that the

For some numbers on the cherry picking: I'm currently seeing 111 dups in
drm (we also have 6 more in subtrees), out of 1739 total non-merge
commits.  That's about 6% which seems like a lot, and they generate
almost all of the frequent conflicts that DRM generates.  Next on the
list is nfc with 17/35 which is a much larger percentage, and all of the
8 commits in the hyperv-fixes tree are duplicates.

Sometimes trees show up in those numbers transiently due to sending
their patches upstream as email rather than a pull request, that doesn't
seem to be what's going on in the above cases from a quick check.

--NXYutNHVGVFB2Hfy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmp6VO8ACgkQJNaLcl1U
h9A3YAf/QvBThZWy7JQaVLp/mdxrBsfBokgEqrcs8isE47xkpd2sohZu/yz0UtaO
PudwO0b+NWzPVewpS+Yr3FB6M5fmMWt7VKHT8b0263wuslQaoJ54bNIkGr1AoMLt
hLy8bgaFFdznDsobuj3aKMVuMt72yyad+lNWfNFsIPf6wGKfjEb9r2/PeLN27uC8
4hnWy9/pYogNjAK4pN7bhvbICjvgPmqu9vIhsANM+eIt3pJpOJAEy6sd63DFXW6b
h5uLkEu+0RYuHTlwQWQkJChCwsIarR/01UCyegDOxaDHxghB1kDnTd8WMd+3uHlr
tNa5mf6u+fBkbVkLF51GCzkGZkFi5g==
=Zrt6
-----END PGP SIGNATURE-----

--NXYutNHVGVFB2Hfy--
