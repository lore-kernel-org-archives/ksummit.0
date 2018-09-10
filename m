Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7A50BEDB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 15:56:30 +0000 (UTC)
Received: from NAM02-CY1-obe.outbound.protection.outlook.com
	(mail-cys01nam02on0093.outbound.protection.outlook.com
	[104.47.37.93])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 03FB971C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 15:56:29 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: Linus Torvalds <torvalds@linux-foundation.org>, James Bottomley
	<James.Bottomley@hansenpartnership.com>, ksummit
	<ksummit-discuss@lists.linuxfoundation.org>
Date: Mon, 10 Sep 2018 15:56:27 +0000
Message-ID: <20180910155626.GT16300@sasha-vm>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<CA+55aFyCdGstDu2u11veh3YxabpQrfaPEzuZB2x=eRXpw89prA@mail.gmail.com>
	<1536592110.4035.5.camel@HansenPartnership.com>
	<CA+55aFwg+iP-R9=fiJ_uzggiQi39Ce7wO707rPYx7C9BGQ0-Rw@mail.gmail.com>
	<20180910153806.GR16300@sasha-vm> <20180910154738.GA3712@chatter>
In-Reply-To: <20180910154738.GA3712@chatter>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <FA1C220A0D07254A8B506CEBF4AB5AEB@namprd21.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] community
 management/subsystem governance
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Sep 10, 2018 at 11:47:38AM -0400, Konstantin Ryabitsev wrote:
>On Mon, Sep 10, 2018 at 03:38:07PM +0000, Sasha Levin via Ksummit-discuss =
wrote:
>>Yes, some maintainers started adding links to lkml archives, but those
>>are very inconsistent and often just point to the patch submission
>>rather than relevant discussions.
>>
>>I'm not sure what's a good way to solve this, but I'd really like to
>>stop losing this valuable information as a result of the current
>>process.
>
>This is partly the goal behind cregit:
>
>https://na01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fcregit.=
linuxsources.org%2F&amp;data=3D02%7C01%7CAlexander.Levin%40microsoft.com%7C=
abcc8f65199b4c5e4dc108d61734a674%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0=
%7C636721912238696228&amp;sdata=3DocQoQHzDCZuFwYxTIzDrg%2BNHKUHmZbLQElEcHK7=
Aaeo%3D&amp;reserved=3D0
>
>The plan is that the next version of cregit will become an official=20
>kernel.org resource some time mid-next year, and will aggregate as=20
>much information about the kernel code as it can from various places,=20
>including patchwork.

I thought cregit was more about identifying who wrote what line of code
rather than all the metadata around that line of code?


--
Thanks,
Sasha=
