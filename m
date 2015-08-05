Return-Path: <pavel@ucw.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 126958B4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Aug 2015 11:54:12 +0000 (UTC)
Received: from atrey.karlin.mff.cuni.cz (atrey.karlin.mff.cuni.cz
	[195.113.26.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 27CF411E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Aug 2015 11:54:11 +0000 (UTC)
Date: Wed, 5 Aug 2015 13:54:09 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Linus Walleij <linus.walleij@linaro.org>
Message-ID: <20150805115408.GA14607@amd>
References: <20150723084251.54da2be0@gandalf.local.home>
	<20150723154014.GD11162@sirena.org.uk>
	<55B7FD82.8010806@sonymobile.com>
	<20150728230743.GO4753@usrtlx11787.corpusers.net>
	<CAL_JsqJ0j2wPwVYj3PX0UYiAXeZ-vm8KGX-W_-Dk3Gu1PVQrQw@mail.gmail.com>
	<CACRpkda0u4tWKfXTa0OEV7nFuXWjpDBt222iTBbEhnqLZptJXw@mail.gmail.com>
	<CAL_JsqLBPdiCgcE0CDesZXWQtthPJbZ8ryvcPmr6CaxWjMPFyA@mail.gmail.com>
	<F3A6AFDE-1DFA-4DC7-AD26-DC02260C0979@holtmann.org>
	<CACRpkda=Pr3+2kGfH0Kc4eNw5yMOFHbbeyEJbeLApa-YzCsxsw@mail.gmail.com>
	<CACRpkdacTo8hKt4E1KZDBQ3oyXzV1mPXT-H34Exs=ZWKtZdAqA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACRpkdacTo8hKt4E1KZDBQ3oyXzV1mPXT-H34Exs=ZWKtZdAqA@mail.gmail.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"riverful.kim@samsung.com" <riverful.kim@samsung.com>,
	"kyungmin.park@samsung.com" <kyungmin.park@samsung.com>,
	Bjorn Andersson <bjorn.andersson@sonymobile.com>,
	Greg KH <gregkh@linuxfoundation.org>, John Stultz <john.stultz@linaro.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Mainline kernel on a cellphone
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi!

> >> Or and did I mention that some manufactures actually put FM radio and GPS
> >> controls behind the Bluetooth chip. So access to these slave devices goes
> >> via the Bluetooth HCI. This means that you have this fun dependency:
> >>
> >> FM radio -> Bluetooth HCI -> UART -> UART slave
> 
> So what I wanted to ask is who else is doing this apart from
> CG2900/STLC2690? Is it a common pattern?

The most important phone in the world (*) does it like that.

- it has extra GPIOs to handle power management

- GPS is connected to the GSM parts, not to bluetooth

Best regards,
									Pavel
(*) Nokia N900.
									
-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html
