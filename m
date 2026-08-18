Received: from lamorak.hansenpartnership.com (lamorak.hansenpartnership.com [198.37.111.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A0D48124E
	for <ksummit@lists.linux.dev>; Tue, 18 Aug 2026 17:00:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.37.111.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787072410; cv=none; b=cy9wY1sGJWeTJqKCil8Zh50z/0Hh1tZ0Xmk9fMliSabTGT3AjhpQ04eXDEgZcmzGA90YnEiMYJIBqBb/22O5KEi3QU2fXEfj7wTuGIEAIrTDaR19hVaLR2wlx+tVuIA6LWd6Tcd4fwPuqbVQZsT0EnQqdOVKkxfVzFHbsE/zIVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787072410; c=relaxed/simple;
	bh=hIGZDmIggsBdVHc23nxSkjEF7Ed/6qbplznhe0UVcNI=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=lrE8cdNxgVse0gVknbz0/2iAAI+Rx5ZUY0GiaAnGKJuSfCLBl+nJEo4XJ44cop3iPhkvarWR71fRP1Ox7JjJbE25GSsoeNSjJP1i55gnoF3XTlXIuYuI3V9OS36+9XVReL52vb1ZkVJgMBvkRXTBAloHqIO+mNN/gofa7Ttendo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=HansenPartnership.com; spf=pass smtp.mailfrom=HansenPartnership.com; dkim=pass (1024-bit key) header.d=hansenpartnership.com header.i=@hansenpartnership.com header.b=PaTA+zex; arc=none smtp.client-ip=198.37.111.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=HansenPartnership.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=HansenPartnership.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hansenpartnership.com header.i=@hansenpartnership.com header.b="PaTA+zex"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=hansenpartnership.com; s=20151216; t=1787072406;
	bh=hIGZDmIggsBdVHc23nxSkjEF7Ed/6qbplznhe0UVcNI=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:From;
	b=PaTA+zexwCY2fKyPGNp7n5qFxTkTIFE8vZUj4SLcx7Yy+i3Ab8Tp2QbxIPawJ0+55
	 nvbeImv/VHcDn1RSHO0n6X1oExTEzgiqisSxD2GZGoTfY0oe1NgyPfgP+pKdNQn/Fe
	 NQJvm/Antdq6YDk8J9V8IqHpYktOG07UZS1IRRxg=
Received: from [IPv6:2a00:23c8:103c:f701:6906:2df:959d:44bf] (unknown [IPv6:2a00:23c8:103c:f701:6906:2df:959d:44bf])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519MLKEM768 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by lamorak.hansenpartnership.com (Postfix) with ESMTPSA id A707E1C032D;
	Tue, 18 Aug 2026 13:00:03 -0400 (EDT)
Message-ID: <8d0fb0549a57bfa5060bb185fd5bcc0a1fca5575.camel@HansenPartnership.com>
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Theodore Tso <tytso@mit.edu>, "Lorenzo Stoakes (ARM)" <ljs@kernel.org>
Cc: "Liam R. Howlett" <liam@infradead.org>, Steven Rostedt
 <rostedt@goodmis.org>,  Jonathan Corbet	 <corbet@lwn.net>, Linus Torvalds
 <torvalds@linux-foundation.org>, 	ksummit@lists.linux.dev, "David
 Hildenbrand (Arm)" <david@kernel.org>, Andrew Morton
 <akpm@linux-foundation.org>, Dave Airlie <airlied@gmail.com>
Date: Tue, 18 Aug 2026 18:00:01 +0100
In-Reply-To: <aoSIANv2L18fV4RN@mit.edu>
References: <20260806194153.6443a3ba@gandalf.local.home>
	 <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
	 <anfUgiByUVffXlrQ@mit.edu> <87y0efi08u.fsf@trenco.lwn.net>
	 <20260809170918.218792b2@gandalf.local.home> <anmHaRzbnY7rtLX8@gremlin>
	 <20260810092003.5fda8e06@gandalf.local.home>
	 <1BD1C7E7-CCA5-4BBB-94D4-83A7706E2579@infradead.org>
	 <anppSi8oQvvODOI2@mit.edu> <aoRwK2L8CjtnhTK7@lucifer>
	 <aoSIANv2L18fV4RN@mit.edu>
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

On Tue, 2026-08-18 at 12:45 -0400, Theodore Tso wrote:
> I'm sorry that you feel ignored, but we all have tons and tons on our
> things screaming for our attention.

I suggested what I thought were three actionable discussion topics that
didn't get much traction either:

https://lore.kernel.org/all/215b3cdfda17207d91b0fa057b01f3cb45eb874c.camel@=
HansenPartnership.com/

Regards,

James
