Received: from lamorak.hansenpartnership.com (lamorak.hansenpartnership.com [198.37.111.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F198D2931EF
	for <ksummit@lists.linux.dev>; Mon, 10 Aug 2026 13:32:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.37.111.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786368747; cv=none; b=gS+rfbP34JSqRU9gyigJPKWe2z3nrUkvjRybjgUqzn2+hLUZ+vLmFhLGPqrhDNxXYblqt8S7Ia2Tnkp8NzajbaTkH9/LPYch07Fek0thsHat+v/NmuQRk67iUlDRUUBRDeaOYAE9TBgr3c7ffiy5n+2iM0wrTKA4X3fu8crJtU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786368747; c=relaxed/simple;
	bh=KnL1T7e4pyEJ3e/0YOsjqZIcIhlOlIvkNch14H6z2Ak=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=onSeul2ychry9D3Q3qzKDLuInR/6nvw/Tui5jkBa11nnVRqhPv+mpTbdSbO2d76hAI99mkGpCphMfKApFrmeoRxdJWzwRAwo3l1S0nGUePpYH7RfjG1WnPgK6RQUd4xQ0Tbm4wqeUQ8GpUoz3asio+r2SvUt+SZS4BKZARi+o5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=HansenPartnership.com; spf=pass smtp.mailfrom=HansenPartnership.com; dkim=pass (1024-bit key) header.d=hansenpartnership.com header.i=@hansenpartnership.com header.b=MhHue64E; arc=none smtp.client-ip=198.37.111.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=HansenPartnership.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=HansenPartnership.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hansenpartnership.com header.i=@hansenpartnership.com header.b="MhHue64E"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=hansenpartnership.com; s=20151216; t=1786368744;
	bh=KnL1T7e4pyEJ3e/0YOsjqZIcIhlOlIvkNch14H6z2Ak=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:From;
	b=MhHue64EGkeC39zuPewEu69VWNG5tbDA91DwQT13gMFBNogUtsW091CQVq60nesWd
	 L6bNCY2koN+QNy0XQVTRBg+j5Azvl5LbLfx7LUl1IZ2459Wv8TUC/sMVI6DEGv2hu8
	 baW4Sz3MWQngalMnQn8KKKN0UtQ826vYuu+Z9x0g=
Received: from lingrow.int.hansenpartnership.com (unknown [IPv6:2601:5c4:4300:d341::8309])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519MLKEM768 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by lamorak.hansenpartnership.com (Postfix) with ESMTPSA id 9570A1C0272;
	Mon, 10 Aug 2026 09:32:24 -0400 (EDT)
Message-ID: <cc6505e586325cd59ba036cef5429039c9c71ba8.camel@HansenPartnership.com>
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Steven Rostedt <rostedt@goodmis.org>, "Lorenzo Stoakes (ARM)"
	 <ljs@kernel.org>
Cc: Dave Airlie <airlied@gmail.com>, Linus Torvalds
	 <torvalds@linux-foundation.org>, ksummit@lists.linux.dev
Date: Mon, 10 Aug 2026 09:32:24 -0400
In-Reply-To: <20260810091154.2d3cd6d5@gandalf.local.home>
References: 
	<8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
		<20260806194153.6443a3ba@gandalf.local.home>
		<CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
		<anii3u-87kSrB9K3@lucifer>
		<CAPM=9tx7izyUJr_XVQju26fevzepZ-L6vs5vgH2aib9jPPjvRA@mail.gmail.com>
		<anl7CgkKb6tORavG@lucifer> <20260810091154.2d3cd6d5@gandalf.local.home>
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

On Mon, 2026-08-10 at 09:11 -0400, Steven Rostedt wrote:
> On Mon, 10 Aug 2026 08:26:36 +0100
> "Lorenzo Stoakes (ARM)" <ljs@kernel.org> wrote:
>=20
> > > Voting on what though, I'm already over the number of times
> > > maintainers with small potato problems think that the lives of
> > > maintainers with big potato problems would be much simpler if
> > > they
> > > just adopted their niche one-person mutt based review process.=C2=A0=
=20
> >=20
> > Ah good to know core mm is small potatoes ;)
>=20
> From my understanding of what Dave ranted about last time, MM would
> be small potatoes.
>=20
> I think it's because DRM has a wide arrangement of different types of
> hardware under one umbrella. It sounded to me a bit like herding
> cats.
>=20
> MM may be a large and critical subsystem, but most hardware acts
> pretty much the same.

Have you met some of the weird architectures with their super strange
VM extensions and the even weirder confidential computing extensions?

>  Where most developers are working together on a common
> platform. Even with minor differences between architectures.
> Architecture specifics of how to create memory mappings can be mostly
> be abstracted out.

True (well mostly), but the internal complexity is concealed within an
external abstraction rather than having it spill all over the kernel
... I would hope DRM does the same.

> I don't know DRM at all, but just from listening to Dave, it sounded
> to me like everyone is doing things their own way and Dave needs to
> manage it all with a more complex process. Where networking and arm
> may be the only ones to rival the complex process of DRM.

If your assumption is correct, this is internal cat herding ... MM has
much the same problem except that it has to deal with somewhat
opinionated architecture maintainers (around 22 of them) to agree on
the internal abstractions for MM primitives.  Perhaps rather than
getting into my problem is bigger than yours type arguments, we could
observe that MM might run a bit more smoothly because it gets an
additional 3 day conference (LSF/MM) plus a MC at Plumbers to sort
itself out?

Regards,

James
