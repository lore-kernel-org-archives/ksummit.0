Received: from lamorak.hansenpartnership.com (lamorak.hansenpartnership.com [198.37.111.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA9FC283FD9
	for <ksummit@lists.linux.dev>; Sat, 18 Jul 2026 03:07:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.37.111.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784344064; cv=none; b=tDM1sNWnny3yepIS1HenCc5eC1P8jKv67UU3C4WZEM5/TEpTN6UK/TDsLhEbS4MkT+VQ3VYs+gjTdzeSKW5Cbk4Kei9krU9blB2DChee9q2FnVU3tPQejLoJpL99Xadsb/JyvEBl5TOyuIycqNc5i2ACyPqIcOLaJCUsfm/GPy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784344064; c=relaxed/simple;
	bh=xgosfSVk4hDmyMf7EBFmojkeSssh8/Zro6nbrRJR62k=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=TbQmGx2X1SlUS1wD4T7M4faSdgUfoLatEutMgHpB1oQhLkzLva8Y4+qqgy6ZodE3ONXvSPqrT6kw9wbpZMtiF8/F4lqM4+TE3iHFzq6f58MGz2u3WsA302CnCotprrPbgjXvcOMQQPWSnaXGjG0O6GSB/Ktt5yxYzJMyMsLiJ40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=HansenPartnership.com; spf=pass smtp.mailfrom=HansenPartnership.com; dkim=pass (1024-bit key) header.d=hansenpartnership.com header.i=@hansenpartnership.com header.b=DpSNtQhS; arc=none smtp.client-ip=198.37.111.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=HansenPartnership.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=HansenPartnership.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hansenpartnership.com header.i=@hansenpartnership.com header.b="DpSNtQhS"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=hansenpartnership.com; s=20151216; t=1784344061;
	bh=xgosfSVk4hDmyMf7EBFmojkeSssh8/Zro6nbrRJR62k=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:From;
	b=DpSNtQhS3ZOyGze4fph6H6PIA6sXKsoKTA8FN8HPImncQVHxrhAJmzNZol4DAcE5X
	 AHvS9PjNmfJKaQ70Nyr7ML7//SY0BBHz9BidbcyDsq8LBn6+yk3xb4W7KULcy8AAPz
	 4RZ15zg+oPicEP2sXQ9gUANBgCLzCInx1IHXJmow=
Received: from lingrow.int.hansenpartnership.com (unknown [IPv6:2601:5c4:4300:d341::8c71])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519MLKEM768 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by lamorak.hansenpartnership.com (Postfix) with ESMTPSA id 65A9C1C0291;
	Fri, 17 Jul 2026 23:07:41 -0400 (EDT)
Message-ID: <e2a6bf8d5880370ae7d7bffae70625be242f4c77.camel@HansenPartnership.com>
Subject: Re: [MAINTAINERS SUMMIT] Other LLM-related topics - tags,
 newcomers, etc
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Theodore Tso <tytso@mit.edu>
Cc: Dan Carpenter <error27@gmail.com>, "Liam R. Howlett"
 <liam@infradead.org>,  Jonathan Corbet	 <corbet@lwn.net>, Sasha Levin
 <sashal@kernel.org>, ksummit@lists.linux.dev
Date: Fri, 17 Jul 2026 23:07:40 -0400
In-Reply-To: <alrIyYVSN-kReQQU@mit.edu>
References: <87wluv7yzc.fsf@trenco.lwn.net> <alj4mYFMfZvuarfx@laps>
	 <87y0fa7pdm.fsf@trenco.lwn.net>
	 <sg6yidkiqfwegabxwkrcb2dhlfkqjquwyad75xqd4j7w7o7gtx@eh6czm5aoxuy>
	 <a6898b221ef656a053352e41cf8fd130ce434d60.camel@HansenPartnership.com>
	 <adnloao5zqp7xkpryijdbrbtqo4n2iucfvxn6rtcd23s3hsvgg@fjlzj3jborxc>
	 <4adc1ace832afefd30e48f0a05b27b58d9fbd604.camel@HansenPartnership.com>
	 <alp0A8ThbUr6uRNc@stanley.mountain>
	 <48472b6d7c4803c5bf76235e4a8f5f9f69fcd047.camel@HansenPartnership.com>
	 <alrIyYVSN-kReQQU@mit.edu>
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

On Fri, 2026-07-17 at 21:13 -0400, Theodore Tso wrote:
> On Fri, Jul 17, 2026 at 02:42:09PM -0500, James Bottomley wrote:
> > They're not really enforced at all.=C2=A0 It's the legal equivalent of =
a
> > representation, it just means I read the DCO and I represent I
> > conform to what it says.=C2=A0 Externally we have no verification
> > mechanism that the person signing off actually did this ...
> > although if they're regular contributors the trust factor is
> > higher, and if they get caught faking signoffs then the trust
> > factor goes down.
>=20
> This is something that perhaps we should ask legal council.=C2=A0 The DCO
> states (among other things):
>=20
> (a) The contribution was created in whole or in part by me and I
> =C2=A0=C2=A0=C2=A0 have the right to submit it under the open source lice=
nse
> =C2=A0=C2=A0=C2=A0 indicated in the file; or
>=20
> (b) The contribution is based upon previous work that, to the best
> =C2=A0=C2=A0=C2=A0 of my knowledge, is covered under an appropriate open =
source
> =C2=A0=C2=A0=C2=A0 license and I have the right under that license to sub=
mit that
> =C2=A0=C2=A0=C2=A0 work with modifications, whether created in whole or i=
n part
> =C2=A0=C2=A0=C2=A0 by me, under the same open source license (unless I am
> =C2=A0=C2=A0=C2=A0 permitted to submit under a different license), as ind=
icated
> =C2=A0=C2=A0=C2=A0 in the file; or ...

Yes, I know ... I spent a decade or so selling the DCO to the industry
as TAB chair.

> Given, however, that we don't know whether it might mean that
> vis-a-vis code which is generated by AI,

Well, we do currently: as the copyright office asserts AI can't hold
copyright in generated code then anyone can submit it satisfactorily
under the DCO because they have the right to do so in the same way
they'd have the right to do so for any public domain code.

However, just in case that advice changes it's not unreasonable to ask
the submitters to label the code as AI generated.

>  we might want to ask competent legal counsel questions such as:
>=20
> 1) Should we change the DCO to require disclosure if the code
> was generated by an LLM?

Realistically it's taken decades for industry and its legal counsels to
accept the DCO as standard practice, the foundation of which is the DCO
is simple and doesn't change; so suddenly updating it on an AI whim is
going to really upset that consensus and shouldn't be done.  That means
whatever we do for AI must be reasonable and not involve changing the
DCO.

> 2) If so, what detail is needed?=C2=A0 Does it matter, or potentially
> matter, what model(s) was used to generate the code?
>=20
> 3) Does it matter, or potentially matter, whether the LLM was used to
> generate code out of whole cloth, or to fix existing code?=C2=A0 For
> example, if the LLM inserts a spin_unlock() call, or modifies the
> prexisting code to add a scoped guard to avoid a memory leak, the
> chances that this might have copyright implication might be different
> compared if the LLM is asked to generate a new device driver for some
> graphics card.
>=20
> 4) Does the prompt or series of prompts that were used matter, or
> potentially matter?=C2=A0 If so, do we need to record them in the git
> commit description, much like we sometimes include the coccinelle
> script?

I think we can establish a project specific consensus on how we'd like
the labelling to be done.  That the contribution was created using AI
is the most important.  The model and prompts may or may not be
interesting, but we can likely find them as part of the historical
record.  Representations based on project norms are just as useful as
the ones based in the DCO (as we know from the plethora of tags we use
that have no basis in the DCO).

The only point I was making is that I think the AI generated tag has
future use as part of the code base and thus we shouldn't simply
eliminate it because reviewers don't find it useful.

Regards,

James

