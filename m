Return-Path: <benh@kernel.crashing.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 277D97B9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 01:28:40 +0000 (UTC)
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7C34F1FD42
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 01:28:39 +0000 (UTC)
Message-ID: <1400030908.17624.209.camel@pasglop>
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Date: Wed, 14 May 2014 11:28:28 +1000
In-Reply-To: <3098666.qf3pAh5N1u@avalon>
References: <1399552623.17118.22.camel@i7.infradead.org>
	<1399578994.2171.51.camel@dabdike.int.hansenpartnership.com>
	<1399625714.879.9.camel@i7.infradead.org> <3098666.qf3pAh5N1u@avalon>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
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

On Fri, 2014-05-09 at 13:31 +0200, Laurent Pinchart wrote:
> 
> The latter will likely require a mix of generic code for device isolation 
> and/or reset (when possible) and driver-specific code for proper recovery.

We already have some amount of hooks that drivers can implement for that
but most of the core and policy are a mixture of HW facilities and
platform specific code, at least for PowerPC EEH. But ACPI/AER somewhat
biggy-backs in the same hooks today so I think the driver side interface
is a good start.

We do want to improve reporting if possible (ie, some IOMMUs will tell
us more about the actual error than others).
>  A
> fast reaction to prevent more faults from being generated should be coupled 
> with a slower reaction to fix the actual cause of the problem. I expect the 
> problem to be fatal in most cases, and, for IOMMUs again, usually caused by a 
> software bug rather than a hardware misbehaviour (although the latter can of 
> course happen). From an overall system point of view preventing the denial of 
> service that follows such errors (caused by kernel log flooding for instance, 
> or by the IOMMU being unable to serve other bus masters) could be our first 
> priority.

Don't discount HW issues and the effect of random bit flips on crappy HW
using cheap latches and no ECC or even parity on its internal busses inside
very noisy environments such as ... your computer :-)

Cheers,
Ben.
