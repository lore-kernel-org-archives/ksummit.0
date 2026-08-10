Received: from lamorak.hansenpartnership.com (lamorak.hansenpartnership.com [198.37.111.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1777928033B
	for <ksummit@lists.linux.dev>; Mon, 10 Aug 2026 13:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.37.111.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786370077; cv=none; b=r733A/5Fw22Wb2W92aP+orxIgH63GW0kXp4OH10sDSf4YtmFGQ1acyNBdMjNWlpGqZsWuAG7h2lflRG2+WLlTXqb9NmW9P/NdalCBblYo04AuJB/5FR7t08mSoEPlDpWCgcmO4Ps1bHZYYtARJWJWDbUe/EVVSqfCLJ3zcxbmcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786370077; c=relaxed/simple;
	bh=eupS+cmHEPo293Hyg8Md3JK9VgAl2LAju4w/MtfxscA=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=PWAiYq+aNyxlQtHM97myP/Sk+PdnH8/kaNNU2MzoDHayAv2B8aZiSPT6StHaDB3ZLwwMnNv78YJmoFy9tZRa+gum9L3qg4zCWSYc85fzAhmq0pjwJj+QxEJbDLbJmmlt4lsSvgpWfShJXtQO437J6EYebJvqB0NgV0aI0pqCzVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=HansenPartnership.com; spf=pass smtp.mailfrom=HansenPartnership.com; dkim=pass (1024-bit key) header.d=hansenpartnership.com header.i=@hansenpartnership.com header.b=JjfjU/hN; arc=none smtp.client-ip=198.37.111.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=HansenPartnership.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=HansenPartnership.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hansenpartnership.com header.i=@hansenpartnership.com header.b="JjfjU/hN"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=hansenpartnership.com; s=20151216; t=1786370072;
	bh=eupS+cmHEPo293Hyg8Md3JK9VgAl2LAju4w/MtfxscA=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:From;
	b=JjfjU/hNmvvGNDGOk5iHkM+h2HWDBvsprdXrbBBlA+RBq055AAwHlbNV6WyxJiVHY
	 dl1YHPt26ogJ51CDG3MP09iuSO99309D2cNGm+dVVurh54+vQomFdZla6YOx9/Ry/P
	 Ex2/qGiJQYOM+Vrcc35W/QujcOQdrnYmJgIJGc98=
Received: from lingrow.int.hansenpartnership.com (unknown [IPv6:2601:5c4:4300:d341::8309])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519MLKEM768 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by lamorak.hansenpartnership.com (Postfix) with ESMTPSA id 7CF711C0135;
	Mon, 10 Aug 2026 09:54:32 -0400 (EDT)
Message-ID: <215b3cdfda17207d91b0fa057b01f3cb45eb874c.camel@HansenPartnership.com>
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Theodore Tso <tytso@mit.edu>
Cc: ksummit@lists.linux.dev
Date: Mon, 10 Aug 2026 09:54:31 -0400
In-Reply-To: <anZi9nDTNu4WNc3s@mit.edu>
References: 
	<8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
	 <anZi9nDTNu4WNc3s@mit.edu>
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

On Fri, 2026-08-07 at 19:19 -0400, Theodore Tso wrote:
[...]
> We can split this discussion a couple of different ways.=C2=A0 The first
> is how can we make the Maintainers Summit more valuable.=C2=A0 I do think
> that in the last couple of years, there *have* been a number of quite
> valuable discussions, but it's always worthwhile to consider ways in
> which we can improve the discussion.=C2=A0 So that's on the "benefits"
> side of the equation.

So I think we first need to start with the problem statement.  I think
it's that Linus doesn't go to any other conferences except MS, so for
him to discuss stuff with us in person, or us to discuss things with
him the issue has to be scheduled for MS.  Linus supplies an attendee
list for the former and a selection committee tries to put together the
latter ... is that about right?  For that second half, perhaps we
should talk about *how* we do this.  Mostly we go to our other
conferences and resolve stuff and run it by Linus in email, so no in-
person discussion is needed. However, perhaps we could do more active
gathering of the problems that might benefit from in-person discussion
than waiting for them to turn up on this list (or we could possibly
instruct all the maintainers to keep a curated list they dump here).

The second problem, as I see it is representation and franchise.  Dave
stated, and I agree, that MS isn't a representative decision making
body (no-one votes on stuff).  However, it does get treated as one in
certain circumstances: the conclave.rst document does and we also get
topics that are brought up at MS and then considered blessed for action
without wider discussion (expelling Russian Developers would be a great
example of this).  So we need to fix this dichotomy, either by making
it more representative or by being stricter about insisting on onward
discussion of outcomes.

The third problem is that the attendee list, however it is arrived at,
might not be the best at achieving all around discussion of the actual
scheduled topics because of the 'in-group' problem as Linus puts it.=20
We could fix this by quite a few means, as has been discussed: lottery,
rotating invites among existing maintainers, etc.  However, I think the
core problem is that 30 people is too small to achieve this and some
form of expansion is going to have to be done.

Regards,

James
