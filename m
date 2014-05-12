Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 421F5AEB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 17:11:47 +0000 (UTC)
Received: from mail-ig0-f173.google.com (mail-ig0-f173.google.com
	[209.85.213.173])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BB48A2029D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 17:11:46 +0000 (UTC)
Received: by mail-ig0-f173.google.com with SMTP id hn18so4088146igb.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 10:11:46 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140512162814.GR12376@8bytes.org>
References: <1399552623.17118.22.camel@i7.infradead.org>
	<3908561D78D1C84285E8C5FCA982C28F328000EE@ORSMSX114.amr.corp.intel.com>
	<1399666748.2166.68.camel@dabdike.int.hansenpartnership.com>
	<4433093.MSzoqdJDMf@avalon>
	<CAKMK7uFcWsZyGoxLx=2xH-vgRq1nD3cZjeqeRLsvKGrHt--VHA@mail.gmail.com>
	<20140512150722.GO12376@8bytes.org>
	<CAKMK7uHs9QBA_SCCNP_PSS3i2pRGJuQyj_8ngA6vgQU2wENTWw@mail.gmail.com>
	<CALCETrXo7Zqg9EadLHTniLhAB9f13C9wzFWZAqTSG=4z0ocgQg@mail.gmail.com>
	<20140512162814.GR12376@8bytes.org>
Date: Mon, 12 May 2014 19:11:46 +0200
Message-ID: <CAKMK7uFX=3sYXXMZtnBz-umYqBNm8W=1cSHoy=oRPRG_zcsKNQ@mail.gmail.com>
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

On Mon, May 12, 2014 at 6:28 PM, Joerg Roedel <joro@8bytes.org> wrote:
> On Mon, May 12, 2014 at 09:16:11AM -0700, Andy Lutomirski wrote:
>> On Mon, May 12, 2014 at 8:35 AM, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
>> Just to check: are you talking about disabling the IOMMU if there's a
>> fault storm or disabling reporting of IOMMU faults?
>
> Probably about disabling the reporting of IOMMU faults. An IOMMU that is
> used for DMA-API mappings can not be disabled at runtime in a safe way.

I was actually thinking of fully disabling the IOMMU if it only has
one child device to isolate the possible damage. But maybe we need a
bit more clevernesss and a driver notifer. In drm/i915 we could use
that to declare the gpu wedged, which should be about the optimal
outcome:
- We can do that from any atomic context.
- It will stop userspace from submitting more commands, and userspace
falls back to software rendering if this happens.
- Kernel modeset should keep on working, increasing chances that the
user/developer can grab crucial information from the life system.

I think we'd need to play around with some real bugs to know what will
actually work.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
