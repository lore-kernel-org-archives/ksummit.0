Return-Path: <k.kozlowski@samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C1D5A7AD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Aug 2015 01:22:17 +0000 (UTC)
Received: from mailout3.w1.samsung.com (mailout3.w1.samsung.com
	[210.118.77.13])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 913DA1FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Aug 2015 01:22:16 +0000 (UTC)
Received: from eucpsbgm2.samsung.com (unknown [203.254.199.245])
	by mailout3.w1.samsung.com
	(Oracle Communications Messaging Server 7.0.5.31.0 64bit (built May 5
	2014)) with ESMTP id <0NTO00DLC151CU70@mailout3.w1.samsung.com> for
	ksummit-discuss@lists.linuxfoundation.org; Wed,
	26 Aug 2015 02:22:13 +0100 (BST)
To: Tim Bird <tim.bird@sonymobile.com>, Pavel Machek <pavel@ucw.cz>
References: <20150723105726.GC30929@amd>
	<CACRpkdbCbhgJHZifouDVUvaxyT5YWWdQz7Nt3AKoLvuEn4z7mQ@mail.gmail.com>
	<20150723121441.GB29747@amd>
	<20150723084251.54da2be0@gandalf.local.home>
	<20150723154014.GD11162@sirena.org.uk>
	<55B7FD82.8010806@sonymobile.com>
	<55B82222.3010409@samsung.com> <20150729074011.GB12557@amd>
	<55DCBB21.8070009@sonymobile.com>
From: Krzysztof Kozlowski <k.kozlowski@samsung.com>
Message-id: <55DD14C3.8090707@samsung.com>
Date: Wed, 26 Aug 2015 10:22:11 +0900
MIME-version: 1.0
In-reply-to: <55DCBB21.8070009@sonymobile.com>
Content-type: text/plain; charset=windows-1252
Content-transfer-encoding: 7bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"kyungmin.park@samsung.com" <kyungmin.park@samsung.com>,
	John Stultz <john.stultz@linaro.org>,
	=?UTF-8?Q?Andersson=2c_Bj=c3=b6rn?= <Bjorn.Andersson@sonymobile.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Mainline kernel on a cellphone
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 26.08.2015 03:59, Tim Bird wrote:
> On 07/29/2015 12:40 AM, Pavel Machek wrote:
>> Hi!
>>
>>>> There is now a wiki page at:
>>>> See http://elinux.org/Kernel_areas_of_focus_for_mainlining
>>>> In particular it has a table showing certain areas that tend to have
>>>> a lot of out-of-tree code (e.g. most phones have between 80K to
>>>> 100K of lines of wireless driver support out-of-mainline)
>>>
>>> Did anyone see successful attempts of mainlining such vendor code? I
>>> mean mainlining by individuals, not by vendor company itself.
>>
>> That is what is happening on Nokia N900. It took some time, but we
>> have almost usable phone at this point. We'll have usable one once
>> power management is working and once we get some more reasonable code
>> to control ofono.
> 
> Just an update on this thread.  We held a BOF at LinuxCon last week
> on this topic.  I gave a presentation with some background, and
> then we had a discussion.  Notes from the meeting (and a link to the
> presentation) are at: 
> http://elinux.org/LCNA_2015_Device_Mainlining_BOF_meeting_notes

Thanks for updated numbers. Interesting that for the same SoC vendor
(MSM) the difference between phone vendors is significant, e.g. 3.1M of
Samsung/MSM insertions, 2.6M of LG insertions and only 1.8M of Sony and
Motorola.

In the same time number of mainline contributors from LG, Sony and
Motorola is similar... so why LG and Samsung/MSM need more than 1M of
additional code out of tree?


I made also a diff with Tizen (developer) kernel source code. These are
kernel trees not used directly by end-market products, but for devices
released to developers. Sometimes these are the same as market-products,
but the kernel is developed in a more open-source way:

1. 4.0 kernel (for Odroid XU3):
   https://review.tizen.org/git/?p=platform/kernel/linux-exynos.git
   1404 files changed,
   4566 insertions(+),
   162026 deletions(-),
   1761 hunks

2. 3.10 kernel (for Gear2, Trats2/Galaxy S3, Odroid U3):
   https://review.tizen.org/git/?p=platform/kernel/linux-3.10.git
   5804 files changed,
   84175 insertions(+),
   536798 deletions(-),
   17917 hunks

I think the numbers are reversed (insertions <-> deletions) because
adding only Mali 400 should give ~50 000 of insertions.


Mali GPU drivers are an interesting case:
1. They are open (I believe Linux version is entirely under GPLv2).

2. They are developed for many OS-es.

3. They are present on may end-user products (using SoCs from Allwinner,
Mediatek, Rockchip, Samsung and more).

4. Their coding style is so different that I can't imagine mainlining
them into staging area... Recently I was digging into Mali400 and it was
literally hurting my eyes to see that coding style. It's like opposite
of kernel.


Best regards,
Krzysztof
