Return-Path: <alexandre.belloni@free-electrons.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4D9A22C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 23:38:15 +0000 (UTC)
Received: from mail.free-electrons.com (down.free-electrons.com
	[37.187.137.238])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id B4467176
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 23:38:14 +0000 (UTC)
Date: Fri, 29 Jul 2016 01:38:12 +0200
From: Alexandre Belloni <alexandre.belloni@free-electrons.com>
To: Jonathan Cameron <jic23@kernel.org>
Message-ID: <20160728233812.GG1494@piout.net>
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

Hi,

On 20/07/2016 at 22:18:11 +0100, Jonathan Cameron wrote :
> A few suggestions for people:
> 
> Guenter Roeck (hmwon)
> Dmitry Torokhov (input)
> Me (Jonathan Cameron - IIO)
> 
> Someone thermal related (not sure who would be most interested)
> Someone power supply related? (Guenter, any suggestions?)
> 
> Someone device tree related (Mark Rutland? Rob Herring?)
> 
> Linus Waleij (gpio)
> 
> Mark Brown - as some of concepts of IIO bridging and how far it
> can be taken (everything via a bridge driver) came from
> discussions with him on SoC ADC handling.
> 
> Lar-Peter Clausen for generally doing insane things with ADCs + having
> one foot in the userspace side of things.
> 

I'm pretty interested in that discussion as I've been writing/using some
of the ADC/touch drivers (at91, mxs) and I've been involved in the sunxi
ones.

Also, I've recently been seeing people using GP ADCs wanting to get an
ALSA interface and others using audio ADCs wanting the IIO interface.

Regards,

-- 
Alexandre Belloni, Free Electrons
Embedded Linux and Kernel engineering
http://free-electrons.com
