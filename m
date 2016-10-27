Return-Path: <amit.kucheria@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B69B040C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 27 Oct 2016 06:07:40 +0000 (UTC)
Received: from mail-yw0-f173.google.com (mail-yw0-f173.google.com
	[209.85.161.173])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C20F4139
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 27 Oct 2016 06:07:39 +0000 (UTC)
Received: by mail-yw0-f173.google.com with SMTP id p22so16179813ywe.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Oct 2016 23:07:39 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20161022011925.6n3nhq23vbrly364@thunk.org>
References: <ECADFF3FD767C149AD96A924E7EA6EAF0ABA11DA@USCULXMSG01.am.sony.com>
	<20161022011925.6n3nhq23vbrly364@thunk.org>
From: Amit Kucheria <amit.kucheria@linaro.org>
Date: Thu, 27 Oct 2016 11:37:38 +0530
Message-ID: <CAP245DWhe916_+Z=Km38W9MHt8uT0o4VOJN5aZ1HFkb-z2UFcg@mail.gmail.com>
To: "Theodore Ts'o" <tytso@mit.edu>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"fuego@lists.linuxfoundation.org" <fuego@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Some ideas on open source testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, Oct 22, 2016 at 6:49 AM, Theodore Ts'o <tytso@mit.edu> wrote:

> Maybe someday an ARM64 system will have the necessary hardware
> virtualization systems such that we can quickly test an ARM
> handset/embedded kernel using kvm on an ARM64 server / workstation.
> Maybe that would be a 90% solution for many file system and even
> device driver authors, assuming the necesary SOC IP blocks could be
> emulated by qemu.

https://www.linaro.cloud/

It exists. But we still need to come up with a reasonably easy way for
community to setup accounts on this w/o having to go through an
approval process. We've made the HW available to several projects for
their porting and testing needs, but currently it is on a case-by-case
basis while we scale up the data center.
