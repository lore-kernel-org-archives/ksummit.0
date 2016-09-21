Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BE057B90
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 Sep 2016 18:54:39 +0000 (UTC)
Received: from mail-oi0-f42.google.com (mail-oi0-f42.google.com
	[209.85.218.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 52CB0236
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 Sep 2016 18:54:39 +0000 (UTC)
Received: by mail-oi0-f42.google.com with SMTP id a62so71263670oib.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 Sep 2016 11:54:39 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160921182204.GD7994@sirena.org.uk>
References: <57C78BE9.30009@linaro.org> <20160902191637.GC6323@sasha-lappy>
	<20160903000518.GN3950@sirena.org.uk> <1656524.OIRTMDr3jV@avalon>
	<57E22F8E.1040801@linaro.org> <20160921092341.GA25038@kroah.com>
	<20160921182204.GD7994@sirena.org.uk>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 21 Sep 2016 20:54:37 +0200
Message-ID: <CACRpkdZ6hXPunn9ZPPwgench4gYALenWBapJWKRWk_-QBUiqJg@mail.gmail.com>
To: Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: "ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [Stable kernel] feature backporting
	collaboration
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Sep 21, 2016 at 8:22 PM, Mark Brown <broonie@kernel.org> wrote:

> When I talk to people about this I tend to talk about doing upstream
> simultaneously rather than first, that is a lot more tractable.  Work on
> things, try to push your latest work upstream as you write it and
> incorporate review feedback from upstream into your product as you go
> but don't gate things on upstream.  Try to view anything that's still in
> review as a problem that needs to be fixed but acknowledge that there's
> also a need to actually get product out the door.

This is very similar to my experience working as main responsible for the
kernel at ST-Ericsson (until their sad demise).

The strategy I had was that of trying to minimize hamming distance on
anything already upstream, incorporate patches from upstream, and also
empasize that core infrastructure such as irqchips, clocks, regulators,
pins, GPIOs, dma, timers, UARTs etc need to go upstream first.

This way, whenever one of our developers patched any of these interna
drivers, that was likely on some lines that were identical to upstream, so
I could rebase the patch onto upstream, test it, sign it off and
mail off to the respective subsystem maintainer. Win-win!

Leaf drivers were then (in theory) be worked on in isolation.

The storage team (MMC/SD) where the current MMC/SD subsystem
maintainer Ulf Hansson was working, actually embraced an upstream
first strategy. This was achieved by backporting the whole set of
changes in drivers/mmc/* to the upstream until all the files in this
part of the kernel were identical to a much later kernel version. Luckily
that part of the kernel was so self-contained behind the block layer
API that this worked out pretty well. I think it was done solely for that
part of the kernel because it was the path of least resistance as
many advanced MMC/SD protocol features had to be squeezed in,
and upstream actually moved ahead much faster with this.

The big contention points to working upstream on Ux500 were
(for all of yours amusement):

- Missing frameworks: system PM and runtime PM especially.
  And even more the intersection between those two.
  The situation is still not very good when it comes to this. It
  is getting better.

- No working generic power domain. This is getting better.

- Huge out-of-tree drivers for on-chip power managment: the PRCMU.
  (Power-reset control management unit). We now have a better
  chance of handling that with syscon and also rpmsg and splitting
  it up per-subsystem after Bj=C3=B6rn Anderssons latest patches but it
  wasn't there some years ago.

- Missing UART bus for attaching Bluetooth: the thing that Rob
  Herring is now working on.

- Missing HCI transport for subdevices piggybacking HCI:
  FM radio and GPS was using this. Still there is no solution for
  this.

- Huge rewrites needed to move a former framebuffer driver to
  KMS/DRM. The organization was strongly unwilling to rewrite
  a working driver of that size.

- No proper sensor subsystem. We now have IIO.

- Third party GPUs (Mali). Even Intel had this problem when using
  PowerVR IIRC. More of a political problem than a technical one
  as it seems.

Yours,
Linus Walleij
