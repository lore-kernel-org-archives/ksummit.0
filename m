Return-Path: <vinod.koul@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 59D51990
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 03:05:26 +0000 (UTC)
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 0DC92226
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 27 Jul 2016 03:05:25 +0000 (UTC)
Date: Wed, 27 Jul 2016 08:42:53 +0530
From: Vinod Koul <vinod.koul@intel.com>
To: Jonathan Cameron <jic23@kernel.org>
Message-ID: <20160727031253.GV9681@localhost>
References: <5222c3bb-d6b7-0ccc-bf9e-becf5046a37a@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5222c3bb-d6b7-0ccc-bf9e-becf5046a37a@kernel.org>
Cc: Zhang Rui <rui.zhang@intel.com>, Rob Herring <robh+dt@kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Sensors and similar - subsystem
 interactions, divisions, bindings etc.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Jonathan,

On Wed, Jul 20, 2016 at 10:18:11PM +0100, Jonathan Cameron wrote:
> 
> 5) Complex device interaction usecases.  At the moment the ones I've come
> across are mostly contained in IIO.  The moment we start sticking in
> MUXes, AFEs (Analog Front Ends) and straightforward analog sensors in the
> mix it can get fiddly.  Swapping war stories may well be worthwhile on
> this. This stuff also turns up in ASoC for example so probably lessons
> to be learned from there.
> 
> The analog devices software defined radios are another possible case
> study.
> 
> There of course may well be lessons to be learned from similar
> interactions elsewhere in the kernel.
> 
> There is a lot of history in how we ended up where we are (it all made
> absolute sense at the time). Sitting back and taking the time
> to discuss the future would be great.  Whilst this might be solvable
> by email we've made no definitive progress for years
> (and what has been made has been on a case by case basis deep in
> driver reviews.)
> 
> I threw comedi in the list above but, at the moment, I think the more
> likely direction there is a single userspace library abstracting
> the underlying subsystem (Analog Devices are working in that
> direction - perhaps Lars can offer more on that?).
> 
> GPIO is another interesting case - a lot of hardware is capable of
> parallel sampling, some at high speeds. It's another area that
> is probably too specialist for this discussion, but if people want
> to dive into the details it might be interesting.
> 
> I think we have only a small amount of fuzz around the v4l boundary,
> but wanted to leave the door open if anyone wants to discuss that
> one further as it's come up a few times over recent years.
> 
> The SoC world is a major case of one device, many uses.  Some SoCs
> are turning up with multiple ADC units, sometimes with different
> designs, sometimes simply so that the same hardware can be used for different things.

I would be interested in this discussion. Complex device seem to be getting
more complex over here as well!

Thanks
-- 
~Vinod
