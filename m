Return-Path: <pavel@ucw.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AE5D97AD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 23 Jul 2015 20:34:31 +0000 (UTC)
Received: from atrey.karlin.mff.cuni.cz (atrey.karlin.mff.cuni.cz
	[195.113.26.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 05E311A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 23 Jul 2015 20:34:30 +0000 (UTC)
Date: Thu, 23 Jul 2015 22:34:29 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20150723203429.GA8588@amd>
References: <20150723105726.GC30929@amd>
	<CACRpkdbCbhgJHZifouDVUvaxyT5YWWdQz7Nt3AKoLvuEn4z7mQ@mail.gmail.com>
	<20150723121441.GB29747@amd>
	<20150723084251.54da2be0@gandalf.local.home>
	<20150723202901.GA30318@amd>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150723202901.GA30318@amd>
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

On Thu 2015-07-23 22:29:02, Pavel Machek wrote:
> On Thu 2015-07-23 08:42:51, Steven Rostedt wrote:
> > On Thu, 23 Jul 2015 14:14:41 +0200
> > Pavel Machek <pavel@ucw.cz> wrote:
> > 
> > > On Thu 2015-07-23 13:21:19, Linus Walleij wrote:
> > > > On Thu, Jul 23, 2015 at 12:57 PM, Pavel Machek <pavel@ucw.cz> wrote:
> > > > 
> > > > > Significant percentage of phones run Linux kernel today, but geting
> > > > > mainline kernel to work on a phone is very hard to do. (So hard, that
> > > > > newest device that is close to working on recent mainline was made in
> > > > > 2009.) There are multiple obstacles, including huge patches from
> > > > > silicon vendors, missing GNU/Linux userspace support that makes kernel
> > > > > testing hard, interfaces unsuitable for phones and power management
> > > > > problems.
> > 
> > > 
> > > Yes. Plus, there seems to be group at Samsung. Trats is a cellphone iirc.
> > 
> > Seems like a reasonable topic, especially since KS is being held in
> > South Korea this year.
> > 
> > Although is this something to be a core topic or a tech topic? Does
> > this affect all subsystems, or just a set of drivers? Note, a core
> > topic wont get as much time for discussion as a tech topic would.
> > 
> > Also, what is expected to be solved at KS?
> 
> Questions I had in mind:
> 
> 1) RGB leds. They are not same as 3 leds. Plus there' hw acceleration
> on them. How to support them?
> 
> 2) HW damage: is it kernel's job to protect hardware from user? We
> currently have no battery over-discharge protection (and its tricky).
> 
> 3) HW abstraction: do we want to keep the model where kernel hides
> differences between different machines, so that same userland can run
> on all of them? Currently that is broken, for example we have 3
> "chargers" on N900, and userland gets very confused; or we have 100
> mixers, that are pretty much imposible to set up by user..
> 
> 4) voice link to modem: Nokia people tell us that ALSA is not suitable
> interface to modem audio. What is the right interface, then?
> 
> 5) where do we get userland for testing?

and the big one... for Android people (not me):

6) do we need to use s2ram (and then pretend phone is not suspended)
to save power on cellphones? If so, do we need new interface for
applications to signal "I'd really like to run"?

									Pavel

-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html
