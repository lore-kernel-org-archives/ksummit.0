Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com [209.85.221.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E41378D94
	for <ksummit@lists.linux.dev>; Mon, 10 Aug 2026 07:42:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786347749; cv=none; b=TGNiHWBKS98O2lFD8qy8ylYCN25PeP42Hb4/zoYbe0i9xmggE1FoC1CV6kuvXDF/fm7Foxdsz0kLVfrFL06hfJwJyBI05c1wecFvQ8Nc9vunJaFmBQivKvfqthYkDw5h1Xs/ib4CxIWbM7YiQXE0EhcfHafRmz4UiOKKn5BvnMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786347749; c=relaxed/simple;
	bh=greDf6DFCGndnabZ5zUaM2yQEZHRXHbjqgO2XWXx8PY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EkklIFMpY3QHTQV+K5FAMjn32G4XGWfKxUtL+V1EXGhfIS2FBJHzmdUzHN8mFcKZtfk+ZraW9aNAHABYCkwm6qwWYVkmxWk0GHwJy600pN0IrSzGH0HF+E63RdfIVSQyVuu9yoCxLPtiLebTSZemNusmN6xmuRF3CAHi+lTuPP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-5bfb3347dc4so985185e0c.0
        for <ksummit@lists.linux.dev>; Mon, 10 Aug 2026 00:42:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786347746; x=1786952546;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=D/Goo1XCU6xL7lP4clEz2isOe+4AMvUVbKSGITlVIpc=;
        b=K8Gk8Z7Jij/VRch+2mTEieTUT9GcMDidbNv48Mt7L3vt2vM6CTqVotMpxSNr1a6PEk
         WQbuTSx45Ml0TxzQ3a+qdsrLIplpVwGxPF6+M2M6lpHS/SR+Bbgvx3eLLlWRCrzM/jsA
         8wTloW6x6HcwTowVztUMprjwdUGPtShev9gg7KW1DrBZAu8IkebqFankgroVIit5Id6p
         2wFvLpBva3LoT0JIncGu/FufsyV5drUdMjHKOY3HxJ87U6Q8cq4s4STMlvPYzc/iWTwb
         k2OTkuIBZxRyALbcHGpRbIVTk77dRgj1KOsJRaPobZ1xcUlma8gEQdCqpG6dnmbGmrPL
         pchw==
X-Forwarded-Encrypted: i=1; AHgh+RrLc9EPsbueHJFdsEuXkQMSn1yXhA4vRINBm33OEdR34xb4mZKd0Z368IBeiXwKJ3jrlKqZSKc7@lists.linux.dev
X-Gm-Message-State: AOJu0YwWP84LlX/ep4tPnPDpSnxJ7T3kwS/Ie6jg9DeJf6k+CJMtuwOD
	Arbtsz+Ie7FwQ6ZWG2gsclfLA//m3uQ45sVQxESY0NIxyW2S5G9Z+xlDme+b1VqM
X-Gm-Gg: AR+sD13tvba4bGNadjJBi+ukPkJu52tUzTD4oxCZ4XoR8tU4bIbcfUsdsUHEkfuKEkd
	6TVagp5bkdQEKlnpNc6ox9WeB+QrPs/PZao0V11ura0n5dhDnzD6f2Mqpd4QTK3u1QvXS2KHqvz
	tqac7EzB6mPd0Fd6JkFCHchJodMtPgLus03VTxLOkZ5SVnSWwp6WjkZgGzkl6b6uX+A0zMxubw0
	LWUsdSeodgqbsTaA481gAZ37r8nni6zxn1Y9avwun3KldO4XxOfO1SgZGA5PvQBADQwAs4Lr0VB
	EseS8s6Xa/HKctXuIIRueCtJygMks4yqMA3eTlkmpXHUaya8KcVBpgYzephu5kfJc4XFw6+wj/F
	6gneoDz4y1+b5NLBLN0L6Mvb7d2zWcSPabUkvisemDhwRA7/Y/vmH6LMOdsqpzj6yN0robZuVQ1
	BJzhKoEoUTBtK3efH8Ok40O70JA9159IkdUaczu3OW/PURjqQO/XEJ1G0WgF+GoqmZLmEu6OqVU
	mZve1pkezSnlodHA4nu7Un4VmSpnVLsAzbM
X-Received: by 2002:a05:6122:d8c:b0:5c1:1dac:45d3 with SMTP id 71dfb90a1353d-5c3d924f12dmr5621943e0c.10.1786347745976;
        Mon, 10 Aug 2026 00:42:25 -0700 (PDT)
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com. [209.85.217.50])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5c40af097absm4017745e0c.8.2026.08.10.00.42.25
        for <ksummit@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Aug 2026 00:42:25 -0700 (PDT)
Received: by mail-vs1-f50.google.com with SMTP id ada2fe7eead31-74ab99038afso1041336137.3
        for <ksummit@lists.linux.dev>; Mon, 10 Aug 2026 00:42:25 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RrYD9KHGGPv+4jexmgyJYPfxiKhRrRTynZqNm3q+WLgs7siYjT9twmxJGT8vJQ6yV1Gmb3nRFry@lists.linux.dev
X-Received: by 2002:a05:6102:6d4:b0:737:bfe6:3b03 with SMTP id
 ada2fe7eead31-760e8315fb3mr11347404137.7.1786347744702; Mon, 10 Aug 2026
 00:42:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
 <20260806194153.6443a3ba@gandalf.local.home> <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
 <anii3u-87kSrB9K3@lucifer> <CAPM=9tx7izyUJr_XVQju26fevzepZ-L6vs5vgH2aib9jPPjvRA@mail.gmail.com>
In-Reply-To: <CAPM=9tx7izyUJr_XVQju26fevzepZ-L6vs5vgH2aib9jPPjvRA@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 10 Aug 2026 09:42:12 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWCnGVQeSJiVfWrcBGpcq-Zr_oQGPLNUFhcpxishmT_FQ@mail.gmail.com>
X-Gm-Features: AUfX_my0LQQ0f-VkPDnGNLwFCqQ4G8JlDTDKn_zwsfbeDELAQvsOlBFUWE7xIYk
Message-ID: <CAMuHMdWCnGVQeSJiVfWrcBGpcq-Zr_oQGPLNUFhcpxishmT_FQ@mail.gmail.com>
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer summit?
To: Dave Airlie <airlied@gmail.com>, Theodore Tso <tytso@mit.edu>
Cc: "Lorenzo Stoakes (ARM)" <ljs@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>, 
	Steven Rostedt <rostedt@goodmis.org>, 
	James Bottomley <James.Bottomley@hansenpartnership.com>, ksummit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

On Mon, 10 Aug 2026 at 00:10, Dave Airlie <airlied@gmail.com> wrote:
> I think people really have a misconception about what goes on at the
> maintainer summit, the best explanation I've been given was that it is
> Linus's staff meeting. The people that Linus works with closest, get
> invited to talk to Linus and help him figure out where the overall
> ship is going and where things are going wrong.

That was also my impression.

On Sat, 8 Aug 2026 at 01:20, Theodore Tso <tytso@mit.edu> wrote:
> Today, the Maintainer Summit is basically a half-day event, with
> around 30 people (plus any sponsored attendees), and is only focused
> on process questions, with the technical discussions taking place at

Forgive my ignorance, how do the sponsored attendees fit into this
picture?

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
