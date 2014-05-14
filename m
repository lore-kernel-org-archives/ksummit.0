Return-Path: <benh@kernel.crashing.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id CDC597B9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 01:46:20 +0000 (UTC)
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 583511F950
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 01:46:20 +0000 (UTC)
Message-ID: <1400031970.17624.221.camel@pasglop>
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Date: Wed, 14 May 2014 11:46:10 +1000
In-Reply-To: <1399666748.2166.68.camel@dabdike.int.hansenpartnership.com>
References: <1399552623.17118.22.camel@i7.infradead.org>
	<20140509193712.GD13050@jtriplet-mobl1>
	<CAG4TOxM=d=L4XSP8GM2trYSbcSR2jgt-3jmbky0qyLADgeu0Hw@mail.gmail.com>
	<3908561D78D1C84285E8C5FCA982C28F328000EE@ORSMSX114.amr.corp.intel.com>
	<1399666748.2166.68.camel@dabdike.int.hansenpartnership.com>
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

On Fri, 2014-05-09 at 13:19 -0700, James Bottomley wrote:
> > Defending against buggy hardware is interesting from a RAS perspective.
> > You don't want a card with a stuck address line scribbling on memory
> > that you didn't want it to touch.
> 
> But for a laptop or desktop kernel, how far do we want to go?  In
> theory, once the iommu is turned on, it corrals the device, since access
> to non programmed addresses (those without IOTLB entries) produces a
> fault.  Is there anything extra we need to do beyond turning on the
> IOMMU?

These tend to be the ones with the cheapest/buggiest hardware and less
prone to be affected by a 100ns overhead on PCIe transactions.

So they are the prime candidate for defaulting to a stricter protection
model.

They are also the ones likely to have an evil express card or whatever
that new PCIe-on-the-wire pushed by Apple & Intel or similar plugged into
them that tries to steal their data.

On the contrary, servers in controlled data centers using high end adapters
might wish to disable the IOMMU for performance reasons.

Cheers,
Ben.
