Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 69693ACC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 15:35:18 +0000 (UTC)
Received: from mail-ie0-f182.google.com (mail-ie0-f182.google.com
	[209.85.223.182])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8A88320336
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 15:35:16 +0000 (UTC)
Received: by mail-ie0-f182.google.com with SMTP id to1so140080ieb.27
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 08:35:16 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140512150722.GO12376@8bytes.org>
References: <1399552623.17118.22.camel@i7.infradead.org>
	<3908561D78D1C84285E8C5FCA982C28F328000EE@ORSMSX114.amr.corp.intel.com>
	<1399666748.2166.68.camel@dabdike.int.hansenpartnership.com>
	<4433093.MSzoqdJDMf@avalon>
	<CAKMK7uFcWsZyGoxLx=2xH-vgRq1nD3cZjeqeRLsvKGrHt--VHA@mail.gmail.com>
	<20140512150722.GO12376@8bytes.org>
Date: Mon, 12 May 2014 17:35:15 +0200
Message-ID: <CAKMK7uHs9QBA_SCCNP_PSS3i2pRGJuQyj_8ngA6vgQU2wENTWw@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Joerg Roedel <joro@8bytes.org>
Content-Type: text/plain; charset=UTF-8
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

On Mon, May 12, 2014 at 5:07 PM, Joerg Roedel <joro@8bytes.org> wrote:
> On Mon, May 12, 2014 at 12:43:09AM +0200, Daniel Vetter wrote:
>> So I think having some iommu storm handling (like we have for
>> interrupts in general and a lot of other things) would go a long way
>> towards the goal of enabling iommus everywhere.
>
> Right, the developer use-case needs also be taken into account. We could
> easily ignore a device after it did something wrong to get rid of
> io-page-fault or interupt storms. But we also need a way to tell the
> kernel to unignore the device later :)

A disable/enable cycle of the pci bus master setting should be a good
enough signal? Presuming you can say for sure which devices is doing
the offending dma transactions ofc ... Or maybe we should just be
optimists and re-enable the IOMMU if _any_ child device gets
re-enabled (or bus master re-enabled for pci) in the hopes that the
developers just reloaded the driver. Worst case the storm handling
will kick in again shortly.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
