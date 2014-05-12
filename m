Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id E1E8CACC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 16:16:34 +0000 (UTC)
Received: from mail-ve0-f171.google.com (mail-ve0-f171.google.com
	[209.85.128.171])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 36F132027C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 16:16:33 +0000 (UTC)
Received: by mail-ve0-f171.google.com with SMTP id oz11so9005143veb.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 09:16:32 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAKMK7uHs9QBA_SCCNP_PSS3i2pRGJuQyj_8ngA6vgQU2wENTWw@mail.gmail.com>
References: <1399552623.17118.22.camel@i7.infradead.org>
	<3908561D78D1C84285E8C5FCA982C28F328000EE@ORSMSX114.amr.corp.intel.com>
	<1399666748.2166.68.camel@dabdike.int.hansenpartnership.com>
	<4433093.MSzoqdJDMf@avalon>
	<CAKMK7uFcWsZyGoxLx=2xH-vgRq1nD3cZjeqeRLsvKGrHt--VHA@mail.gmail.com>
	<20140512150722.GO12376@8bytes.org>
	<CAKMK7uHs9QBA_SCCNP_PSS3i2pRGJuQyj_8ngA6vgQU2wENTWw@mail.gmail.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Mon, 12 May 2014 09:16:11 -0700
Message-ID: <CALCETrXo7Zqg9EadLHTniLhAB9f13C9wzFWZAqTSG=4z0ocgQg@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
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

On Mon, May 12, 2014 at 8:35 AM, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> On Mon, May 12, 2014 at 5:07 PM, Joerg Roedel <joro@8bytes.org> wrote:
>> On Mon, May 12, 2014 at 12:43:09AM +0200, Daniel Vetter wrote:
>>> So I think having some iommu storm handling (like we have for
>>> interrupts in general and a lot of other things) would go a long way
>>> towards the goal of enabling iommus everywhere.
>>
>> Right, the developer use-case needs also be taken into account. We could
>> easily ignore a device after it did something wrong to get rid of
>> io-page-fault or interupt storms. But we also need a way to tell the
>> kernel to unignore the device later :)
>
> A disable/enable cycle of the pci bus master setting should be a good
> enough signal? Presuming you can say for sure which devices is doing
> the offending dma transactions ofc ... Or maybe we should just be
> optimists and re-enable the IOMMU if _any_ child device gets
> re-enabled (or bus master re-enabled for pci) in the hopes that the
> developers just reloaded the driver. Worst case the storm handling
> will kick in again shortly.

Just to check: are you talking about disabling the IOMMU if there's a
fault storm or disabling reporting of IOMMU faults?

--Andy

> -Daniel
> --
> Daniel Vetter
> Software Engineer, Intel Corporation
> +41 (0) 79 365 57 48 - http://blog.ffwll.ch
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss



-- 
Andy Lutomirski
AMA Capital Management, LLC
