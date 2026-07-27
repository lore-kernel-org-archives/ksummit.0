Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 079EF429CD6
	for <ksummit@lists.linux.dev>; Mon, 27 Jul 2026 17:09:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785172151; cv=none; b=M6Wv0pYUwlxUUA2O/RHcocAHo/SpzHbms5i5dBeBUJSwidCVV8SPlFvkEVPfpsgNSVKoHPbtvdb1wRCpgzPkojAMeKo3NDhsyP0ovaiB+Q047QSSvduSqHAeQIWZTEvF+7SosXYSFyuKXtIPUud8yBP9xawhrAXzi91hDgoANBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785172151; c=relaxed/simple;
	bh=EJcY7NgHNTB41p0NYy04950mL2ID5Oxew8P1hhqHiMQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DoKXBnZlITfLwWkvys4lKzPcEhK4P50JA7imixOWt64bm5oXpQImJWBVDtVW7abpoFz7kjEs+PkhDr3NYm0oIelMTxKdABc8qcBavd9GSJ5GaW4YsvMe12wlPtPwm8v+ecmUntHt4+Vcm3IKsas9rG4vLz1gyfJuorE3z2nFmZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-foundation.org; spf=pass smtp.mailfrom=linuxfoundation.org; dkim=pass (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.b=GL/cMVNA; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-foundation.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linuxfoundation.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="GL/cMVNA"
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-69f7130b47dso5123633a12.3
        for <ksummit@lists.linux.dev>; Mon, 27 Jul 2026 10:09:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google; t=1785172147; x=1785776947; darn=lists.linux.dev;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=L14irmk5nV2LReZgBmtuk742bjDVPIwxfXl+Gs8/dt0=;
        b=GL/cMVNAbPNYrjJvsO1PdgtD9JyRcCJbVT4TLpi6AVCu+EmFTEVt7xbT3vtetAIAWo
         dcAePfKwSfQ4sIa3o7yzvKEXSwZNd/PIbZMsl3TxHTUXByEsZZpZmIVC+Ix86koeGd+j
         Vamj1unEgRkSdMJUpBoPu0oJv6zDBx6roFNXw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785172147; x=1785776947;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=L14irmk5nV2LReZgBmtuk742bjDVPIwxfXl+Gs8/dt0=;
        b=akbMU8+UNgl7tO9wWVASMubcT23O3iWFjHfeYZpSLxaPUV96b3ZcBd0bHpuirZLN4U
         Ejk65fPuaFD44SRAKaUdkCdO6+x9AH4BpGI9ldIMjNmxkvKFlBp+0lc4n+2nsQmq3cfE
         OmmU1JNvWR9ciaRp3YzUzmKLkmBUCrHuyOMiBJLK+IvxwqHlzl2r+fIEjCIYFbV51hI3
         6n7OpmlMrWvAyfIoieS5pcaHb6UhrgqbD0XvUso/N0jszzEQeZc29GCrBC5ZnP/mJki4
         fTAMCRwHWMVlFWDbJlrByi4xPYBRjdlDNKoco/9AnAjGv4aZlGf7lW4F8r4HE9ImLJpf
         T73w==
X-Forwarded-Encrypted: i=1; AHgh+RohaOGfq6P9zod7o9MV2siupShiUvVQnmChkCkblR0pFWe69xhqkQR3F2qOWEzKj1GM4xAqHx/Z@lists.linux.dev
X-Gm-Message-State: AOJu0YwvfGZnHeB40xry9xOqn6cKUilVp5hLmYjTrduSUqFBNKGLIFQe
	R8MXT5Pv/l3GpEZR08lku9O8yvgL6CSO7qrlKa68HhTUAgOzFiMWYf6Iklz+J1iwyKkUESq0IaR
	FDHBeTmw=
X-Gm-Gg: AR+sD130stpW0tmtMYZCUL+Z48MAvViTXaX5+/dkG3jFqwWopod+ElEav9qFiPMRUQe
	lgQs7PMVD5+ElwO77rFhHY5qY2fqSZ/XoUNcRxzEyfoZRz7SQDq7L6GxxrpNW7nAlJnY20PPQJY
	dlHEPBQlgNBH/vN4FIc8yAWBAQetjcfZRI/RQDSQUitmXm/dgPtj3ylMfJviPwSt18YdRW93bwu
	3cojukIIkxy8w2uXMeL8aqevCpgKlhsLsyGHR5kXityy1yVVxUIIs9L+zj/ZsYLEp8qBZ1CM2b2
	Flj3+XtPFTsRSDJbWlvBPnxUI4E/o84wpNLhzYi1FMAy18lLJqRg5KcEUSNaofyoh7rHs9TZvGY
	SHUTbLNq3Etolu9Sk3vlcevc0tqhc4IAuMbkXrfrf2TFz4TLpKf3h/qjTCNXM31+oKP47zVdTby
	ObR+qkmhGM0j1q+EgV1FGbCHt0QTn3ARB4wyeveIPuDPL6W/jV+AQoWE8nWLvDRA==
X-Received: by 2002:a17:907:724d:b0:c12:36ff:6eb2 with SMTP id a640c23a62f3a-c1f1f3c875amr416866166b.51.1785172146930;
        Mon, 27 Jul 2026 10:09:06 -0700 (PDT)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com. [209.85.218.41])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c1c32c90b4dsm667249966b.35.2026.07.27.10.09.05
        for <ksummit@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jul 2026 10:09:05 -0700 (PDT)
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-c15e592da74so326116966b.1
        for <ksummit@lists.linux.dev>; Mon, 27 Jul 2026 10:09:05 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RqRlGk4WlWOLXnly/CE7QKz7l3xzA5nwgNgPHJjRo1LWAoEt2fVcIjCWeTrmBe2Bcc/0faLq+oN@lists.linux.dev
X-Received: by 2002:a17:907:6b06:b0:c16:386e:6b14 with SMTP id
 a640c23a62f3a-c1f1f433379mr414268766b.57.1785172145417; Mon, 27 Jul 2026
 10:09:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <albMUqack9yMq0rF@laps> <241384q7-s5n1-0267-64ps-13r514r4o123@xreary.bet>
In-Reply-To: <241384q7-s5n1-0267-64ps-13r514r4o123@xreary.bet>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 27 Jul 2026 10:08:48 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgy3T=jxMy0kv0T1+6M0ahVbmWcXOwWOZU5efo=9U_XMg@mail.gmail.com>
X-Gm-Features: AUfX_mx-9El7Rhb-S20NNp_tl0l1OQe5fcnE_MmpISWW9hz6nPv9NlzktekzrMQ
Message-ID: <CAHk-=wgy3T=jxMy0kv0T1+6M0ahVbmWcXOwWOZU5efo=9U_XMg@mail.gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] Scaling our security process
To: Jiri Kosina <jikos@kernel.org>
Cc: Sasha Levin <sashal@kernel.org>, ksummit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

On Mon, 27 Jul 2026 at 07:37, Jiri Kosina <jikos@kernel.org> wrote:
>
> Well, linux-distros@ is still there, and is used to coordinate security
> fixes in exactly this way consistently for vast majority of all the
> relevant projects, pretty much except for the kernel. With my distro hat
> on, I'd add "unfortunately".

I refuse to have anything to do with linux-distros.

They have a hard mandatory disclosure policy, which I think is
completely unacceptable. It means that if you send actual exploits to
the channel those exploits will be made public too. There is
absolutely no value in that, and it seems completely crazy to me.

Yet exploit code - or at least a PoC - are hugely useful to
developers. So you do want to have people who figure out some security
issue - or any other bug, for that matter - to include such code, but
that does not mean that it should be made public.

The *fix* obviously should be public, and the commit message needs to
explain the bug. And the threat of mandatory disclosure for any
unfixed bug is a good way to keep people honest. But disclosing
exploits after-the-fact as if everybody will have immediately
upgraded? Asinine.

"Linux-distros - just say no"

                Linus
