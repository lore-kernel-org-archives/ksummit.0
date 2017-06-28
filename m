Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9B26DA74
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 16:04:22 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 10CCB125
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Jun 2017 16:04:21 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Wed, 28 Jun 2017 19:04:24 +0300
Message-ID: <13265343.Sgu0C2fHum@avalon>
In-Reply-To: <CAK8P3a3WZNbggjn-73b0xuOj3=jUz1AUcTdmXt5a5oMvyiv3sw@mail.gmail.com>
References: <20170625104850.GA24717@amd>
	<CACRpkdYA6Tai+dAJ8Q2w_xEJonuDtHdUnTeJze_8JyX43KntPQ@mail.gmail.com>
	<CAK8P3a3WZNbggjn-73b0xuOj3=jUz1AUcTdmXt5a5oMvyiv3sw@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: Pavel Machek <pavel@ucw.cz>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] mobile phones
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Arnd,

On Wednesday 28 Jun 2017 17:58:27 Arnd Bergmann wrote:
> On Wed, Jun 28, 2017 at 4:38 PM, Linus Walleij wrote:
> >> Graphics acceleration is still missing.
> > 
> > The GPU vendor mexican-standoff-farce is bound to become the
> > laughing stock of history. I would put my hopes to the reverse-engineered
> > drivers like Freedreno or the fine work from the etnaviv people.
> 
> I agree this is still the fundamental issue, and that Freedreno is our best
> hope at the moment, but aside from that, things have changed a lot over
> the past few years, just not entirely the way we had hoped for:
> 
> * Nvidia, Vivante and Broadcom GPUs now all have open drivers, and
>   are all still around in their respective niche markets, but have
>   completely disappeared from products that are used in phones a few years
>   ago.
> 
> * PowerVR still has a small market share in phones (ignoring the iPhone),
>   but it's mostly used in other markets (TI and Renesas seem to be the
>   only loyal customers but have exited the phone market, some others do
>   both PowerVR and Mali, with a trend to more of the latter).
>   We'll see what happens when someone buys the company.
> 
> * This leaves ARM Mali as the only GPU that still matters for phones
>   other than Qualcomm's chips. The only ways to solve this are either
>   a management change at ARM making it happen officially, or someone
>   starting a serious effort to reverse-engineer the Midgard and/or Bifrost
>   GPU architectures. At least we have a very clear idea of what would
>   need to happen, just nobody who is qualified to do it, willing to spend
>   the resources and not already under NDA.

Could we split the problem by finding developers qualified to do it and not 
under NDA on one side, people or companies willing to finance the project on 
the other side, and put them together ?

-- 
Regards,

Laurent Pinchart
