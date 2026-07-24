Received: from lamorak.hansenpartnership.com (lamorak.hansenpartnership.com [198.37.111.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD79F2EEE90
	for <ksummit@lists.linux.dev>; Fri, 24 Jul 2026 13:05:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.37.111.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784898309; cv=none; b=t0vErAp4SktAOY/7YEACYBX0RF29Ggo15J6XEUYzjx9H9dMt6ksuQNNUxxCuzkn+Q9Nf3PP6MqKt4R2a8EOAbYazWLc4d4pgHpZFcqrDAa61d5tyn6OgdkFbFvUtoJ7sFbz1GP4z323/FunOXdZHfrGDpXWcYS5Nz7BFRt8iv4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784898309; c=relaxed/simple;
	bh=4AGIMF3lJavnRxC8ix+v6d2rUSiUyF/QjrXEZjyO+1U=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=lTUBqRF/jcLenayMxFcMBR4wJ0Y6XXZ94RdS8Sb7tVmT3a0jq6jxr5qAZJ7BDuordzvl+JZWlvI3duzBqre6CytgaTrpxi+pJGPzfpiD9TQ3yWvILWL7uZ8KmA3p4cGrOVL8IZgaODktZ0NeWsAy4IXyEz4+4JQKQBPqnVQyWDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=HansenPartnership.com; spf=pass smtp.mailfrom=HansenPartnership.com; dkim=pass (1024-bit key) header.d=hansenpartnership.com header.i=@hansenpartnership.com header.b=uMDlbPX8; arc=none smtp.client-ip=198.37.111.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=HansenPartnership.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=HansenPartnership.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hansenpartnership.com header.i=@hansenpartnership.com header.b="uMDlbPX8"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=hansenpartnership.com; s=20151216; t=1784898305;
	bh=4AGIMF3lJavnRxC8ix+v6d2rUSiUyF/QjrXEZjyO+1U=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:From;
	b=uMDlbPX87Xi5UQdBAOsdiGz0Ws5jYdZK6cveLBPLFW42Tbe8xy/u2xNn7ggusFjcc
	 /xHnfLyWlbfkZUOsmRPtsHyr3avq5aIWUEg67NElBJAXCQW5qUpNnrITIu3vMY0kds
	 HlDcOWgYnhLsp28kqIg3HS6S+HgUb0pUhMq+FhdU=
Received: from lingrow.int.hansenpartnership.com (unknown [IPv6:2601:5c4:4300:d341::8c71])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519MLKEM768 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by lamorak.hansenpartnership.com (Postfix) with ESMTPSA id 2365D1C0283;
	Fri, 24 Jul 2026 09:05:05 -0400 (EDT)
Message-ID: <2ad924c04345716620987124cf2d6191118449a1.camel@HansenPartnership.com>
Subject: Re: [MAINTAINERS SUMMIT] The place of AI code review in the Linux
 Kernel process
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Tomasz Figa <tomasz.figa@gmail.com>, Guenter Roeck <linux@roeck-us.net>
Cc: Mark Brown <broonie@kernel.org>, Mauro Carvalho Chehab	
 <mchehab+huawei@kernel.org>, Linus Torvalds
 <torvalds@linux-foundation.org>,  Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>, Roman Gushchin
 <roman.gushchin@linux.dev>, Jason Gunthorpe	 <jgg@nvidia.com>,
 ksummit@lists.linux.dev
Date: Fri, 24 Jul 2026 09:05:04 -0400
In-Reply-To: <CA+Ln22E2BbKoYHNKbeOeWZuNvH4r3dx5Of_cLg2Mf+xm+xLszA@mail.gmail.com>
References: <7ia4qzl45h20.fsf@castle.c.googlers.com>
	 <20260715185757.GA191552@nvidia.com>
	 <7ia4pl0oymo0.fsf@castle.c.googlers.com>
	 <CAHk-=wjCcHUr=-Ycsey0khWnn68O6D=ZN-bE+8Sq4NetXpFuPA@mail.gmail.com>
	 <20260718010949.GG1889304@killaraus.ideasonboard.com>
	 <CAHk-=wgJZr6n5RAOOWdMcjzQZL3u0fE5qew=o-qSvbey-ui3WA@mail.gmail.com>
	 <efdce5c5-13a1-4dec-9823-bb2a37084538@roeck-us.net>
	 <20260723084954.42e6a6e4@foz.lan>
	 <65fe52a8-d6e1-4c5d-ac74-6c731874db15@roeck-us.net>
	 <4d27a17a-ddd9-49c0-8d6c-e044b28ffa0a@sirena.org.uk>
	 <41cffdd7-af79-444a-a086-7861437c96a1@roeck-us.net>
	 <CA+Ln22E2BbKoYHNKbeOeWZuNvH4r3dx5Of_cLg2Mf+xm+xLszA@mail.gmail.com>
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

On Fri, 2026-07-24 at 09:08 +0900, Tomasz Figa wrote:
[...]
> (For a comparison, the Android/Chromium Gerrit, which is somehow so
> hated by the kernel developers outside of Google, allows me to easily
> see the difference between any given revisions, lined up with
> comments from those revisions, making it really easy to confirm the
> necessary changes are there.)

This is really just about *how* you like to do reviews.  The main
problem with gerrit isn't that the interface is bad, it's that it
completely alters the workflow.  However, if the workflow could remain
the same and gerrit became simply a tool for looking at reviews, I
suspect people might like it much more.

It shouldn't be too hard to take lore and give it a gerrit like front
end for patch review, given that it has all the information and it's a
fairly mechanical transform between inline email comments and patch
comments in gerrit.  It's probably quite easy to vibe code if you
wanted to try ... and I'm sure if you come up with something
reasonable, Konstantin will probably be able to deploy it more widely.

Regards,

James
