Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 878369C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  4 Sep 2016 17:45:07 +0000 (UTC)
Received: from mail-it0-f66.google.com (mail-it0-f66.google.com
	[209.85.214.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 209AE125
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  4 Sep 2016 17:45:05 +0000 (UTC)
Received: by mail-it0-f66.google.com with SMTP id e124so6962545ith.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 04 Sep 2016 10:45:05 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <CA+55aFwSpNrOuOzaR5hh0A1XvuTu0=xVbE_CV1RVf9GMrTPDNQ@mail.gmail.com>
References: <CAKMK7uEuqLLf2bCyB-sAuu5WvVA1Kp7Jvc33k3um5DfdQr4eyg@mail.gmail.com>
	<27648120.ey0ZEtExVa@wuerfel> <20160731175753.GQ9681@localhost>
	<3132432.DrxSMjl1Vi@wuerfel> <20160902104619.GD9355@localhost>
	<CA+55aFwSpNrOuOzaR5hh0A1XvuTu0=xVbE_CV1RVf9GMrTPDNQ@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Sun, 4 Sep 2016 19:45:03 +0200
Message-ID: <CAMuHMdWk2uE0z-67ktpPvTGR7AUD66uZJL=kMGjrhxaPmDD_Xg@mail.gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset=UTF-8
Cc: Dave Airlie <airlied@linux.ie>, "Nikula,
	Jani" <jani.nikula@linux.intel.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Grant Likely <grant.likely@linaro.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] (group) maintainership models
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Linus,

On Fri, Sep 2, 2016 at 7:25 PM, Linus Torvalds
<torvalds@linux-foundation.org> wrote:
> On Fri, Sep 2, 2016 at 3:46 AM, Vinod Koul <vinod.koul@intel.com> wrote:
>>
>> Arm seems to define NO_IRQ. This is not available in other arch and one
>> driver (moxart-dma) is using it. I don't see why this should be arm specific.
>
> NO_IRQ is broken. We long long since agreed that 0 is "no irq", and
> that the right way to test for it is just
>
>    if (!irq) ...
>
> which is what all the generic drivers use.

[...]

> Some people have said "..but but but I have a real irq that has the
> value 0", but that's irrelevant - the kernel "irq" value isn't
> necessarily the same as the value that an interrupt _controller_ sees,
> since the interrupt controller can be hiding behind various other
> nested controllers etc. So an architecture might need to translate
> "irq" into the actual hw interrupt controller value.

Let's bite ;-)

What about the legacy timer interrupt?

$ git grep 'setup_irq(0,'
arch/alpha/kernel/sys_ruffian.c:        setup_irq(0, &timer_irqaction);
arch/avr32/kernel/time.c:       ret = setup_irq(0, &timer_irqaction);
arch/mips/kernel/i8253.c:       setup_irq(0, &irq0);
arch/x86/kernel/time.c: setup_irq(0, &irq0);
$

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
