Return-Path: <labbott@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5BF1EF29
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 15:54:59 +0000 (UTC)
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
	[209.85.222.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C603B7A8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 15:54:58 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id d131-v6so9952997qke.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 07 Sep 2018 08:54:58 -0700 (PDT)
To: Sasha Levin <Alexander.Levin@microsoft.com>
References: <20180904201620.GC16300@sasha-vm>
	<CAKMK7uFO3xiKxa+mEDgEfDx6ZKY7aFPibD1xuK3z-Ybi0Zr3Sw@mail.gmail.com>
	<20180905101710.73137669@gandalf.local.home>
	<20180907004944.GD16300@sasha-vm>
	<CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
	<20180907014930.GE16300@sasha-vm>
	<2534be10-2e70-6932-39c1-7caca2cff044@roeck-us.net>
	<4990d2c1-6f26-0500-9afa-986a61fce3bf@redhat.com>
	<20180907150623.GH16300@sasha-vm>
From: Laura Abbott <labbott@redhat.com>
Message-ID: <9fb15d7c-c59f-ee21-9c30-6d81d53a1456@redhat.com>
Date: Fri, 7 Sep 2018 08:54:54 -0700
MIME-Version: 1.0
In-Reply-To: <20180907150623.GH16300@sasha-vm>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
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

On 09/07/2018 08:06 AM, Sasha Levin wrote:
> On Fri, Sep 07, 2018 at 07:37:06AM -0700, Laura Abbott wrote:
>> On 09/06/2018 07:52 PM, Guenter Roeck wrote:
>>> On 09/06/2018 06:49 PM, Sasha Levin via Ksummit-discuss wrote:
>>>>
>>>> This is a *huge* reason why we see regressions in Stable. Take a look at
>>>> https://na01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flists.linuxfoundation.org%2Fpipermail%2Fksummit-discuss%2F2018-September%2F005287.html&amp;data=02%7C01%7CAlexander.Levin%40microsoft.com%7Cf206ee69bd71452d0d8d08d614cf64a5%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C636719278316194423&amp;sdata=rYS7lCcdGMzo0kbFowVot790z8GV2Alr1ynEBd1X6qA%3D&amp;reserved=0
>>>> for a list of recent user visible regressions the CoreOS folks have
>>>> observed this year. Do you want to know when they were merged? Let me
>>>> help you: all but one were merged in -rc5 or later.
>>>>
>>>
>>> My conclusion from that would be that patches are applied to stable
>>> before they had time to soak in mainline. Your argument against
>>> accepting patches into mainline might as well be applied to patches
>>> applied to stable.
>>>
>>> I think you are a bit hypocritical arguing that patches should be
>>> restricted from being accepted into mainline ... when at the same
>>> time patches are at least sometimes applied almost immediately to
>>> stable releases from there. Plus, some if not many of the patches
>>> applied to stable releases nowadays don't really fix critical or
>>> even severe bugs. If the patches mentioned above indeed caused
>>> regressions in mainline, those regressions should have been found
>>> and fixed _before_ the patches made it into stable releases.
>>> Blaming mainline for the problem is just shifting the blame.
>>>
>>> I would argue that, if anything, the rules for accepting patches into
>>> _stable_ releases should be much more strict than they are today.
>>> If anything, we need to look into that, not into restricting patch
>>> access to mainline.
>>
>> Part of my proposal for a longer -rc time for stable was for this
>> exact problem: patches that have been merged in mainline but
>> tagged for stable may not have had time to test to find all
>> bugs. The thought was a longer stable -rc cycle would help
>> in finding those. I think you've hit upon the real problem
>> though which is that the patches probably shouldn't have been
>> in stable in the first place.
> 
> Let me use the CoreOS example here again. Here are the 5 user visible
> stable regressions they had this year:
> 
> 8844618d8aa ("ext4: only look at the bg_flags field if it is valid")
> f46ecbd97f5 ("cifs: Fix slab-out-of-bounds in send_set_info() on SMB2
> ACE setting")
> a6f81fcb2c3 ("tcp: avoid integer overflows in tcp_rcv_space_adjust()")
> 7b2ee50c0cd ("hv_netvsc: common detach logic")
> f599c64fdf7 ("xen-netfront: Fix race between device setup and open")
> a93bf0ff449 ("vxlan: update skb dst pmtu on tx path")
> 
> Which of those patches would you not take in a stable tree in the first
> place?
Okay let me see if I can choose my wording better so I'm not going
around in circles.

I don't disagree that those patches look like they should go in stable.
My issue is that a stable release went out with those patches in them
when they were buggy. We're very good at finding patches for stable
which fix bugs. We're less good at finding buggy patches themselves
in stable. Can we make more of a distinction between patches that
are proposed for stable (all of those patches) and patches that
have had enough testing to be included in stable (probably not those
patches)? I'd like to answer the question of what more could be done
(testing?) to identify those patches which are tagged as fixing
bugs but are also still buggy.

Thanks,
Laura
