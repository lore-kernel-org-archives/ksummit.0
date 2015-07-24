Return-Path: <kyungmin78@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C2872487
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 24 Jul 2015 04:40:06 +0000 (UTC)
Received: from mail-qg0-f43.google.com (mail-qg0-f43.google.com
	[209.85.192.43])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EF6F6176
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 24 Jul 2015 04:40:05 +0000 (UTC)
Received: by qgii95 with SMTP id i95so6027120qgi.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 23 Jul 2015 21:40:05 -0700 (PDT)
MIME-Version: 1.0
Sender: kyungmin78@gmail.com
In-Reply-To: <CAJKOXPc7Uryq2PFrKyC_rwSLwR9GadJEzS6YMdGcCBJY-QNNPw@mail.gmail.com>
References: <20150723105726.GC30929@amd>
	<CACRpkdbCbhgJHZifouDVUvaxyT5YWWdQz7Nt3AKoLvuEn4z7mQ@mail.gmail.com>
	<20150723121441.GB29747@amd>
	<CAJKOXPc7Uryq2PFrKyC_rwSLwR9GadJEzS6YMdGcCBJY-QNNPw@mail.gmail.com>
Date: Fri, 24 Jul 2015 13:40:05 +0900
Message-ID: <CAH9JG2XUfg=iPQtUJV5LzJbPzvpZQd2Jx7w_RtqJEAK5fVZdVg@mail.gmail.com>
From: Kyungmin Park <kmpark@infradead.org>
To: Krzysztof Kozlowski <k.kozlowski@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: HeungJun Kim <riverful.kim@samsung.com>,
	Bjorn Andersson <Bjorn.Andersson@sonymobile.com>,
	John Stultz <john.stultz@linaro.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, Pavel Machek <pavel@ucw.cz>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Mainline kernel on a cellphone
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Jul 23, 2015 at 10:23 PM, Krzysztof Kozlowski
<k.kozlowski@samsung.com> wrote:
> 2015-07-23 21:14 GMT+09:00 Pavel Machek <pavel@ucw.cz>:
>> On Thu 2015-07-23 13:21:19, Linus Walleij wrote:
>>> On Thu, Jul 23, 2015 at 12:57 PM, Pavel Machek <pavel@ucw.cz> wrote:
>>>
>>> > Significant percentage of phones run Linux kernel today, but geting
>>> > mainline kernel to work on a phone is very hard to do. (So hard, that
>>> > newest device that is close to working on recent mainline was made in
>>> > 2009.) There are multiple obstacles, including huge patches from
>>> > silicon vendors, missing GNU/Linux userspace support that makes kerne=
l
>>> > testing hard, interfaces unsuitable for phones and power management
>>> > problems.
>>> >
>>> > Interested people:
>>> >
>>> > Sebastian Reichel <sre@kernel.org>
>>> > Pali Roh=C3=A1r <pali.rohar@gmail.com>
>>>
>>> I'm adding Bj=C3=B6rn Andersson <bjorn.andersson@sonymobile.com> to thi=
s list.
>>>
>>> Bj=C3=B6rn has as of yesterday booted a mainline kernel on the SONY
>>> Xperia Z3 and his company has demonstrated strong interest in
>>> getting the mainline kernel to run on their handsets.
>>> https://plus.google.com/102276447148493441479/posts/amRvpE8piSw
>>
>> Yes. Plus, there seems to be group at Samsung. Trats is a cellphone iirc=
.
>>
>> http://lists.infradead.org/pipermail/linux-arm-kernel/2011-December/0784=
28.html
>>
>> Signed-off-by: HeungJun, Kim <riverful.kim at samsung.com>
>> Signed-off-by: Kyungmin Park <kyungmin.park at samsung.com>

Already Krzysztof mentioned. Our team tried to support mainline kernel
for product and it's still on-going.
see gear 2 support with exysno3250.

I'm interested in this topic. Moreover KS is held at Korea. so It's
good chance to attend and discuss this topic.

Thank you,
Kyungmin Park
>
> Interesting topic also for me. We were (and still are) spending
> significant effort so Trats (~Galaxy S 2 for Tizen) and Trats2 devices
> (Galaxy S III released for Tizen) would be fully supported by
> mainline. The same we did more recently for Gear 2 smartwatch.
> Although it is not a cellphone but fits to a mobile device category.
>
> Standard Debian works fine on them. With a mobile operating system -
> like Tizen - it gets more difficult.
>
> Most of the drivers are there but few important SoC components are
> missing (for example camera for Gear 2). One of the obstacles here was
> lack of public firmware which prevented mainlining some of the drivers
> (e.g. FIMC - the camera).
>
> Best regards,
> Krzysztof
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
