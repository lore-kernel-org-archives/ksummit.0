Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8E463DFC8F
	for <ksummit@lists.linux.dev>; Thu, 23 Jul 2026 07:13:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784790815; cv=none; b=rDNg/onrOEzBY7t51IvS7fx2ov28CbKrSEHXxQbs5z87fvZ2wlxvQdLxLdhJ99wSTLUc5IitfPrWTfSH9qcoUnD/zJ8jegKLHCZFDo9RJzknCdNrqtBNFlhLWNA8M7HrBZyqTaNOLoPD0cxO/Yt+3LnPcMGL/gOu/HUUW91OyGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784790815; c=relaxed/simple;
	bh=RuWfkEE8N9tqqvw+I/epYiDfem7EcFhnfKYuAq8p7H0=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=TZ4aC1nboUWtHLRaReS5R/09xVCQJ0RvIWXzKX4ES/mtiyjTtQ3M+sTt045VGed9hnK3WehyQefo6bncgWQYHYFczvATR0x9fBBM54Hfd5byc9ydIM1644ZxT2rdVLJ4i/Sq5powlaAQts6TyG8AahhC3PiR6ospE426X2iwRF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T6EJUVbK; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T6EJUVbK"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73A641F000E9;
	Thu, 23 Jul 2026 07:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784790814;
	bh=RuWfkEE8N9tqqvw+I/epYiDfem7EcFhnfKYuAq8p7H0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=T6EJUVbKGqvrbwi1Ylvfd55gPVV9KtDeBQI9zruF6z2Zvj7t3ZTcUStCmxjQ17Khk
	 usLd3DArXZYmF2lSWvAOtyZcbNPs9TtXrjdAL2hGuxnH4t6eZayJk00nXX9otTXCBL
	 xmV7N+/zR4fVGeaC4Cyd8h/1vMB+XFX0lw92c5YQFkBCiQVbZ9/UMSfxOgJzuYJm2H
	 d6ODLUMIi1b9c4XNAqyLchlR+BysRj0G9D+ea0tVpCyVMtB6pe896T3q80A65Fx7U5
	 p5AdTPQSneeSqDWIW7+bYymLdvHX/gTXPvWw9HsngrNQ5upca8KNK24B1IQ9qOrtb5
	 LmPF7MWAstG3g==
Date: Thu, 23 Jul 2026 09:13:30 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Roman Gushchin <roman.gushchin@linux.dev>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] The place of AI code review in the Linux
 Kernel process
Message-ID: <20260723091324.18f434fc@foz.lan>
In-Reply-To: <78346752-E2AC-4ACB-929D-70A45794474C@linux.dev>
References: <9e10dc4f-5d5c-4c20-831c-9137e719b337@kernel.org>
	<78346752-E2AC-4ACB-929D-70A45794474C@linux.dev>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, 17 Jul 2026 14:14:49 -0700
Roman Gushchin <roman.gushchin@linux.dev> wrote:

> > On Jul 17, 2026, at 2:05=E2=80=AFPM, Krzysztof Kozlowski <krzk@kernel.o=
rg> wrote:
> >=20
> > =EF=BB=BFOn 15/07/2026 18:55, Roman Gushchin wrote: =20
> >> * Prompt development and testing.
> >> Currently, prompts are maintained in two GitHub repositories and are
> >> changed manually or with the help of AI coding agents. However, there =
is
> >> no established practice for testing them, especially across various LLM
> >> models. At the last LSFMMBPF conference, there was a discussion about
> >> moving them into the kernel tree. I see some pros and cons to this
> >> approach, but the ownership and testing models are not entirely clear.=
 =20
> >=20
> > Prompts in a meaning how to parse kernel, work with it or produce
> > reports: yeah, sure.
> >=20
> > Prompts teaching kernel code: I don't think so. I find it really
> > incorrect approach to create a dedicated and duplicated basic knowledge
> > for LLMs, instead of focusing on knowledge for developers. I understand
> > that LLM has to be taught basics of C [1], but we should not duplicate
> > kernel coding style or kernel rules into LLM-only instructions. Instead=
: =20
>=20
> I agree.
> I also experiment with Sashiko auto-creating prompts based on human
> feedback in emails and initial results look promising. So maybe we don=E2=
=80=99t
> even need to write too much manually for LLMs.

Sounds interesting, but IMO before activating such prompts, the best would
be if, before applying the change, it would request the subsystem maintaine=
r's=20
approval, presenting him with the review diff without and after the new pro=
mpt.

Thanks,
Mauro
