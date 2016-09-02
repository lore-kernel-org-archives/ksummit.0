Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1B71298C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 Sep 2016 17:25:11 +0000 (UTC)
Received: from mail-oi0-f66.google.com (mail-oi0-f66.google.com
	[209.85.218.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 92EE7215
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 Sep 2016 17:25:10 +0000 (UTC)
Received: by mail-oi0-f66.google.com with SMTP id 2so4893737oif.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 02 Sep 2016 10:25:10 -0700 (PDT)
MIME-Version: 1.0
Sender: linus971@gmail.com
In-Reply-To: <20160902104619.GD9355@localhost>
References: <CAKMK7uEuqLLf2bCyB-sAuu5WvVA1Kp7Jvc33k3um5DfdQr4eyg@mail.gmail.com>
	<27648120.ey0ZEtExVa@wuerfel> <20160731175753.GQ9681@localhost>
	<3132432.DrxSMjl1Vi@wuerfel> <20160902104619.GD9355@localhost>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 2 Sep 2016 10:25:09 -0700
Message-ID: <CA+55aFwSpNrOuOzaR5hh0A1XvuTu0=xVbE_CV1RVf9GMrTPDNQ@mail.gmail.com>
To: Vinod Koul <vinod.koul@intel.com>
Content-Type: text/plain; charset=UTF-8
Cc: ksummit-discuss@lists.linuxfoundation.org, Dave Airlie <airlied@linux.ie>,
	"Nikula, Jani" <jani.nikula@linux.intel.com>,
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

On Fri, Sep 2, 2016 at 3:46 AM, Vinod Koul <vinod.koul@intel.com> wrote:
>
> Arm seems to define NO_IRQ. This is not available in other arch and one
> driver (moxart-dma) is using it. I don't see why this should be arm specific.

NO_IRQ is broken. We long long since agreed that 0 is "no irq", and
that the right way to test for it is just

   if (!irq) ...

which is what all the generic drivers use.

See for example

   git grep '(!.*irq)'

for how common that is.

(If you grep for NO_IRQ, you'll find a lot in particularly powerpc
drivers and platforms, but there NO_IRQ is actually just defined to
(0), so it ends up being the same thing).

The fact that ARM still has a NO_IRQ that seems to be defined to
((unsigned int)-1) just means that there are bugs hiding: if ARM
actually _uses_ that value for "no IRQ", then all the generic drivers
will be broken, and if ARM core doesn't, then the drivers that still
use NO_IRQ are broken. Either way you can't win.

So please make sure that NO_IRQ goes away entirely (or, if you insist
on having the confusing #define for some legacy reason, make it be 0
like powerpc, so that the real way of just testing "!irq" also works)

Some people have said "..but but but I have a real irq that has the
value 0", but that's irrelevant - the kernel "irq" value isn't
necessarily the same as the value that an interrupt _controller_ sees,
since the interrupt controller can be hiding behind various other
nested controllers etc. So an architecture might need to translate
"irq" into the actual hw interrupt controller value.

             Linus
