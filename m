Return-Path: <pdeschrijver@nvidia.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id C9E7699D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 May 2014 14:51:19 +0000 (UTC)
Received: from hqemgate14.nvidia.com (hqemgate14.nvidia.com [216.228.121.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 36D541FA28
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 May 2014 14:51:19 +0000 (UTC)
Date: Mon, 26 May 2014 17:30:35 +0300
From: Peter De Schrijver <pdeschrijver@nvidia.com>
To: Linus Walleij <linus.walleij@linaro.org>
Message-ID: <20140526143035.GF5961@tbergstrom-lnx.Nvidia.com>
References: <1872038.43ncqEMWSx@avalon> <6546269.8BCSq47QAR@avalon>
	<7hwqdgqtg5.fsf@paris.lan> <31131010.huPvrnkcye@avalon>
	<7h61kxgwgm.fsf@paris.lan>
	<CACRpkdabUuhebq=Pi3v277TVYRfN1KdqYcytZqFft2qYH5eJCg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <CACRpkdabUuhebq=Pi3v277TVYRfN1KdqYcytZqFft2qYH5eJCg@mail.gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] PM dependencies
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, May 23, 2014 at 10:32:24AM +0200, Linus Walleij wrote:
> On Fri, May 23, 2014 at 2:39 AM, Kevin Hilman <khilman@linaro.org> wrote:
> 
> > Of course, for many "simple" platforms, runtime PM get/put just ends up
> > doing a clk_enable/disable, but on the platforms where runtime PM is
> > slightly more... um, "interesting"... just doing a clk enable/disable
> > won't do what you hope.
> 
> And drivers/base/power/clock_ops.c as invoked from
> drivers/sh/pm_runtime.c does exactly that simple thing using
> PM domains. Quite elegantly too, I'd say.
> 
> But now I get curious - can we define the "interesting PM" more
> generally, like get the details out? And I mean like for a few different
> platforms, I know OMAP with its hwmod is one such thing, but how
> much interesting stuff do we have out there that we know we must
> be able to handle?
> 
> Cc:ing in Peter De Schrijver who might have some interesting PM
> to tell us about :-)
> 

On Tegra to powergate a domain you have to:

1) wait until all outstanding memory accesses by DMA clients in the domain have finished and assert the reset of the DMA clients. This is because DMA to/from memory goes via a seperate path compared to control MMIO (register accesses).
2) assert reset of the modules in the domain
3) disable the clocks of the modules in the domain
4) enable clamps
5) turn off power

to powerungate a domain you basically have to do:

1) enable power
2) enable all clocks of the modules in the domain
3) unclamp the domain
4) deassert reset (this is why the clocks have to be on, otherwise the reset signals wouldn't propagate)
6) deassert reset of the DMA clients
5) disable all module clocks again

My guess is that OMAP does most of this sequencing in hw (probably done by the PRCM). Also I guess that OMAP doesn't need the special handling of the DMA clients as both control MMIO and DMA goes via the same interconnect.

Cheers,

Peter.

-----------------------------------------------------------------------------------
This email message is for the sole use of the intended recipient(s) and may contain
confidential information.  Any unauthorized review, use, disclosure or distribution
is prohibited.  If you are not the intended recipient, please contact the sender by
reply email and destroy all copies of the original message.
-----------------------------------------------------------------------------------
