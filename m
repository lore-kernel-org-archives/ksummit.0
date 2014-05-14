Return-Path: <benh@kernel.crashing.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id E1DA2942
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 01:43:44 +0000 (UTC)
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 64AA21F950
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 01:43:44 +0000 (UTC)
Message-ID: <1400031814.17624.218.camel@pasglop>
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Roland Dreier <roland@kernel.org>
Date: Wed, 14 May 2014 11:43:34 +1000
In-Reply-To: <CAG4TOxM=d=L4XSP8GM2trYSbcSR2jgt-3jmbky0qyLADgeu0Hw@mail.gmail.com>
References: <1399552623.17118.22.camel@i7.infradead.org>
	<20140509193712.GD13050@jtriplet-mobl1>
	<CAG4TOxM=d=L4XSP8GM2trYSbcSR2jgt-3jmbky0qyLADgeu0Hw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Device error handling /
 reporting / isolation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 2014-05-09 at 12:53 -0700, Roland Dreier wrote:
> 
> Stuff without a device driver should be OK, since we don't turn on any
> bits in the PCI command register until pci_enable_device().  So the
> device can't be a bus master until someone claims it.

Provided you trust the device not to utterly ignore that bit ...

> For devices with a driver, I guess it couldn't hurt.  But my wifi
> adapter can already sniff and modify all my network traffic, etc.
> 
> I do agree that it's a bit sad that the current state of VT-d is such
> that distros don't use it by default.

Cheers,
Ben.
