Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=74.125.82.181
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1794467232;
	b=q+KG0APFmZ3XmzbGzuQSn/bsHzNr+WpfhfQsBHXQR/mNmGJQeZk1HpShOqZynxHxddx7
	 gtvtRy3uGY0lGN9uIbl1K0ZlGzeRdcX2nAv+Dbu7qvcmFT2vt4hryBP2ZN7W8exFvOfIy
	 kXQVbW+i8fxa4ly3UXPvPDKvuJ0ItjLT49qaocT06Pk0h5KmAzyE6u6WdF17vWWZipMuw
	 7KYw9e3ZLO2Sep7iYJwEqRDHUo34YGQUS/1kJ55xLdQMO2iNmohkOyId0D8pjRjHkezr4
	 n/KlbMeR4lymEa3TXEUq6Kkt4pbm8aQJRIz/lSEdowgE3H1bezno/7g06Ahi6XHsbwA==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794467232;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:
	 MIME-Version:References:In-Reply-To:From:Date:X-Gm-Features:
	 Message-ID:Subject:To:Cc:Content-Type:Content-Transfer-Encoding;
	bh=fKnVCHN7E/hSBh2v2WAaZgbrM1NIrcwDb5EE6y41Z7Q=;
	b=HMHJvpbjJHc5Vunec6VrU4K9pnLJLJvXJFytjnBlZLyzWqqT1d3yrFlAUaVw7vR0uIMc
	 dlMj2sDZkiTk/0bMqWy+bl52jkfBjX18fIzTfZalxc8zsg2E7N3hcxMrCveZiiYRNF8Y6
	 TTp9fraiyJZaphWPH5ixHKzpjaC3WrTmS1ZBTBtyV3w73QoEdGUDWHcT28glq1Ak8mnlW
	 irrJIfLkEwuDYamhDbyQK1HgDuvstitMu67t11kGlL8pIOmJfrLznLglCQxNXYbh+sB4Z
	 NKsJy38jFg0SYN9YwvXQQDKL7DFpnJdB3wXeYm8MdJwJsqXd9YQT/6oCiuYj7C/BYsg==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=QGdTxm1f;
	arc=pass header.oldest-pass=0 smtp.remote-ip=74.125.82.181
Received: from mail-dy1-f181.google.com (mail-dy1-f181.google.com [74.125.82.181])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEFCB606A323
	for <ksummit@lists.linux.dev>; Thu, 12 Nov 2026 07:07:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org BEFCB606A323
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=QGdTxm1f
Received: by mail-dy1-f181.google.com with SMTP id 5a478bee46e88-36e90071735so221835eec.0
        for <ksummit@lists.linux.dev>; Wed, 11 Nov 2026 23:07:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1794467231; cv=none;
        d=google.com; s=arc-20260327;
        b=CeTb58NLZixwjcawMRekq6XowU9O9fI9NNw8AoRWJrPQgPQGgajSmDsntCKvaPKz5L
         b/BKtAyAMt+RNKbU3t9Y5UPiFQYeztZG8DZwHbZy5pvkyhKMCJCE9ZEt1sYRIjx19lwM
         S01rLWy0z0AbAORdbtX7W4D8az/VKEFEVP9LHemeq7Nycd6BCys9Azrk4qZQMeG3t9a6
         19RXoCxh5e8WZIQey4NvUWTbR79PnVnIL1Gc6At1mJAJMZ2ddKq+Un1RF0MV01IjbE3Y
         c6rPfYHCZVJcEzVgFCn13fxlJJn94dWjRd03PZ9d0aq4WtqVxEi+b2BfeR+5INHKICUd
         OicQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=fKnVCHN7E/hSBh2v2WAaZgbrM1NIrcwDb5EE6y41Z7Q=;
        fh=q2YwpdcjZQcUSf1tUk2hwRE6K+oHVv+30l2JbeWEU0Y=;
        b=i3fQAzXID48xb0pKkIrEn+tS9Iq52Rl33eOErxC1ODFSIK4pD3LkRY3MWpIPa31TSg
         ct7/ZGopgqYP/yGKxJDvjxyn7yQAVEYcJzAMHppaBeopzi3boPTHEPTXxwvApyIGs3nc
         X6RAY992sQkCnuK7JUxyBwbcdia2hw3shD4c3dswMxPFa+4S72FVgbwLOFnBqfK8VBDC
         sFBcTzZD/n7NNWdj5UXr82jd8bSXJ4ffzfqIFnb+ensgKaUo9X8QfWHU5bRMr/Gbt/bT
         nYXKYwTCzkTNfy17Y3rnr52DnSz+3r7w6VLGBEFpr3QpK1oT/wRzo3Xd9/A9KP/czBag
         +bbA==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794467231; x=1795072031; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=fKnVCHN7E/hSBh2v2WAaZgbrM1NIrcwDb5EE6y41Z7Q=;
        b=QGdTxm1fC8xWeEsZZ97DeEsLxMhgDVM7IRMHp/G98CZZTBeFaOijpVQOdXOrYDXHBK
         au9J2qOjaZaR6kDjIOTUvM4snbd8a8WUrSXVca4H0Q2GWLBQj4McJTmUIbP3oAT3/4im
         cuJkS5D+eO9/IlWT2symVWovftgTUKJyk2SxtdekTOXslNUzqYS/3oarfqGa5q12htRz
         9yqMEhL4bA82NK13XKaiV3O/8s85lN7cvTteDsOEgIE6JUbwN/+n93BluqAJYRER2l3E
         QXjZ/DKSFIsnt+CySfO8gTILEn9ujiztQ+LdkndsIyQjb3jOwIocH/8Bpb+2BXKlk+QJ
         hQ2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794467231; x=1795072031;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=fKnVCHN7E/hSBh2v2WAaZgbrM1NIrcwDb5EE6y41Z7Q=;
        b=cJ++0M2c5LZ5M3/C63nNRLcy0vjrG+bWTPURyUq73cy5uPjIc7oyJO3Prct6tUgybt
         wTHk0pO+xIhoF9GEwo0mYrdXaTM2rhYWzyJeB1x9hfGZ6wdMi71oVSgHWwplMFAuLvna
         Catt7y5VaQzOx5Y93EGCAuwBscVG3S/AhDSSTQbp38rX12m+ieqwSthQO8bZ9WlAZ3WX
         WJ7mhTu4EZNMC8r2ou1vobXrm+Kv7jLX21J+WaZtv5+9CRI8AoadwyaklzqCePxrslN9
         9cwGgDgtVe7YgTvDHntL/W6Nghyec4E0E5Hb6FSSDsY160+UO4RKAW2vBfRRqoxHQzuC
         gPNw==
X-Forwarded-Encrypted: i=1; AL+hErHi3eMp1JpBohoySHlus1pZpEjfpBEKBLh+HE42BCTFumDv7/bI1JRl4kqc4o59183jLC/V0N7O@lists.linux.dev
X-Gm-Message-State: APuU4Z+iSB/sTq/6QE1mBeJLo8EogFmCItm1efgjJGGo8aAsISWYV55I
	NVLstfxv2KydvNkPAAUCekl1Eiv5dn85cwdLWy6YtNFqEU49nUhIur2fsWVJoS+tJbkpPQNl7Gy
	Gfx1Cp6vzctC6HrlYOwr8l7C/DwrnwPU=
X-Gm-Gg: AYBFou12OyEKoMndZ25o3d4CLnQWiwKRSALM1bwH9SzeX+mlCqyfJfSkJWE7JATODL0
	z/UVCadcqcW7FiQEaSbmZRFIX6ZEAVSZinbCBqnwpyrjQbochnI2O8FQagd1OlHHAOQS8IQkjFC
	V2xwj857tgVa0MpsH5TO0VBcBkBmnzBl8gqoTdGdeJP7aQazs7Se0kz64sg220LdOqIHsa1dsR+
	GOX1HFLSlUjtAhnkrEoVzv/QbjNNgTEJECLqgB5hvgfMo+8LYTPagjjZOlundnNzlgm5fxut2UB
	8AzEORwdIDmyqCjX9jauv36LOvNfk8iQvSbWe10U8AUUoQondi/nTVwDuSA9BwJSVfLdvPqMz3e
	jeYoxRADwA0HUibI6QBIyzSQEgegYHcGWPIPRmj/Wv3+tQzuan+aThQ8BJBP2FNW9uuiQCQRz0n
	qNBNAvC9gYGtEGMN2u0A+iev6RuDfgnCOV5gAHMzfFZ/BM4Dda3S9q8C16yap2FTKCECBpkDV1B
	lNsut6eWiWASZcgqgEwRgQLs3w0iRQFNV80w5FAIK8BPhHdfMftOEOA3p7+msXZWG4XbmbvSpmH
	jRmX+BjeDLwXY+v7
X-Received: by 2002:a05:693c:20cd:20b0:375:f846:5b3f with SMTP id
 5a478bee46e88-3767fe8f34bmr7678043eec.0.1794467230848; Wed, 11 Nov 2026
 23:07:10 -0800 (PST)
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Post: <mailto:ksummit@lists.linux.dev>
List-Help: <mailto:ksummit+help@lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
List-Owner: <mailto:ksummit+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
References: <20261111225940.1573565-1-tytso@mit.edu> <20261111225940.1573565-4-tytso@mit.edu>
In-Reply-To: <20261111225940.1573565-4-tytso@mit.edu>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 12 Nov 2026 08:06:56 +0100
X-Gm-Features: AclHuK-0Vjsbk82ppS8gYU_c-KZHXRP49X84VVchA17Y0XwPYJKcU9nKf-NQksU
Message-ID: <CANiq72mNefHqXnfy_mh_kyRT0SfM8rLj1kRnc-Y-qmdaDq0nvw@mail.gmail.com>
Subject: Re: [PATCH v5 3/6] agents: add a skill to determine stable tags
To: "Theodore Ts'o" <tytso@mit.edu>
Cc: workflows@vger.kernel.org, ksummit@lists.linux.dev, 
	Sasha Levin <sashal@kernel.org>, Bradley Morgan <brads@mainlining.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>, 
	Shuah Khan <skhan@linuxfoundation.org>, Randy Dunlap <rdunlap@infradead.org>, 
	Mark Brown <broonie@kernel.org>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Leon Romanovsky <leon@kernel.org>, Konstantin Ryabitsev <konstantin@linuxfoundation.org>, 
	Thorsten Leemhuis <linux@leemhuis.info>, "Michael S. Tsirkin" <mst@redhat.com>, Kees Cook <kees@kernel.org>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Dan Carpenter <error27@gmail.com>, 
	Miguel Ojeda <ojeda@kernel.org>, Alexei Starovoitov <alexei.starovoitov@gmail.com>, 
	Julia Lawall <julia.lawall@inria.fr>, SJ Park <sj@kernel.org>, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 12, 2026 at 12:00=E2=80=AFAM Theodore Ts'o <tytso@mit.edu> wrot=
e:
>
> +Read Documentation/process/stable-kernel-rules.rst. It says which change=
s go

If the LLM is going to read the file, then I wonder if we should just
clarify this (i.e. the list given below) in that document directly (as
a guide, i.e. still acknowledging that the stable team decides in the
end).

> +Judge a change by what it does, not by how its description labels it: a
> +"cleanup" that releases a resource on an error path fixes a leak. In pra=
ctice,
> +the stable trees take:

We are adding Rust soundness issues to `stable-kernel-rules.rst` [1],
so if we are going to have this detailed list here, could we please
add a bullet point somewhere in this list like:

  - Fixes for Rust soundness issues.

?

Thanks!

[1] https://lore.kernel.org/all/20261020163358.176088-1-ojeda@kernel.org/

> +  the code it changes. Otherwise, if the Fixes tags are unresolved, so i=
s the
> +  stable decision.

When I was reading this, I wondered if "unresolved" had a particular
meaning here. I assume it is referring to the output of the call to
`find-fixes` and how that affects the output of this one. Perhaps
something like:

    Otherwise, if the find-fixes skill cannot determine the Fixes tags,
    the stable decision cannot be made either.

is clearer, i.e. being a bit more explicit and using the same words as
the last paragraph?

I hope that helps!

Cheers,
Miguel
