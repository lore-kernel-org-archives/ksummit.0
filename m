Return-Path: <groeck7@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B3F96BA0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 17:02:14 +0000 (UTC)
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
	[209.85.214.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5AFDA7D2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 17:02:14 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id b12-v6so11606374plr.8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 10:02:14 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Tue, 11 Sep 2018 10:02:12 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20180911170212.GC8284@roeck-us.net>
References: <20180907004944.GD16300@sasha-vm>
	<CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
	<20180907014930.GE16300@sasha-vm>
	<CA+55aFz57ASBqAvXnCv4_uZ3niPJjTDdSmOOdyaFeW8gCAwSHQ@mail.gmail.com>
	<20180907145437.GF16300@sasha-vm>
	<CA+55aFzp340RDJUDoOGtN5ENgdCSSkksvG0yPt74BgyvTrAE4Q@mail.gmail.com>
	<20180910194310.GV16300@sasha-vm>
	<20180910164519.6cbcc116@vmware.local.home>
	<20180910212019.GA32269@roeck-us.net>
	<20180911111853.GB8018@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180911111853.GB8018@sirena.org.uk>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Sep 11, 2018 at 12:18:53PM +0100, Mark Brown wrote:
> On Mon, Sep 10, 2018 at 02:20:19PM -0700, Guenter Roeck wrote:
> 
> > Would that help ? -next has been more or less unusable for a week or so.
> > Maybe it is just a bad time (it hasn't been as bad as it is right now
> > for quite some time), but
> 
> > Build results:
> > 	total: 135 pass: 133 fail: 2
> > Qemu test results:
> > 	total: 315 pass: 112 fail: 203
> 
> > on next-20180910 doesn't really make me very confident that useful regression
> > tests on -next are even possible. it seems to me that -next is quite often
> > used as dumping ground for sparsely tested changes, and is far from "ready
> > for upstream".
> 
> I suspect this is something where if someone starts consistently
> reporting test results things will get a lot better if someone
> consistently reports test results and chases people to fix problems.  I
> expect it to go like builds - used to see huge numbers of build and boot
> failures in -next, and even in mainline, but ever since people started
> actively pushing on them the results have got much better to the point
> where it's the exeception rather than the rule.  You can see it
> happening if you look at the build error/warning results from releases
> over a few years (stable doesn't show it so clearly any more as a lot of
> these fixes got backported there).
> 

FWIW, for the most part I stopped reporting issues with -next after some people
yelled at me for the 'noise' I was creating. Along the line of "This has been
fixed in branch xxx; why don't you do your homework and check there", with
branch xxx not even being in -next. I don't mind "this has already been
reported/fixed", quite the contrary, but the "why don't you do your homework"
got me over the edge.

To even consider reporting issues in -next on a more regular basis, I'd like
to see a common agreement that reporting such issues does not warrant being
yelled at, even if the issue has been fixed somewhere or if it has already
been reported. Otherwise I'll stick with doing what I do now: If something
is broken for more than a week, I _may_ start looking at it if I have some
spare time and/or need a break from my day-to-day work.

> FWIW kernelci isn't nearly so bad on -next today - only four build
> failures from the configurations it tests (someone managed to break
> arm64) and the boot tests are clean apart from one board that's been
> having what look like intermittent board specific issues.  
> 
>    https://kernelci.org/boot/all/job/next/branch/master/kernel/next-20180911/
> 
> No testsuites run there though.

It doesn't require test suites. The crash happens on reboot/poweroff when
unmounting the root file system. initrd/initramfs boots don't see the
problem. Pretty much every architecture except arm (for whatever reason)
should see the problem.

Guenter
