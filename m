Return-Path: <tony@atomide.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 73822EE4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 17:40:47 +0000 (UTC)
Received: from muru.com (muru.com [72.249.23.125])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id F30467CD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 17:40:46 +0000 (UTC)
Date: Tue, 11 Sep 2018 10:40:43 -0700
From: Tony Lindgren <tony@atomide.com>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20180911174043.GK5659@atomide.com>
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
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180911114227.241f2e5d@vmware.local.home>
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

* Steven Rostedt <rostedt@goodmis.org> [180911 15:46]:
> On Mon, 10 Sep 2018 19:13:29 -0400
> Steven Rostedt <rostedt@goodmis.org> wrote:
> 
> > On Mon, 10 Sep 2018 16:03:03 -0700
> > Eduardo Valentin <edubezval@gmail.com> wrote:
> > 
> > > I thought that was the case already, everthing that goes to linux-next
> > > is ready to go to Linus.  
> > 
> > It's suppose to be, but not always, and this is why I suggested that
> > Linus start yelling at those that are not doing it.
> > 
> 
> This may have come across a bit too strong. We don't need Linus to
> yell, but there should definitely be consequences for any maintainer
> that pushes untested code to linux-next. At a bare minimum, all code
> that goes into linux-next should have passed 0day bot. Push code to a
> non-linux-next branch on kernel.org, wait a few days, if you don't get
> any reports that a bot caught something broken, you should be good to
> go (also you can opt-in to get reports on 0day success, which I do, to
> make that cycle even shorter). And that's a pretty low bar to have to
> pass. Ideally, all maintainers should have a set of tests they run
> before pushing anything to linux-next, or to Linus in the late -rcs. If
> you can't be bothered just to rely on at least 0day then you should not
> be a maintainer.

Based on the regressions I seem to hit quite a few Linux next
regressions could have been avoided if Andrew's mm tree had seem some
more testing before being added to next. Probably because Andrew
queues lots of complicated patches :)

So yeah what you're suggesting might help with that if we establish
a let's say 24 hour period before adding branches to next. At
least that gives the automated systems a chance to test stuff
before it hits next. And people who want to can then test various
branches separately in advance.

Regards,

Tony
