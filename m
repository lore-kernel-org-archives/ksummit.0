Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F61543CE49
	for <ksummit@lists.linux.dev>; Wed, 12 Aug 2026 11:19:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786533552; cv=none; b=E2VcHQy3HncBCnGEpPubY1IlJzXIJAPiLNSOdawPOEX9Fpl1buLfwXqi3YPkvosIgzRoUfiowqbF8B1cLcz5kR4Ij8pI+3+ckPXozZIFIwzRGxpvS48BxAqBNngpygYK4On8h2HU6KGAeL/OzHws/cot7YgUiji4aZk/g3Us1tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786533552; c=relaxed/simple;
	bh=Zu06VORGd60eC5cvXuXkiAljsTtoYdTtZHZBSaSEP/A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XkM09TLHXx1snEReqA0uIiW6NgQ3xy6jfOJpKqZky5y1VvhiHeRJQOF7PP74s5HupuvkTmKgEWw7Pr2MPbI/MQR4teiA0qEcyzCjNN3ZPH7RoBjFtGPU9/7id0NlruT+RP43wFRuFA6Rb1Fh4y+ho7DnKief08ECBQA4Zxm7Yi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=QNDfRYJg; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b="QNDfRYJg"
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-47f7027ca11so509180f8f.3
        for <ksummit@lists.linux.dev>; Wed, 12 Aug 2026 04:19:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1786533548; x=1787138348; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Zs2Hm8JVtmV7cUaMS0qqZCPK78yy/iCq/DyzoPGqmjY=;
        b=QNDfRYJgFC+9ENDBTWDDk9Fb8K3j7Ykad8ty3Drm72UNbkyklLNJaiPBd8M7PPplyX
         zMRMYl5uEGfT2aRkcw3BWnHl/9RES/NdwjzKo/QmKnI2WYXGNNu7Oxy1Q50aLv9mEDQL
         ONHHvN76rnM0q41sPNTTo65MTuHWFScxB2YV98voy/NKsUxibehhBaVM1qmBQwStj5AK
         e7oGXk4fp5m35Refvs9nR08+X2TaX2978PzAUP63RNDz5w6zaRtln0VU7pyx8Xo+C9SK
         ry4xBTfMV4mHmSJgzL7A6mTX0O0RMZr68gqEspQjEPLtXT6ASSWaAM+c9rZMxPDUahqw
         aKFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786533548; x=1787138348;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Zs2Hm8JVtmV7cUaMS0qqZCPK78yy/iCq/DyzoPGqmjY=;
        b=GtvZNy4fSq6DAg48Ymmfi9+9MUqMc9ln1XCY+LpDwz8hIJwgQA4raIVM1dWRCmE2OH
         gkr4mxtXFQrcIAd3n/HnH9TmYOGb/Egje20LJcNKG/cLQWN9oxDXi9OJqdCQlVi3Jnuw
         Dm7HxVh9dpxSarUq/lPQmDFzh3l9wAUE2MthPT2mrDH5v8fyphAG1wqRDhUAx9Mnsx/V
         C4s2gsNKq+qajJ9ATxp87skaT1MREJP13fmr2411xx7wvGk25XXFMTsVFl0xFfDcN2ch
         1zFgowsvJJPPZYLt0dqkiTa7HPQgbv/z6bg9pbzdP3wjBjcJ7VJFhw+2rEFbCpBkXI9S
         t01A==
X-Gm-Message-State: AOJu0YwSlEWS+UbB9QQXmuKe8kz4j1hTnUGFZFWdEIGm78dUwVEX6sdt
	dHCX0Zb3i1U5keZsUaVNcb7OFqdWSgey8hgUqvUDEFcX021zqtb65XIRJdBwYlCQEQo=
X-Gm-Gg: AR+sD12r4dTCXaIZ5A5jyeiUBO8G9koYPU8olGHL2yDZJ8z8EvLP9oqn9ayVQZJN3e9
	rONOFewxAMw6YE1x7NtCOmd7EBwrXM/8zO6EsHMSBp49VToOwcaUqebn8R/6czYy9VZbyu964lR
	P7+0WOEA8QYct65b1q+FqR5MXYmGVsKxJN1l9/mNTme8hbDjGpPbYKl2MGqIcO4NCsQ7SqvW7yB
	gpK9e/0GigZaaU/YqAOLsXUvq5uHN7DL8wXIL7LF+szi4R/FTKecPfXXjXZ73jxkV3EEmUwXLoH
	qci3CNvi8KYjXeZDwb7TPieo5yAQ9QVECAKrkVnl5RSx8Cmk+o7vSA+29s/iNzyjWtumVmN85Q5
	2nmBDUd09YadjCnoYActE+Wg0Z6FwrdbcMR47nXYqEWwNB2k9ioBrVx5QisLZ988R+1NHQWBHiL
	Bdq87dxr2+jbEtQoDZ8uzZhT55rIfajG5rpx8g80vxt3GUiBweHzIASVnE4APLb+NX8Rla6r1T/
	6+jVqg1oNRLfGqQEchUv7RsYmXpK2VAqp5uI9rITt3WiaBP4Ie95IL/XbbaNg==
X-Received: by 2002:a05:6000:4a0b:b0:47f:9759:7f0e with SMTP id ffacd0b85a97d-48152c55ed3mr5806022f8f.7.1786533548090;
        Wed, 12 Aug 2026 04:19:08 -0700 (PDT)
Received: from localhost (p200300f65f017104d1b8d865063c5703.dip0.t-ipconnect.de. [2003:f6:5f01:7104:d1b8:d865:63c:5703])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-48150bf5f0esm6308468f8f.4.2026.08.12.04.19.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Aug 2026 04:19:07 -0700 (PDT)
Date: Wed, 12 Aug 2026 13:19:05 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Mark Brown <broonie@kernel.org>
Cc: ksummit@lists.linux.dev, Thierry Reding <thierry.reding@kernel.org>, 
	Breno Leitao <leitao@debian.org>, linux-next@vger.kernel.org
Subject: Re: [MAINTAINERS SUMMIT] Any feedback for -next?
Message-ID: <anxTFWS4KAMqGNGT@monoceros>
References: <1025da50-3e21-43c7-a761-4f65ed5e5069@sirena.org.uk>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="26nzh2zlm5zbxdqi"
Content-Disposition: inline
In-Reply-To: <1025da50-3e21-43c7-a761-4f65ed5e5069@sirena.org.uk>


--26nzh2zlm5zbxdqi
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [MAINTAINERS SUMMIT] Any feedback for -next?
MIME-Version: 1.0

Hello Mark,

On Tue, Aug 11, 2026 at 05:54:59PM +0100, Mark Brown wrote:
> Any other ideas?

One thing I recently wondered is if it would make sense to not merge one
tree after another into the same tree, but first create pairs, then
merge two pairs, ...

So the resulting history doesn't look like:

*   4c0d3bb911f5 Merge branch 'E' into HEAD
|\
| * 43c281fce114 E
* |   13879e35a4ac Merge branch 'D' into HEAD
|\ \
| * | fc44516d50b1 D
| |/
* |   7264b63a7026 Merge branch 'C' into HEAD
|\ \
| * | 16f2802060cb C
| |/
* |   5928d0287cf0 Merge branch 'B' into HEAD
|\ \
| * | 793fdef4e4e3 B
| |/
|/
* 1e7199adfd77 base

but:

*   53dad0ca9b44 (HEAD) Merge branch 'B+C' into 'D+E'
|\
| *   54d327c589e7 Merge branch 'E' into 'D'
| |\
| | * 43c281fce114 E
| * | fc44516d50b1 D
| |/
* |   e75826f69561 Merge branch 'C' into 'B'
|\ \
| * | 16f2802060cb C
| |/
* / 793fdef4e4e3 B
|/
* 1e7199adfd77 base

.

The advantage is that if commit B breaks something there are less
intermediate trees that don't contain B and you can still test on e.g.
D+E.

I'm not convinced the advantages outweight the additional effort, but
IMHO this is a bit similar to the request by the filesystem guys to have
a tree with only filesystem changes.

So this is just an idea that might be worth to be thought about by more
than just me.

Best regards
Uwe


--26nzh2zlm5zbxdqi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmp8VqYACgkQj4D7WH0S
/k74rQf/XATSq0OIpLM9cJzDG+3OZ012nb5lNjJ/DnvWKWXHIaoS/pZGOvtoFWtE
h1SgImA5a334T0E0xoWIkHP1hDDoCRPrWm2R9ZBA4AV4uGg0TDJEPIL6wybfs+kg
ShLAHKdg3ul2CwJ09vF/qiRwR/UnQh3tWdfz+C60a/HU9fAtRy2oObu3J8O8aXIK
yKFsbi6JvAImAa1xfWFVR8Io1OlFr5o3YHrkVfERNHZIsGnOGOKptwWgUa+gCD1+
AOzlHNdTx+Jk7y9GIqDcD3sZyOQ/JK9DVWcv/qPd5uy0PmxnEBTTyywOyNpxeKHZ
YoxohZNYZb6dk1ky4ax1NUlVZAsCJQ==
=FZxn
-----END PGP SIGNATURE-----

--26nzh2zlm5zbxdqi--
