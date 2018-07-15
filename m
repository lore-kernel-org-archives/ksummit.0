Return-Path: <w@1wt.eu>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4EF8741C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 15 Jul 2018 06:05:21 +0000 (UTC)
Received: from 1wt.eu (wtarreau.pck.nerim.net [62.212.114.60])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 88526FC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 15 Jul 2018 06:05:20 +0000 (UTC)
Date: Sun, 15 Jul 2018 07:57:23 +0200
From: Willy Tarreau <w@1wt.eu>
To: Pavel Machek <pavel@ucw.cz>
Message-ID: <20180715055723.GA18578@1wt.eu>
References: <20180501205448.GE10479@thunk.org> <20180501220228.GD7397@sasha-vm>
	<20180502043017.GA11938@1wt.eu> <20180502194139.GA18390@sasha-vm>
	<20180502200229.GA12729@1wt.eu>
	<20180714173812.xhfwtcijlxebmn2k@devuan>
	<e1198cd9-9113-d231-d15a-31ac5224b3b1@roeck-us.net>
	<20180714194716.GA27381@amd>
	<4fbbb00c-dcc1-8a2a-a1c6-8d61d545b7b6@roeck-us.net>
	<20180714210913.GA31065@amd>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180714210913.GA31065@amd>
Cc: Greg KH <gregkh@linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, Jul 14, 2018 at 11:09:13PM +0200, Pavel Machek wrote:
> > For anyone interested in making sure that obscure (whatever that means)
> > drivers are tested for stable releases, but does not want to spend time on it,
> > all I can recommend is to implement qemu support for it and let me know,
> > and I'll be happy to add a respective test to my test farm.
> 
> Umm. Yes, qemu support for every driver would be nice, but will not happen.

Well, I would argue that driver code changes much less than core code
between kernel versions, and that most of the changes in drivers are
mostly infrastructure changes. Drivers don't evolve much in general,
they are written, tested, merged, they receive fixes and then they
only receive infrastructure changes that touch all drivers in the same
category.

When you backport fixes to drivers, it is very common that the code
looks almost the same between even a very old kernel and mainline, and
when not, the adaptations generally look quite straightforward, and if
not it means the driver changed significantly and in this case we don't
backport the fix as we don't even know if it is relevant.

I've always had much more difficulties backporting fixes under the arch/
subdir where stuff changes all the time. Sometimes a patch applies but
doesn't even compile. I learned not to play black magic in this area
because some patches are subtle and if the code changed you often need
the author and/or maintainers to double-check. Some subsystems like KVM
improve a lot over time and are difficult to backport to as well, and
even if you manage to properly backport a fix you're uncertain how to
verify you backported it well. Similarly you don't want to improvise
yourself the backporter of the year in this area.

Drivers are often OK and are the ones harder to test, so in the end
you don't miss much by your limited ability to test a backport there.

What I can certainly say as a stable kernel user is that the regression
rate is so low compared to the fix rate that I never have any problem
upgrading to a more recent version in the same branch, because the
number of problems that will be fixed is much higher than the risk of
a single regression.

As Guenter says, we can always improve, but the most important is to
deliver fixes in a timely manner. When you see that any LTS branch
accumulates around 5000 fixes over time, you understand that any
single new kernel being released contains around 5000 bugs left to be
found. Fixing them quickly is much more important to me (as a user)
than ensuring that I will not reach 5001 by inheriting from a poorly
tested backport.

My hope is that thanks to all the automated testing in place we can
further accelerate the backport rate so that a stable kernel reaches
in 2 months the level of quality that we previously used to reach only
after one year. And I think we're already about there, as both 4.4.x
and 4.9.x in their early versions (x < 10) were already very good for
various use cases. 4.17.5 I'm using on this PC looks pretty slick as
well. Overall it means that we can provide a clean upgrade path for
users so that they don't stick to bogus or insecure kernels by fear
of upgrading. We can always argue that a bug may appear once in a
while but for me while technically this is true, stastistically this
is just FUD and is not relevant to end users' real usage.

Willy
