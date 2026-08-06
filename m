Received: from lamorak.hansenpartnership.com (lamorak.hansenpartnership.com [198.37.111.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D04353AEB5F
	for <ksummit@lists.linux.dev>; Thu,  6 Aug 2026 15:34:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.37.111.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786030453; cv=none; b=HqFGAZw144W6WYhG3IXzKf2ryvfnALvjEE/RzXr/ZLT2Gf3E4ra16WhGwesjBjPOkTtTwCUe1xal0dpM2S9F1VTlogFydFu71iNI//L5+lDx4POHGqVfxhlcigfUnsvLePMIOY+QTZP2UK5EjbcHKiiIk7iAq7QvmYxfHXZJB+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786030453; c=relaxed/simple;
	bh=lY1gdBK6naCmU2M1HJuyoKRgoMWtSEOKObaEFIP866k=;
	h=Message-ID:Subject:From:To:Date:Content-Type:MIME-Version; b=gzW5Z/Hv9GV53jukA9vWLDs0w91zAADvmtr8BxJ0OoB8hPNKgV/p9uAmuh6w3/a3zZquRdtjYQiA5Za2vUDu66WCWX2knud2EYvc8kHCX2elQJm0XrkdZEglkUfvQd/A52/6RpioPDKBrBcHBE98hu/34o6xV16P5O73DnWJtGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=HansenPartnership.com; spf=pass smtp.mailfrom=HansenPartnership.com; dkim=pass (1024-bit key) header.d=hansenpartnership.com header.i=@hansenpartnership.com header.b=E3uWeJNG; arc=none smtp.client-ip=198.37.111.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=HansenPartnership.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=HansenPartnership.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hansenpartnership.com header.i=@hansenpartnership.com header.b="E3uWeJNG"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=hansenpartnership.com; s=20151216; t=1786030450;
	bh=lY1gdBK6naCmU2M1HJuyoKRgoMWtSEOKObaEFIP866k=;
	h=Message-ID:Subject:From:To:Date:From;
	b=E3uWeJNGH+YeIcLXnU7BsmwNPsL70TopbHmOvOinBH5/ui5WYxqevQ0Zkv50slS0U
	 VimDhvMikG6ocD2kwHSca0/i6sbDJUuHEl/K5KmEVP+UUdFSfhkbh/dfUPuLGlRXRG
	 OMmYN4yl4oWKZskLWa4ZetN+Sc5jqFkltV/S4pJI=
Received: from lingrow.int.hansenpartnership.com (unknown [IPv6:2601:5c4:4300:d341::8309])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519MLKEM768 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by lamorak.hansenpartnership.com (Postfix) with ESMTPSA id A0C0A1C0601
	for <ksummit@lists.linux.dev>; Thu, 06 Aug 2026 11:34:10 -0400 (EDT)
Message-ID: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
Subject: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: ksummit@lists.linux.dev
Date: Thu, 06 Aug 2026 11:34:09 -0400
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

What got me thinking about this is the obvious funding problem: MS is
free to attendees, but only had one sponsor in 2024, none in 2025 and
is on track to have none this year. Since Plumbers has a reasonably
successful sponsor model and the LF brought the problem up in recent
conversations, we thought we'd take a look.  A colleague remarked that
it should be easy to sell seats to a room with Linus, which on the face
of it looks to be true, but when examined more deeply isn't
straighforward.  The problem is conferences like Plumbers, LSF/MM and
MS are usually sponsored by engineering not marketing where budget is
much harder to come by and the justification for ponying up the cash
has to be very clear; effectively they pay for outcomes not access or
publicity (although access is required to get successful outcomes).=20
When you look at the actual outcomes of MS 2025

https://lwn.net/Articles/1049982/

there isn't really anything that would move the needle for a potential
sponsor.  Equally, there's nothing really that couldn't have been part
of a wider discussion at Plumbers or LSF/MM, so I'm not sure there's
anything that actually required discussion at this event (i.e. nothing
to move the needle for kernel developers either).

Before I go into potential solutions, it might be beneficial to review
the history:  The kernel summit began as a stand alone event in 2001
run by USENIX and was the first time many kernel developers had
actually met each other. It continued as a 2 day event co-located with
Ottawa Linux Symposium (still run by USENIX) until 2008 when it mostly
co-located with Plumbers and was run by the LF.  In 2015 Linus
complained that he didn't find the KS talks that valuable and he'd like
to discuss process with a smaller audience, so in 2016 the kernel
summit was split and the talks went to the kernel summit track in
Plumbers and a 1 day Maintainer Summit was born.  It can be argued that
the decline in sponsors began with the 2016 split and thus, as the
sponsors apparently see it, the decline in outcomes as well.  Oh and
for those of you who keep saying the LF doesn't fund Linux: without
sponsors the LF is eating the cost of the entire event which, based on
what Plumbers costs, will be somewhere north of US$100k.

As for fixes, one possibility is definitely keeping MS as is and moving
the sponsor responsibility to Plumbers, but unless I can strap Linus
down and sell companies on pitching to him directly, I fear that would
end up creating a US$100k hole in our budget.  Perhaps there are
actually outcomes we could sell to sponsors but, because of the reduced
audience, we simply don't get to hear about them ... so if you think
that now would be the time to say what they are.  Another solution that
seems viable would be folding the MS into one of our existing sponsored
events, like Plumbers or LSF/MM.  Structurally either would be a fit
for the past discussion topics and both could probably accommodate
(although I don't think either could expand to a fourth day to do it).
A final thing we might do is change the structure of the event itself
to have more sponsorable outcomes; perhaps simply making the event more
like the kernel summit of old, so moving back the KS track from
Plumbers would be enough?

Regards,

James
