Received: from lamorak.hansenpartnership.com (lamorak.hansenpartnership.com [198.37.111.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 492C2379EFF
	for <ksummit@lists.linux.dev>; Fri, 17 Jul 2026 18:42:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.37.111.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784313732; cv=none; b=XFQYKPjZxqDma9mVN/A18XrWRrjkn8pufdWIRI0bchLi6kcKoYwDX9GlEt8JOswfH5sYu5Lnjatp85W1Jg2Aho8omw2U/tkAhS/wlJuKzdMJORoZHDzQtg10Iv+AREMrrS6LrnfQtW85wBKXETtWWkmo6RFX4gCu+lh/lo2eabQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784313732; c=relaxed/simple;
	bh=zZl25h4O2iPGa7kn6pQ6u+SHKwwFHqSwd8V+WI6DsmA=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=OjMvfmHvlB1qyd+twUDbSIWpTejaZd4Hfz13/ilMGjGA2n88q/fEsXg4IqTVwWd5AU8o7bPehFVwc16I23+mzIRh+3bPF09zixK9erx1gTksN8Akg0jh7S3GJMWtkDVL1wGhNMNSPY+aMh1okzEGBUBcVVlfQDOoykej31EymLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=HansenPartnership.com; spf=pass smtp.mailfrom=HansenPartnership.com; dkim=pass (1024-bit key) header.d=hansenpartnership.com header.i=@hansenpartnership.com header.b=F2Cz9d5s; arc=none smtp.client-ip=198.37.111.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=HansenPartnership.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=HansenPartnership.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hansenpartnership.com header.i=@hansenpartnership.com header.b="F2Cz9d5s"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=hansenpartnership.com; s=20151216; t=1784313730;
	bh=zZl25h4O2iPGa7kn6pQ6u+SHKwwFHqSwd8V+WI6DsmA=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:From;
	b=F2Cz9d5sxBUkEceSBhZ100WiutokHAhpoUeQ4aM0nJ1FRjZokhDfePRdk5Lkwvq0h
	 1o9UE4UfA6Hxqu1Tmj4WXOU5WEGvFVGLhr3tz236NPCwXtoOfGMTWBLIh9EcqP6goY
	 ayBiwSeLeRnFW/b39B2yZ4z5t9ryRmIZ4HkUNsjU=
Received: from lingrow.int.hansenpartnership.com (unknown [IPv6:2601:5c4:4300:d341::8c71])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519MLKEM768 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by lamorak.hansenpartnership.com (Postfix) with ESMTPSA id 266721C01D1;
	Fri, 17 Jul 2026 14:42:10 -0400 (EDT)
Message-ID: <48472b6d7c4803c5bf76235e4a8f5f9f69fcd047.camel@HansenPartnership.com>
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags,
 newcomers, etc
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Dan Carpenter <error27@gmail.com>
Cc: "Liam R. Howlett" <liam@infradead.org>, Jonathan Corbet
 <corbet@lwn.net>,  Sasha Levin <sashal@kernel.org>, ksummit@lists.linux.dev
Date: Fri, 17 Jul 2026 14:42:09 -0400
In-Reply-To: <alp0A8ThbUr6uRNc@stanley.mountain>
References: <87wluv7yzc.fsf@trenco.lwn.net> <alj4mYFMfZvuarfx@laps>
	 <87y0fa7pdm.fsf@trenco.lwn.net>
	 <sg6yidkiqfwegabxwkrcb2dhlfkqjquwyad75xqd4j7w7o7gtx@eh6czm5aoxuy>
	 <a6898b221ef656a053352e41cf8fd130ce434d60.camel@HansenPartnership.com>
	 <adnloao5zqp7xkpryijdbrbtqo4n2iucfvxn6rtcd23s3hsvgg@fjlzj3jborxc>
	 <4adc1ace832afefd30e48f0a05b27b58d9fbd604.camel@HansenPartnership.com>
	 <alp0A8ThbUr6uRNc@stanley.mountain>
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

On Fri, 2026-07-17 at 21:27 +0300, Dan Carpenter wrote:
> On Fri, Jul 17, 2026 at 02:12:31PM -0400, James Bottomley wrote:
> > On Fri, 2026-07-17 at 11:53 -0400, Liam R. Howlett wrote:
> > But the point is that whatever happens (even if nothing does) we'd
> > have
> > tags in the code base to identify most of the affected code.
>=20
> The Signed-off-by rules are simple to enforce

They're not really enforced at all.  It's the legal equivalent of a
representation, it just means I read the DCO and I represent I conform
to what it says.  Externally we have no verification mechanism that the
person signing off actually did this ... although if they're regular
contributors the trust factor is higher, and if they get caught faking
signoffs then the trust factor goes down.

>  but it's impossible to know when a patch is written by AI.=C2=A0 It's
> definitely a small minority of patches which are tagged and not "most
> of the affected code".

That's the point about it being a representation ... we need the
committer to be honest about it.  Although, at least in conference
submissions, we have had some success at employing AI to detect AI
usage.

Regards,

James
