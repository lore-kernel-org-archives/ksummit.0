Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 129874C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 20:09:19 +0000 (UTC)
Received: from mail-ie0-f173.google.com (mail-ie0-f173.google.com
	[209.85.223.173])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 894CF201A2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 20:09:18 +0000 (UTC)
Received: by mail-ie0-f173.google.com with SMTP id rp18so74063iec.18
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 13:09:18 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1400032208.17624.225.camel@pasglop>
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
	<1400032208.17624.225.camel@pasglop>
Date: Wed, 14 May 2014 22:09:17 +0200
Message-ID: <CAKMK7uGLkyyYjjOrD0Eyz4D7DUiXrOrUPtqVPXyNNYTFHGS9Dw@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
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

On Wed, May 14, 2014 at 3:50 AM, Benjamin Herrenschmidt
<benh@kernel.crashing.org> wrote:
>> The Intel IOMMU at least can be configured to avoid reporting faults for
>> a given device (well, requester-id). So valid transactions still happen,
>> while invalid transactions are still blocked. But silently, without
>> bothering the host with the details and causing a fault-IRQ storm.
>
> I would argue against that sort of policy. At least in server contexts.
>
> It could well be that this is appropriate for laptops/desktops, I don't know,
> but once an adapter starts doing bad DMAs, I think you can't really trust
> much out of it anymore at all.

I'm not sure we really need to make a server/desktop disdinction here
but more whether the driver (and all the stuff relying on it) care
about data integrity all that much. With gpus we can forward such
information to userspace and through some opengl extensions to
applications, and the expectation is very much that if you want robust
opengl, you need to be able to cope. The extension essentially tells
you "oops, sorry something bad happened, please throw away all your
gpu buffers".

Of course if a gpu reset does not fix the situation the driver should
be able to tell the iommu to give up and fully isolate it. Also, to
really make this work we'd need a way to tell the iommu to re-allow
everything again and track faults again. Otherwise we can't tell
whether the gpu reset worked in resolving the fault storm.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
