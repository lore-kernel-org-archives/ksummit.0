Received: from lamorak.hansenpartnership.com (lamorak.hansenpartnership.com [198.37.111.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ADAD4749F6
	for <ksummit@lists.linux.dev>; Fri,  7 Aug 2026 13:09:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.37.111.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786108157; cv=none; b=j5/26MBQycKvaepDBxevLPM6m/AO9anAi5miAvk8JU18YRarfDTeNIFhKKHvi5cj42jb3md4yp+hBvIJTEONSijBI1Sxc2zFmIBiQkjMWpSg1vlkD3gsSOkYHHICn1vKLjPu5hxSZAstBrnnrAy60cR4GCexApV3eJH56C0cSA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786108157; c=relaxed/simple;
	bh=UqDBofyuYMRwZ+0YqQsFMRgZySN6exqjDvc9cgAAH+E=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=GO9a1vsSDps/jNNRPT5wm3soGcUrXDbiC9GmCWELIYO1/zdzPbEjO3Dah/27WNN4QO9Rzkk83V0V1jbWwqAw1eVamonezwpTbYOSR7PBUpC6a6OuAxzHCeQFLFCx+NNav3fHFH9Gz7TnETwuFtN5j8SGkhY5XdSMgBfFwlMq6MI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=HansenPartnership.com; spf=pass smtp.mailfrom=HansenPartnership.com; dkim=pass (1024-bit key) header.d=hansenpartnership.com header.i=@hansenpartnership.com header.b=sk1WR5nm; arc=none smtp.client-ip=198.37.111.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=HansenPartnership.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=HansenPartnership.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hansenpartnership.com header.i=@hansenpartnership.com header.b="sk1WR5nm"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=hansenpartnership.com; s=20151216; t=1786108146;
	bh=UqDBofyuYMRwZ+0YqQsFMRgZySN6exqjDvc9cgAAH+E=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:From;
	b=sk1WR5nmYYXDSS7rkWkHS9ypqAdSSAgyLET0FYX7s7APCQgL6VO5eYWq2Pzi3i3s/
	 VHvkJ9/ZtjA+r4cCNdT1MCnkb4rsIKqWqQjWhu0oN6Wh7o6LnQVJ6lqc5mRUhgotld
	 V+JK5ZPZZxe7Fu05rCa43D8047WCqjI9KtOp1P8w=
Received: from lingrow.int.hansenpartnership.com (unknown [IPv6:2601:5c4:4300:d341::8309])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519MLKEM768 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by lamorak.hansenpartnership.com (Postfix) with ESMTPSA id 424561C0025;
	Fri, 07 Aug 2026 09:09:06 -0400 (EDT)
Message-ID: <8f07d379f3f4c67b2a9a62330e43066d312d42a4.camel@HansenPartnership.com>
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: ksummit@lists.linux.dev
Date: Fri, 07 Aug 2026 09:09:05 -0400
In-Reply-To: <20260807125825.GL2201016@killaraus.ideasonboard.com>
References: 
	<8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
	 <20260807125825.GL2201016@killaraus.ideasonboard.com>
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

On Fri, 2026-08-07 at 15:58 +0300, Laurent Pinchart wrote:
> On Thu, Aug 06, 2026 at 11:34:09AM -0400, James Bottomley wrote:
> > What got me thinking about this is the obvious funding problem: MS
> > is free to attendees, but only had one sponsor in 2024, none in
> > 2025 and is on track to have none this year.
>=20
> The sponsorship prospectus ([1]) indicates that the "attendee gift"
> category is sold out, does it mean one sponsor signed up ?

The LF paid for the attendee gift last year. Since they have to be
ordered some way ahead of the conference I'd guess the same is true
this year.

[...]
> The maintainer summit is limited to 30 guests, plus up to 7 sponsored
> attendee according to [1]. Assuming neither Linus nor the program
> committee are counted as guests, that would be 43 people in total, so
> a rough cost of $2500 per person for one day.=C2=A0

I take it you've never seen the bill for attending a USENIX (or a lot
of other) one day events.

> I understand that hosting events in large venues is expensive, but if
> the maintainer summit is an invite-only, separate event, would it be
> an option to drastically cut costs by hosting it in a nearby but
> separate location ?

Is there any point wittering about your speculated numbers vs mine?=20
The bottom line is there is a cost and someone has to pay it if there
are no sponsors.

Regards,

James
