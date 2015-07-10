Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 49A23ABA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 12:44:23 +0000 (UTC)
Received: from outbound3.ore.mailhop.org (erouter8.ore.mailhop.org
	[54.187.218.212])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id D6DA3E9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 12:44:22 +0000 (UTC)
Date: Fri, 10 Jul 2015 12:44:16 +0000
From: Jason Cooper <jason@lakedaemon.net>
To: Darren Hart <dvhart@infradead.org>
Message-ID: <20150710124416.GR23515@io.lakedaemon.net>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<1436481109.3324.219.camel@infradead.org>
	<20150710003559.GT11162@sirena.org.uk>
	<20150710020706.GH111846@vmdeb7>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150710020706.GH111846@vmdeb7>
Cc: ksummit-discuss@lists.linuxfoundation.org
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

On Thu, Jul 09, 2015 at 07:07:06PM -0700, Darren Hart wrote:
> On Fri, Jul 10, 2015 at 01:35:59AM +0100, Mark Brown wrote:
> > On Thu, Jul 09, 2015 at 11:31:49PM +0100, David Woodhouse wrote:
> > > On Thu, 2015-07-09 at 12:37 -0700, Darren Hart wrote:
> > 
> > > > I spend a highly disproportionate amount of my time, relative to measurable
> > > > quality impact to the kernel, going over the nuances of submitting patches.
> > 
> > > > 1) Must have a complete commit message
> > > > 2) DCO goes above the ---
> > > > 3) Include a patch changelog, do so below ---
> > > > 4) Cc maintainers :-)
> > > > 5) Checkpatch... checkpatch... checkpatch...
> > > > 6) Compiler warnings
> > > > 7) CodingStyle :-)
> > > > 8) Use ascii or utf8 character encodings
> > 
> > As far as I can tell for most of the bits of this that are tooling and
> > create practical problems git send-email will avoid most of the issue
> > and people do seem to have mostly adopted that, but perhaps that's a
> > result of me seeing a different submitter base to you.  I very rarely
> 
> I was going to make the same comment - we all deal with a different group. I
> admittedly see a number of first time contributors looking to improve their
> particular laptop, rather than veteran sub-system developers (I also get people
> picking up major platform drivers and doing a great job).
> 
> > see anything that's serious enough to cause a practical problem except
> > for CC issues that doesn't also come along with other substantial code
> > quality problems.
> > 
> > Patch changelogs are the biggest thing I can see there that feels like a
> > tooling problem to me since git send-email doesn't do anything at all,
> > though it's not an issue I'm personally that concerned about (I do
> > appreciate having them but I can often barely remember what issues I
> > raised in the first place).
> 
> As far as recruitment goes, I think we're talking about barriers to first-timers
> and such - and git-send-email is one of those things. Eventually, a developer
> spends enough time to make setting that all up worthwhile, but honestly, there
> are A LOT of ways to embarass yourself with git-send-email. So much so that I've
> written wrappers to it to protect people from it for the yocto project - and
> even myself for my kernel work.

git send-email --kernel *.patch ?

--kernel would go through each patch and auto-fills Cc based on MAINTAINERS.
Amongst a few other things.  Shallow threading, check/edit cover letter
and so forth.

Or, we put a wrapper in ./scripts to accomplish the same.

> Is that a good assumption? Are we talking about first-timers - or are we talking
> about getting current participants to do more review?

Yes, this is about recruitment, so focused on first-timers.  Reviewers
start out as first timers.

Getting current devs to do more review falls on co-maintainer/reviewer
rotation to avoid burn-out.  I think folks would be more likely to
increase their role if they knew it wasn't a full-time commitment until
you burn out.

thx,

Jason.
