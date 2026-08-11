Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com [209.85.221.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153654052C3
	for <ksummit@lists.linux.dev>; Tue, 11 Aug 2026 19:32:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786476745; cv=none; b=F082+VtNovQUlsfaLeN4JFKTypu7piLyEVumu/Z9mTqtphVb/z2rtusE7hCUSfX3ypNsjLwLepWxXq5iRxySCcAA395B8R7wtd0fb9miTjwxzZt19D8pgj+8jJz3DJb2sv1ZPK71+6qWdUokPvTzr7DRvC2u/Fe0EOmzxofISPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786476745; c=relaxed/simple;
	bh=8sXu92IbswWFhdVnXtiUMswKltcBL+HinntoBxpVHYc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gxyi6lhBcb/apvWmFdz689xTa1AeLQDzF4W8tYW1ANylHsEECC8Eib3xOsjxa4JpLupfDfZlJumKHjjgaxQDT1lYrX/rEOj7NfqW876ZjyuaneW1b85Qop3MulC622u2/qtXKwDnxU9V1KAQLsO4R0IeniLKVY31RJDtGWtlaF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-5c276bfce7eso112456e0c.2
        for <ksummit@lists.linux.dev>; Tue, 11 Aug 2026 12:32:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786476725; x=1787081525;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=6dxU6rP+//DIRi/ippTzhmVJSz9UFoWNDvQlc4klwCQ=;
        b=fCmC587W617z5ajAhhnhafs5EVaARnz5QoBK8Kf/XlBVAkLJI7FxkkgZbRRxImtFNO
         8h1/hKwVKifuUTOvYvTGNWZCwc6sV804jjnKUFjVIexLRGzJSe7f5Y2agNG7zPB4qdeP
         WaYMN1Luaibezj7LBjgheqTJVB5SDT8VyXjOFEqUgB9xESYKCv+Zzit6l6ANr6W6DNOR
         K3uR2HgNEn6CrmBnqEvzjb01D14wpVQYJFUtFY8fIkuLTCqrroy0xX4cBgY7E4m0v1qi
         csLHR9CXtzc4nn0qUC/Qg6G/c33/YhPRpTrElpUJhNkRga97h0rOkQQFe8LOZg+GcW62
         ZiZQ==
X-Gm-Message-State: AOJu0Yy3LvRl2T2ZeKPHvUBPJGvGtJFErd2IvVBPPl424GT1CVlGakTx
	7OOGnL+e9XG6jM4DMVjKHY8F9kf+WdD1Y89TRU/jWwZXJr0Fm9DfVShLTFpLH4hb
X-Gm-Gg: AR+sD10zc9+jizRyeOZ2zusj0VP/gNuEIa36JAKMDsuSeG1ghczCIiVrD55SUztUo8h
	BtTFsYzVJyUKoPKcPVACbc/0KuUac6Ml6Sm/REnVDrcERcl1dI8soW956RMNFKsGAaRmIkWHDmb
	G0c2CP04lhFVTTrypaeC4mNGEecWUuV6YvesJ5M4PCWY5akwryIHFyg7JqMDmKvTHRcewm6NpVT
	KdUBEHPXhkGTGrhmxJfbPdRiRyUdjRnBBN97DekeTErUD25K0M4XYCTWBao76971muklfv6yMQU
	QOaAgpRqk42gNVFeIhHbYwnjjDoFbHP5vDB9S6t6BUjJZMVN+9dOVfGTj39Ms8ALTWZcFe/zMEA
	bNWCZlfjlJq5BUry647DQ4JN+dUiZX8utfUW5Gu4/C/fzqSHHXNhRe4SZcibcEBoWO5fsezxZ/q
	4H2V85YyaRBigMtoqkhixWfjKd69QAk9v+3/vePlAe6qWseTY2DwiijMr9u4ALiGX0DidADrZxA
	FDeaLZaA7uoQ013LCkq2havDxHUGa7HseZkSHRP
X-Received: by 2002:a05:6122:488c:b0:5bd:89bd:3559 with SMTP id 71dfb90a1353d-5c4504ba1damr937373e0c.9.1786476724611;
        Tue, 11 Aug 2026 12:32:04 -0700 (PDT)
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com. [209.85.221.175])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5c45b715992sm355106e0c.9.2026.08.11.12.32.03
        for <ksummit@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Aug 2026 12:32:03 -0700 (PDT)
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-5bfa6766cf6so85918e0c.3
        for <ksummit@lists.linux.dev>; Tue, 11 Aug 2026 12:32:03 -0700 (PDT)
X-Received: by 2002:a05:6102:5f04:b0:74d:cef6:af78 with SMTP id
 ada2fe7eead31-76b5598e33fmr1625891137.7.1786476723540; Tue, 11 Aug 2026
 12:32:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <1025da50-3e21-43c7-a761-4f65ed5e5069@sirena.org.uk>
In-Reply-To: <1025da50-3e21-43c7-a761-4f65ed5e5069@sirena.org.uk>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 11 Aug 2026 21:31:52 +0200
X-Gmail-Original-Message-ID: <CAMuHMdW+L4ETtgYtmovtXWDSLuAT82q1PLYn9JwXswH0m5qxKg@mail.gmail.com>
X-Gm-Features: AUfX_mziC06PKWgCBftkgZ_Em2aRuwDQ3gIZrRcp47cIrrphe5thKj2xx_2tvgc
Message-ID: <CAMuHMdW+L4ETtgYtmovtXWDSLuAT82q1PLYn9JwXswH0m5qxKg@mail.gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] Any feedback for -next?
To: Mark Brown <broonie@kernel.org>
Cc: ksummit@lists.linux.dev, Thierry Reding <thierry.reding@kernel.org>, 
	Breno Leitao <leitao@debian.org>, linux-next@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Mark (et al),

On Tue, 11 Aug 2026 at 19:16, Mark Brown <broonie@kernel.org> wrote:
> I was reminded by some of the maintainers summit threads that it would
> be a good idea to check in about how things are going with -next and if
> anyone has any ideas for things that could be done better.  I've flagged
> this as a maintainers summit topic just in case but I think it's quite
> probably more of a list thing.
>
> Mostly it's been business as usual, hopefully I'll get better at doing
> merges as time goes on.  That said the list of visible changes I wrote
> seems a bit long:

[...[

>  - Started sending out a weekly summary of the state of the world -
>    perhaps there's extra stuff I could be adding in there?

Thanks, I wasn't aware of that!

>  - I live in Europe not Austraila which has messed with some people's
>    schedules.

If this is the only minus point I could come up with, then everything
must be working fine ;-)

Seriously, linux-next is working as well as ever before!
Thanks a lot!

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
