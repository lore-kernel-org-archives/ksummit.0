Return-Path: <benh@kernel.crashing.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C49AC273
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Aug 2015 22:11:24 +0000 (UTC)
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 773FB89
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Aug 2015 22:11:23 +0000 (UTC)
Message-ID: <1438639838.14073.116.camel@kernel.crashing.org>
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: David Woodhouse <dwmw2@infradead.org>
Date: Tue, 04 Aug 2015 08:10:38 +1000
In-Reply-To: <1438627862.26511.366.camel@infradead.org>
References: <20150731163453.GB2039@redhat.com>
	<1438627862.26511.366.camel@infradead.org>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: Jerome Glisse <jglisse@redhat.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Core Kernel support for
 Compute-Offload Devices
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 2015-08-03 at 19:51 +0100, David Woodhouse wrote:
> In PCIe we have 20 bits of PASID. And we are going to expect hardware
> to implement them all, even if it can only do caching for fewer PASIDs
> than that.
> 
> There is also an expectation that a given MM will have the *same*
> PASID across all devices.

Unless you already have a TLB-coherent fabric keyed on a LPID/PID whose
capacity overall is larger than your 20-bit PASID. In that case your
IOMMU have remapping facilities between PASIDs and LPID/PID which could
in theory provide a different mapping for devices...

Cheers,
Ben.
