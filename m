Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5954113B5B3
	for <ksummit@lists.linux.dev>; Thu, 13 Aug 2026 11:48:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786621710; cv=none; b=LLyuZPfB8XKVwvESivHP31dUL058QbgGJ8Popd1awQofIVwvTFjdYjQjXTdZYeLSSfzobCTYBLaZxlQ7LtWJYR/YgT+lAJBcVhTl9Ookd6KbGCXIPMB56mou+VzvtR57UZzoAENvar2dpa5JdgTOFuqyMW9PuEDInpp12PCa2e0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786621710; c=relaxed/simple;
	bh=D6jki2wn8EE9D/YlIrKnxBtJnsKAh+YqiefSEcyIzCw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=a4SzaFYlUmB7zjhzTAsFqsUExuZWxDeD8f15FpZR/mvCMZ74WEBbkg+l4qPgq97OKQq+QkOkZYH4xoJ3erjrnylLAkdKlXWu9PKFQnc1YFlVDPXRKHPQ2AprNbhyrtv/qLVloUDZ0MgjFsNl+BRNTCzZdDFwBnSXeJV0pfS5C/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c+TWwRob; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c+TWwRob"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D81331F000E9;
	Thu, 13 Aug 2026 11:48:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786621708;
	bh=/DFF/ynXrEEkEZDa7t53CAqBSyuZoioLSUAmlEtnltY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=c+TWwRobMuVD1a4F1I6atK4n7vg796czpTAYBC9CU+zuygX1yQrQ+0DbyL6cinBRV
	 JQhv4cDR4DOUifs/zRN+y31yXtLrPMTEUKVpX9KUdB0rD0m+oMG7y3dq21z39a/ZYL
	 t5WR9UkXX1FAIWpyGMqDK6YZ4Vt0sJDi27SdYyUgvBajkIvGnlLjVEgD5s6vOqzVVV
	 UN/UMuhTsgpRxMCcQ58R3qlSsDJevKjBkf9U8aErQdqG7qUvSF/w/wQ0ySNnz3T55a
	 M3JDEzmOVp34n8KJTOdB8uSpD19UEP52oC9yFARlF5VdbwniGfQZ5p6zlT/TTMlAsI
	 Dnz87L0onCm6A==
Date: Thu, 13 Aug 2026 12:48:24 +0100
From: Mark Brown <broonie@kernel.org>
To: Dave Airlie <airlied@gmail.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Jani Nikula <jani.nikula@intel.com>,
	Simona Vetter <simona.vetter@ffwll.ch>,
	Steven Rostedt <rostedt@goodmis.org>,
	James Bottomley <James.Bottomley@hansenpartnership.com>,
	"Lorenzo Stoakes (ARM)" <ljs@kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
Message-ID: <3a382504-6bff-45c0-8b05-3982e604d7c1@sirena.org.uk>
References: <anl7CgkKb6tORavG@lucifer>
 <20260810091154.2d3cd6d5@gandalf.local.home>
 <cc6505e586325cd59ba036cef5429039c9c71ba8.camel@HansenPartnership.com>
 <20260810102423.342c4e9d@gandalf.local.home>
 <0a8c1e90-1de1-4a76-b0fa-e367a4bd4f55@sirena.org.uk>
 <CAPM=9twB=hJURcbdaiDZjkEeUHTLmOLAoxnD+g0zGTTMq3nySw@mail.gmail.com>
 <CAMuHMdVBABOiOWDdCKE0zDffj856ui5qr3UFVptwcAn1_Hx7oQ@mail.gmail.com>
 <ant9_jhefKix5TGu@intel.com>
 <5aa1aa71-3eb5-469e-b285-94df94ac5bef@sirena.org.uk>
 <CAPM=9tzNxPUJGwzabdEwGiTrZER6VBHHDgaOq2bn+zBeFusjCQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="PVbWFVJWllRM5vyb"
Content-Disposition: inline
In-Reply-To: <CAPM=9tzNxPUJGwzabdEwGiTrZER6VBHHDgaOq2bn+zBeFusjCQ@mail.gmail.com>
X-Cookie: Immanuel doesn't pun, he Kant.


--PVbWFVJWllRM5vyb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Aug 13, 2026 at 06:33:05AM +1000, Dave Airlie wrote:

> So I remember some of the problem, if you cherry-pick with -x the
> complaint was we had commits in -fixes with a cherry-pick commit id
> that wasn't in Linus' tree at that time.

> It would of course later materialise in Linus' tree when the next
> merge window occurred since we don't rebase, but this either broke
> people's brains or scripts badly enough we got push back on it.

> I think we should definitely do -x on all cherry-picks and I'll push
> to make sure we start doing it again.

That'd be helpful, thanks -  I guess you're going to annoy someone
either way unfortunately but at least the commit not in mainline issue
would be transient.

> I'm going to look into giving next a tree with fixes merged into it,
> it's non-trivial even for our dim managed trees which are the main
> drm, drm-misc and intel trees, since currently drm-tip is all of the
> above + CI bandaids, but we could probably construct an offramp in dim
> to create a merged tree using the rerere cache.

Thanks for this also - another idea might be to order the stuff that
isn't for -next at the end of the merge, and push the tree out as a
separate branch before carrying on with the non-next bits (like how
pending-fixes is done)?

--PVbWFVJWllRM5vyb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmp9rwcACgkQJNaLcl1U
h9C95Af/fbTlV6ABecEZvr+84MUCOYyvH3UZ6fQWXYGycv+Mj5mLyBOMQgqqT2Uk
mrFfizWSPxImyuwhgbJUhYLcIIA7ScU3gyknAmSRpK0MU4nEdXXoIpBiSgFZZLyd
G/bmCMR5AyS9QnDDMsxmwbWy1ppMD7j0zKcG7Ufcf28BMRXLwQui2UF3o4fhd6hJ
EwG2Z7lv3hLeZCssipjIwgDuDUNfP3AWS5LRrf2zLtcX3MpujUcTgy4ZXP4mKTBQ
4eN6DMAYJ1WqQaaqwWxYa+oNHYiVskZDg3lqx65Wby0jvYIXoU5/8u3ih2FT1ywx
Z1hOu76PkpjkqczLh4ESFRQB+Jix2A==
=XHJf
-----END PGP SIGNATURE-----

--PVbWFVJWllRM5vyb--
