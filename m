Return-Path: <pavel@ucw.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 70BE387A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 23 Jul 2015 21:29:59 +0000 (UTC)
Received: from atrey.karlin.mff.cuni.cz (atrey.karlin.mff.cuni.cz
	[195.113.26.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id C03711A1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 23 Jul 2015 21:29:58 +0000 (UTC)
Date: Thu, 23 Jul 2015 23:29:56 +0200
From: Pavel Machek <pavel@ucw.cz>
To: josh@joshtriplett.org
Message-ID: <20150723212956.GB25053@amd>
References: <20150723105726.GC30929@amd>
	<CACRpkdbCbhgJHZifouDVUvaxyT5YWWdQz7Nt3AKoLvuEn4z7mQ@mail.gmail.com>
	<20150723121441.GB29747@amd>
	<20150723084251.54da2be0@gandalf.local.home>
	<20150723202901.GA30318@amd> <20150723210018.GA2077@cloud>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150723210018.GA2077@cloud>
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

On Thu 2015-07-23 14:00:18, josh@joshtriplett.org wrote:
> On Thu, Jul 23, 2015 at 10:29:02PM +0200, Pavel Machek wrote:
> > Questions I had in mind:
> > 
> > 1) RGB leds. They are not same as 3 leds. Plus there' hw acceleration
> > on them. How to support them?
> 
> Seems like internally we should treat them as 3 LEDs, but the interface
> to userspace or to the LED trigger mechanism should group the three
> brightness values together rather than handling them separately.

Yes. It should me "make it show magenta" not "set red to x, blue to y,
green to z"...

> Is the hardware acceleration something more than PWM?

Yes. It can do quite complex patterns autonomously. "Blink red three
times, then slowly go to full brightness and back". It can do as
complex stuff as blink n times, then delay, for n is prime
number.
									Pavel
-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html
