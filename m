Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 886F738F25C
	for <ksummit@lists.linux.dev>; Mon, 29 Jun 2026 18:29:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782757766; cv=none; b=WwoHCsRhD3d/W/Z8RTfIO0rs1/6CTr1cE0eYqen+vVMzFBOapx0OQx8gD51dnHlwOphcC6M+uI3vge5nzyHK83JbGABCSlnzFfDsI6JXg8Rii8mGMOv28v5hKJ9e4DESTXSgG8e/O4x00V+OCwpSfe86fD8/jJmf2EmCTasGVb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782757766; c=relaxed/simple;
	bh=SFurbZMqwIs8evd9Zn1TZX6+nnwJ1+CaX+tO0XjyLVY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hYNSvcd+pfp4fofFnNxc0z/WRn2JGRZrO6Vs2GXD+4dCC898nv70hy4yumLiuLs9Osebrz0x9Fx0mMu2t+/tLjq7YbXrX84tcBnWDdloZ9fTWfPjbEZGg0M1fFoEt9DX++dPSotzEbR3h6kG5r/Fhqnji+9f+/9UYb3wLdx3Fgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mQC9hTuG; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mQC9hTuG"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE18E1F00A3A;
	Mon, 29 Jun 2026 18:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782757765;
	bh=14ixNYQbPgUrD/u+N7rDEoJ7cYjEy6+VvnP869GYgXg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=mQC9hTuGp3Fl++TJhOVZpRElXJIfBsV++4n8kDvj2J78slQ5RtijzG0iJ5DVtp6Mq
	 5SCweo+QjW53oESYzp+Mww0+9kbMxY8J6NR19lO7Q51hOfFsYSBZFNK8GdKXb7evKT
	 UXwsWnkUPxzM9rBaoQvIYqLRvtIc3WgAkzBGb6AMQz0n89EDGhUHQtk8jUui7/nLHZ
	 JmvYoLLbAaRW2TPQYvhPZmRn3b3c5ne1wV4ZynxH9ZM/T+o5XbX+Hw2KCOMLTanB4x
	 pk6B6XDv+GLGcB9AiptrBmBjPbr8RtpWY2QK11s5K18kH+QKCMoKt+rwabny+L94ea
	 fvbgvJCthcQjw==
Date: Mon, 29 Jun 2026 19:29:21 +0100
From: Mark Brown <broonie@kernel.org>
To: Matthew Wilcox <willy@infradead.org>
Cc: "H. Peter Anvin" <hpa@zytor.com>, ksummit@lists.linux.dev
Subject: Re: [TECH TOPIC] Implementing malloc
Message-ID: <32f6b38a-043b-4f51-aec7-aefcc7d0cc13@sirena.org.uk>
References: <akKBVsFBro_4QM74@casper.infradead.org>
 <c48a77db-98a3-4860-ab30-bcbbe0884baa@zytor.com>
 <akK3KACxE9gIFZSH@casper.infradead.org>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Y04u3EoKglXhKHF6"
Content-Disposition: inline
In-Reply-To: <akK3KACxE9gIFZSH@casper.infradead.org>


--Y04u3EoKglXhKHF6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jun 29, 2026 at 07:19:20PM +0100, Matthew Wilcox wrote:

> But we do have code which just needs to allocate "some memory", doesn't
> have any particularly weird restrictions, and where usability is more
> important than "pedal to the metal".  An example might be something
> like zlib.  It needs to allocate some temporary memory, and why have to

Or drivers just allocating some driver data.  TBH kzalloc() kind of ends
up being that function a lot of the time, I'm not convinced that a high
proportion of the kzalloc(x, GFP_KERNEL) calls out there are the result
of a deep consideration of which allocator to use.

--Y04u3EoKglXhKHF6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmpCuYAACgkQJNaLcl1U
h9BwUQf/emAxLyV+SalOJRGdOMPQbBjE3orpLTofTmVqdhjBBW3ExSxbSG1MFuf8
d9PhkWEum7JWPVV4b5s6YWe1+MUfFu1lHsW8l+Pchz/Ffso6PEQitHibJ6P5SM4d
QPC20jwQVDVJphcnB2bdhS5S8DlV3Rz7aiN18/BHV9WJ+DRpUeIbIDryl3Rx9Fnj
u1vEwj7tgj/v4qhkAlnoZHoNtJJDma3aSlM3c6K3jQ/KZQWG2jN6B77FjDfmgXH0
2qC0SF30FH7DJ6MuFgtmP/SaV3VAFNy9sbqv/6hj0slhFMa7mxKSpx9JLO/pyjrZ
/4QGmLT1ro/wfRbDx4QXsertS3nAFg==
=oU25
-----END PGP SIGNATURE-----

--Y04u3EoKglXhKHF6--
