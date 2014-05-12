Return-Path: <joro@8bytes.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 2B4F8A89
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 17:40:32 +0000 (UTC)
Received: from mail.8bytes.org (8bytes.org [85.214.48.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id A6E082035E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 17:40:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by mail.8bytes.org (Postfix) with SMTP id 6FAF712B187
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 19:40:30 +0200 (CEST)
Date: Mon, 12 May 2014 19:40:29 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20140512174029.GT12376@8bytes.org>
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
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKMK7uFX=3sYXXMZtnBz-umYqBNm8W=1cSHoy=oRPRG_zcsKNQ@mail.gmail.com>
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

On Mon, May 12, 2014 at 07:11:46PM +0200, Daniel Vetter wrote:
> I was actually thinking of fully disabling the IOMMU if it only has
> one child device to isolate the possible damage.

If you disable the IOMMU you also disable the protection from the child.
This also changes the address space of the device by disabling the IOTLB
and might make the device overwrite random memory.

> But maybe we need a bit more clevernesss and a driver notifer. In
> drm/i915 we could use that to declare the gpu wedged, which should be
> about the optimal outcome:
> - We can do that from any atomic context.
> - It will stop userspace from submitting more commands, and userspace
> falls back to software rendering if this happens.
> - Kernel modeset should keep on working, increasing chances that the
> user/developer can grab crucial information from the life system.
> 
> I think we'd need to play around with some real bugs to know what will
> actually work.

Sure. What we can provide from the IOMMU side is to disable the faults
and/or isolate the device so that it can't harm the system anymore.


	Joerg
