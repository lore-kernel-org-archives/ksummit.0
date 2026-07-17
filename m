Received: from lamorak.hansenpartnership.com (lamorak.hansenpartnership.com [198.37.111.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8932A3F7A82
	for <ksummit@lists.linux.dev>; Fri, 17 Jul 2026 11:57:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.37.111.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784289478; cv=none; b=QuopQkc2G9FOADGEtrCoTOQSe4yeLxy4NXXAWJ59WzmcbptbtRQ9Wsxm/9ELf5LED5eZuv+8YJrOoPS++CKAdUAva9f/13Zf/yDKBq5lKQZDPHdM9yEWJ1JTHbtgc4ienKOjUCqz9RVAZjIHH+IyqYo4M3U9Obhgcq6pZAF0igc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784289478; c=relaxed/simple;
	bh=HDznjCpOuvwMjkeepDA57l+bNDa06fvMHmJcU9d619w=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=fvWIpVdNo192rPtjyQxq/9KhuHWR0aXCPiUx9b0iLZiOHu1/s5tRLEFOO+wiwPgHQo6aHYpFfkbzdR5x/6O0v5NepZGKQnRhbqOvmimV8IaUbyCtZpRmbaO36g75+PSAwMXqg/Onty0W1OFNUFnQltovaql55ZrBb6L4bgSqnpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=HansenPartnership.com; spf=pass smtp.mailfrom=HansenPartnership.com; dkim=pass (1024-bit key) header.d=hansenpartnership.com header.i=@hansenpartnership.com header.b=gkRNzLKS; arc=none smtp.client-ip=198.37.111.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=HansenPartnership.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=HansenPartnership.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hansenpartnership.com header.i=@hansenpartnership.com header.b="gkRNzLKS"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=hansenpartnership.com; s=20151216; t=1784289465;
	bh=HDznjCpOuvwMjkeepDA57l+bNDa06fvMHmJcU9d619w=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:From;
	b=gkRNzLKSg8WgVB3bhw83HHaPHLxvJa/kgY2/llPKrBEWLqYKYwIRizwhAQ8jlC7ks
	 TTOoo9woaU7G6Z6YmBG9ZUYd9clCAHnJOVAl83zVlgayb9bS3E/O6ZisZ6HYokkCUs
	 5WoGG0y+gbUNrCtZejjH1rmHjDSbkKBMN+z6EkuM=
Received: from lingrow.int.hansenpartnership.com (unknown [IPv6:2601:5c4:4300:d341::8c71])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519MLKEM768 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by lamorak.hansenpartnership.com (Postfix) with ESMTPSA id 5EB021C03B7;
	Fri, 17 Jul 2026 07:57:45 -0400 (EDT)
Message-ID: <a6898b221ef656a053352e41cf8fd130ce434d60.camel@HansenPartnership.com>
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags,
 newcomers, etc
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: "Liam R. Howlett" <liam@infradead.org>, Jonathan Corbet <corbet@lwn.net>
Cc: Sasha Levin <sashal@kernel.org>, ksummit@lists.linux.dev
Date: Fri, 17 Jul 2026 07:57:44 -0400
In-Reply-To: <sg6yidkiqfwegabxwkrcb2dhlfkqjquwyad75xqd4j7w7o7gtx@eh6czm5aoxuy>
References: <87wluv7yzc.fsf@trenco.lwn.net> <alj4mYFMfZvuarfx@laps>
	 <87y0fa7pdm.fsf@trenco.lwn.net>
	 <sg6yidkiqfwegabxwkrcb2dhlfkqjquwyad75xqd4j7w7o7gtx@eh6czm5aoxuy>
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

On Thu, 2026-07-16 at 16:23 -0400, Liam R. Howlett wrote:
> On 26/07/16 12:36PM, Jonathan Corbet wrote:
> > Sasha Levin <sashal@kernel.org> writes:
> >=20
> > > On Thu, Jul 16, 2026 at 09:09:27AM -0600, Jonathan Corbet wrote:
> > > > The use of LLMs in the development process appears to be a
> > > > clear theme for the upcoming summit.=C2=A0 On top of what others
> > > > have already suggested, I think we may want to consider these
> > > > questions:
> > > >=20
> > > > - Do we want to continue naming specific LLMs in the Assisted-
> > > > by tags, or =C2=A0put something more generic?=C2=A0 I *think* that =
this
> > > > thread:
> > > >=20
> > > > =C2=A0=C2=A0
> > > > https://lore.kernel.org/all/20260701-work-coding-assistants-v1-1-a2=
0a94d1d606@kernel.org/
> > > >=20
> > > > =C2=A0reached a consensus that "Assisted-by: LLM" was better than
> > > > what we require now, but it might be good to ratify that in
> > > > this setting.
> > >=20
> > > So originally I've added the full name of the tool and LLM
> > > because there was interest in a later audit of the tools to
> > > determine how useful (or useless) some of the tools are.
> > >=20
> > > If those folks aren't interested in doing so anymore, then sure -
> > > we can drop it.
> > >=20
> > > But... I find it difficult to see the point of having the tag if
> > > we do that.
> >=20
> > Folks like Greg have, in the recent past, said that it is useful
> > even without specific product-name information:
> >=20
> > =C2=A0
> > https://lore.kernel.org/all/2026070227-payroll-eradicate-8f66@gregkh/
> >=20
>=20
> There are a few classes of LLM users, but as more and more people are
> using LLM, the usefulness of this tag is converging on zero.

It's not just about whether you find it useful, it's also about whether
it has utility to the project history.  Remember the purpose of the
original signed-off-by tag was to track copyright origin in case of
another SCO like allegation.  Given the current US Copyright position
on generative AI

https://www.copyright.gov/newsnet/2025/1060.html

Whether AI is used or not affects the copyright status of the patch.=20
Therefore it is a fairly vital piece of information to preserve, even
if the current advice changes over time.

Regards,

James
