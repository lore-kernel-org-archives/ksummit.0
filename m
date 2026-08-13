Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com [209.85.221.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FBC9330D4C
	for <ksummit@lists.linux.dev>; Thu, 13 Aug 2026 07:32:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786606333; cv=none; b=RglJMG7oL1Rdq37U1GHCEtu11zI4U3WIL9WqksEgBNrm25O4mwv8+opG9TnDlYTxneYmnpqAl/Gj9C6ovwxWKqkpE+PHb3Ek7NIapGOr1se6br48Vn2I6EDdaNOCZ33M5uOi1EaOEsMmAMfpa5DKbwUhw/A5TF0FT/vU9eR5ti8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786606333; c=relaxed/simple;
	bh=L6VmV2wHFw6fVMQWJXA+ZVVfLl5QtAuk4TVYMI/hbhI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jJ41/dDbwAjLL4zwt8Fyw5Qy5wjThlBwfB+ad/GandLBk5S2Bks8CQX1cIWfyp3NGUO1jaYMClN8HWFkkOTnsrjuS7dLtdj2DNt2AE+ndVQLu9/+OfORhmZSqtoKCcJt2LImukiFmkL5vMbuinL0HiTfhHsMbwRYPFKLxB7FxNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f172.google.com with SMTP id 71dfb90a1353d-5c276bfce7eso316633e0c.2
        for <ksummit@lists.linux.dev>; Thu, 13 Aug 2026 00:32:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786606330; x=1787211130;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=EQ64i/mh3N/Us8b3ePHrhZ0GoeQMFWgUccEYmGi/yd0=;
        b=UpF90H26rxhOahTAuhxgQYf2iRHIu1RlvucKtljelTbTPWEoe5VHOph6kkVs9Exo9I
         jIPTUUF3bLZ98wr4etNsiQbbWTmNs3oSt/Rd3dJ2WSSkEvq1XxvxTkMwXWvDBNcfrp0T
         g9v35CuC6IeuFzrfsXyWz0Ui7Ugy/BQ3ijeyV5Faih6nBf1l0obrZjfn2dPT8iin+OSF
         DQP/ZQD0SWF1CrKJycRB6wpueVuVRJ8pd67y7yh8j5Ez8KMLdkcvK/74RmTGWpkMmugH
         Q8CkdAeWKGTcKrUovFDhw/8l/1ZzPk4h2iUWYE0Ztf2Iy2HcKVpeCBctBCwaZ19aPIzQ
         uYMw==
X-Forwarded-Encrypted: i=1; AHgh+RoYb6pgdamTsYA4tyzOhTpVvrqn5+2prOz3I/A3dQWMxRZon47tOS11ssMjYZSNPmd4+BqHlGYy@lists.linux.dev
X-Gm-Message-State: AOJu0Yy9avxfOOxzua7nKCIFDC19eXmMiJeDhQO6r3rt66hNiz3MJc8Y
	ubqZpDAoaz1yDMdUuvlp3f/VITrMNlH5ckreYsqovOKx30kpvp6LYV7ZOGiAdE7V
X-Gm-Gg: AR+sD11fgjjH09Sa3I4sTaQQR+2xwTJh3E/xcsH3b+09kcBEpK4G/kHxLyQtJGsFZ1M
	aK4WXAWcLVNadamv8L46RHwMy+Zdxx3oq9WGXRcEZ5zjEQ7ttf4b0jiHZUChrz1zhvBNnhWgFVW
	2Kg1jjVmOj61MbV9g6wNmFQI6RVUI+Ni73trWsSH5PyEXiGn9/ZYiaMmn9TDpSSFAl1nbX/fcPf
	4OTboEtT/bqjVIgPgycJYcoXbJWlZ08WUyNx16iJEgKvjHqEyyfnu8/f1sFOR0567UhmjuU9ma2
	6MOBxhZ2c6l2kTEfkcEqOkFfJI00jIJ5C8VXdqhRdOA3yZfPIMXFAHMU3uVRimXe6y0xUqWw9mg
	gtQPdc44wuGGt1SgRJfysGXRjJrfCgFiuyuaO89ZGbnAKJtnCQVnwk+GKPJiOssH1JPufe81Da2
	+19TWyjQvSbYZcdX7uL9x//csr++tyQY8s0Ynmjq3U+0pYqj32hiEPbB8t/SZiIOovCobLql916
	EVvVX/ShgpxwIZXiPSufC1W/Q==
X-Received: by 2002:a05:6123:122:b0:5c1:47db:cfcb with SMTP id 71dfb90a1353d-5c5799d2283mr591926e0c.4.1786606330035;
        Thu, 13 Aug 2026 00:32:10 -0700 (PDT)
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com. [209.85.222.45])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5c57ba73a58sm486596e0c.3.2026.08.13.00.32.09
        for <ksummit@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Aug 2026 00:32:09 -0700 (PDT)
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-96935063700so325749241.0
        for <ksummit@lists.linux.dev>; Thu, 13 Aug 2026 00:32:09 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RqtwEGN+hMKDCSfwJv7pySoePJaawHky6S3Jy8qMyx9rDS564QOIi8ekb3IbzpABtEmm/X10X5G@lists.linux.dev
X-Received: by 2002:a05:6102:5547:b0:738:1ef6:51b9 with SMTP id
 ada2fe7eead31-76db5b7eabbmr1166492137.5.1786606329697; Thu, 13 Aug 2026
 00:32:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <1025da50-3e21-43c7-a761-4f65ed5e5069@sirena.org.uk>
 <anxTFWS4KAMqGNGT@monoceros> <1a34c486-2fb5-41e3-991f-23bf82468412@sirena.org.uk>
In-Reply-To: <1a34c486-2fb5-41e3-991f-23bf82468412@sirena.org.uk>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 13 Aug 2026 09:31:58 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVEejuG-Dyr4DXgg3MhtDY6n5cDYPotRiGXeSGv0AcA+g@mail.gmail.com>
X-Gm-Features: AUfX_mxlm1llwIHAv5dHtSvB3E8Ho2ParcaRRIkn_9t7lBAuc-2zpmmyfEuSEDY
Message-ID: <CAMuHMdVEejuG-Dyr4DXgg3MhtDY6n5cDYPotRiGXeSGv0AcA+g@mail.gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] Any feedback for -next?
To: Mark Brown <broonie@debian.org>
Cc: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@baylibre.com>, 
	ksummit@lists.linux.dev, Thierry Reding <thierry.reding@kernel.org>, 
	Breno Leitao <leitao@debian.org>, linux-next@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Mark,

On Wed, 12 Aug 2026 at 18:44, Mark Brown <broonie@debian.org> wrote:
> On Wed, Aug 12, 2026 at 01:19:05PM +0200, Uwe Kleine-K=C3=B6nig wrote:
> > On Tue, Aug 11, 2026 at 05:54:59PM +0100, Mark Brown wrote:
> > > Any other ideas?
>
> > One thing I recently wondered is if it would make sense to not merge on=
e
> > tree after another into the same tree, but first create pairs, then
> > merge two pairs, ...
>
> > The advantage is that if commit B breaks something there are less
> > intermediate trees that don't contain B and you can still test on e.g.
> > D+E.

Sounds like a nice idea to me!
And you can put the trees that usually cause the most conflicts in
the same subgroup ;-)

It may also help in bisecting an issue.  I have the impression "git
bisect" on linux-next (against Linus' tree, not against yesterday's
next) shows me more "a merge base must be tested" test points than
expected/optimal.

> There's also the issue of incremental build benefits.

That should be more or less the same as before. After all you're
building the same number of times, it's just the changes that are
reshuffled. And you do use ccache, I hope?

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds
