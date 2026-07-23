Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 875C2352C28
	for <ksummit@lists.linux.dev>; Thu, 23 Jul 2026 14:59:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784818784; cv=none; b=MuwDVA1t1B+I6UJpNKHs+4beLpPi/qlaooWZkpQ9QdZvX2xMEW14AgP7/6V7Cmmoky5qAzITbF9XPaiIpmBf98ApZnJBgudB/YWO5eXJlAlPTSmb4WSftgYw+YuYqoatsIJw8DwkXv8kJXJNStbYAv4hKxl/mdhbwUYn6W1jGrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784818784; c=relaxed/simple;
	bh=HT7Y/xuS05LQj2YBIgNy7W7JgXjqTZ7GwXcekMeBFLw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZRzQLj90iiN5WhkfrJFZP3H0SX7zf2qho1zbKWFyiVHb4uj99IAgJ35ri57qlo0OWs/85jkcdh8U/KcujWkXR3dODpf0wn0j2+QKhAqw3V0bL7+gOlAOP1hmLjBxENMvdscVmbtRWs0PSNgTG3MATIBqiupCeewWSQMQJdybQ1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CEA231F000E9;
	Thu, 23 Jul 2026 14:59:41 +0000 (UTC)
Date: Thu, 23 Jul 2026 15:59:37 +0100
From: Mark Brown <broonie@kernel.org>
To: Guenter Roeck <linux@roeck-us.net>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Roman Gushchin <roman.gushchin@linux.dev>,
	Jason Gunthorpe <jgg@nvidia.com>, ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] The place of AI code review in the Linux
 Kernel process
Message-ID: <4d27a17a-ddd9-49c0-8d6c-e044b28ffa0a@sirena.org.uk>
References: <7ia4qzl45h20.fsf@castle.c.googlers.com>
 <20260715185757.GA191552@nvidia.com>
 <7ia4pl0oymo0.fsf@castle.c.googlers.com>
 <CAHk-=wjCcHUr=-Ycsey0khWnn68O6D=ZN-bE+8Sq4NetXpFuPA@mail.gmail.com>
 <20260718010949.GG1889304@killaraus.ideasonboard.com>
 <CAHk-=wgJZr6n5RAOOWdMcjzQZL3u0fE5qew=o-qSvbey-ui3WA@mail.gmail.com>
 <efdce5c5-13a1-4dec-9823-bb2a37084538@roeck-us.net>
 <20260723084954.42e6a6e4@foz.lan>
 <65fe52a8-d6e1-4c5d-ac74-6c731874db15@roeck-us.net>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oGm/ERDzgHuHP87R"
Content-Disposition: inline
In-Reply-To: <65fe52a8-d6e1-4c5d-ac74-6c731874db15@roeck-us.net>
X-Cookie: (null cookie


--oGm/ERDzgHuHP87R
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jul 23, 2026 at 07:34:58AM -0700, Guenter Roeck wrote:

> Last night I got a patch submission of a ~350 LOC driver. Sashiko reported
> 9 issues with it. No, it is not ok for the author to ignore Sashiko's feedback,
> and I am not even going to look at the code myself until the reported issues
> are either fixed or the author explains why they don't apply.

> It is fine (I would say acceptable) to ignore _pre-existing_ issues reported
> by Sashiko, but I do expect patch authors to address new issues, or to explain
> why they are false positives or don't apply.

> If you want to give patch authors the option to ignore Sashiko's feedback
> entirely, fine with me, but please do it on a per-subsystem basis.

OTOH I had a submitter send 15 versions of what should have been a
relatively simple quirk over the weekend iterating with Sashiko, then
the initial human review was "this seems like the wrong approach".  It
feels like there's some happy medium here.

--oGm/ERDzgHuHP87R
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmpiLFgACgkQJNaLcl1U
h9C6Wgf9F241ZNLX5g+Ft0E4yPUOHVoSU2Rwjb+MJdOpcFmup/6HCDQV5qU6UCdb
gKH/EHljfGrcX1DY1Gbz6N5Y3zPl475829U2k9QDcEAxOKsyrO+qN2aocUpJb/M5
P7lYWqY7esf4ZaqHqRY6kSvnMAK+UloBztir6Dw9fyUOgyBywecrpXxQnra9Xtvh
0UDLAXpKTnWtF8uUBUY6bEF8xwlCjxNIgc607BGBFeXsprR/jvkmyTsEXicIMUBs
vJ4l6jfkSzGGAErKJxwfbvdwpqHrX4b7RCncVyaTovo3MULVwvTBHT7TZG4QFu2b
Y+y/++P69j9qTNGRfGci7C2ANh71JQ==
=oZFC
-----END PGP SIGNATURE-----

--oGm/ERDzgHuHP87R--
