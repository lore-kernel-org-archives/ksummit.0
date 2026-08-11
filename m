Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com [209.85.221.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9642B2FFF8B
	for <ksummit@lists.linux.dev>; Tue, 11 Aug 2026 06:53:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786431210; cv=none; b=oIGxHMd+I8BI7SVhILVWBtBw1BeuOI4OSxH9mPQ0f6thb5eJfwKG1o52Xs+Y4LmsHrDnh11lxtyTJKvIDX256RRi6sx9vPBNNVzMbmiAjxG1h+NfFDJQURzKbbC0m628HZ5b7arbn8Gte7YoHd9lrDgG21ZQt1303oARjcNUzpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786431210; c=relaxed/simple;
	bh=2R1NlP31QH50KVeM6Y44K63w/mz7DBz9+c5i7H1hUMQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MidL4qe2KKuiIgr1NgDJVmRQ8iUYs3ujrH//zj8axvZwLVt+eFATmoJVhzYNsmb4KhP68WtMU/Y2GhkVzQ9rHPW2swr5WGOvUioB3KZMUZxakFjJS1w2SyZ8f2ef0h7kpVXpMu9yDg45iCoa/PEtID0QAG4QPsIwbBw3NmT/N0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-5bf9466412fso2146502e0c.1
        for <ksummit@lists.linux.dev>; Mon, 10 Aug 2026 23:53:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786431206; x=1787036006;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=u2Y8Uy9ktnpirEpsDEEFETdTh2WzBzcOANO/t1TlGts=;
        b=q8mVXDMZIl4pXoUAyN0DKfU71YaCQah10Z1LWUJhuFi4gf79mYroCpzwOQp7n4yVKQ
         pElrc0y3q2Tvv2Xn1/x57LkjBTqJyPLTPqbkXMcwOX+LX7h0zJ7AmPeKz9Z0Pdtby2aK
         2WhAbDfhMJMhp6JQcneWZ5sJmJZ7jXdmzPUC5TmqBH3xnrApmHe/R2PfbdQXcPWeE/62
         LbjEkBQWyb3NHLd4Sr3RTD675rNm/eFDcfFNmUJPD+fUGXI29SGywMP9ivbUSFNOxVWP
         cVYUuzHfAgudbT79uYasaOEMJakpEY3UTdkHJ/FD3UWDG1VA646NPNr5UefndNwYUuPG
         rEvA==
X-Forwarded-Encrypted: i=1; AHgh+RrjEvY9rfeVrw+/IdKe3QQwywsY5FE4zyMvEcEM0DC0ET56w+Y0upj6c3iIrDlpdXUV/P1S7DgM@lists.linux.dev
X-Gm-Message-State: AOJu0YykFgM0NptMcojXr1zidRvRbmzwD9ercgO+s6SXPmXSOk9lzABi
	mX/L1nFSc3s0jSoaSmbYDtpg8bmqMpvnP8fyOFfIR/NovwmhCCVWS8JKJRLcOa7O
X-Gm-Gg: AR+sD103UZ3FG+bgSbG909EezwTG+qVblUKo1x9gKDdMFW8Kbu6h0Ok5P40E6EmB/Cd
	7h/K/NjNoMMcPohm8YlipP2f18l/mpUn5DxnlRTMGA+J4aqrBnl5cMOHbhDZMOa9k7Li9upFlqu
	x4oTXuuPiyrnHSEenr5lMMk2wVf/NqQfN+Y3ePS177os8jaDCxvvAIG54ZbCSnUZhgXqDLswjm0
	R3br8GUOYwsjg3GOGvwYHq3g2fqhFaBa7/cI5xwRzBKj/TMuWR4sYqH5N74F1R87OGxBlVQVB+W
	rQeXneAsa0uEXRc+Sl8r+8Ctb57VoiMYXjRe7KaLTRdc02ZpsNItFt8RsTfpbMcFZyEkiJVvyaY
	p8ySPrGM7+/oVE5/5ipvehTlsEMHVofMJ1ZuisO/BG1MAm+pKzkYe2kqOxpvoo5mdDNiqbOkW+r
	KGCyaxqD4F2jIL4NkvomLeQ2Q5Pk/3ok/3deyMn1VnHUdHH79couRYlBlwSEwQkkIH2wOwubt4d
	muIU7Ib53CGNHUU+88i6MYnbg==
X-Received: by 2002:a05:6122:4f8a:b0:5a5:3eea:4513 with SMTP id 71dfb90a1353d-5c4504dd53emr187795e0c.12.1786431206090;
        Mon, 10 Aug 2026 23:53:26 -0700 (PDT)
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com. [209.85.217.41])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5c451df9943sm129658e0c.9.2026.08.10.23.53.24
        for <ksummit@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Aug 2026 23:53:25 -0700 (PDT)
Received: by mail-vs1-f41.google.com with SMTP id ada2fe7eead31-746d77537f8so1332016137.0
        for <ksummit@lists.linux.dev>; Mon, 10 Aug 2026 23:53:24 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RoDyIMMC+zGgkwJG5T2kWNwoufKrLiD/FSLuSamMO1J30Sv6AYaqCtr0g9WkcKL9IvGMBkmQVwc@lists.linux.dev
X-Received: by 2002:a05:6102:4191:b0:650:94b2:b209 with SMTP id
 ada2fe7eead31-76b55781b77mr360620137.4.1786431204583; Mon, 10 Aug 2026
 23:53:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
 <20260806194153.6443a3ba@gandalf.local.home> <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
 <anii3u-87kSrB9K3@lucifer> <CAPM=9tx7izyUJr_XVQju26fevzepZ-L6vs5vgH2aib9jPPjvRA@mail.gmail.com>
 <anl7CgkKb6tORavG@lucifer> <20260810091154.2d3cd6d5@gandalf.local.home>
 <cc6505e586325cd59ba036cef5429039c9c71ba8.camel@HansenPartnership.com>
 <20260810102423.342c4e9d@gandalf.local.home> <0a8c1e90-1de1-4a76-b0fa-e367a4bd4f55@sirena.org.uk>
 <aa8f4e34-906c-4a37-a8c6-623389addece@infradead.org> <CAPM=9ty=Kb7rqNg14UCJWz=GJuMbQMZpvsDxfEdgeqePDD1gXw@mail.gmail.com>
 <bb767aef-79e6-4019-9dac-929486db14f0@infradead.org>
In-Reply-To: <bb767aef-79e6-4019-9dac-929486db14f0@infradead.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 11 Aug 2026 08:53:12 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXmxdpcVk77SOVSoeVypa-CwTk5T3XzBwOMqDhOWGL9ew@mail.gmail.com>
X-Gm-Features: AUfX_myamLF7vA7At6Wdirm7FNTVxX6g-G9u2XG1T1-vADvjNq_ogVVTQ04mn7c
Message-ID: <CAMuHMdXmxdpcVk77SOVSoeVypa-CwTk5T3XzBwOMqDhOWGL9ew@mail.gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer summit?
To: Randy Dunlap <rdunlap@infradead.org>
Cc: Dave Airlie <airlied@gmail.com>, Jonathan Corbet <corbet@lwn.net>, 
	Andrew Morton <akpm@linux-foundation.org>, Mark Brown <broonie@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>, 
	James Bottomley <James.Bottomley@hansenpartnership.com>, 
	"Lorenzo Stoakes (ARM)" <ljs@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>, ksummit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

On Tue, 11 Aug 2026 at 07:29, Randy Dunlap <rdunlap@infradead.org> wrote:
> On 8/10/26 8:24 PM, Dave Airlie wrote:
> > or can I offer drm-misc commit rights I suppose, but yes we don't have
>
> No thanks on drm-misc commit rights.
> Actually I rather expected these patches to go thru drm-misc instead of you
> or Simona handling them.

"Do you have drm-misc commit rights?" is indeed the most common
answer to questions about delayed patches. No, I don't have it,
I don't want it... (Does anyone even know who has? ;-)

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
