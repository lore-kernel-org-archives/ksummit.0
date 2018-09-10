Return-Path: <tony@atomide.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 815AF126D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 20:10:53 +0000 (UTC)
Received: from muru.com (muru.com [72.249.23.125])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 1FD72766
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 20:10:53 +0000 (UTC)
Date: Mon, 10 Sep 2018 13:05:19 -0700
From: Tony Lindgren <tony@atomide.com>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Message-ID: <20180910200519.GC5659@atomide.com>
References: <CAKMK7uFO3xiKxa+mEDgEfDx6ZKY7aFPibD1xuK3z-Ybi0Zr3Sw@mail.gmail.com>
	<20180905101710.73137669@gandalf.local.home>
	<20180907004944.GD16300@sasha-vm>
	<CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
	<20180907014930.GE16300@sasha-vm>
	<CA+55aFz57ASBqAvXnCv4_uZ3niPJjTDdSmOOdyaFeW8gCAwSHQ@mail.gmail.com>
	<20180907145437.GF16300@sasha-vm>
	<CA+55aFzp340RDJUDoOGtN5ENgdCSSkksvG0yPt74BgyvTrAE4Q@mail.gmail.com>
	<CA+55aFxJ5JVrNVA06BhpL9Q4y2uh5PVizuZtP6+9npLs15CZVQ@mail.gmail.com>
	<20180909225031.0c12d00f@canb.auug.org.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180909225031.0c12d00f@canb.auug.org.au>
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

* Stephen Rothwell <sfr@canb.auug.org.au> [180909 12:55]:
> Hi Linus,
> 
> On Fri, 7 Sep 2018 09:17:18 -0700 Linus Torvalds <torvalds@linux-foundation.org> wrote:
> >
> > For example, for me, the merge window is my busiest season by far
> > (obviously).  I try to schedule my time off to coincide with late in
> > the rc, because it's just quieter: at that point I'm mostly waiting
> > for stuff.
> > 
> > But that's actually _supposed_ to be just me (and maybe Stephen Rothwell).
> 
> Actually, my quiet time is about rc1 to rc3, because everything I was
> dealing with is now in your tree and people haven't added new stuff to
> their trees yet (at least not much).  My busiest time is rc6 to the
> middle of the merge window as people stuff in all the bits and pieces
> that need to be merged (and manage to create conflicts with what you
> have already merged during the merge window) :-(

Yeah with Linux next, rc6 and later seems to be where we often
see surprise regressions.

What has worked good for me for past three or so years is keep
testing Linux next few times a week and report the regressions.
Usually the regressions in Linux next get fixed fast within a
few days.

Before I was doing that I would always end up wasting my time
chasing multiple regressions during the -rc cycle.

I think we should always aim for a regression free -rc1.

Not sure what we could do to get people test Linux next
more and keep it regression free. But that could potentially
make the -rc cycles very quiet.

Regards,

Tony
