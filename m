Return-Path: <m.szyprowski@samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 33241919
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 08:12:05 +0000 (UTC)
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
	[210.118.77.11])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 559F915F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 08:12:04 +0000 (UTC)
Received: from eucpsbgm1.samsung.com (unknown [203.254.199.244])
	by mailout1.w1.samsung.com
	(Oracle Communications Messaging Server 7.0.5.31.0 64bit (built May 5
	2014)) with ESMTP id <0OBB00JWCQS1U340@mailout1.w1.samsung.com> for
	ksummit-discuss@lists.linuxfoundation.org; Wed,
	03 Aug 2016 09:12:01 +0100 (BST)
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>,
	Linus Walleij <linus.walleij@linaro.org>
References: <20160726223054.GA30993@dtor-ws> <5799DB1B.5010307@arm.com>
	<CACRpkdbAPDSVYp8UEGMwV21PxURce7C94sW5y1PD5QQiGDJpvA@mail.gmail.com>
	<4207317.8s4bUitgDu@vostro.rjw.lan>
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-id: <b339d512-afc6-8f2d-4c26-e6ff997f75c4@samsung.com>
Date: Wed, 03 Aug 2016 10:12:00 +0200
MIME-version: 1.0
In-reply-to: <4207317.8s4bUitgDu@vostro.rjw.lan>
Content-type: text/plain; charset=utf-8; format=flowed
Content-transfer-encoding: 7bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Self nomination
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Dear All,


On 2016-08-03 01:00, Rafael J. Wysocki wrote:
> On Tuesday, August 02, 2016 10:09:17 AM Linus Walleij wrote:
>> On Thu, Jul 28, 2016 at 12:14 PM, Marc Zyngier <marc.zyngier@arm.com> wrote:
>>> On 26/07/16 23:30, Dmitry Torokhov wrote:
>>>> - I would like to sync up with people and discuss [lack of] progress
>>>>    on topic of device probe ordering (including handling of deferred
>>>>    probes, asynchronous probes, etc).
>>> I'm extremely interested in discussing this.
>> I've also tried to pitch in on it in the past but I just feel stupid
>> whenever we try to come up with something better than what
>> we have :(
>>
>>> It has wide reaching consequences as (with my irqchip maintainer hat on)
>>> we've had to pretend that some bits of HW (timers, interrupt
>>> controllers) are not "devices". Not a massive issue for most, except
>>> when your interrupt controller has requirements that are very similar to
>>> the DMA mapping API (which you cannot use because "not a device"). Other
>>> problems are introduced by things like wire-MSI bridges, and most people
>>> end-up resorting to hacks like ad-hoc initcalls and sprinkling deferred
>>> probes in specific drivers.
>> Same feeling here. I'm accepting patches for random initcall
>> reordering because there is nothing else I can do, people need to
>> have their systems running. But it feels really fragile.
>>
>> Deferred probe alleviated the problem, but I remember saying at
>> the time that what we really need to do is build a dependency
>> graph and resolve it the same way e.g. systemd does. (Someone
>> may have called me BS on that, either for being wrong about everything
>> as usual or because of mentioning systemd, I don't know which one.)
>>
>> The latest proposal I saw came from Rafael and he had a scratch
>> idea for a dependency graph that I really liked, but I guess he's been
>> sidetracked since. Rafael, what happened with that?
> I got distracted, but Marek Szyprowski has revived it recently.
>
> It needs to be cleaned up somewhat, but other than that I think it's in
> a good enough shape to make some progress in that direction, at least in
> principle.

I really like the idea of pm dependencies between device and the patches
prepared by Rafael. They are exactly what we need for our case (PM for
Exynos IOMMU), but they will also help solving PM issues with complex
devices (like DRM for SoCs and ASoC audio).

Rafael: do you plan to do any update on them? Some time ago you wrote,
that you had such plan, but real life proved something else. If needed
I can continue works on them, but I need some directions what has to be
improved and fixed.

Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland
