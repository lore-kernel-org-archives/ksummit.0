Return-Path: <dvhart@infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1EEB6BD1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 17:49:47 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8D89A11A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 17:49:46 +0000 (UTC)
Date: Fri, 10 Jul 2015 10:49:41 -0700
From: Darren Hart <dvhart@infradead.org>
To: Christian Couder <chriscool@tuxfamily.org>
Message-ID: <20150710174940.GN111846@vmdeb7>
References: <2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<20150710114409.638582c0@gandalf.local.home>
	<20150710.193255.181692772319686216.chriscool@tuxfamily.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150710.193255.181692772319686216.chriscool@tuxfamily.org>
Cc: robertotyley@gmail.com, ksummit-discuss@lists.linuxfoundation.org,
	jason@lakedaemon.net
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

On Fri, Jul 10, 2015 at 07:32:55PM +0200, Christian Couder wrote:
> From: Steven Rostedt <rostedt@goodmis.org>
> Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers, Maintainers, Hobbyists)
> Date: Fri, 10 Jul 2015 11:44:09 -0400
> 
> > On Thu, 9 Jul 2015 12:37:18 -0700
> > Darren Hart <dvhart@infradead.org> wrote:
> > 
> >> I've come to believe that this is one of many side effects of our dependency on
> >> a completely free form mechanism for the management of our patches, a mechanism
> >> which is becoming harder and harder to setup "correctly" with modern tooling
> >> (since the industry is killing "real email").
> >> 
> >> I spend a highly disproportionate amount of my time, relative to measurable
> >> quality impact to the kernel, going over the nuances of submitting patches.
> >> 
> >> 1) Must have a complete commit message
> >> 2) DCO goes above the ---
> >> 3) Include a patch changelog, do so below ---
> >> 4) Cc maintainers :-)
> >> 5) Checkpatch... checkpatch... checkpatch...
> > 
> > Ug, don't emphasize checkpatch. I see people making patches uglier due
> > to it. I have an old version of checkpatch that I sometimes run, but
> > the new version, IMHO, has more noise than signal.
> > 
> >> 6) Compiler warnings
> >> 7) CodingStyle :-)
> >> 8) Use ascii or utf8 character encodings
> >> 
> > 
> > 
> >> Looking forward a bit, I would love to see some tooling in place for people to
> >> submit patches either via a web form (which eliminates all the email tooling for
> >> submitting patches - which is where the formatting is especially critical) or
> >> through one of the more managed git systems, like gerrit, etc.
> > 
> > You mean like a web page that has a bunch of entries (like submitting a
> > paper to a LF conference), and you need to fill out.
> 
> To send patch emails created from git repos on GitHub to the Git
> mailing list, there is now submitGit:
> 
> https://submitgit.herokuapp.com/
> https://github.com/rtyley/submitgit
> 
> Maybe Roberto, its author (cced), could be convince to do something
> for the kernel?

Something along those lines would be nice, yes. I think a lot of people would
find something like this which enforces the "mechanical" rules to be very
useful.

-- 
Darren Hart
Intel Open Source Technology Center
