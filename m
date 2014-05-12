Return-Path: <joro@8bytes.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 04794AB4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 16:26:32 +0000 (UTC)
Received: from mail.8bytes.org (8bytes.org [85.214.48.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 7200720278
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 16:26:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.8bytes.org (Postfix) with SMTP id E3E6112B187
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 18:26:29 +0200 (CEST)
Date: Mon, 12 May 2014 18:26:28 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20140512162628.GQ12376@8bytes.org>
References: <1399552623.17118.22.camel@i7.infradead.org>
	<3908561D78D1C84285E8C5FCA982C28F328000EE@ORSMSX114.amr.corp.intel.com>
	<1399666748.2166.68.camel@dabdike.int.hansenpartnership.com>
	<4433093.MSzoqdJDMf@avalon>
	<CAKMK7uFcWsZyGoxLx=2xH-vgRq1nD3cZjeqeRLsvKGrHt--VHA@mail.gmail.com>
	<20140512150722.GO12376@8bytes.org>
	<CAKMK7uHs9QBA_SCCNP_PSS3i2pRGJuQyj_8ngA6vgQU2wENTWw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKMK7uHs9QBA_SCCNP_PSS3i2pRGJuQyj_8ngA6vgQU2wENTWw@mail.gmail.com>
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

On Mon, May 12, 2014 at 05:35:15PM +0200, Daniel Vetter wrote:
> A disable/enable cycle of the pci bus master setting should be a good
> enough signal? Presuming you can say for sure which devices is doing
> the offending dma transactions ofc ... Or maybe we should just be
> optimists and re-enable the IOMMU if _any_ child device gets
> re-enabled (or bus master re-enabled for pci) in the hopes that the
> developers just reloaded the driver. Worst case the storm handling
> will kick in again shortly.

The PCI bus master setting is specific to the PCI bus, not all IOMMUs
Linux supports are for PCI. So probably a new driver-bind event for a
device is a more generic signal.

Back to PCI, the right way to handle faulty legacy 32 bit PCI devices
needs to be discussed. If any of those devices goes crazy the isolation
will hit all devices on the same bus. A re-bind signal for a single
device on that bus is not a good enough signal so we have to keep it
isolated even then.


	Joerg
