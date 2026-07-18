Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3D803D1CAE
	for <ksummit@lists.linux.dev>; Sat, 18 Jul 2026 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784391359; cv=none; b=h61lhUOmavB2Fb/+V3MROhtd8rjnUbeyHt1Wk5y74vC61lWsnznT3RGwZxeF+MfqyApcBm69Vwb2dHu5SNbCrsTZ2pXS75zy5IU0+R3DzxwrmT3+/2AQk0J3nm0Nf5cRm0ZZWKgGfP9j/RWB5naoRv5NhS0HXOqqQj0i8E4uGXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784391359; c=relaxed/simple;
	bh=mZW4f6cd6b1pGOmEikO0yalD6KQWpLA4oqeapyaECLo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dThBD4Xxw3ieNHEnUUCfih+oyLbupSz284Q7QAowfrcMbDuQQBzXn0ViSg8Cjw4qaI02zpId2QNpXDcLionGrK1XxrXkad9DLeA9X7hbW8E0ilyKoyRBdqdQT2jtrlX+Mxrd5H8hB/MI18b55SQFHihvnql5YcaRtM4FO8vFNFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nBalUNwz; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nBalUNwz"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F5341F000E9;
	Sat, 18 Jul 2026 16:15:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784391350;
	bh=bsrwJUPA9rqLDM9LG5/fTiWbprEu0ff/qCpjMd2Qe3M=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=nBalUNwzgfR78dp1AOQJc1rj8SakCeb+Xd4kBLIf7j/TuzvllDB83XrUanmMRidtg
	 cJ1tJOCb8VWJqeD9a3RP3z7rLQmyzBBE8omqGP3DEhad7bE3FhkhEeaOY/7yl7hrkC
	 fGf0nh5gj1MVYvpYPabyBZpsat7wtcixhIKrlqri1xyKsVC3FDUeX9ktMjI5ZcuHL0
	 obgdhV4X3L93AKChM1tR+/73EzK/KwIek/rpNIL6oZM/SCgHvdNIK1Kgeyj8JxiXYK
	 Hpy/+xXyoc9Oql4XXKoa9PHjjlzoU57qzSvkw1Q3JPKXUD9x2ZmieG3PK8K7Cg14Yh
	 gTKUVE8/z0SOg==
From: SJ Park <sj@kernel.org>
To: Guenter Roeck <linux@roeck-us.net>
Cc: SJ Park <sj@kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Roman Gushchin <roman.gushchin@linux.dev>,
	Jason Gunthorpe <jgg@nvidia.com>,
	ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] The place of AI code review in the Linux Kernel process
Date: Sat, 18 Jul 2026 09:15:41 -0700
Message-ID: <20260718161542.82772-1-sj@kernel.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <efdce5c5-13a1-4dec-9823-bb2a37084538@roeck-us.net>
References: 
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On Sat, 18 Jul 2026 07:14:02 -0700 Guenter Roeck <linux@roeck-us.net> wrote:

[...]
> I do not expect patch authors to fix pre-existing issues in my
> scope of responsibility, though I appreciate it if they do it.
> I actually asked Roman if it would be possible to add a per-subsystem
> prompt to Sashiko's reply. That would let me inform authors that
> I do not mandate fixing such issues.

I agree such customized review could make it more clear and helpful.  But I
also concern if it could make Sashiko reply unnecessarily verbose.  Especially
when a patch is toucing multiple subsystems.

In my humble opinion, it is a common sense not asking patch contributors to fix
pre-exising issues.  Of course it depends, but that's what requires and
deserves additional discussions in my opinion.

If subsystem-specific rules are really required, maybe we can use subsystem
maintainer profile document?  For example, DAMON maintainer profile has a
section [1] for AI review.  And I now realize the document is quite outdated,
though.

[1] https://origin.kernel.org/doc/html/latest/mm/damon/maintainer-profile.html#ai-review


Thanks,
SJ

[...]
