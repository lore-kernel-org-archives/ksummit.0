Return-Path: <k.kozlowski@samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 73F5BA1F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Aug 2015 08:06:07 +0000 (UTC)
Received: from mailout4.w1.samsung.com (mailout4.w1.samsung.com
	[210.118.77.14])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0DA4F13F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Aug 2015 08:06:05 +0000 (UTC)
Received: from eucpsbgm1.samsung.com (unknown [203.254.199.244])
	by mailout4.w1.samsung.com
	(Oracle Communications Messaging Server 7.0.5.31.0 64bit (built May 5
	2014)) with ESMTP id <0NTO00KJVJU38520@mailout4.w1.samsung.com> for
	ksummit-discuss@lists.linuxfoundation.org; Wed,
	26 Aug 2015 09:06:03 +0100 (BST)
To: Heiko Stuebner <heiko@sntech.de>, ksummit-discuss@lists.linuxfoundation.org
References: <20150723105726.GC30929@amd> <55DD4FA1.2090605@samsung.com>
	<20150826061514.GA8666@jtriplet-mobl1> <8378530.JiidFBe9lN@phil>
From: Krzysztof Kozlowski <k.kozlowski@samsung.com>
Message-id: <55DD7366.1050309@samsung.com>
Date: Wed, 26 Aug 2015 17:05:58 +0900
MIME-version: 1.0
In-reply-to: <8378530.JiidFBe9lN@phil>
Content-type: text/plain; charset=windows-1252
Content-transfer-encoding: 7bit
Cc: Pavel Machek <pavel@ucw.cz>,
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

On 26.08.2015 16:23, Heiko Stuebner wrote:
> Am Dienstag, 25. August 2015, 23:15:14 schrieb Josh Triplett:
>> On Wed, Aug 26, 2015 at 02:33:21PM +0900, Krzysztof Kozlowski wrote:
>>> On 26.08.2015 14:30, Laurent Pinchart wrote:
>>>> On Wednesday 26 August 2015 13:52:23 Krzysztof Kozlowski wrote:
>>>>> On 26.08.2015 13:25, Sudip Mukherjee wrote:
>>>>>> On Wed, Aug 26, 2015 at 10:22:11AM +0900, Krzysztof Kozlowski wrote:
>>>>>>> On 26.08.2015 03:59, Tim Bird wrote:
>>>>>>>> On 07/29/2015 12:40 AM, Pavel Machek wrote:
>>>>>> <snip>
>>>>>>
>>>>>>> 4. Their coding style is so different that I can't imagine mainlining
>>>>>>> them into staging area... Recently I was digging into Mali400 and it
>>>>>>> was
>>>>>>> literally hurting my eyes to see that coding style. It's like
>>>>>>> opposite
>>>>>>> of kernel.
>>>>>>
>>>>>> Hi,
>>>>>> I have seen Mali code once few months ago and true that the styling
>>>>>> there is exactly opposite of what we use. But anyway, I hope including
>>>>>> that in staging will be beneficial for all of you.
>>>>>
>>>>> Looking at the list of SoCs using Mali:
>>>>> https://en.wikipedia.org/wiki/Mali_(GPU)
>>>>> then clearly a lot of vendors could benefit from that. I would be happy
>>>>> to see Mali in staging/mainline.
>>>>>
>>>>>> And I can also guess
>>>>>> that it will be a waste of your time if you add it to staging and
>>>>>> refactor the code ultimately merging it to the main part of the kerel.
>>>>>>
>>>>>> I am not an experienced Mali developer but if you all are ok with it
>>>>>> then
>>>>>> I can take up the task of adding it to staging. But I will need to
>>>>>> have
>>>>>> a board for that as without hardware Greg will not allow the code to
>>>>>> be
>>>>>> added. And Krzysztof has suggested ODROID-U3 for this purpose.
>>>>>
>>>>> Right, I suggested Odroid-U3 (with Mali 400 and Exynos4412) because the
>>>>> board works quite well with mainline. Most of stuff is upstreamed.
>>>>> However I am using Tizen TV profile (public) on it with 4.0 kernel (not
>>>>> entirely public).
>>>>>
>>>>> There are a lot of more devices with Mali 400 or newer so the question
>>>>> would be rather - which board would work the best (with less problems)
>>>>> on mainline.
>>>>>
>>>>> Anyway good luck :)
>>>>
>>>> Given that DRM drivers can't be merged to mainline without an
>>>> open-source
>>>> userspace we're stuck until ARM decides to play fair (unlikely) or the
>>>> Lima
>>>> driver project rises back from the deaths.
>>>
>>> You mean that closed Mali DDK (the user-space interface) is major
>>> obstacle for mainlining Mali kernel side? Why?
>>
>> Exactly as stated: in general, and particularly for graphics, a kernel
>> interface needs some Open Source userspace showing that it actually
>> works.  The graphics maintainers do not merge kernel drivers for which
>> only a proprietary userspace exists, for a variety of reasons, not least
>> of which an inability to test them, check for regressions, or otherwise
>> maintain them.
> 
> An additional point would be the possible (in-)stability of the userspace 
> interface. While I could sucessfully use a r6 midgard kernel driver with a r5 
> userspace lib yesterday on my Rockchip Chromebook using Debian, I don't think 
> that is guaranteed to work everytime or that special care is taken for the 
> kernel driver to prevent needing upgrades in lockstep.

One could imagine also a situation where the closed user-space library
would not change API because it would care also about compatibility with
mainline driver, not only about ARM open driver. But that actually looks
like a job for ARM.

I see now also another reason for not accepting Mali mainline - putting
pressure on the ARM to open the DDK.

> 
> And that is not even taking into account, that the mali userspace libs seem to 
> be implementator-specific somehow too. For example for Rockchip I currently get 
> my libs from the ChromeOS tree [0] which can talk to X11 [although not plasma5 
> it seems] and ARM seems to provide a variant for the firefly board using the 
> legacy fbdev interface of the 3.10-based Android kernel. And then there are 
> different variants for Samsung, etc too.

Yes, indeed. They are customer-oriented, where SoC vendor is the customer.
This also means that the customer has an ability to influence on ARM
decisions...

Anyway thanks Josh and Heiko for explaining.

Best regards,
Krzysztof

>> I haven't heard anything about Lima being defunct, though; as far as I
>> know, it's as functional as it ever was on the hardware it supports.
>> It's unlikely to ever be officially supported, but that hardly seems
>> like a requirement.  If you're running on a Mali 400, Lima should work.
> 
> probably not entirely defunct, but still on life-support:
> 
> For one, if you click on the "Source"-link on limadriver.org you get the 
> gitorious "we're migrating old projects to archive.org" page.
> 
> And secondly there is supposed to be an actual mesa driver for mali400 and 
> even bits for the midgard gpus (Mali-T) around, but limited to Luc's harddrive 
> for now [1].
> 
> 
> [0] https://github.com/mmind/mali-driver
> [1] http://libv.livejournal.com/27461.html
> 
> 
