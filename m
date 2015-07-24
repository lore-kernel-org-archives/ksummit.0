Return-Path: <k.kozlowski@samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BEA59728
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 24 Jul 2015 01:37:20 +0000 (UTC)
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com
	[210.118.77.12])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B36B5150
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 24 Jul 2015 01:37:19 +0000 (UTC)
MIME-version: 1.0
Content-type: text/plain; charset=windows-1252
Received: from eucpsbgm2.samsung.com (unknown [203.254.199.245])
	by mailout2.w1.samsung.com
	(Oracle Communications Messaging Server 7.0.5.31.0 64bit (built May 5
	2014)) with ESMTP id <0NRY005DWXU31D20@mailout2.w1.samsung.com> for
	ksummit-discuss@lists.linuxfoundation.org; Fri,
	24 Jul 2015 02:37:15 +0100 (BST)
Content-transfer-encoding: 8BIT
Message-id: <55B196CD.6050504@samsung.com>
Date: Fri, 24 Jul 2015 10:37:17 +0900
From: Krzysztof Kozlowski <k.kozlowski@samsung.com>
To: Pavel Machek <pavel@ucw.cz>
References: <20150723105726.GC30929@amd>
	<CACRpkdbCbhgJHZifouDVUvaxyT5YWWdQz7Nt3AKoLvuEn4z7mQ@mail.gmail.com>
	<20150723121441.GB29747@amd>
	<CAJKOXPc7Uryq2PFrKyC_rwSLwR9GadJEzS6YMdGcCBJY-QNNPw@mail.gmail.com>
	<20150723215622.GB14730@amd>
In-reply-to: <20150723215622.GB14730@amd>
Cc: Bjorn Andersson <Bjorn.Andersson@sonymobile.com>,
	John Stultz <john.stultz@linaro.org>, kyungmin.park@samsung.com,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Mainline kernel on a cellphone
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 24.07.2015 06:56, Pavel Machek wrote:
> On Thu 2015-07-23 22:23:53, Krzysztof Kozlowski wrote:
>> 2015-07-23 21:14 GMT+09:00 Pavel Machek <pavel@ucw.cz>:
>>> On Thu 2015-07-23 13:21:19, Linus Walleij wrote:
>>>> On Thu, Jul 23, 2015 at 12:57 PM, Pavel Machek <pavel@ucw.cz> wrote:
>>>> I'm adding Björn Andersson <bjorn.andersson@sonymobile.com> to this list.
>>>>
>>>> Björn has as of yesterday booted a mainline kernel on the SONY
>>>> Xperia Z3 and his company has demonstrated strong interest in
>>>> getting the mainline kernel to run on their handsets.
>>>> https://plus.google.com/102276447148493441479/posts/amRvpE8piSw
>>>
>>> Yes. Plus, there seems to be group at Samsung. Trats is a cellphone iirc.
>>>
>>> http://lists.infradead.org/pipermail/linux-arm-kernel/2011-December/078428.html
>>>
>>> Signed-off-by: HeungJun, Kim <riverful.kim at samsung.com>
>>> Signed-off-by: Kyungmin Park <kyungmin.park at samsung.com>
>>
>> Interesting topic also for me. We were (and still are) spending
>> significant effort so Trats (~Galaxy S 2 for Tizen) and Trats2 devices
>> (Galaxy S III released for Tizen) would be fully supported by
>> mainline. The same we did more recently for Gear 2 smartwatch.
>> Although it is not a cellphone but fits to a mobile device category.
> 
> Can I get Galaxy S III and use mainline or that? If not... can I get
> Trats or Trats2 device somehow?

(--riverful.kim@samsung.com, email bounces)

You can try with Galaxy S III after uploading mainline uboot.
Essentially this is exactly the same device as Trats2 so everything
should work... but debugging would be hard if you don't have the Anyway JIG.

If anything goes wrong then maybe you could restore original image... or
not. :)

The Trats devices were given to developers during Tizen Developer
Conferences and some time after. I remember that some division in
Samsung America was providing these to individual application developers
few years ago. I don't think they do now.

Anyway Samsung was releasing (and was giving away) new devices on each
Tizen Developer Conference. Last year it was Gear 2:
https://www.tizen.org/ko/events/tizen-developer-conference/2014/great-tizen-developer-conference-2014-giveaway-gear2-nuc

This year the conference is in China:
https://www.tizen.org/ko/events/tizen-developer-conference/2015


> 
>> Standard Debian works fine on them. With a mobile operating system -
>> like Tizen - it gets more difficult.
> 
> What do you use for desktop in Debian? I'm using MATE on n900, and it
> is almost usable. I have cellular calls working (but audio quality is
> awful). But MATE is so usable thanks to n900's keyboard and
> stylus... (and I'm still searching for web browser that works within
> 256MB ram).

The Debian was chosen for a testing platform. It is not a usable phone
with Debian but a usable 4-core device :) .

> 
>> Most of the drivers are there but few important SoC components are
>> missing (for example camera for Gear 2). One of the obstacles here was
>> lack of public firmware which prevented mainlining some of the drivers
>> (e.g. FIMC - the camera).
> 
> You mean.. there is not even redistributable firmware binary?

There was a reluctance on LKML to accept camera drivers without
releasing the firmware. Samsung never released the firmware on any
website however you can download it from the device and find it on
unofficial website:
www.sammobile.com/firmwares
(this website is not related to Samsung)

Some drivers were not even upstreamed (like touchscreen driver for
Gear2) but you can find the sources on vendor's site or on tizen.org.
Again you will have to get the firmware from unofficial site or from
device image directly (maybe here:
https://download.tizen.org/snapshots/tizen/mobile/latest/images ?)

Best regards,
Krzysztof
