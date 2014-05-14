Return-Path: <benh@kernel.crashing.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 954BA942
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 01:25:33 +0000 (UTC)
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F3779201A1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 01:25:32 +0000 (UTC)
Message-ID: <1400030694.17624.206.camel@pasglop>
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: David Woodhouse <dwmw2@infradead.org>
Date: Wed, 14 May 2014 11:24:54 +1000
In-Reply-To: <1399552623.17118.22.camel@i7.infradead.org>
References: <1399552623.17118.22.camel@i7.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: Gavin Shan <gwshan@linux.vnet.ibm.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
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

On Thu, 2014-05-08 at 13:37 +0100, David Woodhouse wrote:
> I'd like to have a discussion about handling device errors.
> 
> IOMMUs are becoming more common, and we've seen some failure modes where
> we just end up with an endless stream of fault reports from a given
> device, and the kernel can do nothing else.

 .../...

I'm definitely interested in this, and would nominate Gavin Shan from
IBM as well who is our EEH expert for the kernel.

To cut a long story short, we have an extensive set of HW facilities
in our PCI host bridges to detect errors and freeze all operations
in and out of devices upon detection of errors, in order to prevent
propagation of bad data.

In addition, we have a recovery process involving the few drivers
who support the corresponding hooks. We could describe the process,
it can be fairly convoluted.

We fallback to simulating an unplug of the device (unbind the driver),
a reset and a re-bind for devices that don't have the hooks.

Cheers,
Ben.
