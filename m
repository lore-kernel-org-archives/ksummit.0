Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 81E5AED1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 17:22:15 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B4BC47D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 17:22:14 +0000 (UTC)
Message-ID: <1536686530.3511.1.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Guenter Roeck <linux@roeck-us.net>, Mark Brown <broonie@kernel.org>
Date: Tue, 11 Sep 2018 10:22:10 -0700
In-Reply-To: <20180911170212.GC8284@roeck-us.net>
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
	<20180911170212.GC8284@roeck-us.net>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
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

On Tue, 2018-09-11 at 10:02 -0700, Guenter Roeck wrote:
> On Tue, Sep 11, 2018 at 12:18:53PM +0100, Mark Brown wrote:
> > On Mon, Sep 10, 2018 at 02:20:19PM -0700, Guenter Roeck wrote:
> > 
> > > Would that help ? -next has been more or less unusable for a week
> > > or so. Maybe it is just a bad time (it hasn't been as bad as it
> > > is right now for quite some time), but Build results:
> > > 	total: 135 pass: 133 fail: 2
> > > Qemu test results:
> > > 	total: 315 pass: 112 fail: 203
> > > on next-20180910 doesn't really make me very confident that
> > > useful regression tests on -next are even possible. it seems to
> > > me that -next is quite often used as dumping ground for sparsely
> > > tested changes, and is far from "ready for upstream".
> > 
> > I suspect this is something where if someone starts consistently
> > reporting test results things will get a lot better if someone
> > consistently reports test results and chases people to fix
> > problems.  I expect it to go like builds - used to see huge numbers
> > of build and boot failures in -next, and even in mainline, but ever
> > since people started actively pushing on them the results have got
> > much better to the point where it's the exeception rather than the
> > rule.  You can see it happening if you look at the build
> > error/warning results from releases over a few years (stable
> > doesn't show it so clearly any more as a lot of these fixes got
> > backported there).
> > 
> 
> FWIW, for the most part I stopped reporting issues with -next after
> some people yelled at me for the 'noise' I was creating. Along the
> line of "This has been fixed in branch xxx; why don't you do your
> homework and check there", with branch xxx not even being in -next. I
> don't mind "this has already been reported/fixed", quite the
> contrary, but the "why don't you do your homework" got me over the
> edge.

Not to excuse rudeness, we always try to be polite on lists when this
happens, but -next builds on Australian time, so when we find and fix
an issue there can be up to 24h before it propagates.  In that time,
particularly if it's a stupid bug, it gets picked up and flagged by a
number of self contained 0day type projects and possibly a couple of
coccinelle type ones as well.  It does get a bit repetitive for
maintainers to receive and have to respond to 4 or 5 bug reports for
something they just fixed ...

Perhaps the -next tracking projects could have some sort of co-
ordination list to prevent the five bug reports for the same issue
problem?

James
