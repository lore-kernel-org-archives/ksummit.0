Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 7C3492FA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 11 May 2014 22:43:11 +0000 (UTC)
Received: from mail-ie0-f177.google.com (mail-ie0-f177.google.com
	[209.85.223.177])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CBB721F950
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 11 May 2014 22:43:09 +0000 (UTC)
Received: by mail-ie0-f177.google.com with SMTP id rp18so6157552iec.22
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 11 May 2014 15:43:09 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <4433093.MSzoqdJDMf@avalon>
References: <1399552623.17118.22.camel@i7.infradead.org>
	<3908561D78D1C84285E8C5FCA982C28F328000EE@ORSMSX114.amr.corp.intel.com>
	<1399666748.2166.68.camel@dabdike.int.hansenpartnership.com>
	<4433093.MSzoqdJDMf@avalon>
Date: Mon, 12 May 2014 00:43:09 +0200
Message-ID: <CAKMK7uFcWsZyGoxLx=2xH-vgRq1nD3cZjeqeRLsvKGrHt--VHA@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
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

On Sat, May 10, 2014 at 3:09 AM, Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> We need a mechanism to correctly report and handle the IOMMU faults, otherwise
> a misbehaving device could generate interrupt storms and cause a denial of
> service.

Lack of this is a big pain for development since at least ime with
hacking around on gpu drivers iommu faults storms happen very often.
And often the load is so severe that you can't reload the driver even
if that would recover. Which in practice means that none of my
development systems have the iommu enabled because it's too often too
much pain. Which means regressions often slip into -rc or even release
kernels, reinforcing distro's decision to just not enable iommus by
default.

So I think having some iommu storm handling (like we have for
interrupts in general and a lot of other things) would go a long way
towards the goal of enabling iommus everywhere.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
