Return-Path: <arndbergmann@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C9BBBA55
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 15:58:29 +0000 (UTC)
Received: from mail-it0-f47.google.com (mail-it0-f47.google.com
	[209.85.214.47])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6C57A198
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 15:58:29 +0000 (UTC)
Received: by mail-it0-f47.google.com with SMTP id k192so4380241ith.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 08:58:29 -0700 (PDT)
MIME-Version: 1.0
Sender: arndbergmann@gmail.com
In-Reply-To: <CACRpkdYA6Tai+dAJ8Q2w_xEJonuDtHdUnTeJze_8JyX43KntPQ@mail.gmail.com>
References: <20170625104850.GA24717@amd>
	<CACRpkdYA6Tai+dAJ8Q2w_xEJonuDtHdUnTeJze_8JyX43KntPQ@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 28 Jun 2017 17:58:27 +0200
Message-ID: <CAK8P3a3WZNbggjn-73b0xuOj3=jUz1AUcTdmXt5a5oMvyiv3sw@mail.gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, Pavel Machek <pavel@ucw.cz>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] mobile phones
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Jun 28, 2017 at 4:38 PM, Linus Walleij <linus.walleij@linaro.org> wrote:
>> Graphics acceleration is still missing.
>
> The GPU vendor mexican-standoff-farce is bound to become the
> laughing stock of history. I would put my hopes to the reverse-engineered
> drivers like Freedreno or the fine work from the etnaviv people.

I agree this is still the fundamental issue, and that Freedreno is our best
hope at the moment, but aside from that, things have changed a lot over
the past few years, just not entirely the way we had hoped for:

* Nvidia, Vivante and Broadcom GPUs now all have open drivers, and
  are all still around in their respective niche markets, but have completely
  disappeared from products that are used in phones a few years ago.

* PowerVR still has a small market share in phones (ignoring the iPhone),
  but it's mostly used in other markets (TI and Renesas seem to be the
  only loyal customers but have exited the phone market, some others do
  both PowerVR and Mali, with a trend to more of the latter).
  We'll see what happens when someone buys the company.

* This leaves ARM Mali as the only GPU that still matters for phones
  other than Qualcomm's chips. The only ways to solve this are either
  a management change at ARM making it happen officially, or someone
  starting a serious effort to reverse-engineer the Midgard and/or Bifrost
  GPU architectures. At least we have a very clear idea of what would
  need to happen, just nobody who is qualified to do it, willing to spend
  the resources and not already under NDA.

       Arnd
