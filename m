Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 25A0CBC7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 20:54:22 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9E19017D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 20:54:21 +0000 (UTC)
Date: Fri, 10 Jul 2015 13:54:18 -0700
From: josh@joshtriplett.org
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20150710205418.GB10533@cloud>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<1436481109.3324.219.camel@infradead.org>
	<20150710003559.GT11162@sirena.org.uk>
	<20150710020706.GH111846@vmdeb7>
	<20150710155144.34dde697@gandalf.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150710155144.34dde697@gandalf.local.home>
Cc: Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org
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

On Fri, Jul 10, 2015 at 03:51:44PM -0400, Steven Rostedt wrote:
> On Thu, 9 Jul 2015 19:07:06 -0700
> Darren Hart <dvhart@infradead.org> wrote:
> > As far as recruitment goes, I think we're talking about barriers to first-timers
> > and such - and git-send-email is one of those things. Eventually, a developer
> 
> +1000
> 
> I still don't use git-send-email, as I afraid that I'll blow it and end
> up sending a thousand patches to every developer that ever touched the
> kernel ;-)

I don't use git-send-email either.  I use git-format-patch
--cover-letter --thread, and then mutt -H to individually send each
mail.  (I originally added the --thread and --in-reply-to options to
git-format-patch, so that you don't need to use git-send-email for
that.)

The one thing I *do* find annoying is that the combination of
format-patch and get_maintainers.pl can't easily say "I want to send all
the patches and the cover letter to the same set of people, based on
every patch".  (Or, at the very least, the cover letter to everyone.)
Otherwise, maintainers get one patch out of the series, which may be
confusing without context, and the cover letter doesn't go to anyone.
Unfortunately, fixing that then tends to hit LKML's limit on number of
recipients.

- Josh Triplett
