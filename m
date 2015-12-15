Return-Path: <alexandre.belloni@free-electrons.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3B919E6C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 15 Dec 2015 14:15:32 +0000 (UTC)
Received: from mail.free-electrons.com (down.free-electrons.com
	[37.187.137.238])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 68D2814D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 15 Dec 2015 14:15:31 +0000 (UTC)
Date: Tue, 15 Dec 2015 15:15:18 +0100
From: Alexandre Belloni <alexandre.belloni@free-electrons.com>
To: Arnd Bergmann <arnd@arndb.de>
Message-ID: <20151215141518.GE8574@piout.net>
References: <10141.1450179238@warthog.procyon.org.uk>
	<2151085.9YAhiz9GYL@wuerfel>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2151085.9YAhiz9GYL@wuerfel>
Cc: john.stultz@linaro.org, ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Leap second handling
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi,

On 15/12/2015 at 13:12:03 +0100, Arnd Bergmann wrote :
> > So the question is how to deal with it.  I can see three obvious ways:
> > 
> >  (1) Treat it the same as hh:mm:59.
> > 
> >  (2) Treat it the same as hh:mm+1:00, rolling over the carry through to the
> >      year if necessary.
> > 
> >  (3) Assign specific time_t values to leap seconds in mktime64().  There's a
> >      table of them here:
> > 
> > 	https://en.wikipedia.org/wiki/Leap_second
> > 
> >      It wouldn't be hard to do within just the kernel, but this would put the
> >      kernel at odds with userspace to the tune of nearly half a minute at the
> >      current time.  It might be sufficient to just fix the libc's in userspace
> >      - but you can bet there's someone somewhere who checks that seconds
> >      doesn't exceed 59.
> > 
> >      The kernel would also need to tell libc whether or not the time value it
> >      gets includes leap seconds.
> > 
> > Any thoughts?
> 
> The kernel supports CLOCK_TAI as a timebase. While I think some operating systems
> use this as the default clock, we don't do that, and I assume we don't want
> to change this.
> 
> ktime_get_clocktai() will return the time in this format, and the timekeeper
> stores the offset between boottime and TAI internally, and updates it whenever
> a leap second happens, so if you set a timer in CLOCK_TAI, it will expire at
> the right moment.
> 
> What I think we don't do at all in the kernel is to keep track of past (or
> even future) leap seconds, so if you need to encode a date in the past,
> the kernel has no idea what the difference between UTC and TAI was at the
> time, and if you encode a time in the future, you don't know if we will
> insert a leap second before you get to that time. I think these are the
> harder questions to solve first if you want to handle the X.509 certificates
> right, before we get to the question of what happens for dates *on* the
> leap second.
> 

My point of view is that we shouldn't do anything in the kernel and
instead handle that with proper TZ files (see leapseconds in
tzdata2015g). You can then handle your own leapseconds epoch and add
future leapseconds without having to update your kernel.

-- 
Alexandre Belloni, Free Electrons
Embedded Linux, Kernel and Android engineering
http://free-electrons.com
