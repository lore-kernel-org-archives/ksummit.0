Return-Path: <neilb@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9487B273
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 22:04:19 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C0B8F7C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 22:04:17 +0000 (UTC)
Date: Wed, 29 Jul 2015 08:03:50 +1000
From: NeilBrown <neilb@suse.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <20150729080350.17f9f96a@noble>
In-Reply-To: <8734973.3SWuCLvkiU@vostro.rjw.lan>
References: <20150723105726.GC30929@amd> <20150724143427.5a045528@noble>
	<20150724060049.GX10928@atomide.com>
	<8734973.3SWuCLvkiU@vostro.rjw.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Bjorn Andersson <Bjorn.Andersson@sonymobile.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	riverful.kim@samsung.com, kyungmin.park@samsung.com,
	John Stultz <john.stultz@linaro.org>, Pavel Machek <pavel@ucw.cz>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Mainline kernel on a cellphone
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, 25 Jul 2015 00:26:03 +0200 "Rafael J. Wysocki"
<rjw@rjwysocki.net> wrote:

> On Thursday, July 23, 2015 11:00:49 PM Tony Lindgren wrote:
> > * NeilBrown <neilb@suse.com> [150723 21:37]:
> > > On Thu, 23 Jul 2015 22:34:29 +0200 Pavel Machek <pavel@ucw.cz> wrote:
> > > > 
> > > > and the big one... for Android people (not me):
> > > > 
> > > > 6) do we need to use s2ram (and then pretend phone is not suspended)
> > > > to save power on cellphones? If so, do we need new interface for
> > > > applications to signal "I'd really like to run"?
> > > > 
> > > 
> > > For the first half of this question, the answer is:
> > >  Probably not.  runtime-pm should be able to put all devices to sleep,
> > >   and cgroup freezer should be able to freeze untrusted processes.
> > 
> > Yes s2ram is just an additional tool. PM runtime alone can
> > already provide a reasonable battery life for a phone as long as
> > it's properly implemented and the hardware supports it. With
> > reasonable battery life in this case I mean over 10 days in idle
> > mode with system running and timers working.
> > 
> > >  But I suspect runtime-pm doesn't provide as much power saving as
> > >  system suspend, and using the cgroup freezer means lots of changes to
> > >  userspace.
> > >  So lots of work would be needed to meet this goal, if it is a
> > >  worthwhile goal.
> > 
> > And with s2ram the difference is that then the system is not running
> > and timers don't work so it really needs to be optional.
> 
> Right.
> 
> Even with suspend-to-idle we can get less energy usage with respect to
> runtime idle (device runtime PM plus cpuidle) just because timer events
> are disabled then.
> 

Is this just the timer interrupt which keeps the clock up to date, or
are there other timer events which keep ticking?

Would it be possible for the wall-clock timer to stop if the system
has been idle for a while, and for the RTC to be used to recover the
correct time when activity restarts?

Thanks,
NeilBrown
 
