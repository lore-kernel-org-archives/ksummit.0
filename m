Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 70AF61136
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Sep 2018 12:51:44 +0000 (UTC)
Received: from mail-vs1-f65.google.com (mail-vs1-f65.google.com
	[209.85.217.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0870327B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Sep 2018 12:51:43 +0000 (UTC)
Received: by mail-vs1-f65.google.com with SMTP id l3-v6so5914633vsc.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Sep 2018 05:51:43 -0700 (PDT)
MIME-Version: 1.0
References: <cf7638b9-c25d-d47e-f539-192a43268122@kernel.org>
	<1537830902.4935.1.camel@HansenPartnership.com>
	<20180926093013.1ff3e2ef@coco.lan>
In-Reply-To: <20180926093013.1ff3e2ef@coco.lan>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 26 Sep 2018 14:51:29 +0200
Message-ID: <CAMuHMdV2KMBV7HRxJZps0TjnT7QF1V7n=Va_1ugo_1xAs6AOzg@mail.gmail.com>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>, olof@lxom.net,
	ksummit-discuss@lists.linuxfoundation.org,
	Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH-TOPIC] Review - Code of Conduct: Let's
 revamp it.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Sep 26, 2018 at 2:35 PM Mauro Carvalho Chehab
<mchehab+samsung@kernel.org> wrote:
> [2] One thing that perhaps could be done would be to add some CoC-aware
>     anti-spam-kind-of-filtering heuristics at VGER (no idea if VGER infra
>     would actually support it without introducing high delays). If a
>     message contain some wording that could fit into an offensive pattern,
>     it could discard the message, replying to the sender an automatic
>     message - with some fallback mechanism like notifying someone, in order
>     to cover false-positive cases. It may even have some temporary auto-ban
>     feature, if the abusive behavior happens more than <x> times during
>     a certain period of time. For sure that won't cover all cases, but
>     it could be effective on obvious abusive cases.

At least it would have the benefit of maintainers no longer having to deal
manually with people sending patches to remove offensive words from the
source code comments ;-)

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
