Return-Path: <k.kozlowski.k@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7BCE147E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 23 Jul 2015 13:23:55 +0000 (UTC)
Received: from mail-qg0-f51.google.com (mail-qg0-f51.google.com
	[209.85.192.51])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4449E137
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 23 Jul 2015 13:23:54 +0000 (UTC)
Received: by qgeu79 with SMTP id u79so61568264qge.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 23 Jul 2015 06:23:53 -0700 (PDT)
MIME-Version: 1.0
Sender: k.kozlowski.k@gmail.com
In-Reply-To: <20150723121441.GB29747@amd>
References: <20150723105726.GC30929@amd>
	<CACRpkdbCbhgJHZifouDVUvaxyT5YWWdQz7Nt3AKoLvuEn4z7mQ@mail.gmail.com>
	<20150723121441.GB29747@amd>
Date: Thu, 23 Jul 2015 22:23:53 +0900
Message-ID: <CAJKOXPc7Uryq2PFrKyC_rwSLwR9GadJEzS6YMdGcCBJY-QNNPw@mail.gmail.com>
From: Krzysztof Kozlowski <k.kozlowski@samsung.com>
To: Pavel Machek <pavel@ucw.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	riverful.kim@samsung.com, kyungmin.park@samsung.com,
	John Stultz <john.stultz@linaro.org>,
	Bjorn Andersson <Bjorn.Andersson@sonymobile.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Mainline kernel on a cellphone
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

2015-07-23 21:14 GMT+09:00 Pavel Machek <pavel@ucw.cz>:
> On Thu 2015-07-23 13:21:19, Linus Walleij wrote:
>> On Thu, Jul 23, 2015 at 12:57 PM, Pavel Machek <pavel@ucw.cz> wrote:
>>
>> > Significant percentage of phones run Linux kernel today, but geting
>> > mainline kernel to work on a phone is very hard to do. (So hard, that
>> > newest device that is close to working on recent mainline was made in
>> > 2009.) There are multiple obstacles, including huge patches from
>> > silicon vendors, missing GNU/Linux userspace support that makes kernel
>> > testing hard, interfaces unsuitable for phones and power management
>> > problems.
>> >
>> > Interested people:
>> >
>> > Sebastian Reichel <sre@kernel.org>
>> > Pali Roh=C3=A1r <pali.rohar@gmail.com>
>>
>> I'm adding Bj=C3=B6rn Andersson <bjorn.andersson@sonymobile.com> to this=
 list.
>>
>> Bj=C3=B6rn has as of yesterday booted a mainline kernel on the SONY
>> Xperia Z3 and his company has demonstrated strong interest in
>> getting the mainline kernel to run on their handsets.
>> https://plus.google.com/102276447148493441479/posts/amRvpE8piSw
>
> Yes. Plus, there seems to be group at Samsung. Trats is a cellphone iirc.
>
> http://lists.infradead.org/pipermail/linux-arm-kernel/2011-December/07842=
8.html
>
> Signed-off-by: HeungJun, Kim <riverful.kim at samsung.com>
> Signed-off-by: Kyungmin Park <kyungmin.park at samsung.com>

Interesting topic also for me. We were (and still are) spending
significant effort so Trats (~Galaxy S 2 for Tizen) and Trats2 devices
(Galaxy S III released for Tizen) would be fully supported by
mainline. The same we did more recently for Gear 2 smartwatch.
Although it is not a cellphone but fits to a mobile device category.

Standard Debian works fine on them. With a mobile operating system -
like Tizen - it gets more difficult.

Most of the drivers are there but few important SoC components are
missing (for example camera for Gear 2). One of the obstacles here was
lack of public firmware which prevented mainlining some of the drivers
(e.g. FIMC - the camera).

Best regards,
Krzysztof
