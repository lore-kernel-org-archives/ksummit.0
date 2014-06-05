Return-Path: <metan@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 4E55F847
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  5 Jun 2014 08:39:23 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8C2631F952
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  5 Jun 2014 08:39:22 +0000 (UTC)
Date: Thu, 5 Jun 2014 10:39:07 +0200
From: chrubis@suse.cz
To: Mel Gorman <mgorman@suse.de>
Message-ID: <20140605083907.GA11139@rei.Home>
References: <537F3551.2070104@hitachi.com> <20140528153702.GU23991@suse.de>
	<20140528185748.GA30673@kroah.com>
	<CACRpkdbcgADHq1g3Ys9U5i69nPdrRX-C2u61qUgQ_NfS2bE4CQ@mail.gmail.com>
	<20140605002331.GB24037@kroah.com> <20140605065455.GM10819@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20140605065455.GM10819@suse.de>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel testing standard
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi!
> > > >> As LTP is reported to
> > > >> be sane these days for some tests, it could conceivably be wrapped by "make
> > > >> test" to avoid duplicating effort there. I think that would be worthwhile
> > > >> if someone had the time to push it because it would be an unconditional win.
> > > >
> > > > That is what I have been asking for for _years_.  Hopefully someday
> > > > someone does this...
> > > 
> > > Does this read "let's pull LTP into the kernel source tree"?
> > 
> > Everyone always asks this, and I say, "Sure, why not?"
> > 
> > Actually, if people do complain about "why", then let's take the
> > "useful" subset of LTP for kernel developers.  It's a great place to
> > start, don't you agree?

This sure seems to be recurring topic. My opinion is that this wouldn't
be huge win.

There are a few downsides to this approach as well:

LTP is backward compatible and it makes sense to use the latest version
even for a few years old kernel/distro, because that brings you more
coverage and fixes. If it was part of the kernel tree there would be a
danger of people using outdated version packed with the kernel sources.

Splitting LTP it into two parts is in my opinion wrong thing to do,
because you will end up with two places that have to share some files
which will impose overhead in maintenance and confusion. Actually I've
looked over the testcases LTP has and it seems that there is a very
little testcases that are not kernel related (there are a few tests for
userspace tools (such as tar, unzip, su, at...) and some network tests).

> Cyril Hrubis is an LTP expert who has spend a considerable amount of time
> cleaning it up but is not often seen in kernel development circles so I added
> him to the cc. He's stated before that there is a large subset of LTP that
> is considerably cleaner than it was a few years ago. Cyril, you are probably
> not subscribed but the list archives for the "kernel testing standard" thread
> can be seen at http://lists.linuxfoundation.org/pipermail/ksummit-discuss/
> if you dig around a bit.

I've read this thread and what it's largely about is integration and
documentation both can be easily done even without pulling LTP into
kernel git tree.

Integrating LTP into 'make test' would be reasonably easy task. You just
need to download latest sources, build them, install and run it, then
look into single file for list of failures.

The more complicated part, as Ted said, is to figure out which tests to
run and on what occasion. For that you have to keep a list of testcases
per a group of interest which is time consuming and prone to error.

> There is a hazard that someone bisecting the tree would need to be careful
> to not bisect LTP instead. Otherwise, in your opinion how feasible
> would it be to import the parts of LTP you trust into the kernel tree
> under tools/testing/ ?

That depends on how closely you want to integrate with the rest of the
source tree. Copying all needed pieces from LTP source there would be
fairly easy.

However as I wrote earlier I want to avoid splitting the LTP source tree
in half. That would overly complicate the way LTP community works now.
What we do, for quite some time now, is to fix/cleanup testcase by
testcase and enable the fixed ones in default testrun.

-- 
Cyril Hrubis
chrubis@suse.cz
