Received: from lamorak.hansenpartnership.com (lamorak.hansenpartnership.com [198.37.111.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 871A853D0AC
	for <ksummit@lists.linux.dev>; Tue,  8 Sep 2026 12:41:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.37.111.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788871281; cv=none; b=CqU2bopjIATg+99RoxcP9LyGKg9+WyjnoilP1vGS0q2bz664kIsObCGknEa/7OsAzxY/0OJ51zgaT0MOCCoJiLThMFzRd35W2qmQI81AjxX4bwLzDMGmXvo4cCI9N/kBMNof1nFqekNlyhuNebZHHzUs3u1kR1IfUKh6bjycuLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788871281; c=relaxed/simple;
	bh=GcMZklLx9EvrW3Gacf2oX2dKIDQpMAsbd+P2bWnUgc4=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=b51062h0JAk96VwBRO2REq95bxPXD9sb8EyAKD7O0t7cBXG+6BElmGaBIHA82p1ZwDn/g4t15FbdW3ST+ErfcSk6jVVbauRcXJT/T/CuuseCw8OHojSzRoZ8SAcvO2vRYsbvqhBolx7/AWz4RHlZPVPN4PSgFGLcKphym1BPA7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=HansenPartnership.com; spf=pass smtp.mailfrom=HansenPartnership.com; dkim=pass (1024-bit key) header.d=hansenpartnership.com header.i=@hansenpartnership.com header.b=rMgsnXHm; arc=none smtp.client-ip=198.37.111.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=HansenPartnership.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=HansenPartnership.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hansenpartnership.com header.i=@hansenpartnership.com header.b="rMgsnXHm"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=hansenpartnership.com; s=20151216; t=1788871278;
	bh=GcMZklLx9EvrW3Gacf2oX2dKIDQpMAsbd+P2bWnUgc4=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:From;
	b=rMgsnXHmxGZlFPBNKaGmECXYvW8D4i8QX8DVzQssD36N/dGfxkws6zjfZlgZoNKmR
	 3X2fZONEZ6kzjDmYAVcNSM844ApDinayvp+rnaAdz5w9hR/9IVlJpT6bTSr67KGa61
	 +vcRwEDGsJLA+W6LpIN0R+QpZ+ORsGyZ+w4S/3Zs=
Received: from lingrow.int.hansenpartnership.com (unknown [IPv6:2601:5c4:4300:d341::8309])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519MLKEM768 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by lamorak.hansenpartnership.com (Postfix) with ESMTPSA id 4BFA21C03B2;
	Tue, 08 Sep 2026 08:41:18 -0400 (EDT)
Message-ID: <132d2a682ce15be4d4f1d8586596dd874195c8c8.camel@HansenPartnership.com>
Subject: Re: [TECH TOPIC] Improving kernel security & integrity by
 generalizing ad-hoc safety mechanisms
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: "igor.stoppa@gmail.com" <igor.stoppa@gmail.com>, Greg KH
	 <gregkh@linuxfoundation.org>
Cc: ksummit@lists.linux.dev, istoppa@nvidia.com
Date: Tue, 08 Sep 2026 08:41:17 -0400
In-Reply-To: <CAH2bzCSCy_=B1SBt9X6+xM5qkzsitgC+TDb0Cu-h5YRFTnT0dw@mail.gmail.com>
References: 
	<CAH2bzCTjmRnSj5ppEEOKf7_jky54xAK6FroHhs207CqcqXJPaQ@mail.gmail.com>
	 <2026090747-carless-trio-ae92@gregkh>
	 <CAH2bzCSn4C94iWHdwWv=vwSnattvLTjYN2EPiP=6kx+wBtFfYQ@mail.gmail.com>
	 <2026090810-yen-tablet-8843@gregkh>
	 <CAH2bzCSCy_=B1SBt9X6+xM5qkzsitgC+TDb0Cu-h5YRFTnT0dw@mail.gmail.com>
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

On Tue, 2026-09-08 at 14:26 +0300, igor.stoppa@gmail.com wrote:
> On Tue, 8 Sept 2026 at 08:05, Greg KH <gregkh@linuxfoundation.org>
> wrote:
>=20
> > If you don't even try to create something that can be upstreamed,
> > and submit it for review, then there's nothing that we can ever say
> > other than "I guess they never tried" :(
>=20
> The problem is not that we don't want to try.
> The problem is that the ways it can go wrong or in the wrong
> direction are too many.
> And the hope was that we could prune a good deal of dead branches
> upfront.
> But I will try to explain it better a few lines below.

You seem to think some people in upstream magically know the correct
direction: they don't; they need you to explore the space and come up
with concrete proposals.  The best way of doing this is to form a wide
but loose consensus first, so I'd really suggest again that you try and
engage with ELISA.  They know the space better (to guide you) and they
have stuff they want to upstream as well so they can tell you what they
think will fly and what won't.

Regards,

James
