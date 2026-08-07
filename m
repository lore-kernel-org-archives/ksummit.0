Received: from lamorak.hansenpartnership.com (lamorak.hansenpartnership.com [198.37.111.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D47EB30E0F2
	for <ksummit@lists.linux.dev>; Fri,  7 Aug 2026 12:51:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.37.111.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786107120; cv=none; b=D3yrfk3PEHEEfGKd8OwbUD3yvkSJjO3U4V9/+fkGHyIHv9Wix9IObLgCMmEIsNJO8pNO4icpxgYx6qIi/LYR+MOwdDyiWRPmv/QrydpxmVzaqUtM+X21eG9r2zOkdgfgLzT0ti6UFiiYup2kabvUV379L/x+KG7FhhW1swUoXRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786107120; c=relaxed/simple;
	bh=iG90RKloXpjrIc7DMJkLzIwjGSLYXYj/Q3tJGWSaqfQ=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=PxEw9fPZQK1LAmLzBXLB4ZdquMGh1Msqit1QYe+2mNyomENoD2PCY8xd9jTFymluy5DXQhi5P5ZKISU3rTLQySRQLPX1vN4troZJfIr/AqS4Lvfq3SRAeu2rO/6c5QCg2lOKDfJOIdexN6ewQ1orPCnL/G+W7NtmsHeEgb7Rllc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=HansenPartnership.com; spf=pass smtp.mailfrom=HansenPartnership.com; dkim=pass (1024-bit key) header.d=hansenpartnership.com header.i=@hansenpartnership.com header.b=RGPCgK4r; arc=none smtp.client-ip=198.37.111.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=HansenPartnership.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=HansenPartnership.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hansenpartnership.com header.i=@hansenpartnership.com header.b="RGPCgK4r"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=hansenpartnership.com; s=20151216; t=1786107111;
	bh=iG90RKloXpjrIc7DMJkLzIwjGSLYXYj/Q3tJGWSaqfQ=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:From;
	b=RGPCgK4rfvA81ftMDDxu0LRHWmHPBkfIpFN3wV7X8RSrzOYWunXjg/Yqq9WX8hs7s
	 Hi5eetp/5h4D2Po5KrsSmYySc78YyxZk+MraoHRzUYOeoR20HsU4d8pJKMSNVtMzMo
	 //Q3FJZt+Tv8Xr0m0Ahdalfvnjp1yDhLoIgjoO1E=
Received: from lingrow.int.hansenpartnership.com (unknown [IPv6:2601:5c4:4300:d341::8309])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519MLKEM768 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by lamorak.hansenpartnership.com (Postfix) with ESMTPSA id 0F9A61C0470;
	Fri, 07 Aug 2026 08:51:51 -0400 (EDT)
Message-ID: <9190410e0173138f9cc95e6e7f68c4ca14b2d333.camel@HansenPartnership.com>
Subject: Re: [MAINTAINERS SUMMIT] Coping with the new-developer flood
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Matthieu Baerts <matttbe@kernel.org>, Theodore Tso <tytso@mit.edu>, Dan
 Carpenter <error27@gmail.com>, Konstantin Ryabitsev <mricon@kernel.org>,
 Greg KH <greg@kroah.com>,  Jonathan Corbet	 <corbet@lwn.net>,
 ksummit@lists.linux.dev
Date: Fri, 07 Aug 2026 08:51:50 -0400
In-Reply-To: <20260807124017.GK2201016@killaraus.ideasonboard.com>
References: <87y0ekm9nw.fsf@trenco.lwn.net> <anSpoxZ9SUBvFOZj@mit.edu>
	 <2026080651-bony-hertz-bfb6@gregkh>
	 <20260806-industrious-whippet-of-jest-a91eaa@meerkat>
	 <anThWLhqipEM34kg@stanley.mountain> <anVK-qkUOaIJkt9M@mit.edu>
	 <78ee9f53-09b1-4934-82af-25f3652b108a@kernel.org>
	 <20260807115603.GH2201016@killaraus.ideasonboard.com>
	 <04b4e9abab2831b177228752860bedab1f15a736.camel@HansenPartnership.com>
	 <20260807124017.GK2201016@killaraus.ideasonboard.com>
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

On Fri, 2026-08-07 at 15:40 +0300, Laurent Pinchart wrote:
> On Fri, Aug 07, 2026 at 08:28:08AM -0400, James Bottomley wrote:
[...]
> > There are two reasons not to insist too rigidly on base commit:
> > firstly because a lot of series are invariant (they apply to any
> > tree because there's been no commits in the areas patched)
>=20
> Then the author could pick any base commit available in Linus' tree
> the relevant subsystem tree (typically an upstream release of the
> next branch of the subsystem). Would that have any drawback compared
> to not specifying any base commit at all ?

It's just pointless hassle given the maintainer workflow is ignore the
base commit and do git (or b4) am on the current branch and only if
that rejects either try and upport based on the base commit or ask for
a respin (the latter being the most common course of action).

> > and secondly because the series has a dependency on another posted
> > but not yet applied patch series (i.e. no published base commit at
> > all).=C2=A0 At least make it a Maintainer decision whether to insist on
> > base commit or not.
>=20
> Isn't that what prerequisite-patch-id is for ?

Dear god, absolutely not.  I can't match a patch hash to a series, I
want the lore link of the prerequisite series in the cover letter.

Regards,

James
