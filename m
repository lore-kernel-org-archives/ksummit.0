Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id A58004D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 10:06:04 +0000 (UTC)
Received: from mail-ie0-f180.google.com (mail-ie0-f180.google.com
	[209.85.223.180])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BB5A01FA97
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 10:06:03 +0000 (UTC)
Received: by mail-ie0-f180.google.com with SMTP id as1so82102iec.25
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 03:06:03 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140512174029.GT12376@8bytes.org>
References: <1399552623.17118.22.camel@i7.infradead.org>
	<3908561D78D1C84285E8C5FCA982C28F328000EE@ORSMSX114.amr.corp.intel.com>
	<1399666748.2166.68.camel@dabdike.int.hansenpartnership.com>
	<4433093.MSzoqdJDMf@avalon>
	<CAKMK7uFcWsZyGoxLx=2xH-vgRq1nD3cZjeqeRLsvKGrHt--VHA@mail.gmail.com>
	<20140512150722.GO12376@8bytes.org>
	<CAKMK7uHs9QBA_SCCNP_PSS3i2pRGJuQyj_8ngA6vgQU2wENTWw@mail.gmail.com>
	<CALCETrXo7Zqg9EadLHTniLhAB9f13C9wzFWZAqTSG=4z0ocgQg@mail.gmail.com>
	<20140512162814.GR12376@8bytes.org>
	<CAKMK7uFX=3sYXXMZtnBz-umYqBNm8W=1cSHoy=oRPRG_zcsKNQ@mail.gmail.com>
	<20140512174029.GT12376@8bytes.org>
Date: Tue, 13 May 2014 12:06:03 +0200
Message-ID: <CAKMK7uGthsP=UBLhN4JuyQe0TsGj+CNbufU-Yn5pffidki2Ctw@mail.gmail.com>
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

On Mon, May 12, 2014 at 7:40 PM, Joerg Roedel <joro@8bytes.org> wrote:
> On Mon, May 12, 2014 at 07:11:46PM +0200, Daniel Vetter wrote:
>> I was actually thinking of fully disabling the IOMMU if it only has
>> one child device to isolate the possible damage.
>
> If you disable the IOMMU you also disable the protection from the child.
> This also changes the address space of the device by disabling the IOTLB
> and might make the device overwrite random memory.

Oh, I think I'm using confusing language here. By disable I mean fully
isolate the device by dropping all dma silently onto the floor.
Disabling the iommu as in allowing the device direct access to the
unremapping memory so it can scribble all over is ofc not what I want,
ever ;-) So maybe I should say "disable all DMA by isolating the
device".
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
