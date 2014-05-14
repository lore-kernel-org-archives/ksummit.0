Return-Path: <benh@kernel.crashing.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 7832D7B9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 01:43:17 +0000 (UTC)
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0BB3B1F950
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 01:43:16 +0000 (UTC)
Message-ID: <1400031765.17624.217.camel@pasglop>
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Josh Triplett <josh@joshtriplett.org>
Date: Wed, 14 May 2014 11:42:45 +1000
In-Reply-To: <20140509193712.GD13050@jtriplet-mobl1>
References: <1399552623.17118.22.camel@i7.infradead.org>
	<20140509193712.GD13050@jtriplet-mobl1>
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

On Fri, 2014-05-09 at 12:37 -0700, Josh Triplett wrote:
> I'm interested in a related topic: we should systematically use IOMMUs
> and similar hardware features to protect against buggy or *malicious*
> hardware devices.  Consider a laptop with an ExpressCard port: plug in a
> device and you have full PCIe access.  (The same goes for other systems
> if you open up the case.)  We should ensure that devices with no device
> driver have zero privileges, and devices with a device driver have
> carefully whitelisted privileges.

On the other hand, we have been going backward implementing iommu bypass
on power for non-virtualized systems because of the performance cost of
the IOMMU which can be non-trivial, especially for network devices.

It becomes a policy decision, which is fine, however, having a "generic"
way to configure that policy, possibly per-adapter, rather than each IOMMU
implementation does its own, would make it a lot palatable on the field.

Cheers,
Ben.
