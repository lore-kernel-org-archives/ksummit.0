Return-Path: <dvhart@infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DDEADAB2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 22:57:46 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 64195112
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 22:57:46 +0000 (UTC)
Date: Fri, 10 Jul 2015 15:57:42 -0700
From: Darren Hart <dvhart@infradead.org>
To: josh@joshtriplett.org
Message-ID: <20150710225742.GP111846@vmdeb7>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<1436481109.3324.219.camel@infradead.org>
	<20150710003559.GT11162@sirena.org.uk>
	<20150710020706.GH111846@vmdeb7>
	<20150710155144.34dde697@gandalf.local.home>
	<20150710205418.GB10533@cloud>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150710205418.GB10533@cloud>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 10, 2015 at 01:54:18PM -0700, Josh Triplett wrote:
> On Fri, Jul 10, 2015 at 03:51:44PM -0400, Steven Rostedt wrote:
> > On Thu, 9 Jul 2015 19:07:06 -0700
> > Darren Hart <dvhart@infradead.org> wrote:
> > > As far as recruitment goes, I think we're talking about barriers to first-timers
> > > and such - and git-send-email is one of those things. Eventually, a developer
> > 
> > +1000
> > 
> > I still don't use git-send-email, as I afraid that I'll blow it and end
> > up sending a thousand patches to every developer that ever touched the
> > kernel ;-)
> 
> I don't use git-send-email either.  I use git-format-patch
> --cover-letter --thread, and then mutt -H to individually send each
> mail.  (I originally added the --thread and --in-reply-to options to
> git-format-patch, so that you don't need to use git-send-email for
> that.)
> 
> The one thing I *do* find annoying is that the combination of
> format-patch and get_maintainers.pl can't easily say "I want to send all
> the patches and the cover letter to the same set of people, based on
> every patch".  (Or, at the very least, the cover letter to everyone.)

A bit off topic, but:

+1000 (thanks for that Steven)

This is partly why I wrote create-pull-request and submit-pull-request for the
Yocto Project.

http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/scripts/create-pull-request
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/scripts/send-pull-request

They build the recipient list for each patch and the aggregate for the cover
letter, set confirm always, and disable git-send-email CC policy to avoid
spamming the planet.

> Otherwise, maintainers get one patch out of the series, which may be
> confusing without context, and the cover letter doesn't go to anyone.
> Unfortunately, fixing that then tends to hit LKML's limit on number of
> recipients.
> 
> - Josh Triplett
> 

-- 
Darren Hart
Intel Open Source Technology Center
