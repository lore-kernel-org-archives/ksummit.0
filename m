Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A51431BC84
	for <ksummit@lists.linux.dev>; Fri, 23 Jan 2026 09:20:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769160003; cv=none; b=cDPqhr2VRBmKdmHd1ujz2BBf7Mb9LsYBbIglkOoeBpgf2cgC6ycgj0HXjlM4j8LmfirTSpX4G8tHavgGxknsWjIr+lvYnTk8my+cQ7kpOSBOKvD9DSo386ZxaNFPoAVvBH9kzUPZrhYajE6uStxZCrlwUIeRHVKltByoNLPK5mA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769160003; c=relaxed/simple;
	bh=C3UCbdNfgwFiJqtWgRmInTGrc4welSRvcTIsRodm8YI=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=txYILyHU8YlkVtu9GjGcZNY96i9OYQt8krWlE5KrYiVLLqoTzS2mJEHbiTGrg9R+PtBmYbKpzlJx+gN1MPmyPnCMKYvYUWjqViA+ToGDn4yUcA3cA1eBbLp3/l9UBSvwGwtqXCAxSPSJDAqLv7N3Ynx2ZyZYX4cjdwecajIyXv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P+L0guH0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P+L0guH0"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E19E9C4CEF1;
	Fri, 23 Jan 2026 09:20:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769160002;
	bh=C3UCbdNfgwFiJqtWgRmInTGrc4welSRvcTIsRodm8YI=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=P+L0guH02Zzd7QH3BUw4+Lj6kuEUEzMeJR+4QtTeGzEHfCcYzfMfCqXUckjdQjaj9
	 bHHwx5nlQLHY+GO6QrV+fjOxAZcq3pEyl8waOzIGa08Y+gALCFqsOfgvl+YM3rWMVI
	 18cwsqapYgi3KF44R3TxlAE1LUy/yBGXY5G8ZRAGwJLx2Ev0m/0DyvUKDl2gwoC0JF
	 8BrzJeOkIc+AMVqFYsGUHsunR7Yrq2Y3zdV/A1WKPDs87nE6DoXSWKVdR2QYWydXdr
	 3qPoPvdtB1t4EhPSkLKrIRKAUujmgFtGRdNRrpkgGs3Jhbf0pO47gHvgTI9IEG8JhW
	 w6muL0kUpbJlA==
Message-ID: <6e0c8c00-4efe-432a-92e8-c51aa15b4a34@kernel.org>
Date: Fri, 23 Jan 2026 10:19:56 +0100
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Web of Trust work [Was: kernel.org tooling update]
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>, users@kernel.org,
 ksummit@lists.linux.dev
References: <20251209-roaring-hidden-alligator-068eea@lemur>
Content-Language: en-US, de-DE
From: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>
In-Reply-To: <20251209-roaring-hidden-alligator-068eea@lemur>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------jwrpvKOVCPZQa4YGSsntHlQ7"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------jwrpvKOVCPZQa4YGSsntHlQ7
Content-Type: multipart/mixed; boundary="------------i0ZewPbL40VAvjEn11GETzEV";
 protected-headers="v1"
From: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>, users@kernel.org,
 ksummit@lists.linux.dev
Message-ID: <6e0c8c00-4efe-432a-92e8-c51aa15b4a34@kernel.org>
Subject: Web of Trust work [Was: kernel.org tooling update]
References: <20251209-roaring-hidden-alligator-068eea@lemur>
In-Reply-To: <20251209-roaring-hidden-alligator-068eea@lemur>

--------------i0ZewPbL40VAvjEn11GETzEV
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Konstantin,

On 12/10/25 05:48, Konstantin Ryabitsev wrote:
> ## Web of Trust work
>=20
> There is an ongoing work to replace our home-grown web of trust solutio=
n (that
> does work but has important bottlenecks and scaling limitations) with
> something both more distributed and easier to maintain. We're working w=
ith
> OpenSSF to design the framework and I hope to present it to the communi=
ty in
> the next few months.

the current home-grown solution is https://git.kernel.org/pub/scm/docs/ke=
rnel/pgpkeys.git/, right?

I wonder what the bottlenecks and scaling limitations are that you mentio=
n.

Is there some info available already now about the path you (and OpenSSF)=
 intend to propose?

Best regards
Uwe

--------------i0ZewPbL40VAvjEn11GETzEV--

--------------jwrpvKOVCPZQa4YGSsntHlQ7
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmlzPTwACgkQj4D7WH0S
/k7kgwf9GkgvHs+CJTtigmx403GCW5WuIZ5fVyh3xDkfUjeXWm2n0o2lFZmwU3Kt
QEFvaDeC9TRzzvikd/KBlTJj4Ti1o/mY0yeF89Ku3EFrMkeGfSQuzNrDy2oRyn0f
eMWcMhBMiSn7iL7sGjIub6sOj7nOrD/sn3PiZ8cuCNQ9Rd9hL2qqjyYkGwI5/Sby
hMQ9k5z9e+zUXohcWM5kkIQSN0mdH+pqzjC31zudoc9zJ3rMR/X4lhi71s3pugbs
8xyxTM4wYLbWVptJSysxl44wFyN4XQzKPRZ3ynuIoE4D9LmLdSYL0Nu1ztNcr5rx
7GFnWQJY198dn/Ox2KtUPUHfB5d/GA==
=/uKf
-----END PGP SIGNATURE-----

--------------jwrpvKOVCPZQa4YGSsntHlQ7--
