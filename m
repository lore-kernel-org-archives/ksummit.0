Return-Path: <bart.vanassche@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DB8FB1620
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jun 2019 17:06:52 +0000 (UTC)
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
	[209.85.210.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A00CAE5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jun 2019 17:06:52 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id r7so1831569pfl.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jun 2019 10:06:52 -0700 (PDT)
To: Leon Romanovsky <leon@kernel.org>
References: <20190606155846.GA31044@kroah.com>
	<1559838569.3144.11.camel@HansenPartnership.com>
	<CAPcyv4guyNu5CVhxaAzMM5cq3VaXkcOPgjRTw5wZ2o_G094EmQ@mail.gmail.com>
	<yq17e9xi24p.fsf@oracle.com> <20190613104930.7dc85e13@coco.lan>
	<1560436507.3329.12.camel@HansenPartnership.com>
	<yq18su51q92.fsf@oracle.com>
	<3418df99-ff2b-9a9f-7702-1e272d1cb783@acm.org>
	<9623aa32-31f2-0053-d3bc-64bfb151865a@roeck-us.net>
	<fa4e430c-3356-0ee5-3c47-8d4b6fcf19fe@acm.org>
	<20190614115341.GZ6369@mtr-leonro.mtl.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <13cd6900-a2ae-408e-ee96-2372b9f49866@acm.org>
Date: Fri, 14 Jun 2019 10:06:48 -0700
MIME-Version: 1.0
In-Reply-To: <20190614115341.GZ6369@mtr-leonro.mtl.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
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

On 6/14/19 4:53 AM, Leon Romanovsky wrote:
> There are kernel subsystems without available QEMU virtual hardware
> or with special hardware which is not available for most of the active
> developers. Sometimes bugs in those drivers stop whole subsystem for
> moving forward and needed to be fixed without HW.

Hi Leon,

Are you perhaps referring to API refactoring that affects an entire 
subsystem? I was referring to patches that affect a single driver.

Thanks,

Bart.
