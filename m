Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id BFEADAEB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 17:25:59 +0000 (UTC)
Received: from mail-ig0-f177.google.com (mail-ig0-f177.google.com
	[209.85.213.177])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A94AC2020C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 17:25:58 +0000 (UTC)
Received: by mail-ig0-f177.google.com with SMTP id l13so684256iga.10
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 May 2014 10:25:58 -0700 (PDT)
MIME-Version: 1.0
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
Date: Tue, 13 May 2014 19:25:57 +0200
Message-ID: <CAKMK7uEnGHUecRYL2LDisUfFX6JcBykAQpUAw+NPFqgO8fbSgA@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: David Woodhouse <dwmw2@infradead.org>
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

On Tue, May 13, 2014 at 1:27 PM, David Woodhouse <dwmw2@infradead.org> wrote:
> On Mon, 2014-05-12 at 19:04 +0200, Daniel Vetter wrote:
>> On Mon, May 12, 2014 at 6:16 PM, Andy Lutomirski <luto@amacapital.net> wrote:
>> > Just to check: are you talking about disabling the IOMMU if there's a
>> > fault storm or disabling reporting of IOMMU faults?
>>
>> Re-enabling of the IOMMU after it was completely shut off to isolate a
>> fault storm from a rouge device. Since if I as a developer still have
>> to reboot if I wreak havoc in my driver it's only marginally better
>> than a box that went down in a iommu page fault storm. But if I can
>> just reload the driver (with the bug fixed) and get back a working
>> device because the IOMMU was re-enabling then that would help. Not
>> sure yet how feasible this really is.
>
> You probably don't want to completely isolate it in that case. If it's
> doing some bad DMA *and* it's also doing some good DMA to display its
> framebuffer, why stop the latter?

Yeah, I think some coordination between driver and iommu subsystem
when bad things happen would be useful. One example is that i915 could
block further command submission once a storm happens to prevent more
damage. And if the IOMMU can disabled fault reporting while everything
else keeps on working as best as possible that's indeed useful. But
imo the first line should be damage control, if we can save a few bits
that's just the icing on the cake.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
