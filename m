Return-Path: <leon@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AA0DFECB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 15 Jun 2019 07:20:25 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 62312E6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 15 Jun 2019 07:20:25 +0000 (UTC)
Date: Sat, 15 Jun 2019 10:20:14 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Bart Van Assche <bvanassche@acm.org>
Message-ID: <20190615072014.GC4694@mtr-leonro.mtl.com>
References: <CAPcyv4guyNu5CVhxaAzMM5cq3VaXkcOPgjRTw5wZ2o_G094EmQ@mail.gmail.com>
	<yq17e9xi24p.fsf@oracle.com> <20190613104930.7dc85e13@coco.lan>
	<1560436507.3329.12.camel@HansenPartnership.com>
	<yq18su51q92.fsf@oracle.com>
	<3418df99-ff2b-9a9f-7702-1e272d1cb783@acm.org>
	<9623aa32-31f2-0053-d3bc-64bfb151865a@roeck-us.net>
	<fa4e430c-3356-0ee5-3c47-8d4b6fcf19fe@acm.org>
	<20190614115341.GZ6369@mtr-leonro.mtl.com>
	<13cd6900-a2ae-408e-ee96-2372b9f49866@acm.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <13cd6900-a2ae-408e-ee96-2372b9f49866@acm.org>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Pull network and Patch
 Acceptance Consistency
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jun 14, 2019 at 10:06:48AM -0700, Bart Van Assche wrote:
> On 6/14/19 4:53 AM, Leon Romanovsky wrote:
> > There are kernel subsystems without available QEMU virtual hardware
> > or with special hardware which is not available for most of the active
> > developers. Sometimes bugs in those drivers stop whole subsystem for
> > moving forward and needed to be fixed without HW.
>
> Hi Leon,
>
> Are you perhaps referring to API refactoring that affects an entire
> subsystem? I was referring to patches that affect a single driver.

I got impression that refactoring/cleanup/other_mass_changes are usually
the ones who has potential to introduce regressions and not one shot
change in specific driver from some worried user.

Thanks

>
> Thanks,
>
> Bart.
>
