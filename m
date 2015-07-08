Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1E9679F2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 08:18:49 +0000 (UTC)
Received: from mail-oi0-f49.google.com (mail-oi0-f49.google.com
	[209.85.218.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 775251C0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 08:18:48 +0000 (UTC)
Received: by oiab3 with SMTP id b3so42122363oia.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 08 Jul 2015 01:18:48 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <CA+5PVA4YON79=wrSTfQ8TJrQNOuLShvaVA1_+BDcTxrmVe_hcQ@mail.gmail.com>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<1481488.5WJFbB0Dlm@vostro.rjw.lan>
	<CA+5PVA4YON79=wrSTfQ8TJrQNOuLShvaVA1_+BDcTxrmVe_hcQ@mail.gmail.com>
Date: Wed, 8 Jul 2015 10:18:47 +0200
Message-ID: <CAMuHMdU3vQdk1_dgtQWR=LMVLnGKPnqMoBv9j_JYYuoB=giRAA@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: Josh Boyer <jwboyer@fedoraproject.org>
Content-Type: text/plain; charset=UTF-8
Cc: Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Jul 8, 2015 at 3:14 AM, Josh Boyer <jwboyer@fedoraproject.org> wrote:
>> The only way to address this problem I can see is to recognize reviewers
>> *much* more than we tend to do and not just "encourage" them, because that's
>> way insufficient.
>
> You could make a Reviewed-by tag required before a patch can be
> included in a submaintainer's tree.  At least some maintainers seem to
> (arbitrarily?) require this at times.  However, if you do that then it
> would likely slow down development quite a bit.  Then Greg might cry
> because he wouldn't get to show pretty graphs at conferences about how
> fast the rate of change is in the kernel.

It's far too common to send out a patch series, receive lots of valuable
comments and suggestions, adapt according to feedback, and send out again
(repeat a few cycles). Suddenly the patches looks perfect, no more comments,
but also no Acked-by or Reviewed-By. Just silence.

Requiring a Reviewed-by tag is not a solution, unless there's a real
incentive for people to add such tags. Finding such an incentive can be
difficult, and may turn out to make matters worse (cfr. patent officers paid
per patent granted).

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
