Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A8456EB4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Sep 2018 14:59:28 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BC0FFB0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Sep 2018 14:59:27 +0000 (UTC)
Date: Mon, 17 Sep 2018 11:59:16 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Message-ID: <20180917115916.37fd5388@coco.lan>
In-Reply-To: <2072478.UYspZ1xLTN@avalon>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<CAMuHMdVj28tZKep+DPA4W3vz28hPRZTWAb7BtuQBBTSWT3Brnw@mail.gmail.com>
	<20180917100413.22eac00d@coco.lan> <2072478.UYspZ1xLTN@avalon>
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

Em Mon, 17 Sep 2018 17:14:29 +0300
Laurent Pinchart <laurent.pinchart@ideasonboard.com> escreveu:

> On Monday, 17 September 2018 16:04:13 EEST Mauro Carvalho Chehab wrote:
> > Em Mon, 17 Sep 2018 14:03:55 +0200 Geert Uytterhoeven escreveu:  
> > > On Mon, Sep 17, 2018 at 1:43 PM Mauro Carvalho Chehab wrote:  
> > >> Em Tue, 11 Sep 2018 02:05:06 +0300 Laurent Pinchart escreveu:  
> > >>> On Tuesday, 11 September 2018 00:11:28 EEST Theodore Y. Ts'o wrote:  
> > >>>> On Mon, Sep 10, 2018 at 11:32:00PM +0300, Laurent Pinchart wrote:  
> > >>>>> On my side, there are three very important features that a
> > >>>>> communication system should have:
> > >>>>> 
> > >>>>> - It should be push-based. I don't want to have to log in and pull
> > >>>>> information from web UIs.
> > >>>>> 
> > >>>>> - It should be customizable, offering an easy way to script
> > >>>>> review, and patch and pull request handling.
> > >>>>> 
> > >>>>> - It should offer an offline mode. Lots of us travel a lot or
> > >>>>> generally have to work without an internet connection more often
> > >>>>> than we would like, so any solution that requires being online
> > >>>>> won't work.
> > >>>>> 
> > >>>>> Emails provide all that, there may be good options I just fail to
> > >>>>> think about right now.  
> > >>>> 
> > >>>> One more requirement I would add is that messages should be
> > >>>> archived, and should have a first class search system.  We should be
> > >>>> able to reference a commit id in a communications thread, and then a
> > >>>> search for that commit id (or commit description) should be able to
> > >>>> turn up that message, and from there, be able to see the rest of the
> > >>>> messages on that thread.
> > >>>> 
> > >>>> Being able to find the "legislative history" behind a particular
> > >>>> change in the kernel is super-important.  
> > >>> 
> > >>> Fully agreed. I would even go one step further, I'd like a system
> > >>> where relationships between messages are kept. This obviously means
> > >>> linking patches from the same series, but also detecting new versions
> > >>> of patch series (to the extent possible, as already discussed in this
> > >>> mail thread).  
> > >> 
> > >> Let me go one step down.
> > >> 
> > >> While I do agree that the main Kernel development should happen via
> > >> email on the foreseen future, Why e-mail would be a mandatory
> > >> requirement for all kinds of Kernel development?  
> 
> Nothing in the list of requirements above mandates e-mail, it just happens 
> that e-mail fits them at the moment.
> 
> > >> I don't believe that a single development model fits all cases.
> > >> 
> > >> Let's say that someone is using something like github to manage the
> > >> development of a single driver - or even a low traffic subsystem.  
> 
> Please note that Daniel specifically mentioned gitlab, not github, and 
> explained how the github model wouldn't fit our needs.

Yes, I saw Daniel's email. Well, gitlab may fit better for DRM, but
other developers may have different preferences [1].

I don't think we should (or we can) force everybody to use a single
development model.

[1] IMO, adopting gitlab/github/whatever-web-UI for a high traffic
subsystem like DRM or media is a completely different beast: one has
to do enough tests that this would work before start any migration, and
it should  ensure that the usual e-mail workflow submission and patch
review will keep working as before, as the rest of the Kernel community
won't change their workflow.

> > >> The communication traffic between the developers there is usually
> > >> not relevant (nor wanted) at LKML.  
> 
> Not on LKML, but it should be public, searchable and mirrored, not hidden 
> behind an authentication, or stored in a single location.

Yeah, being public and searchable are important features.

However, nowadays, the concept of "stored in a single location" is
something that doesn't make much sense: most of stuff are stored on
clouds, specially if one is using a big service provider. On a cloud
service, the concept of "mirrored" also is not relevant: a single
URL usually is handled by multiple servers. Usually, it is invisible
to the users what is the real infrastructure behind the service.

> > >> What we usually do on normal subsystems is to have those discussions
> > >> "filtered" on a separate mailing list. I don't see why not use a
> > >> web-based interface for such purpose.  
> 
> There are multiple reasons. One of them is that you'll lose the whole history 
> the day the project is deleted from gitlab, github or any other single 
> provider. 

This can happen whatever infra is used. That's why the git logs should be
clear enough to not depend on it. I'm pretty sure that, whatever we use
nowadays (even mirrored ML logs) will some day be replaced by something
else. Try to seek, for example, for the old usenet messages. The only
thing that is more warranted to survive as time goes by are the patch
logs.

> Another one is that it requires drive-by contributors to log in to 
> different web UIs to submit patches to different subsystems (and from my point 
> of view even a single web UI is too much). As soon as you require people to 
> pull content instead of getting it in their mailbox (or whatever alternative 
> to e-mail we would come up with), you've lost.

This is a valid point: whatever development process is used, drive-by
contributors should be allowed to send e-mails without needing to subscribe
(neither to a moderated list nor to a web-UI). I don't care how the 
maintainer will handle such patches, provided that they will be properly
handled.

> > >> Btw, that's not that different on what happens on some companies that
> > > It's a good idea to always CC lkml when submitting a patch for a bug in
> > > the driver.  
> > 
> > True, but this doesn't always happen. If it happens, nothing prevents
> > that someone would use a "man-handled copy-and-paste interface"
> > between e-mail and web.
> > 
> > Btw, this happens already, even with e-mail: from time to time, we
> > receive bug reports on media from something reported via distro bug
> > tracks (bugzilla, Trac, ...).
> > 
> > Even when the bug tracking system has an email interface
> > (Red Hat BZ has, for example), it is really rare to use email
> > for tracked bug reports (even from Kernel.org bugzilla).
> > 
> > What works in practice for such bugs is that we end by using web
> > interfaces if we need to talk about the bug inside the tracker
> > system, or via e-mail if we want to talk about it subsystem-wide.
> > 
> > Sub-optimal, but it works.  
> 
> That makes our work more difficult, due to the lack of integration between the 
> bug tracker and our usual workflow. Bugs reported through bug trackers are 
> often handled as second-class citizens for that reason.
> 
> > The same would happen if the development discussions would happen
> > inside a web interface like github/gitlab. Of course, the maintainer
> > would still need to be reachable by e-mail.  
> 
> If your point is that it would be similarly painful, I agree :-) (or to be 
> honest I'm concerned it would be even more painful, but certainly not less).

Actually, I think it could be less painful on drivers than git+kernel BZ
if the developers of such driver/subsystem are all using their web-UI
and they only receive a handful contributions from "outside world", as
the bugs will be tracked by the same interface. That won't be the case 
of larger subsystems like media, DRM, net, sound, etc.

Thanks,
Mauro
