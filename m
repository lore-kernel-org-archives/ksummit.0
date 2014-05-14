Return-Path: <benh@kernel.crashing.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 689CD942
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 01:50:43 +0000 (UTC)
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C49BC201A1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 01:50:42 +0000 (UTC)
Message-ID: <1400032208.17624.225.camel@pasglop>
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: David Woodhouse <dwmw2@infradead.org>
Date: Wed, 14 May 2014 11:50:08 +1000
In-Reply-To: <1399980453.879.177.camel@i7.infradead.org>
References: <1399552623.17118.22.camel@i7.infradead.org>
	<3908561D78D1C84285E8C5FCA982C28F328000EE@ORSMSX114.amr.corp.intel.com>
	<1399666748.2166.68.camel@dabdike.int.hansenpartnership.com>
	<4433093.MSzoqdJDMf@avalon>
	<CAKMK7uFcWsZyGoxLx=2xH-vgRq1nD3cZjeqeRLsvKGrHt--VHA@mail.gmail.com>
	<20140512150722.GO12376@8bytes.org>
	<CAKMK7uHs9QBA_SCCNP_PSS3i2pRGJuQyj_8ngA6vgQU2wENTWw@mail.gmail.com>
	<CALCETrXo7Zqg9EadLHTniLhAB9f13C9wzFWZAqTSG=4z0ocgQg@mail.gmail.com>
	<CAKMK7uHgQKgHoeGDAkTBVwzSA7X+XrCRO9zXYwKsGUCJZOk-Dw@mail.gmail.com>
	<1399980453.879.177.camel@i7.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
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

On Tue, 2014-05-13 at 12:27 +0100, David Woodhouse wrote:
> You probably don't want to completely isolate it in that case. If it's
> doing some bad DMA *and* it's also doing some good DMA to display its
> framebuffer, why stop the latter?

I don't think you can go to that level of granularity. We certainly
can't on power.

Propagation of bad data due to faulty adapters or simple bit flips
is a real big issue on servers and the policy for us is simple, on the
first "hint" of an error, block *all* traffic to an from the adapter.

Then the driver can get into the dance to figure out what's up (we can
selectively enable MMIO under driver control to try to get at diagnostic
registers for example) and reset / reconfigure things.

> The Intel IOMMU at least can be configured to avoid reporting faults for
> a given device (well, requester-id). So valid transactions still happen,
> while invalid transactions are still blocked. But silently, without
> bothering the host with the details and causing a fault-IRQ storm.

I would argue against that sort of policy. At least in server contexts.

It could well be that this is appropriate for laptops/desktops, I don't know,
but once an adapter starts doing bad DMAs, I think you can't really trust
much out of it anymore at all.

Cheers,
Ben.
