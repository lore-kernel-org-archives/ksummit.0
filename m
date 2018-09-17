Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 93E05C22
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Sep 2018 13:04:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E522863D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Sep 2018 13:04:19 +0000 (UTC)
Date: Mon, 17 Sep 2018 10:04:13 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20180917100413.22eac00d@coco.lan>
In-Reply-To: <CAMuHMdVj28tZKep+DPA4W3vz28hPRZTWAb7BtuQBBTSWT3Brnw@mail.gmail.com>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<8412864.7ztUKcXNNC@avalon> <20180910211128.GH16557@thunk.org>
	<1939259.kNhvOyGpTJ@avalon> <20180917084335.007012ec@coco.lan>
	<CAMuHMdVj28tZKep+DPA4W3vz28hPRZTWAb7BtuQBBTSWT3Brnw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] community
 management/subsystem governance
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Mon, 17 Sep 2018 14:03:55 +0200
Geert Uytterhoeven <geert@linux-m68k.org> escreveu:

> Hi Mauro,
> 
> On Mon, Sep 17, 2018 at 1:43 PM Mauro Carvalho Chehab
> <mchehab+samsung@kernel.org> wrote:
> > Em Tue, 11 Sep 2018 02:05:06 +0300
> > Laurent Pinchart <laurent.pinchart@ideasonboard.com> escreveu:  
> > > On Tuesday, 11 September 2018 00:11:28 EEST Theodore Y. Ts'o wrote:  
> > > > On Mon, Sep 10, 2018 at 11:32:00PM +0300, Laurent Pinchart wrote:  
> > > > > On my side, there are three very important features that a communication
> > > > > system should have:
> > > > >
> > > > > - It should be push-based. I don't want to have to log in and pull
> > > > > information from web UIs.
> > > > >
> > > > > - It should be customizable, offering an easy way to script review, and
> > > > > patch and pull request handling.
> > > > >
> > > > > - It should offer an offline mode. Lots of us travel a lot or generally
> > > > > have to work without an internet connection more often than we would
> > > > > like, so any solution that requires being online won't work.
> > > > >
> > > > > Emails provide all that, there may be good options I just fail to think
> > > > > about right now.  
> > > >
> > > > One more requirement I would add is that messages should be archived,
> > > > and should have a first class search system.  We should be able to
> > > > reference a commit id in a communications thread, and then a search
> > > > for that commit id (or commit description) should be able to turn up
> > > > that message, and from there, be able to see the rest of the messages
> > > > on that thread.
> > > >
> > > > Being able to find the "legislative history" behind a particular
> > > > change in the kernel is super-important.  
> > >
> > > Fully agreed. I would even go one step further, I'd like a system where
> > > relationships between messages are kept. This obviously means linking patches
> > > from the same series, but also detecting new versions of patch series (to the
> > > extent possible, as already discussed in this mail thread).
> > >  
> >
> > Let me go one step down.
> >
> > While I do agree that the main Kernel development should happen via
> > email on the foreseen future, Why e-mail would be a mandatory
> > requirement for all kinds of Kernel development?
> >
> > I don't believe that a single development model fits all cases.
> >
> > Let's say that someone is using something like github to manage the
> > development of a single driver - or even a low traffic subsystem.
> >
> > The communication traffic between the developers there is usually
> > not relevant (nor wanted) at LKML.
> >
> > What we usually do on normal subsystems is to have those discussions
> > "filtered" on a separate mailing list. I don't see why not use a
> > web-based interface for such purpose.
> >
> > Btw, that's not that different on what happens on some companies that
> > do their driver developments internally. They do whatever they want
> > when developing the driver. Only when they have something ready they
> > use e-mail.
> >
> > A github-like interface is actually better than that, as people
> > interested on such driver/subsystem could contribute earlier than
> > on a closed doors model, as the discussions can be seen publicly.
> >
> > On both cases, the only relevant discussions for LKML and for the
> > Kernel maintainer that would be taking their patches are when they
> > send a pull request upstream.  
> 
> Development doesn't stop when the driver has been developed and merged
> in mainline.

Yeah, sure.

> It's a good idea to always CC lkml when submitting a patch for a bug in the
> driver.

True, but this doesn't always happen. If it happens, nothing prevents
that someone would use a "man-handled copy-and-paste interface"
between e-mail and web.

Btw, this happens already, even with e-mail: from time to time, we
receive bug reports on media from something reported via distro bug
tracks (bugzilla, Trac, ...).

Even when the bug tracking system has an email interface
(Red Hat BZ has, for example), it is really rare to use email 
for tracked bug reports (even from Kernel.org bugzilla). 

What works in practice for such bugs is that we end by using web
interfaces if we need to talk about the bug inside the tracker
system, or via e-mail if we want to talk about it subsystem-wide.

Sub-optimal, but it works.

The same would happen if the development discussions would happen
inside a web interface like github/gitlab. Of course, the maintainer
would still need to be reachable by e-mail.

> > Granted, there will be some drawbacks if email interface is not
> > available if such development community would need to talk with
> > other subsystems. So, yes, it is desirable to have an e-mail
> > interface, as otherwise a human would have to handle such things
> > manually, but, again, for low traffic development, such things
> > would be doable.  
> 
> And once the driver has been integrated, maintenance (changed
> subsystem APIs, cleanups, ...) will need be done, on a larger scale.

True, but still doable.

See, I don't have myself any plans to use something like github
for Kernel development. Yet, I think we should be open to work
with people that would prefer to work with such model.

Btw, on a quick look, it seems that github has/had an email 
interface already:
	https://blog.github.com/2011-03-10-reply-to-comments-from-email/

It seems that there are ways to create new issues there via e-mail
too, although currently it sounds a little hacky (requiring either
to run an script or to add a github bot user to the project):

	https://stackoverflow.com/questions/25051686/create-github-issue-from-freshdesk

Thanks,
Mauro
