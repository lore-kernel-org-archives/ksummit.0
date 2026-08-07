Received: from lamorak.hansenpartnership.com (lamorak.hansenpartnership.com [198.37.111.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0B64749F6
	for <ksummit@lists.linux.dev>; Fri,  7 Aug 2026 12:28:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.37.111.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786105715; cv=none; b=cFPpbhY0DStuWZYhip0B497lldxqRQ5+Gl2Jm2/pvHy6J+qp6+/ANtiq4rl4DzwlKIOj98dK0MRKwHBpOiWiyMa3k7mtYudcPTSpgecV3MPKg993QXcx9Le+9Q1KRD8oFv/C7pIiWaZcWRo+sZ8fuu/5qk8fIo12aE1Pp+gnzvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786105715; c=relaxed/simple;
	bh=SCgaVHBiVdC/ymM3hiE/Jx5QNJdA9I8lrAX7Q7jqXTo=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=cepzxFLvvui+D/zj4H1TLN3suwEiNbMkGBNhkvgJB3NX5fUOgBtczGZDaA3K2azp+hETatRxE/fXkxkHy8cioICavItLevJ7YLB31x27iWkGtmaCTlj2lCnVNgyxTjjQOGR5VbrKHR7WH6mDLbis/MPChiKJBFjOmdgWYnuuzSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=HansenPartnership.com; spf=pass smtp.mailfrom=HansenPartnership.com; dkim=pass (1024-bit key) header.d=hansenpartnership.com header.i=@hansenpartnership.com header.b=Kou2qFAF; arc=none smtp.client-ip=198.37.111.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=HansenPartnership.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=HansenPartnership.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hansenpartnership.com header.i=@hansenpartnership.com header.b="Kou2qFAF"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=hansenpartnership.com; s=20151216; t=1786105689;
	bh=SCgaVHBiVdC/ymM3hiE/Jx5QNJdA9I8lrAX7Q7jqXTo=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:From;
	b=Kou2qFAFzJ/zAD85+WR5B1fdbf4b4ISIvEXi1CG+sdPiLryOGIsXJlWV4R+65TMrb
	 Fz11ZnNdc+jRGQr/J4jTnRI8pRKG7uEWKMjBPm5sklVHYbnoIepHZzx4mS0I74NLeH
	 cmbgQLfy9QHqYn5TyQUBnDgCUiqd+DpO1gYd/WVQ=
Received: from lingrow.int.hansenpartnership.com (unknown [IPv6:2601:5c4:4300:d341::8309])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519MLKEM768 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by lamorak.hansenpartnership.com (Postfix) with ESMTPSA id DF1491C029D;
	Fri, 07 Aug 2026 08:28:08 -0400 (EDT)
Message-ID: <04b4e9abab2831b177228752860bedab1f15a736.camel@HansenPartnership.com>
Subject: Re: [MAINTAINERS SUMMIT] Coping with the new-developer flood
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Matthieu Baerts
	 <matttbe@kernel.org>
Cc: Theodore Tso <tytso@mit.edu>, Dan Carpenter <error27@gmail.com>, 
 Konstantin Ryabitsev	 <mricon@kernel.org>, Greg KH <greg@kroah.com>,
 Jonathan Corbet <corbet@lwn.net>, 	ksummit@lists.linux.dev
Date: Fri, 07 Aug 2026 08:28:08 -0400
In-Reply-To: <20260807115603.GH2201016@killaraus.ideasonboard.com>
References: <87y0ekm9nw.fsf@trenco.lwn.net> <anSpoxZ9SUBvFOZj@mit.edu>
	 <2026080651-bony-hertz-bfb6@gregkh>
	 <20260806-industrious-whippet-of-jest-a91eaa@meerkat>
	 <anThWLhqipEM34kg@stanley.mountain> <anVK-qkUOaIJkt9M@mit.edu>
	 <78ee9f53-09b1-4934-82af-25f3652b108a@kernel.org>
	 <20260807115603.GH2201016@killaraus.ideasonboard.com>
Autocrypt: addr=James.Bottomley@HansenPartnership.com;
 keydata=mQENBE58FlABCADPM714lRLxGmba4JFjkocqpj1/6/Cx+IXezcS22azZetzCXDpm2MfNE
 lecY3qkFjfnoffQiw5rrOO0/oRSATOh8+2fmJ6el7naRbDuh+i8lVESfdlkoqX57H5R8h/UTIp6gn
 1mpNlxjQv6QSZbl551zQ1nmkSVRbA5TbEp4br5GZeJ58esmYDCBwxuFTsSsdzbOBNthLcudWpJZHU
 RfMc0ew24By1nldL9F37AktNcCipKpC2U0NtGlJjYPNSVXrCd1izxKmO7te7BLP+7B4DNj1VRnaf8
 X9+VIApCi/l4Kdx+ZR3aLTqSuNsIMmXUJ3T8JRl+ag7kby/KBp+0OpotABEBAAG0N0phbWVzIEJvd
 HRvbWxleSA8SmFtZXMuQm90dG9tbGV5QEhhbnNlblBhcnRuZXJzaGlwLmNvbT6JAVgEEwEIAEICGw
 MGCwkIBwMCBhUIAgkKCwQWAgMBAh4BAheAAhkBFiEE1WBuc8i0YnG+rZrfgUrkfCFIVNYFAml2ZBI
 FCS3GUMIACgkQgUrkfCFIVNZKjQf/deRzlXZClKxTC/Ee2yEPqqS7mm/INUA49KdQQ5oIhSxkUBy0
 9J4qjMIo5F8ZFkFTqikBqeL35LKu7O7rn8WETfX8Bxvos3HUsl3jHo34DES4MUFIpoQPgtiLRGwLb
 K0cVCAArR2u2qj4ABmTRrs1I1kvdjEw6gatOuXtEe/j5O2fvfzTq9GBr0Q3n2IAsFXi4hLlx6VPE8
 tyWUZ8BWJKtih3JAeUiXFvASL3McV0rV9RnU0VbjEQEhSE7PMYhWpnDC9AyBb0lXJllQRvC3NSkUB
 8KVQgNNxRPss0WE/nBoZ4dFA42jTyzTz8lNylxZoAWV7WJb3QxVg4oCodRVrxxrQhSmFtZXMgQm90
 dG9tbGV5IDxqZWpiQGtlcm5lbC5vcmc+iQFVBBMBCAA/AhsDBgsJCAcDAgYVCAIJCgsEFgIDAQIeA
 QIXgBYhBNVgbnPItGJxvq2a34FK5HwhSFTWBQJgS5mYBQkbNYS9AAoJEIFK5HwhSFTWBpwIAL5Bk3
 5FB34U6iHmDzzgdCbxLTs43T/YQyJpcGIvopBvnI/fDY8oSG6Df64/O6B+1R+A8TDp6ZG5ysUWnCC
 6GuIaEHemBYkitMPglR6+sGCMQY7O0mlsPvdssvKK1KI9Bno4VU6ogaF2qVzefSqg1Djmf/DcsxWP
 rI/jdJ8FB5AYR2rjIdDFc+zRdAJuavo1/anyY2wgpFh/3R8IOYAEfWV9nGgYkf9+tA4EIn1sxE0I3
 L5oW2N3mbyRrkzuBwO8ztMCwqEPk7moWzhokcZqMXiAIahaZdkashJC+s2X2RZSGCy+g+pvY5NN4B
 BVG5XwLgVBqbHMTcxE0fbmPqz+q6O0LEphbWVzIEJvdHRvbWxleSA8amVqYkBoYW5zZW5wYXJ0bmV
 yc2hpcC5jb20+iQFXBBMBCABBFiEE1WBuc8i0YnG+rZrfgUrkfCFIVNYFAmODZ5ACGwMFCRs1hL0F
 CwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AACgkQgUrkfCFIVNZu0Af/TzvL2/NdgAcw9uN3x60H8
 jc4QUq14VpxcFEFEMpcj1morkX/G93V+56HBBaXZj+yK8PhxIA/SIz+sU7C/0YvKuvzakP8ZX/7WJ
 e32SOUtjfr/VTaqjIBzNj6OxLvZpmNbBw7s6DwhhNpHOWqJ/1ml+PtDRDV71IB58yVqQjp1xlNKVl
 ZppcJ5908EJzsFnRIVjiQiDSKoppqB2BCibBbrWcln7CiWMyOC/cco6SIn6twH+f7+aivJ3xGcOE2
 a9gBKF5rNi9TBoX9oyPmshv/TDmnohsVrH7AYXlGYfZTk15SWEiROh1QX8/uD9wl/gcIv5EDUpT/F
 L2jzOsA5663bw==
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2 
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0

On Fri, 2026-08-07 at 14:56 +0300, Laurent Pinchart wrote:
> On Fri, Aug 07, 2026 at 11:20:39AM +0200, Matthieu Baerts wrote:
> > On 07/08/2026 05:23, Theodore Tso wrote:
> > > There are some few exceptions, where a fix can't be easily
> > > backported to the LTS branch, and so a different way of fixing a
> > > particular serious patch needs to be applied to the LTS branch.=C2=A0
> > > But normally this will be explicitly stated in the commit
> > > description, but we don't do that in a structured way, so it
> > > might be hard for a non-LLM bot to figure this out.
> >=20
> > Good point, but instead of looking at the patch description, it
> > might be enough to look at the header: an exception could be added
> > for patches sent to the stable ML with a version in the prefix.
> >=20
> > But back to the idea of checking if the patch can apply: it might
> > not be easy to deal with all the different trees and branches.
> > There might be some dependences that are still in review, or
> > applied somewhere but not in linux-next yet, or conflicts with
> > linux-next, etc.
>=20
> This is an issue that isn't limited to newcomers. As a maintainer, I
> sometimes don't know what I should apply a patch series on. We have
> the base-commit and prerequisite-patch-id trailers added by b4 that
> help a lot there, but not everybody uses them. If a mechanism that
> flags the issue for newcomers could also ensure that every patch
> series carries proper base information, that would be a very nice
> side effect. This may include adding new trailers if some use cases
> are not currently covered.

There are two reasons not to insist too rigidly on base commit: firstly
because a lot of series are invariant (they apply to any tree because
there's been no commits in the areas patched) and secondly because the
series has a dependency on another posted but not yet applied patch
series (i.e. no published base commit at all).  At least make it a
Maintainer decision whether to insist on base commit or not.

Regards,

James
