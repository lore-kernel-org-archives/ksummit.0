Return-Path: <pavel@ucw.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B10A84A2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 23 Jul 2015 21:56:24 +0000 (UTC)
Received: from atrey.karlin.mff.cuni.cz (atrey.karlin.mff.cuni.cz
	[195.113.26.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id C698AE0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 23 Jul 2015 21:56:23 +0000 (UTC)
Date: Thu, 23 Jul 2015 23:56:22 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Krzysztof Kozlowski <k.kozlowski@samsung.com>
Message-ID: <20150723215622.GB14730@amd>
References: <20150723105726.GC30929@amd>
	<CACRpkdbCbhgJHZifouDVUvaxyT5YWWdQz7Nt3AKoLvuEn4z7mQ@mail.gmail.com>
	<20150723121441.GB29747@amd>
	<CAJKOXPc7Uryq2PFrKyC_rwSLwR9GadJEzS6YMdGcCBJY-QNNPw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAJKOXPc7Uryq2PFrKyC_rwSLwR9GadJEzS6YMdGcCBJY-QNNPw@mail.gmail.com>
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

On Thu 2015-07-23 22:23:53, Krzysztof Kozlowski wrote:
> 2015-07-23 21:14 GMT+09:00 Pavel Machek <pavel@ucw.cz>:
> > On Thu 2015-07-23 13:21:19, Linus Walleij wrote:
> >> On Thu, Jul 23, 2015 at 12:57 PM, Pavel Machek <pavel@ucw.cz> wrote:
> >> I'm adding Björn Andersson <bjorn.andersson@sonymobile.com> to this list.
> >>
> >> Björn has as of yesterday booted a mainline kernel on the SONY
> >> Xperia Z3 and his company has demonstrated strong interest in
> >> getting the mainline kernel to run on their handsets.
> >> https://plus.google.com/102276447148493441479/posts/amRvpE8piSw
> >
> > Yes. Plus, there seems to be group at Samsung. Trats is a cellphone iirc.
> >
> > http://lists.infradead.org/pipermail/linux-arm-kernel/2011-December/078428.html
> >
> > Signed-off-by: HeungJun, Kim <riverful.kim at samsung.com>
> > Signed-off-by: Kyungmin Park <kyungmin.park at samsung.com>
> 
> Interesting topic also for me. We were (and still are) spending
> significant effort so Trats (~Galaxy S 2 for Tizen) and Trats2 devices
> (Galaxy S III released for Tizen) would be fully supported by
> mainline. The same we did more recently for Gear 2 smartwatch.
> Although it is not a cellphone but fits to a mobile device category.

Can I get Galaxy S III and use mainline or that? If not... can I get
Trats or Trats2 device somehow?

> Standard Debian works fine on them. With a mobile operating system -
> like Tizen - it gets more difficult.

What do you use for desktop in Debian? I'm using MATE on n900, and it
is almost usable. I have cellular calls working (but audio quality is
awful). But MATE is so usable thanks to n900's keyboard and
stylus... (and I'm still searching for web browser that works within
256MB ram).

> Most of the drivers are there but few important SoC components are
> missing (for example camera for Gear 2). One of the obstacles here was
> lack of public firmware which prevented mainlining some of the drivers
> (e.g. FIMC - the camera).

You mean.. there is not even redistributable firmware binary?
									Pavel
-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html
