Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 393311117
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 15:06:27 +0000 (UTC)
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam02on0120.outbound.protection.outlook.com [104.47.36.120])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A6472713
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 15:06:26 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: Laura Abbott <labbott@redhat.com>
Date: Fri, 7 Sep 2018 15:06:24 +0000
Message-ID: <20180907150623.GH16300@sasha-vm>
References: <20180904201620.GC16300@sasha-vm>
	<CAKMK7uFO3xiKxa+mEDgEfDx6ZKY7aFPibD1xuK3z-Ybi0Zr3Sw@mail.gmail.com>
	<20180905101710.73137669@gandalf.local.home>
	<20180907004944.GD16300@sasha-vm>
	<CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
	<20180907014930.GE16300@sasha-vm>
	<2534be10-2e70-6932-39c1-7caca2cff044@roeck-us.net>
	<4990d2c1-6f26-0500-9afa-986a61fce3bf@redhat.com>
In-Reply-To: <4990d2c1-6f26-0500-9afa-986a61fce3bf@redhat.com>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <C0159B9F0E3C7048BA1346F1DEECE41D@namprd21.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Sep 07, 2018 at 07:37:06AM -0700, Laura Abbott wrote:
>On 09/06/2018 07:52 PM, Guenter Roeck wrote:
>>On 09/06/2018 06:49 PM, Sasha Levin via Ksummit-discuss wrote:
>>>
>>>This is a *huge* reason why we see regressions in Stable. Take a look at
>>>https://na01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flists=
.linuxfoundation.org%2Fpipermail%2Fksummit-discuss%2F2018-September%2F00528=
7.html&amp;data=3D02%7C01%7CAlexander.Levin%40microsoft.com%7Cf206ee69bd714=
52d0d8d08d614cf64a5%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C6367192783=
16194423&amp;sdata=3DrYS7lCcdGMzo0kbFowVot790z8GV2Alr1ynEBd1X6qA%3D&amp;res=
erved=3D0
>>>for a list of recent user visible regressions the CoreOS folks have
>>>observed this year. Do you want to know when they were merged? Let me
>>>help you: all but one were merged in -rc5 or later.
>>>
>>
>>My conclusion from that would be that patches are applied to stable
>>before they had time to soak in mainline. Your argument against
>>accepting patches into mainline might as well be applied to patches
>>applied to stable.
>>
>>I think you are a bit hypocritical arguing that patches should be
>>restricted from being accepted into mainline ... when at the same
>>time patches are at least sometimes applied almost immediately to
>>stable releases from there. Plus, some if not many of the patches
>>applied to stable releases nowadays don't really fix critical or
>>even severe bugs. If the patches mentioned above indeed caused
>>regressions in mainline, those regressions should have been found
>>and fixed _before_ the patches made it into stable releases.
>>Blaming mainline for the problem is just shifting the blame.
>>
>>I would argue that, if anything, the rules for accepting patches into
>>_stable_ releases should be much more strict than they are today.
>>If anything, we need to look into that, not into restricting patch
>>access to mainline.
>
>Part of my proposal for a longer -rc time for stable was for this
>exact problem: patches that have been merged in mainline but
>tagged for stable may not have had time to test to find all
>bugs. The thought was a longer stable -rc cycle would help
>in finding those. I think you've hit upon the real problem
>though which is that the patches probably shouldn't have been
>in stable in the first place.

Let me use the CoreOS example here again. Here are the 5 user visible
stable regressions they had this year:

8844618d8aa ("ext4: only look at the bg_flags field if it is valid")
f46ecbd97f5 ("cifs: Fix slab-out-of-bounds in send_set_info() on SMB2
ACE setting")
a6f81fcb2c3 ("tcp: avoid integer overflows in tcp_rcv_space_adjust()")
7b2ee50c0cd ("hv_netvsc: common detach logic")
f599c64fdf7 ("xen-netfront: Fix race between device setup and open")
a93bf0ff449 ("vxlan: update skb dst pmtu on tx path")

Which of those patches would you not take in a stable tree in the first
place?

--
Thanks,
Sasha=
