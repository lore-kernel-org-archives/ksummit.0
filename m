Return-Path: <k.kozlowski@samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 96968C15
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Aug 2015 05:33:26 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
	[210.118.77.12])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F195DE5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Aug 2015 05:33:25 +0000 (UTC)
Received: from eucpsbgm1.samsung.com (unknown [203.254.199.244])
	by mailout2.w1.samsung.com
	(Oracle Communications Messaging Server 7.0.5.31.0 64bit (built May 5
	2014)) with ESMTP id <0NTO00CC8CRN7X90@mailout2.w1.samsung.com> for
	ksummit-discuss@lists.linuxfoundation.org; Wed,
	26 Aug 2015 06:33:23 +0100 (BST)
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	ksummit-discuss@lists.linuxfoundation.org
References: <20150723105726.GC30929@amd> <20150826042537.GA4022@sudip-pc>
	<55DD4607.2030308@samsung.com> <75821461.TO3mbjAQav@avalon>
From: Krzysztof Kozlowski <k.kozlowski@samsung.com>
Message-id: <55DD4FA1.2090605@samsung.com>
Date: Wed, 26 Aug 2015 14:33:21 +0900
MIME-version: 1.0
In-reply-to: <75821461.TO3mbjAQav@avalon>
Content-type: text/plain; charset=windows-1252
Content-transfer-encoding: 7bit
Cc: "kyungmin.park@samsung.com" <kyungmin.park@samsung.com>,
	=?UTF-8?Q?Andersson=2c_Bj=c3=b6rn?= <Bjorn.Andersson@sonymobile.com>,
	John Stultz <john.stultz@linaro.org>, Pavel Machek <pavel@ucw.cz>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Mainline kernel on a cellphone
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 26.08.2015 14:30, Laurent Pinchart wrote:
> On Wednesday 26 August 2015 13:52:23 Krzysztof Kozlowski wrote:
>> On 26.08.2015 13:25, Sudip Mukherjee wrote:
>>> On Wed, Aug 26, 2015 at 10:22:11AM +0900, Krzysztof Kozlowski wrote:
>>>> On 26.08.2015 03:59, Tim Bird wrote:
>>>>> On 07/29/2015 12:40 AM, Pavel Machek wrote:
>>> <snip>
>>>
>>>> 4. Their coding style is so different that I can't imagine mainlining
>>>> them into staging area... Recently I was digging into Mali400 and it was
>>>> literally hurting my eyes to see that coding style. It's like opposite
>>>> of kernel.
>>>
>>> Hi,
>>> I have seen Mali code once few months ago and true that the styling
>>> there is exactly opposite of what we use. But anyway, I hope including
>>> that in staging will be beneficial for all of you.
>>
>> Looking at the list of SoCs using Mali:
>> https://en.wikipedia.org/wiki/Mali_(GPU)
>> then clearly a lot of vendors could benefit from that. I would be happy
>> to see Mali in staging/mainline.
>>
>>> And I can also guess
>>> that it will be a waste of your time if you add it to staging and
>>> refactor the code ultimately merging it to the main part of the kerel.
>>>
>>> I am not an experienced Mali developer but if you all are ok with it then
>>> I can take up the task of adding it to staging. But I will need to have
>>> a board for that as without hardware Greg will not allow the code to be
>>> added. And Krzysztof has suggested ODROID-U3 for this purpose.
>>
>> Right, I suggested Odroid-U3 (with Mali 400 and Exynos4412) because the
>> board works quite well with mainline. Most of stuff is upstreamed.
>> However I am using Tizen TV profile (public) on it with 4.0 kernel (not
>> entirely public).
>>
>> There are a lot of more devices with Mali 400 or newer so the question
>> would be rather - which board would work the best (with less problems)
>> on mainline.
>>
>> Anyway good luck :)
> 
> Given that DRM drivers can't be merged to mainline without an open-source 
> userspace we're stuck until ARM decides to play fair (unlikely) or the Lima 
> driver project rises back from the deaths.

You mean that closed Mali DDK (the user-space interface) is major
obstacle for mainlining Mali kernel side? Why?

Best regards,
Krzysztof
