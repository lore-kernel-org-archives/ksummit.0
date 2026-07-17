Received: from lamorak.hansenpartnership.com (lamorak.hansenpartnership.com [198.37.111.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A04472EAB6F
	for <ksummit@lists.linux.dev>; Fri, 17 Jul 2026 18:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.37.111.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784311955; cv=none; b=IfVbEvWmULVT9fJq5MUQ3aemBb+jBnA/M71IQrO+i4k4l+8Q5Ylt2SKP39XYXt28syisHncCCeO/84rlOuju+5VMXomRNzl4mUGbSmt0qC90UggHsPTaMi67yMGoRf/MvVPZkQkG2MYF7t9G93e+mWzhIRcPHEKUdR303k2qeqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784311955; c=relaxed/simple;
	bh=djmYlZBCOM3ixus8XKVedJJNfNODqqOSMJAdyFXRlEI=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=B8j3uvnPb02WW0hSKbJEmIUntYCxy7xT6+Xd6URxbAm2KYR82Blrny6zd8PrQ3J+uLD/LxRc3mbko48gdr+xL4QF2lv1kLFiN6X8Y6Zp9lvpdZVww91m8ENA+8EG3HUG8l/1YbeM6v1W87YaIMIkbv8y2FLPUSfgUXQ+JOnrqsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=HansenPartnership.com; spf=pass smtp.mailfrom=HansenPartnership.com; dkim=pass (1024-bit key) header.d=hansenpartnership.com header.i=@hansenpartnership.com header.b=m/rSRepj; arc=none smtp.client-ip=198.37.111.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=HansenPartnership.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=HansenPartnership.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hansenpartnership.com header.i=@hansenpartnership.com header.b="m/rSRepj"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=hansenpartnership.com; s=20151216; t=1784311952;
	bh=djmYlZBCOM3ixus8XKVedJJNfNODqqOSMJAdyFXRlEI=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:From;
	b=m/rSRepjQ67u89vL8zOGPmWdD52FHaPC+CL06gyzSF24qw5BAsqyvHUJNKGBYn8HZ
	 R3HCIz3rqA3qSqobc639XGFgvn0gxaFBAmIeVrarwwQwQuLYCiWsnAdYTT0SmF7XgT
	 cw651wb+Q0ddy+Scys5UrMCXTa3mWoUHURL16BXI=
Received: from lingrow.int.hansenpartnership.com (unknown [IPv6:2601:5c4:4300:d341::8c71])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519MLKEM768 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by lamorak.hansenpartnership.com (Postfix) with ESMTPSA id 7C3A61C00FD;
	Fri, 17 Jul 2026 14:12:32 -0400 (EDT)
Message-ID: <4adc1ace832afefd30e48f0a05b27b58d9fbd604.camel@HansenPartnership.com>
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags,
 newcomers, etc
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: "Liam R. Howlett" <liam@infradead.org>
Cc: Jonathan Corbet <corbet@lwn.net>, Sasha Levin <sashal@kernel.org>, 
	ksummit@lists.linux.dev
Date: Fri, 17 Jul 2026 14:12:31 -0400
In-Reply-To: <adnloao5zqp7xkpryijdbrbtqo4n2iucfvxn6rtcd23s3hsvgg@fjlzj3jborxc>
References: <87wluv7yzc.fsf@trenco.lwn.net> <alj4mYFMfZvuarfx@laps>
	 <87y0fa7pdm.fsf@trenco.lwn.net>
	 <sg6yidkiqfwegabxwkrcb2dhlfkqjquwyad75xqd4j7w7o7gtx@eh6czm5aoxuy>
	 <a6898b221ef656a053352e41cf8fd130ce434d60.camel@HansenPartnership.com>
	 <adnloao5zqp7xkpryijdbrbtqo4n2iucfvxn6rtcd23s3hsvgg@fjlzj3jborxc>
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

On Fri, 2026-07-17 at 11:53 -0400, Liam R. Howlett wrote:
> On 26/07/17 07:57AM, James Bottomley wrote:
> > On Thu, 2026-07-16 at 16:23 -0400, Liam R. Howlett wrote:
[...]
> > > There are a few classes of LLM users, but as more and more people
> > > are using LLM, the usefulness of this tag is converging on zero.
> >=20
> > It's not just about whether you find it useful, it's also about
> > whether it has utility to the project history.=C2=A0 Remember the
> > purpose of the original signed-off-by tag was to track copyright
> > origin in case of another SCO like allegation.=C2=A0 Given the current
> > US Copyright position on generative AI
> >=20
> > https://www.copyright.gov/newsnet/2025/1060.html
> >=20
> > Whether AI is used or not affects the copyright status of the
> > patch. Therefore it is a fairly vital piece of information to
> > preserve, even if the current advice changes over time.
> >=20
>=20
> I think this supports the fact that the usefulness of the tag is
> going to zero, at least in the current form.. but I'm not a lawyer.

From a what use is it to me point of view, possibly.  I'm more looking
at it as being we need a permanent record of this in the git tree.

> On the mm side of thing, we have sashiko looking at things and
> getting pointed to the reports, so that means all mm code is getting
> inspected by an AI.=C2=A0 Adding a tag specifying that is useless noise,
> and certainly does not affect the copyright according to your link.

Agreed, we only really need to know if AI helped write the code, not
really if it helped discover the problem (although giving it a reported
by credit would be fine, especially since 0day keeps prodding for one).

> Are you thinking that, at some point a specific AI might be ruled a
> copyright violation and we will need to audit the commits?

I'm not taking any specific view, I'm just noting that the issue isn't
settled and if the house of cards where everyone funds everyone else's
tokens collapses and AI starts to try to find another business model,
there's a well worn one trying to monetize copyrights ... particularly
if you have deep pockets to buy legislation ...

But the point is that whatever happens (even if nothing does) we'd have
tags in the code base to identify most of the affected code.

Regards,

James
