Return-Path: <sameo@linux.intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 71FFC884
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Aug 2015 09:12:00 +0000 (UTC)
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id F16FE130
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Aug 2015 09:11:59 +0000 (UTC)
Date: Wed, 5 Aug 2015 11:11:56 +0200
From: Samuel Ortiz <sameo@linux.intel.com>
To: Linus Walleij <linus.walleij@linaro.org>
Message-ID: <20150805091156.GB27438@zurbaran.home>
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
Cc: Bjorn Andersson <bjorn.andersson@sonymobile.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"riverful.kim@samsung.com" <riverful.kim@samsung.com>,
	"kyungmin.park@samsung.com" <kyungmin.park@samsung.com>,
	John Stultz <john.stultz@linaro.org>, Pavel Machek <pavel@ucw.cz>,
	Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Mainline kernel on a cellphone
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Aug 05, 2015 at 10:46:19AM +0200, Linus Walleij wrote:
> On Wed, Aug 5, 2015 at 10:40 AM, Linus Walleij <linus.walleij@linaro.org> wrote:
> > On Tue, Aug 4, 2015 at 12:36 AM, Marcel Holtmann <marcel@holtmann.org> wrote:
> (...)
> >> In a perfect world I would prefer we are not using the Bluetooth HCI line discipline
> >> at all. The problem right now is that everybody wants to enable the UART as
> >> /dev/ttyFOO and then move on. However in reality they are not general purpose
> >> TTY devices. The only thing you can ever do with them is tell the Bluetooth
> >> subsystem that there is a TTY device and attach its line discipline to it.
> >
> > This is done from userspace right? I never managed to wrap my head around
> > this because it seemed so odd and plainly hackish.
> >
> > In this ST-Ericsson driver for CG2900:
> > http://marc.info/?l=linux-kernel&m=134873373526049&w=2
> > the HCI link is used to tunnel things that are not Bluetooth, also
> > GPS and FM radio is controlled over HCI. Yeah sorry, I didn't invent
> > it... the HCI is then run over a UART.
> 
> Damned I snapped off the latter part of your message. Typing and
> mailing to quickly. This was obviously in response to:
> 
> >> Or and did I mention that some manufactures actually put FM radio and GPS
> >> controls behind the Bluetooth chip. So access to these slave devices goes
> >> via the Bluetooth HCI. This means that you have this fun dependency:
> >>
> >> FM radio -> Bluetooth HCI -> UART -> UART slave
> 
> So what I wanted to ask is who else is doing this apart from
> CG2900/STLC2690? Is it a common pattern?
Unfortunately it seems to be a common pattern. TI combos used to do
that at well.

Cheers,
Samuel.
