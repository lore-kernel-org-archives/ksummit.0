Received: from lamorak.hansenpartnership.com (lamorak.hansenpartnership.com [198.37.111.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5544B3A9D8D
	for <ksummit@lists.linux.dev>; Fri,  7 Aug 2026 19:03:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.37.111.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786129412; cv=none; b=YjwSHiG8wNJvDW0Qh4y9bR8aNt7tEWkZAQrAi3gmOzHIN0igr21ToQbmiAjrR33wUrdDtHHf9kEJTyYxBg6fagxlANYLIcWAWiP9TCxbZlCE9mg6m8lo2OafRJI9iVIoa4KkN2KKgGgjPsVDCQcLogKkg+K4ou7HZPxhqvw9P6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786129412; c=relaxed/simple;
	bh=td4QUmqh/CzJbY9hwr8oaCoXIb9cOUCSXlpuCM09EhA=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=eB6zpaz6zaRFTCqMMjHQXfZY15QMr4ks2zCAqK3WflCtHPtsmCNFXJhkk7WbYpfd55NSNsE1NNdy9QdytAiSrt5JbFJDtlBL0ufMGkbvg4ioaASMqMh7EKNEOySQAJ1UTP/nU5pDykXzn2k+JEEN12agwJxSNoFv2RLtF6x/61g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=HansenPartnership.com; spf=pass smtp.mailfrom=HansenPartnership.com; dkim=pass (1024-bit key) header.d=hansenpartnership.com header.i=@hansenpartnership.com header.b=p/wuXwCi; arc=none smtp.client-ip=198.37.111.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=HansenPartnership.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=HansenPartnership.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hansenpartnership.com header.i=@hansenpartnership.com header.b="p/wuXwCi"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=hansenpartnership.com; s=20151216; t=1786129407;
	bh=td4QUmqh/CzJbY9hwr8oaCoXIb9cOUCSXlpuCM09EhA=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:From;
	b=p/wuXwCiOR2JzWZpYAx1RBVJZfSfglOzElLzBkMcxXjRoo4Aim1COoqjPK2aVUZis
	 nl3lJmf/wi8IulUM94ww0n9N+j2EG0v9Py3T1so9VLTcN+oaU9dhxA0k47SOqIwPf8
	 xqdZ+cagaTn1K7IlCwSeB+ySFQwcIU8JNlXHOpqo=
Received: from lingrow.int.hansenpartnership.com (unknown [IPv6:2601:5c4:4300:d341::8309])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519MLKEM768 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by lamorak.hansenpartnership.com (Postfix) with ESMTPSA id D48C81C029F;
	Fri, 07 Aug 2026 15:03:27 -0400 (EDT)
Message-ID: <ec1080a821d9f4824b1390e6b06e20e4df1d436c.camel@HansenPartnership.com>
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Linus Torvalds <torvalds@linux-foundation.org>, Steven Rostedt
	 <rostedt@goodmis.org>
Cc: ksummit@lists.linux.dev
Date: Fri, 07 Aug 2026 15:03:27 -0400
In-Reply-To: <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
References: 
	<8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
	 <20260806194153.6443a3ba@gandalf.local.home>
	 <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
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

On Fri, 2026-08-07 at 10:27 -0700, Linus Torvalds wrote:
> On Thu, 6 Aug 2026 at 16:50, Steven Rostedt <rostedt@goodmis.org>
> wrote:
> >=20
> > I guess it really comes down to what Linus wants. He's been saying
> > he would love to get rid of Kernel/Maintainers Summit for years.
>=20
> So as you say, I don't love it. The original kernel summits way back
> when was great and I enjoyed it a lot - but that was a *long* time
> ago and the scopes were smaller and I think the problems were smaller
> too.
>=20
> We had technical issues that were universally interesting.
>=20
> Then the developer community grew and it became less universal with
> the technical discussions often really just being cliques where some
> developers were interested in particular issues and others that
> "checked out" of that part entirely.
>=20
> The maintainer summit was an attempt at keeping it focused on pure
> maintainership questions, and keeping technical discussions that
> don't cross maintainership borders in email or targeted
> miniconferences and the like.
>=20
> And it *works* in that sense, and I think it has been useful, but I
> have to admit to still feeling like it's not wonderful.
>=20
> For example, I keep generating the partial list of people that I
> think should be part of it, and honestly, for the last few years it
> has been a very similar list every time.

So this sounds like part of the problem: if you always generate the
same list of people you're going to get the same ideas coming around.=20
If you want different ideas and perspectives you need diversity of
views in some form ... I get you said "partial" but if the rest of that
partial is pretty much the same too, then there's a definitely sameness
problem with the selection process.

> Which is fine and a measure of reality: it's not like the main
> maintainers have changed very much - but it still makes me just think
> it's also just a bit staid.
>=20
> To explain that last point: back in the olden days, when we lived in
> caves and communicated by grunts and gestures, and I still lived in
> Helsinki and knew basically _none_ of the developers personally, I
> felt that the Linux community was in fact a bit more "open" to people
> because we didn't have this whole tightly knit community of old-
> timers that the BSD's had, or the physical closeness that some other
> projects had with all the developers actually meeting in person.
>=20
> And I thought that was a good thing. No "in-group" behavior.
>=20
> The maintainer summit being a pretty constant "in-group" is
> fundamental, but it still feels a bit sad and wrong to me.

Effectively you've made it a Leadership Team (LT) meeting and actually
the conclave.rst thing pretty much embeds that because it seems to be
founded on the idea that the maintainer summit represents the
leadership.

Just going on the Plumbers experience, I do think the problem sounds
like it has shrunk too far (you do need a certain number in a room just
to get discussion going properly).  You don't need to expand it up to
the 100 or so people it was, but it really sounds like you do need a
little expansion.

In industry generally, there's often a concept of XLT (expanded
leadership team), which means you invite some of your skip levels and
general contrarians and other individual contributors in to shake up
the perspective a little.  So perhaps expanding from ~34 to ~54 and
allocating 20 places for less well known maintainers and possibly even
new people.  This could be as simple as giving instructions to the
other bit of the selection to look for people who would express
differing viewpoints and generate useful debate.

Incidentally, if you wanted to raffle off the expanded places in some
sort of buy a lottery ticket or buy a sponsorship scheme, we might be
able to make that work as a funding model.

Regards,

James
