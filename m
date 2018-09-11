Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 366AAB78
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 17:47:06 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BE8B1716
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 17:47:05 +0000 (UTC)
Message-ID: <1536688022.3511.5.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Tony Lindgren <tony@atomide.com>, Steven Rostedt <rostedt@goodmis.org>
Date: Tue, 11 Sep 2018 10:47:02 -0700
In-Reply-To: <20180911174043.GK5659@atomide.com>
References: <CA+55aFz57ASBqAvXnCv4_uZ3niPJjTDdSmOOdyaFeW8gCAwSHQ@mail.gmail.com>
	<20180907145437.GF16300@sasha-vm>
	<CA+55aFzp340RDJUDoOGtN5ENgdCSSkksvG0yPt74BgyvTrAE4Q@mail.gmail.com>
	<20180910194310.GV16300@sasha-vm>
	<20180910164519.6cbcc116@vmware.local.home>
	<20180910212019.GA32269@roeck-us.net>
	<20180910174638.26fff182@vmware.local.home>
	<20180910230301.GB1764@localhost.localdomain>
	<20180910191329.70f90a14@vmware.local.home>
	<20180911114227.241f2e5d@vmware.local.home>
	<20180911174043.GK5659@atomide.com>
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

On Tue, 2018-09-11 at 10:40 -0700, Tony Lindgren wrote:
> * Steven Rostedt <rostedt@goodmis.org> [180911 15:46]:
> > On Mon, 10 Sep 2018 19:13:29 -0400
> > Steven Rostedt <rostedt@goodmis.org> wrote:
> > 
> > > On Mon, 10 Sep 2018 16:03:03 -0700
> > > Eduardo Valentin <edubezval@gmail.com> wrote:
> > > 
> > > > I thought that was the case already, everthing that goes to
> > > > linux-next is ready to go to Linus.  
> > > 
> > > It's suppose to be, but not always, and this is why I suggested
> > > that Linus start yelling at those that are not doing it.
> > > 
> > 
> > This may have come across a bit too strong. We don't need Linus to
> > yell, but there should definitely be consequences for any
> > maintainer that pushes untested code to linux-next. At a bare
> > minimum, all code that goes into linux-next should have passed 0day
> > bot. Push code to a non-linux-next branch on kernel.org, wait a few
> > days, if you don't get any reports that a bot caught something
> > broken, you should be good to go (also you can opt-in to get
> > reports on 0day success, which I do, to make that cycle even
> > shorter). And that's a pretty low bar to have to
> > pass. Ideally, all maintainers should have a set of tests they run
> > before pushing anything to linux-next, or to Linus in the late
> > -rcs. If you can't be bothered just to rely on at least 0day then
> > you should not be a maintainer.
> 
> Based on the regressions I seem to hit quite a few Linux next
> regressions could have been avoided if Andrew's mm tree had seem some
> more testing before being added to next. Probably because Andrew
> queues lots of complicated patches :)
> 
> So yeah what you're suggesting might help with that if we establish
> a let's say 24 hour period before adding branches to next. At
> least that gives the automated systems a chance to test stuff
> before it hits next. And people who want to can then test various
> branches separately in advance.

I really don't think that helps.  The 0day mailing list bot seems to be
a bit overloaded and about 80% of the automation isn't run *unless*
your branch hits -next.  Our criterion for -next queueing is local
tests pass, code inspection complete and 0day ML didn't complain. 
However, we still get quite a few reports from the -next automated
testing even after our local stuff.  I really don't see what delaying
into -next buys you except delaying finding and fixing bugs.

This applies to 0day as well, because, by agreement, it has a much
deeper set of xfstest runs for branches we actually queue for -next
rather than the more cursory set of tests it runs on ML patches.

James
