Return-Path: <neilb@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A0932485
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 29 Jul 2015 23:59:17 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 638E22F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 29 Jul 2015 23:59:16 +0000 (UTC)
Date: Thu, 30 Jul 2015 09:59:03 +1000
From: NeilBrown <neilb@suse.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <20150730095903.5cb431a4@noble>
In-Reply-To: <3567831.C87ORqHPr8@vostro.rjw.lan>
References: <20150723105726.GC30929@amd> <20150729080350.17f9f96a@noble>
	<11240818.4BFkCO8WSW@vostro.rjw.lan>
	<3567831.C87ORqHPr8@vostro.rjw.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Pavel Machek <pavel@ucw.cz>, ksummit-discuss@lists.linuxfoundation.org,
	kyungmin.park@samsung.com, John Stultz <john.stultz@linaro.org>,
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

On Thu, 30 Jul 2015 01:23:21 +0200 "Rafael J. Wysocki"
<rjw@rjwysocki.net> wrote:

> On Wednesday, July 29, 2015 02:51:22 AM Rafael J. Wysocki wrote:
> > On Wednesday, July 29, 2015 08:03:50 AM NeilBrown wrote:
> > > On Sat, 25 Jul 2015 00:26:03 +0200 "Rafael J. Wysocki"
> > > <rjw@rjwysocki.net> wrote:
> > > 
> > > > On Thursday, July 23, 2015 11:00:49 PM Tony Lindgren wrote:
> > > > > * NeilBrown <neilb@suse.com> [150723 21:37]:
> > > > > > On Thu, 23 Jul 2015 22:34:29 +0200 Pavel Machek <pavel@ucw.cz> wrote:
> > > > > > > 
> > > > > > > and the big one... for Android people (not me):
> > > > > > > 
> > > > > > > 6) do we need to use s2ram (and then pretend phone is not suspended)
> > > > > > > to save power on cellphones? If so, do we need new interface for
> > > > > > > applications to signal "I'd really like to run"?
> > > > > > > 
> > > > > > 
> > > > > > For the first half of this question, the answer is:
> > > > > >  Probably not.  runtime-pm should be able to put all devices to sleep,
> > > > > >   and cgroup freezer should be able to freeze untrusted processes.
> > > > > 
> > > > > Yes s2ram is just an additional tool. PM runtime alone can
> > > > > already provide a reasonable battery life for a phone as long as
> > > > > it's properly implemented and the hardware supports it. With
> > > > > reasonable battery life in this case I mean over 10 days in idle
> > > > > mode with system running and timers working.
> > > > > 
> > > > > >  But I suspect runtime-pm doesn't provide as much power saving as
> > > > > >  system suspend, and using the cgroup freezer means lots of changes to
> > > > > >  userspace.
> > > > > >  So lots of work would be needed to meet this goal, if it is a
> > > > > >  worthwhile goal.
> > > > > 
> > > > > And with s2ram the difference is that then the system is not running
> > > > > and timers don't work so it really needs to be optional.
> > > > 
> > > > Right.
> > > > 
> > > > Even with suspend-to-idle we can get less energy usage with respect to
> > > > runtime idle (device runtime PM plus cpuidle) just because timer events
> > > > are disabled then.
> > > > 
> > > 
> > > Is this just the timer interrupt which keeps the clock up to date, or
> > > are there other timer events which keep ticking?
> > 
> > The other events mostly.
> > 
> > > Would it be possible for the wall-clock timer to stop if the system
> > > has been idle for a while, and for the RTC to be used to recover the
> > > correct time when activity restarts?
> > 
> > We use that mechanism in suspend-to-idle, but it requires the timekeeping
> > to be frozen.  I don't think it would be possible to do that for runtime
> > idle without races, though.
> 
> Moreover, the "if the system has been idle for a while" condition is not really
> in line with how runtime idle works.  Namely, it works by predicting how much
> time the given CPU will be idle (on the basis of when the next timer event
> for it is scheduled among other things) and selecting an idle state for it
> to go to in accordance with that.  So we know upfront how much time the CPU
> will be idle (at least roughly) and we rely on timer events to wake up CPUs
> from idle states.
> 
> In the suspend-to-idle case we only need to care about events from devices
> explicitly enabled to wake up the system from sleep and that's why we can safely
> suspend the timekeeping then.
> 

Thanks ... this actually helps me understand the point of
suspend-to-idle which didn't really make a lot of sense to me before
(though it entirely possible that I'm still missing some bits).

A while ago (years?) there was a debate about whether it was really
sensible/necessary to use system suspend to save power.  This was in
the context of Android and suspend-blocker/wake-locks.  One school of
thought was that with sufficient runtime-PM and appropriate controls of
user-space processes, system-wide suspend was not necessary.

You seem to be saying that timer-interrupts are the deal-breaker.  The
only way to stop timer interrupts indefinitely is using some sort of
system-wide suspend, whether suspend-to-RAM or suspend-to-idle.

While it may be possible to achieve significant power savings without
using system-wide suspend, there is a limit and system-wide suspend
will always allow better savings.

Would that be correct?  If so: it is nice to have a clear answer -
thanks.

NeilBrown
