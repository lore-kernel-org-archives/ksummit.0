Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C01433A9CF
	for <ksummit@lists.linux.dev>; Thu, 23 Jul 2026 06:50:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784789416; cv=none; b=NBw7yrCpqihHG6U4qgkNlLsoFnyKe+kcjObuMLsuG7Mdwf2sh//zBdaYlh4JmvGA/E382mTGLQ9b94EZobPwLUsHIojiC0LsCfQJnE+UDra0ypJFeWR+a5tRLdQR9UD4gtdc2KcLe+jcuRLWvcekIuPm2OS49C+a3S3KioNDeTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784789416; c=relaxed/simple;
	bh=rbv5ul/yJpTeNmVNTpmmMrtKq6ccNU7BnDhYaY6igho=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=JCBrl3PT9rReHhm+u5ksyfDGgbqNQuEsV9wMntrkkPSpF8c5yX9sk2aER7nIqnqALBPypy4Jdt2Fri4tKqHCHkTLssb8KaqkI6I1xN9OURvhCIu0sdIrs+EIQlpb2oTUFpB6fQuO2d4olN/tkUjVfY9JjSk7nCOHQ8e3VDqKydA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ddIvDMtE; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ddIvDMtE"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 547DF1F000E9;
	Thu, 23 Jul 2026 06:50:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784789414;
	bh=4Py/01sgYySqGqnGTMO7VcE0HSFxCxCsDVHAcLJVXl8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=ddIvDMtEYRv2TmIh+5PNK0aVC000HViDzBUX+9DRD5hZJAS0ZBMIYkm7ohybjbZKS
	 HnwFdcX/QClldMV7csP72ZuqkYT5C0LmExA226iemK7z58BJwZqQhJk0e26oPcZ1wO
	 W4RltCwAhgS5kgW7ZVNHdLbQWPce5kwOP0ZdKCOTvKsVJpMI9Ip2sJydM7tfwD1DcL
	 uc6lOQzVSOkx/PijqqOeUgLTbOQRnFh+2vRGV2d1c/NGgRiMBZuwY520oTMiQ2R1M5
	 1xZqnlvUBKGAifCMl2h2wW4QduKZdoO1S+ySz/hn9JJM6Im/Fd58H3Om8LmzenUPiq
	 H/mW8o7Z5rHew==
Date: Thu, 23 Jul 2026 08:50:02 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Guenter Roeck <linux@roeck-us.net>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>, Roman Gushchin
 <roman.gushchin@linux.dev>, Jason Gunthorpe <jgg@nvidia.com>,
 ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] The place of AI code review in the Linux
 Kernel process
Message-ID: <20260723084954.42e6a6e4@foz.lan>
In-Reply-To: <efdce5c5-13a1-4dec-9823-bb2a37084538@roeck-us.net>
References: <7ia4qzl45h20.fsf@castle.c.googlers.com>
	<20260715185757.GA191552@nvidia.com>
	<7ia4pl0oymo0.fsf@castle.c.googlers.com>
	<CAHk-=wjCcHUr=-Ycsey0khWnn68O6D=ZN-bE+8Sq4NetXpFuPA@mail.gmail.com>
	<20260718010949.GG1889304@killaraus.ideasonboard.com>
	<CAHk-=wgJZr6n5RAOOWdMcjzQZL3u0fE5qew=o-qSvbey-ui3WA@mail.gmail.com>
	<efdce5c5-13a1-4dec-9823-bb2a37084538@roeck-us.net>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sat, 18 Jul 2026 07:14:02 -0700
Guenter Roeck <linux@roeck-us.net> wrote:

> On 7/17/26 18:17, Linus Torvalds wrote:
...
> > And I think that when there is AI review, people are less likely to
> > see it as a positive thing when the AI then points out pre-existing
> > problems.
> >   
> 
> I agree, and I have seen that pattern.
> 
> I do not expect patch authors to fix pre-existing issues in my
> scope of responsibility, though I appreciate it if they do it.
> I actually asked Roman if it would be possible to add a per-subsystem
> prompt to Sashiko's reply. That would let me inform authors that
> I do not mandate fixing such issues.

IMO, instead of using a prompt to add per-subsystem instructions
is a token waste and it is prone to errors, as LLMs might fall
adding it or and modifying it.

A much simpler approach would be to have something like this:

	https://github.com/sashiko-dev/sashiko/pull/364
	(build-tested only)

adding a body prefix on the top of the e-mails, set via sashiko.dev
email policy.

Thanks,
Mauro
