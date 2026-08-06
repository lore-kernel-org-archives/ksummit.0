Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 826FE3D88E7
	for <ksummit@lists.linux.dev>; Thu,  6 Aug 2026 21:14:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786050878; cv=none; b=IaQV/JTtkZH6imKjt53FfTVFkBUEfzncGVuJcA0L+kwWLKHEXJ4eu+q370iXcmYH2evlURzMlOOxTrfwfdgcSy+jfr8+T4k42Ea8GKDNErcfmXuLCfoPmKAoi62ycSsPQxXPa8MI2syTY0dJScVHC9o8mhVCP4HjFnLNzVkCWbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786050878; c=relaxed/simple;
	bh=ac6RZcTzsI4Gs25GuGTUAJU8qHjSHt7mWU79d/MSV2c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gDEZVw2mhHYyX6tt4xxG5RDvs88WcHypJ1fh8xeuMGq8/6ksH4ogkf1q3MM5m1EN9R/BbQt/RpWGtYcQ0cUKkudfgwiT4AbJ7pRFjyJ7LZCYREyfiyi21jK85yBgmXbZeIDcW9iQSV9VroMwjI1ef7htIa2f1a/6xao1o9H0t1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I2hsTaTP; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I2hsTaTP"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DAD411F000E9;
	Thu,  6 Aug 2026 21:14:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786050877;
	bh=3jlICewDkRp6aOAGKdbzw89x2qvlv4PFnb/rp5x8fTU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=I2hsTaTPw5BPJRTEbeSrb/Lh6s9D9d8veZKAWA8WTS2YxoiWmEpCxHtMcz3vrZx0o
	 er6jyKfXCfhtZJrKxgb2EMy/m1jsk9AGf8ztIgmcczeGll3zObjyB80SAqt4EfcKBi
	 dSlUJNPFxfAvnCwcNI1G1hzO0kk+wpyQaTevN+Gbr/IuSe9T54Q61BlKHS8DguRMqi
	 eLkWfXIPWiCVqhBPdsBLjEX0SeI8KzabSmVigGajZ+lsrQKuKWbATKW2bjpT0JspMO
	 ++6uHTPmaqOA8BxDZFHb6mEKQOXel4f6vzwucxBnud5yU2x+VIescMaFjRLJWjcYYr
	 CZTey2FAqL6Bg==
Date: Thu, 6 Aug 2026 22:14:33 +0100
From: Mark Brown <broonie@kernel.org>
To: Dan Carpenter <error27@gmail.com>
Cc: Konstantin Ryabitsev <mricon@kernel.org>, Greg KH <greg@kroah.com>,
	Theodore Tso <tytso@mit.edu>, Jonathan Corbet <corbet@lwn.net>,
	ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Coping with the new-developer flood
Message-ID: <021a85e0-fb3c-48b6-bf13-78e0267aae05@sirena.org.uk>
References: <87y0ekm9nw.fsf@trenco.lwn.net>
 <anSpoxZ9SUBvFOZj@mit.edu>
 <2026080651-bony-hertz-bfb6@gregkh>
 <20260806-industrious-whippet-of-jest-a91eaa@meerkat>
 <anThWLhqipEM34kg@stanley.mountain>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mSrtPG6mt/58Mxvt"
Content-Disposition: inline
In-Reply-To: <anThWLhqipEM34kg@stanley.mountain>
X-Cookie: Brain fried -- Core dumped


--mSrtPG6mt/58Mxvt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Aug 06, 2026 at 10:32:40PM +0300, Dan Carpenter wrote:

> Most subsystems take patches against -next and backport the Fixes.
> A couple have a tree for the -rc branch and want patches that apply
> specifically to that.  These are net, bpf and certain Intel networking
> drivers.  These three subsystems want people to put in the subject
> which tree they are working against like [PATCH net-next]"

I think it's at least as common if not more common to take fixes against
Linus' tree or the tree's current fixes branch and then merge them up
into the development code as needed.  There are a few trees constantly
cherry picking things around but it's a very small proportion of trees.

--mSrtPG6mt/58Mxvt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmp0+TgACgkQJNaLcl1U
h9AePAf/V8zB01okQASKlpsGQg21sZ445J4k03QLuXo55uQvGAC+2FG7Gisd1g2c
Kkh50MQJJ+Xi1nt6NxfQi94mNC5QogBw6DlSYVfddZBJQCiKq1A5aG5cLzxF860T
XJS/xaf8hsqHkndwE8sf98/Q5X7NdkBqCIAysrGgG0HbvjOH6kF/NPjk6kM9go3n
jjPa6vNC8BGiqVkHx4jvECeI72CETO+ZcWvqgQulIJ5SRZ+Yzxq1YnVYwhbQ2Vwa
6pmCPwZiW68pLjO2zYd45/wlpgQ0Ty27mHaAmWrzWS8y8imB1oLYGY6fe2qSdrrb
PHYcaJDGH6hK55UuhmxTyJIpKDRkGQ==
=3CU5
-----END PGP SIGNATURE-----

--mSrtPG6mt/58Mxvt--
