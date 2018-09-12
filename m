Return-Path: <tglx@linutronix.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9A0BDCF3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 18:44:56 +0000 (UTC)
Received: from Galois.linutronix.de (Galois.linutronix.de [146.0.238.70])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4156B716
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 18:44:56 +0000 (UTC)
Date: Wed, 12 Sep 2018 20:44:52 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
In-Reply-To: <20180912182343.GI2760@piout.net>
Message-ID: <alpine.DEB.2.21.1809122037450.1473@nanos.tec.linutronix.de>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<8412864.7ztUKcXNNC@avalon>
	<CAKMK7uFAXoVG+nBX=Om9A7R9xPYa-hd0JrRX1RNKSNhxnL_VsA@mail.gmail.com>
	<2019489.6joTqyUi4Z@avalon>
	<CAKMK7uE535-7Vs9EAa2725XL2TX2ChJCN0Zb3YaMe=MarYJOyw@mail.gmail.com>
	<20180911124423.GM2494@piout.net>
	<CAKMK7uE55eEP8L74z7HMyPb2nVnK9=bBX8tUEqmsDYSqjO-CZg@mail.gmail.com>
	<CACRpkdZeR=0-_tN03jFLGc-j1pW4hfOtqB6icjhpF190A8Z0=A@mail.gmail.com>
	<20180912182343.GI2760@piout.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] community
 management/subsystem governance
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 12 Sep 2018, Alexandre Belloni wrote:
> On 12/09/2018 11:14:14+0200, Linus Walleij wrote:
> I'm not saying there aren't any issues and that the level of reviews is
> sufficient but I really don't think problematic maintainers are as
> widespread as Daniel claims. It is really getting tiring to see him
> show random statistics and draw wrong conclusions from them.

Agreed. Lies, damned lies and statistics...

The really interesting metric would be bugs/nr_commits. That gives you
valuable information how good your subsystem works and interacts with the
rest of the kernel.

But even then you need to be careful about analyzing the nature of the
bugs, which range between sloppy and incredibly unfortunate because subtle
interaction with changes outside of that maintainer tree brought the
carefully worked out patch into broken state.

Thanks,

	tglx
